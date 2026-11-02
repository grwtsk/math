/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMFourDimBoundaryConformalKernel
import Mathlib.Tactic

/-!
# A real obstruction: finite boundary lattice values do not determine a field

For ANY finite set of 4D source positions s_i, the polynomial
   H_s(x)=prod_i (x_0-(s_i)_0)
vanishes at every sampled point, but is not the zero function: choose x_0
larger than sum_i |(s_i)_0|. In particular finite lattice samples alone do
NOT specify a unique smooth 4D boundary function, even before attempting a
continuous AdS5 bulk reconstruction. One needs an independent field class,
a PDE and proper boundary/regularity conditions. This is a source-level
negative control, not an assertion against uniqueness of the CONTINUUM
Dirichlet boundary problem with full boundary trace.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFiniteBoundaryReconstructionObstruction

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk

/-- A polynomial finite-sampling null field on the *actual* 4D boundary. -/
def finiteSampleNullField {N : ℕ} (sites : Fin N → BoundaryR4)
    (x : BoundaryR4) : ℝ :=
  ∏ i : Fin N, (x 0 - sites i 0)

/-- It vanishes at every input site, even when two sites have the same first
coordinate or the entire original 4D lattice is irregularly sampled. -/
theorem finiteSampleNullField_at_site {N : ℕ}
    (sites : Fin N → BoundaryR4) (i : Fin N) :
    finiteSampleNullField sites (sites i) = 0 := by
  classical
  unfold finiteSampleNullField
  exact Finset.prod_eq_zero (Finset.mem_univ i) (by ring)

/-- An explicit sample-independent choice of first-coordinate outside ALL
finite first coordinates, avoiding any synthetic physical data. -/
def exteriorWitnessCoordinate {N : ℕ} (sites : Fin N → BoundaryR4) : ℝ :=
  (∑ i : Fin N, |sites i 0|) + 1

theorem site_below_exteriorWitness {N : ℕ}
    (sites : Fin N → BoundaryR4) (i : Fin N) :
    sites i 0 < exteriorWitnessCoordinate sites := by
  have hsingle : |sites i 0| ≤ ∑ j : Fin N, |sites j 0| :=
    Finset.single_le_sum (fun j hj => abs_nonneg (sites j 0)) (Finset.mem_univ i)
  have hh := le_abs_self (sites i 0)
  unfold exteriorWitnessCoordinate
  linarith

/-- A separate real 4D point at which the finite sample-null polynomial
is strictly positive. It can be taken on the first coordinate axis. -/
def exteriorWitnessPoint {N : ℕ} (sites : Fin N → BoundaryR4) :
    BoundaryR4 := fun j => if j = 0 then exteriorWitnessCoordinate sites else 0

theorem finiteSampleNullField_positive_at_exterior {N : ℕ}
    (sites : Fin N → BoundaryR4) :
    0 < finiteSampleNullField sites (exteriorWitnessPoint sites) := by
  unfold finiteSampleNullField
  apply Finset.prod_pos
  intro i _
  have h := site_below_exteriorWitness sites i
  simpa [exteriorWitnessPoint] using sub_pos.mpr h

/-- The finite sample evaluation operator is NOT injective on the space of
all real 4D boundary fields, regardless of the number of observations. -/
theorem finite_samples_not_injective {N : ℕ}
    (sites : Fin N → BoundaryR4) :
    ¬ Function.Injective
      (fun f : BoundaryR4 → ℝ => fun i : Fin N => f (sites i)) := by
  intro hinj
  have hsample :
      (fun i : Fin N => finiteSampleNullField sites (sites i)) =
        (fun _ : Fin N => (0 : ℝ)) := by
    funext i
    exact finiteSampleNullField_at_site sites i
  have h0 : finiteSampleNullField sites = (fun _ : BoundaryR4 => (0 : ℝ)) :=
    hinj hsample
  have hpos := finiteSampleNullField_positive_at_exterior sites
  have hz := congrFun h0 (exteriorWitnessPoint sites)
  have hzero : finiteSampleNullField sites (exteriorWitnessPoint sites) = 0 := by
    simpa using hz
  exact (ne_of_gt hpos) hzero

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFiniteBoundaryReconstructionObstruction
