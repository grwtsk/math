/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness

set_option autoImplicit false

/-!
# Checked successor-state witnesses for the ORIGINAL inverse power

The base, parameter and resolution are external fixed inputs. The logarithm and
Taylor seed are recomputed, never read from a witness. Successor states are
checked by exact integer inequalities; the final log-sensitivity charge remains.
This is an additive leaf adapter, not a replacement complete contour verifier.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower

open RationalComplexEnclosure RationalDyadicArithmetic IntegerDyadicSquare
open GRWTSK.Algebra.BigOperators.IndexedStateFold
open RationalNewtonDisk (magnitude)

/-- No editable seed: both its coordinates and its complete radius are recomputed. -/
def start (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) : State :=
  let ell := RationalPowerValue.logBall t d
  let w := mul (sub zero s) ell.mid
  IntegerExpStateFold.initial d.bits w d.squarings d.expTerms

/-- The last integer state still needs the OLD uncertainty from the true logarithm. -/
def finish (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) (out : State) : Ball :=
  let ell := RationalPowerValue.logBall t d
  let z := decode d.bits out
  ⟨z.mid, up d.bits (z.rad+magnitude s*ell.rad)⟩

def evaluate (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution)
    (rows : List State) : Option Ball :=
  if RationalPowerValue.check s t d then
    (IntegerSquareWitness.walk d.bits d.squarings (start s t d) rows).map (finish s t d)
  else none

theorem evaluate_eq_some_iff (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution)
    (rows : List State) (b : Ball) : evaluate s t d rows = some b ↔
      RationalPowerValue.check s t d = true ∧
      ∃ out, IntegerSquareWitness.walk d.bits d.squarings (start s t d) rows = some out ∧
        finish s t d out = b := by
  by_cases hc : RationalPowerValue.check s t d = true
  · cases hw : IntegerSquareWitness.walk d.bits d.squarings (start s t d) rows <;>
      simp [evaluate, hc, hw]
  · simp [evaluate, hc]

/-- Equality of the complete ball, not just semantic containment or midpoint agreement. -/
theorem finish_eq_reference {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {out : State}
    (h : IntegerSquareWitness.walk d.bits d.squarings (start s t d) rows = some out) :
    finish s t d out = IntegerExpStateFold.powerValue s t d := by
  have he := IntegerSquareWitness.walk_sound h
  rw [← he]
  rfl

/-- Every accepted witness supplies the exact result of the OLD guarded evaluator. -/
theorem evaluate_refines {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {b : Ball} (h : evaluate s t d rows = some b) :
    RationalPowerValue.evaluate s t d = some b := by
  obtain ⟨hc,out,hw,hb⟩ := (evaluate_eq_some_iff _ _ _ _ _).mp h
  have he : finish s t d out = RationalPowerValue.valueBall s t d :=
    (finish_eq_reference hw).trans ((IntegerExpStateFold.powerValue_eq s t d).trans
      (RationalExpStateFold.powerValue_eq s t d))
  exact (RationalPowerValue.evaluate_eq_some_iff _ _ _ _).mpr ⟨hc,he.symm.trans hb⟩

theorem evaluate_sound {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {b : Ball} (h : evaluate s t d rows = some b) :
    Holds b ((t : ℂ)^(-toComplex s)) :=
  RationalPowerValue.evaluate_sound (evaluate_refines h)

theorem accepted_length {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {b : Ball} (h : evaluate s t d rows = some b) :
    rows.length = d.squarings := by
  obtain ⟨_,out,hw,_⟩ := (evaluate_eq_some_iff _ _ _ _ _).mp h
  exact IntegerSquareWitness.walk_length hw

/-- Completeness is relative to this literal input, not an input-authentication claim. -/
theorem exists_rows_iff (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) (b : Ball) :
    (∃ rows, evaluate s t d rows = some b) ↔ RationalPowerValue.evaluate s t d = some b := by
  constructor
  · rintro ⟨rows,h⟩; exact evaluate_refines h
  · intro h
    obtain ⟨hc,hb⟩ := (RationalPowerValue.evaluate_eq_some_iff _ _ _ _).mp h
    let rows := IntegerSquareWitness.rowsFor d.bits d.squarings (start s t d)
    have hw := IntegerSquareWitness.walk_rowsFor d.bits d.squarings (start s t d)
    refine ⟨rows,(evaluate_eq_some_iff _ _ _ _ _).mpr ⟨hc,_,hw,?_⟩⟩
    exact (finish_eq_reference hw).trans ((IntegerExpStateFold.powerValue_eq s t d).trans
      ((RationalExpStateFold.powerValue_eq s t d).trans hb))

/-- Valid witness arithmetic can still be too coarse for a requested tolerance. -/
def evaluateWithin (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution)
    (rows : List State) (epsilon : ℚ) : Option Ball :=
  match evaluate s t d rows with
  | none => none
  | some b => if decide (0 ≤ epsilon ∧ b.rad ≤ epsilon) then some b else none

theorem within_refines {s : Coordinates} {t epsilon : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {b : Ball} (h : evaluateWithin s t d rows epsilon = some b) :
    evaluate s t d rows = some b ∧ 0 ≤ epsilon ∧ b.rad ≤ epsilon := by
  unfold evaluateWithin at h
  cases he : evaluate s t d rows with
  | none => simp [he] at h
  | some v =>
      by_cases hp : 0 ≤ epsilon ∧ v.rad ≤ epsilon
      · have hv : v = b := by simpa [he,hp] using h
        subst v
        refine ⟨?_,hp⟩
        simp only [he]
      · simp [he,hp] at h

end GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower
