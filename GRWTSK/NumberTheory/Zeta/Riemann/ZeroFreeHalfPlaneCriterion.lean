/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Strict right-half-plane criterion for the Riemann hypothesis

The zero-free predicate in this file is stated for `NontrivialZetaZero`, so the
negative even trivial zeros and the totalized value at the pole are not silently
folded into a raw nonvanishing claim.

The main result is the exact equivalence

```
NontrivialZeroFreeRightHalfPlane (1 / 2) ↔ RiemannHypothesis.
```

The reverse implication uses the already proved functional-equation reflection
of nontrivial zeros: a zero strictly left of the critical line would reflect to
one strictly right of it.  This file constructs no zero-free estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

/-- No nontrivial zeta zero lies in the strict half-plane `σ < re(s)`.

The threshold is strict.  No assertion is made on the boundary `re(s) = σ`. -/
def NontrivialZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → ¬ NontrivialZetaZero s

/-- A smaller threshold gives a stronger zero-free statement. -/
theorem nontrivialZeroFreeRightHalfPlane_mono
    {a b : ℝ} (hab : a ≤ b)
    (ha : NontrivialZeroFreeRightHalfPlane a) :
    NontrivialZeroFreeRightHalfPlane b := by
  intro s hbs hs
  exact ha s (lt_of_le_of_lt hab hbs) hs

/-- The standard critical-strip theorem supplies the unconditional but weak
strict half-plane `re(s) > 1`. -/
theorem nontrivialZeroFreeRightHalfPlane_one :
    NontrivialZeroFreeRightHalfPlane 1 := by
  intro s hright hs
  have hstrip := hs.mem_critical_strip
  linarith

/-- Every threshold at least one inherits the unconditional critical-strip
exclusion. -/
theorem nontrivialZeroFreeRightHalfPlane_of_one_le
    {σ : ℝ} (hσ : 1 ≤ σ) :
    NontrivialZeroFreeRightHalfPlane σ :=
  nontrivialZeroFreeRightHalfPlane_mono hσ
    nontrivialZeroFreeRightHalfPlane_one

/-- Canonical RH excludes every nontrivial zero strictly to the right of any
threshold at or to the right of the critical line. -/
theorem nontrivialZeroFreeRightHalfPlane_of_rh
    {σ : ℝ} (hσ : (1 / 2 : ℝ) ≤ σ)
    (hRH : _root_.RiemannHypothesis) :
    NontrivialZeroFreeRightHalfPlane σ := by
  intro s hsigma hs
  have hline : s.re = (1 / 2 : ℝ) :=
    hRH s hs.1 hs.2.1 hs.2.2
  linarith

/-- A zero-free strict half-plane whose boundary is at or left of `1/2`
forces RH.  A zero left of `1/2` reflects to a nontrivial zero right of `1/2`. -/
theorem riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane
    {σ : ℝ} (hσ : σ ≤ (1 / 2 : ℝ))
    (hfree : NontrivialZeroFreeRightHalfPlane σ) :
    _root_.RiemannHypothesis := by
  intro s hz htrivial hpole
  have hs : NontrivialZetaZero s := ⟨hz, htrivial, hpole⟩
  by_contra hline
  rcases lt_or_gt_of_ne hline with hleft | hright
  · have hreflect : (1 / 2 : ℝ) < (zeroReflect s).re := by
      simp [zeroReflect]
      linarith
    exact (hfree (zeroReflect s) (lt_of_le_of_lt hσ hreflect)) hs.reflect
  · exact (hfree s (lt_of_le_of_lt hσ hright)) hs

/-- Exact strict-half-plane reformulation of canonical RH. -/
theorem nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis :
    NontrivialZeroFreeRightHalfPlane (1 / 2 : ℝ) ↔
      _root_.RiemannHypothesis := by
  constructor
  · exact riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane le_rfl
  · exact nontrivialZeroFreeRightHalfPlane_of_rh le_rfl

/-- The new criterion terminates in the repository's independently fixed target
statement, not a replacement proposition. -/
theorem Target.statement_iff_nontrivialZeroFreeRightHalfPlane_half :
    Target.Statement ↔
      NontrivialZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  rw [Target.statement_eq_mathlib]
  exact nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis.symm

end GRWTSK.RiemannHypothesis
