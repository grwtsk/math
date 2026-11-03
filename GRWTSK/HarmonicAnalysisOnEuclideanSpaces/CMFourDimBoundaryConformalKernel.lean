/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteRSBoundaryBulk
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteMoebiusResidueWaypoints
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Four-dimensional conformal two-point operator on actual discrete sites

This is NOT the arithmetic Möbius function: the geometric operation is the
4-dimensional conformal inversion I(x)=x/|x|², defined only for x ≠ 0.
The 4-dimensional squared-distance identity
  |I(x)-I(y)|² = |x-y|²/(|x|² |y|²)
provides the exact covariance of the off-diagonal Riesz Green kernel of
(-Δ₄)^(1/2), proportional to |x-y|^-3. The kernel is represented by its
positive squared value |x-y|^-6 so that the algebraic covariance is exact
without choosing a fractional-power branch in the basic ring calculation.

The physical boundary operator is the CONTINUUM square-root Laplacian with
its Dirichlet-to-Neumann interpretation. A finite sum of the Riesz kernel
at discrete integer sites is a REGULARIZED quadrature; it is not by itself
that continuum pseudo-differential operator. An exact conformal quadrature
covariance also requires transforming sampling weights by the Jacobian and
the source by its conformal density weight. Neither transformed lattice
positions nor proper-time waypoints are relabelled or equated to CM cycles.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFourDimBoundaryConformalKernel

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteMoebiusResidueWaypoints

/-- Squared Euclidean distance of TWO ACTUAL 4D boundary positions. -/
def boundaryDistSq (x y : BoundaryR4) : ℝ :=
  ∑ i : Fin 4, (x i - y i) ^ 2

/-- No arbitrary negative distances are inserted into fractional kernels. -/
theorem boundaryDistSq_nonneg (x y : BoundaryR4) :
    0 ≤ boundaryDistSq x y := by
  unfold boundaryDistSq
  exact Finset.sum_nonneg fun i _ => sq_nonneg _

/-- Off-diagonal 4D conformal inversion. No assertion that the image
lies on the original integer grid; the FULL original site label survives. -/
def invert4 (x : BoundaryR4) (hx : 0 < boundaryNormSq x) : BoundaryR4 :=
  conformalBoundaryInversion x hx

/-- The classical exact four-dimensional inversion law, not a 2D modular
formula. Its ring proof uses all FOUR independent coordinates. -/
theorem boundaryDistSq_invert (x y : BoundaryR4)
    (hx : 0 < boundaryNormSq x) (hy : 0 < boundaryNormSq y) :
    boundaryDistSq (invert4 x hx) (invert4 y hy) =
      boundaryDistSq x y / (boundaryNormSq x * boundaryNormSq y) := by
  let rx := boundaryNormSq x
  let ry := boundaryNormSq y
  have hxr : rx ≠ 0 := ne_of_gt hx
  have hyr : ry ≠ 0 := ne_of_gt hy
  change (∑ i : Fin 4, (x i / rx - y i / ry) ^ 2) =
    (∑ i : Fin 4, (x i - y i) ^ 2) / (rx * ry)
  -- Expand the finite four-coordinate identity and clear positive denominators.
  simp [Fin.sum_univ_succ, rx, ry, boundaryNormSq] at *
  field_simp
  ring

/-- Exact polynomial form of the 4D inverse-half-Laplacian Green-kernel
covariance. This is the SQUARE of the positive |x-y|^-3 Riesz kernel. -/
def squaredInverseHalfLaplacianKernel (x y : BoundaryR4) : ℝ :=
  (boundaryDistSq x y)⁻¹ ^ (3 : ℕ)

theorem squaredRieszKernel_invert (x y : BoundaryR4)
    (hx : 0 < boundaryNormSq x) (hy : 0 < boundaryNormSq y) :
    squaredInverseHalfLaplacianKernel (invert4 x hx) (invert4 y hy) =
      (boundaryNormSq x * boundaryNormSq y) ^ (3 : ℕ) *
        squaredInverseHalfLaplacianKernel x y := by
  rw [squaredInverseHalfLaplacianKernel, boundaryDistSq_invert x y hx hy]
  simp [squaredInverseHalfLaplacianKernel, inv_div, mul_pow, mul_assoc]

/-- The true positive Riesz kernel away from the coincidence diagonal,
without the conventional constant 1/(4*pi^2). -/
def inverseHalfLaplacianKernel (x y : BoundaryR4) : ℝ :=
  (boundaryDistSq x y) ^ (-(3 / 2 : ℝ))

/-- A FINITE sampled 4D boundary operator with an explicit self-term
exclusion. Such a quadrature is a candidate discretization of |D|^-1,
not a statement that the discretization is automatically a CFT. -/
def sampledRieszReadout {N : ℕ} (sites : Fin N → BoundaryR4)
    (quadrature source : Fin N → ℝ) (x : BoundaryR4) : ℝ :=
  ∑ i : Fin N,
    if boundaryDistSq x (sites i) = 0 then 0 else
      quadrature i * source i * inverseHalfLaplacianKernel x (sites i)

/-- The pointwise source retains its integer label rather than the
parity/residue class, even when multiple integers share one residue. -/
def sourceBoundarySite (n : ℕ) : BoundaryLattice4 := fun i =>
  if i = 0 then (n : ℤ) else if i = 1 then (n / 2 : ℤ) else 0

theorem sourceBoundarySite_injective : Function.Injective sourceBoundarySite := by
  intro n m h
  have h0 := congrFun h (0 : Fin 4)
  change (n : ℤ) = (m : ℤ) at h0
  exact_mod_cast h0

/-- The lattice embedding remains injective after attaching signed arithmetic
sources. Geometry does not change the original arithmetic index. -/
theorem embedded_source_sites_injective :
    Function.Injective (fun n : ℕ => embedBoundary (sourceBoundarySite n)) :=
  embedBoundary_injective.comp sourceBoundarySite_injective

/-- A genuine positive-integer lattice site avoids the inversion pole. -/
theorem sourceBoundarySite_norm_pos {n : ℕ} (hn : 0 < n) :
    0 < boundaryNormSq (embedBoundary (sourceBoundarySite n)) := by
  have h0 :
      (embedBoundary (sourceBoundarySite n) (0 : Fin 4)) = (n : ℝ) := by
    simp [embedBoundary, sourceBoundarySite]
  have hnreal : (0 : ℝ) < n := by exact_mod_cast hn
  have hsq : 0 < (embedBoundary (sourceBoundarySite n) (0 : Fin 4)) ^ 2 := by
    rw [h0]
    exact sq_pos_of_pos hnreal
  have hsum : (embedBoundary (sourceBoundarySite n) (0 : Fin 4)) ^ 2 ≤
      boundaryNormSq (embedBoundary (sourceBoundarySite n)) := by
    unfold boundaryNormSq
    have h0mem : (0 : Fin 4) ∈ (Finset.univ : Finset (Fin 4)) := Finset.mem_univ _
    exact Finset.single_le_sum (fun i hi => sq_nonneg _) h0mem
  exact lt_of_lt_of_le hsq hsum

/-- The original integer lattice labels are still distinct under the 4D
inversion, just as they were under the modular upper-half-plane action. -/
def invertedSourceBoundarySite (n : ℕ) (hn : 0 < n) : BoundaryR4 :=
  invert4 (embedBoundary (sourceBoundarySite n))
    (sourceBoundarySite_norm_pos hn)

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFourDimBoundaryConformalKernel
