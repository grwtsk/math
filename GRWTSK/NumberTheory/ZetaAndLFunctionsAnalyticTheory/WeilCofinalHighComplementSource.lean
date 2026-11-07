/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20).
Original analytic and Lean source:
  WeilOddHighComplement.lean (highCutoff and exact high estimate);
  WeilOddLiteralWindow.lean (HighFloor.of_exactHighCutoff);
  WeilOddLiteralCofinal.lean (StageLower).
Base grwtsk/math@d6b7072213f5a944e26e218fb48b61938d051691.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# An unconditional HIGH-COMPLEMENT estimate for the cofinal zeta stages

The original physical zero-extended odd Weil source is unchanged.
For each j : Nat, the original StageLower j is at
  T_j = j+1,
  beta_j = -(1/2)^j.
Its source is the pole-inclusive shiftedOddWeilEnergy T_j beta_j.
The high floor below concerns the CORE form alone:
  shiftedOddCoreEnergy T_j beta_j.
The missing low bordered matrix MUST still pay the negative odd pole,
all von Mangoldt prime-power terms, the complete residual and the
infinite remote tail. This theorem DOES NOT prove StageLower j.

Mathematical argument. For each fixed T>0, the original odd
archimedean Fourier multiplier grows logarithmically in frequency.
The source prime-mass bound and the odd periodization boundary loss
(4 in the inherited theorem) are finite. The existing theorem
HighFloor.of_exactHighCutoff proves the full high-complement lower
bound at all sine modes beyond a source-defined finite cutoff:
  highCutoff T beta 4 gamma =
     ceil_+((T/(2*pi))*
        exp(gamma+beta+primeMass T+4-gammaConstant 1 0)).
This cutoff retains the COMPLETE primeMass T, not a selected finite
subset. Use the same expression at T_j and beta_j, with gamma=1/5.
The resulting N_j is an actual mathematically finite stage-specific
index. No unproved positive low Gram or finite Turing computation
enters its construction.

This proves for EVERY cofinal stage j and EVERY supported odd
finite-gamma-energy g with zero sine head up to N_j:
  (1/5) integral_R |g|^2 <= shiftedOddCoreEnergy T_j beta_j g.
No physical-to-theta-weighted norm exchange is made.

The exact sign of the full source is STILL not implied. One needs,
for each j, a source-exact signed, residual-paid finite bordered
lower matrix at N_j (or another exact high-floor cutoff).
The archive at T=2,N=64 cannot be reused at j>1 by mere
index relabeling or a physical Turing machine simulation: its
gamma multiplier, prime inventory, pole vector, metrics, trial
reconstruction and all remote errors change with T and beta.
The cofinal inference to RH consumes forall j, StageLower j,
which this module does NOT assert or construct.

Heat and coding: the pre-existing stageCoverageStep and positive
stageCoverageWeight are coverage heat only; the exact unobserved
tail is 2^(-J), not zero. Neither is the finite Euler sign checker
or an actual reference semigroup. Existing dependentProofCodec/
rationalStageRecordCodec gives a verified roundtrip on finite
descriptors and rational certificate/error payloads. Encoding
arbitrary infinite-dimensional source functions is NOT claimed.

No native checker, external task execution, or Turing-machine
automation was performed for this source candidate. Its proof
bodies reuse the original high-complement theorem; they do not
replace the unproved finite sign obligations with a new assumption.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalHighComplement

open OddHighComplement OddLiteralWindow OddSineParseval OddRootProjection
open OddShiftEnergy
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-- Exact source support radius of StageLower j. -/
def stageRadius (j : ℕ) : ℝ := (j : ℝ) + 1

/-- Exact physical-L2 shift of StageLower j, not a weighted metric. -/
def stageShift (j : ℕ) : ℝ := -((1 / 2 : ℝ) ^ j)

/-- A source-computable finite cutoff for the complete high complement.
Every active prime power and the boundary loss remain in highCutoff. -/
def stageHighIndex (j : ℕ) : ℕ :=
  highCutoff (stageRadius j) (stageShift j) 4 (1 / 5)

theorem stageRadius_pos (j : ℕ) : 0 < stageRadius j := by
  unfold stageRadius
  positivity

/-- The full, source-specific coercive HIGH-COMPLEMENT bound exists
at every stage without any accepted finite-head sign certificate. -/
theorem cofinal_highFloor (j : ℕ) :
    HighFloor (stageRadius j) (stageShift j) (1 / 5) (stageHighIndex j) := by
  exact HighFloor.of_exactHighCutoff
    (stageRadius j) (stageRadius_pos j) (stageShift j) (1 / 5) (le_refl _)

/-- Every larger head cutoff also has the same complete high floor;
only the size of the unresolved finite-head problem increases. -/
theorem cofinal_highFloor_of_le (j N : ℕ)
    (hN : stageHighIndex j ≤ N) :
    HighFloor (stageRadius j) (stageShift j) (1 / 5) N := by
  exact HighFloor.of_exactHighCutoff
    (stageRadius j) (stageRadius_pos j) (stageShift j) (1 / 5) hN

/-- Unpack the exact source estimate, retaining every test-domain and
high-head quantifier. This is NOT the pole-inclusive StageLower. -/
theorem core_lower_on_cofinal_high_complement (j : ℕ) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume)
    (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-(stageRadius j)) (stageRadius j) → g t = 0)
    (hhead : ∀ n < stageHighIndex j,
      sineCoefficient (stageRadius j) g (n + 1) = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r *
      zeroShiftEnergy r g) (Ioi 0)) :
    (1 / 5 : ℝ) * (∫ t : ℝ, ‖g t‖ ^ 2) ≤
      shiftedOddCoreEnergy (stageRadius j) (stageShift j) g :=
  (cofinal_highFloor j) hg hgm hgo hgs hhead henergy

/-! The finite record and branch coverage interfaces reuse exact
existing definitions, not an executable solver or a new arithmetic sign. -/

/-- The dependent token list identifies the original source, sector,
window and approximation stage. The rational payload can include
every certificate and approximation-error entry without truncation. -/
def cofinalStageRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

theorem cofinalStageRecord_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    cofinalStageRecordCodec.decode
      (cofinalStageRecordCodec.encode record) = some record :=
  cofinalStageRecordCodec.roundtrip record

/-- Every Nat stage has a recoverable label with positive coverage heat;
this cannot promote any unresolved StageLower proposition. -/
theorem every_cofinalStage_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n) (j : ℕ) :
    ∃ n : ℕ, Encodable.decode n = some j ∧
      0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm j

/-- Entire unobserved countable stage tail at EVERY cutoff J. -/
theorem cofinalStageCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal.CofinalHighComplement
