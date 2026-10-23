/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Automatic boundary decomposition from a regular rectangle extension

The preceding residue-accounting interface retained a boundary-decomposition
field in addition to punctured source agreement. This file proves that the
boundary identity is forced by the source agreement:

* every boundary point lies in the closed rectangle;
* no boundary point belongs to the complete interior singularity head;
* the fixed principal part and a continuous regular extension are integrable on
  all four edges;
* interval-integral congruence and finite additivity give the decomposition.

The analytic obligation is thereby reduced to constructing one actual regular
extension of `logDeriv zeta - rectanglePrincipalPart`. The geometric obligation
is independently reduced to the universal unit-pole winding theorem from
`CanonicalRectanglePrincipalPartWinding`.

No regular extension, unit-pole winding proof, rational count enclosure, RH
result, or prime theorem is constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleRegularization

open Set MeasureTheory
open scoped Interval BigOperators
open CanonicalZeroDivisor
open AdmissibleRectangles
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat
open CanonicalRectangleResidueAccounting
open CanonicalRectanglePrincipalPartWinding
open TrivialZeroResidues

noncomputable section

/-- The closed boundary and strict interior are disjoint. -/
theorem boundary_not_mem_interior (N : ℕ) {s : ℂ}
    (hb : s ∈ boundary N) : s ∉ interior N := by
  intro hi
  change leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧ |s.im| ≤ contourHeight N ∧
    (s.re = leftEdge N ∨ s.re = 2 ∨ |s.im| = contourHeight N) at hb
  change leftEdge N < s.re ∧ s.re < 2 ∧ |s.im| < contourHeight N at hi
  rcases hb.2.2.2 with hleft | hright | hheight
  · linarith
  · linarith
  · linarith

/-- No point on the maintained boundary belongs to the complete singular head. -/
theorem boundary_not_mem_singularHead (N : ℕ) {s : ℂ}
    (hb : s ∈ boundary N) : s ∉ singularHead N := by
  intro hs
  have hi := (mem_singularHead_iff N s).mp hs
  exact boundary_not_mem_interior N hb hi.1

/-- Every maintained boundary point belongs to the closed rectangle used by the
Cauchy-Goursat theorem. -/
theorem boundary_subset_closedRectangle (N : ℕ) :
    boundary N ⊆ closedRectangle N := by
  intro s hs
  change leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧ |s.im| ≤ contourHeight N ∧
    (s.re = leftEdge N ∨ s.re = 2 ∨ |s.im| = contourHeight N) at hs
  have hleft : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  change s.re ∈ [[leftEdge N, 2]] ∧
    s.im ∈ [[-contourHeight N, contourHeight N]]
  constructor
  · rw [uIcc_of_le hleft]
    exact ⟨hs.1, hs.2.1⟩
  · rw [uIcc_of_le hheight]
    exact (abs_le.mp hs.2.2.1)

/-- Pointwise equality on the complete boundary implies equality of the exact
four-edge functionals. -/
theorem rectangleBoundaryIntegral_congr_on_boundary
    (N : ℕ) (f g : ℂ → ℂ)
    (h : ∀ s ∈ boundary N, f s = g s) :
    rectangleBoundaryIntegral N f = rectangleBoundaryIntegral N g := by
  have hleftEdge : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  have hbottom :
      (∫ u in leftEdge N..2, f (bottomPoint N u)) =
        ∫ u in leftEdge N..2, g (bottomPoint N u) := by
    apply intervalIntegral.integral_congr
    intro u hu
    apply h
    apply bottomPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  have htop :
      (∫ u in leftEdge N..2, f (topPoint N u)) =
        ∫ u in leftEdge N..2, g (topPoint N u) := by
    apply intervalIntegral.integral_congr
    intro u hu
    apply h
    apply topPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  have hright :
      (∫ t in (-contourHeight N)..contourHeight N, f (rightPoint N t)) =
        ∫ t in (-contourHeight N)..contourHeight N, g (rightPoint N t) := by
    apply intervalIntegral.integral_congr
    intro t ht
    apply h
    apply rightPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht
  have hleft :
      (∫ t in (-contourHeight N)..contourHeight N,
        f (rectangleLeftPoint N t)) =
        ∫ t in (-contourHeight N)..contourHeight N,
          g (rectangleLeftPoint N t) := by
    apply intervalIntegral.integral_congr
    intro t ht
    apply h
    apply rectangleLeftPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht
  unfold rectangleBoundaryIntegral
  rw [hbottom, htop, hright, hleft]

/-- Boundary integrability of the nontrivial principal-part sum follows from
strict interior membership, independently of its winding value. -/
theorem nontrivialPrincipalPart_boundaryIntegrable (N : ℕ) :
    RectangleBoundaryIntegrable N (nontrivialPrincipalPart N) := by
  have hsum := RectangleBoundaryIntegrable.finsetSum
    (N := N) (heightHead (contourHeight N))
    (fun z s => (multiplicity z : ℂ) * unitPole z.1 s)
    (fun z hz =>
      (unitPole_boundaryIntegrable N z.1
        (nontrivial_mem_openRectangle N z hz)).const_mul (multiplicity z : ℂ))
  simpa [nontrivialPrincipalPart, unitPole, div_eq_mul_inv] using hsum

/-- Boundary integrability of all enclosed negative-even principal parts. -/
theorem trivialPrincipalPart_boundaryIntegrable (N : ℕ) :
    RectangleBoundaryIntegrable N (trivialPrincipalPart N) := by
  have hsum := RectangleBoundaryIntegrable.finsetSum
    (N := N) (Finset.range N)
    (fun k s => unitPole (trivialPoint k) s)
    (fun k hk => unitPole_boundaryIntegrable N (trivialPoint k)
      (trivial_mem_openRectangle N k (Finset.mem_range.mp hk)))
  simpa [trivialPrincipalPart, unitPole] using hsum

/-- Boundary integrability of the pole principal part. -/
theorem polePrincipalPart_boundaryIntegrable (N : ℕ) :
    RectangleBoundaryIntegrable N polePrincipalPart := by
  simpa [polePrincipalPart, unitPole] using
    (unitPole_boundaryIntegrable N (1 : ℂ) (one_mem_openRectangle N)).neg

/-- Boundary integrability of the complete fixed principal part. -/
theorem rectanglePrincipalPart_boundaryIntegrable (N : ℕ) :
    RectangleBoundaryIntegrable N (rectanglePrincipalPart N) := by
  simpa [rectanglePrincipalPart] using
    ((nontrivialPrincipalPart_boundaryIntegrable N).add
      (trivialPrincipalPart_boundaryIntegrable N)).add
        (polePrincipalPart_boundaryIntegrable N)

/-- The actual analytic extension obligation, with no independent boundary
identity or count field. -/
structure RectangleRegularExtension (N : ℕ) where
  regular : ℂ → ℂ
  continuous : ContinuousOn regular (closedRectangle N)
  differentiable : DifferentiableOn ℂ regular (openRectangle N)
  punctured_agreement : ∀ s ∈ closedRectangle N, s ∉ singularHead N →
    logDeriv riemannZeta s = regular s + rectanglePrincipalPart N s

namespace RectangleRegularExtension

/-- A continuous extension on the closed rectangle is integrable along each edge. -/
theorem regular_boundaryIntegrable {N : ℕ}
    (extension : RectangleRegularExtension N) :
    RectangleBoundaryIntegrable N extension.regular := by
  have hleftEdge : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  refine ⟨?_, ?_, ?_, ?_⟩
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro u hu
    apply boundary_subset_closedRectangle N
    apply bottomPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro u hu
    apply boundary_subset_closedRectangle N
    apply topPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro t ht
    apply boundary_subset_closedRectangle N
    apply rightPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro t ht
    apply boundary_subset_closedRectangle N
    apply rectangleLeftPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht

/-- Punctured source agreement forces agreement on every boundary point. -/
theorem agreement_on_boundary {N : ℕ}
    (extension : RectangleRegularExtension N) :
    ∀ s ∈ boundary N,
      logDeriv riemannZeta s =
        extension.regular s + rectanglePrincipalPart N s := by
  intro s hs
  exact extension.punctured_agreement s
    (boundary_subset_closedRectangle N hs)
    (boundary_not_mem_singularHead N hs)

/-- The four-edge decomposition is derived rather than stored as independent
certificate data. -/
theorem boundary_decomposition {N : ℕ}
    (extension : RectangleRegularExtension N) :
    rectangleLogDerivativeIntegral N =
      rectangleBoundaryIntegral N extension.regular +
        rectangleBoundaryIntegral N (rectanglePrincipalPart N) := by
  rw [rectangleLogDerivativeIntegral_eq_boundaryIntegral]
  calc
    rectangleBoundaryIntegral N (logDeriv riemannZeta) =
        rectangleBoundaryIntegral N
          (fun s => extension.regular s + rectanglePrincipalPart N s) :=
      rectangleBoundaryIntegral_congr_on_boundary N _ _ extension.agreement_on_boundary
    _ = rectangleBoundaryIntegral N extension.regular +
        rectangleBoundaryIntegral N (rectanglePrincipalPart N) :=
      rectangleBoundaryIntegral_add extension.regular_boundaryIntegrable
        (rectanglePrincipalPart_boundaryIntegrable N)

/-- Construct the preceding regularization certificate without an independently
asserted boundary equality. -/
def toRegularizationCertificate {N : ℕ}
    (extension : RectangleRegularExtension N) :
    RectangleRegularizationCertificate N where
  regular := extension.regular
  continuous := extension.continuous
  differentiable := extension.differentiable
  punctured_agreement := extension.punctured_agreement
  boundary_decomposition := extension.boundary_decomposition

/-- A regular extension plus the single universal unit-pole winding theorem gives
the exact source-bound argument-principle identity. -/
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (extension : RectangleRegularExtension N)
    (winding : RectangleUnitPoleWindingCertificate N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) :=
  extension.toRegularizationCertificate.normalizedRectangleIndex_eq_expected
    winding.toPrincipalPartWindingCertificate

/-- Construct the canonical rectangle report from the reduced analytic and
geometric obligations plus a rational enclosure of the now fixed target. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (extension : RectangleRegularExtension N)
    (winding : RectangleUnitPoleWindingCertificate N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N :=
  extension.toRegularizationCertificate.toCanonicalRectangleIndexEnclosure
    winding.toPrincipalPartWindingCertificate interval containsExpected

end RectangleRegularExtension

/-- Boundary agreement alone cannot hide a pole on the contour: every member of
the singular head is strictly interior. -/
theorem singularHead_disjoint_boundary (N : ℕ) :
    Disjoint ((singularHead N : Finset ℂ) : Set ℂ) (boundary N) := by
  rw [Set.disjoint_left]
  intro s hs hb
  exact boundary_not_mem_singularHead N hb hs

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleRegularization
