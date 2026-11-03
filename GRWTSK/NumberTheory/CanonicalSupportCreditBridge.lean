/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.TargetSupportCompensation
import GRWTSK.NumberTheory.DiophantineEquations.EquivalentForms

set_option autoImplicit false
noncomputable section

/-!
# Same-triple bridge to the canonical ABC target

The support-credit interface uses exactly the repository's canonical
positive primitive additive triples, height, radical and epsilon.
These are formulation bridges, not a supplied uniform support estimate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.CanonicalSupportCreditBridge
open RetainedFactorization AdditiveDefectEstimate TargetSupportCompensation
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

def toCanonical (T : CoprimeAdditiveTriple) : PrimitiveAdditiveTriple where
  a := T.a
  b := T.b
  c := T.c
  a_pos := T.a_pos
  b_pos := T.b_pos
  sum_eq := T.additive
  coprime_ab := T.coprime

def fromCanonical (t : PrimitiveAdditiveTriple) : CoprimeAdditiveTriple where
  a := t.a
  b := t.b
  c := t.c
  a_pos := t.a_pos
  b_pos := t.b_pos
  c_pos := t.c_pos
  additive := t.sum_eq
  coprime := t.coprime_ab

theorem defect_eq_canonical_height_difference (T : CoprimeAdditiveTriple) (ε : ℝ) :
    defect T ε = (toCanonical T).logHeight - (1 + ε) * (toCanonical T).logRadical := rfl

theorem canonical_logBound_iff_supportCredit (ε : ℝ) :
    ABCLogBound ε ↔ ∃ C : ℝ, ∀ T : CoprimeAdditiveTriple, targetCredit T ε ≤ C := by
  constructor
  · rintro ⟨C, hC⟩
    refine ⟨C, fun T => ?_⟩
    have h := hC (toCanonical T)
    rw [← defect_eq_targetCredit]
    rw [defect_eq_canonical_height_difference]
    linarith
  · rintro ⟨C, hC⟩
    refine ⟨C, fun t => ?_⟩
    have h := hC (fromCanonical t)
    rw [← defect_eq_targetCredit, defect_eq_canonical_height_difference] at h
    change t.logHeight - (1 + ε) * t.logRadical ≤ C at h
    linarith

theorem canonical_bound_iff_supportCredit (ε : ℝ) :
    ABCBound ε ↔ ∃ C : ℝ, ∀ T : CoprimeAdditiveTriple, targetCredit T ε ≤ C :=
  (abcBound_iff_logBound ε).trans (canonical_logBound_iff_supportCredit ε)

/-- Quantifier order is retained; neither side is supplied as a theorem of ABC. -/
theorem canonical_conjecture_iff_supportCredit :
    ABCConjecture ↔ ∀ ε : ℝ, 0 < ε →
      ∃ C : ℝ, ∀ T : CoprimeAdditiveTriple, targetCredit T ε ≤ C := by
  simp only [ABCConjecture, canonical_bound_iff_supportCredit]

end GRWTSK.NumberTheory.ABC.CanonicalSupportCreditBridge
