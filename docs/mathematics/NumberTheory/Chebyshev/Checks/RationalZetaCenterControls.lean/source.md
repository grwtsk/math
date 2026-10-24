# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.RationalZetaCenterControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fe12fe619f280f89f74163f3934eac7c2097c7a` · SHA-256 `6cbd49ad67966844f4aaa0513a548da237ef1aa91fd0493cb78f228b7c621995`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.VerifiedRationalNewtonCenter
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Source controls only: not executed, and not actual zero certificates. -/
namespace GRWTSK.RiemannHypothesis.RationalZetaCenterControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open RationalZetaCenterEvaluation

theorem terminal_empty : cutoffQ 0 = 1 := by norm_num [cutoffQ]
theorem terminal_not_last : cutoffQ 3 = 4 := by norm_num [cutoffQ]

theorem empty_finite_sum (f : Fin 0 → QComplex) : sumQ f = QComplex.zero := by
  simp [sumQ, QComplex.zero]

theorem factor_at_two : factorQ 0 ⟨2, 0⟩ = (⟨5 / 3, 0⟩ : QComplex) := by
  norm_num [factorQ, cutoffQ, QComplex.add, QComplex.sub, QComplex.div,
    QComplex.normSq, QComplex.smul, QComplex.one]

theorem negative_pole_derivative : factorSlopeQ 0 ⟨2, 0⟩ = (⟨-11 / 12, 0⟩ : QComplex) := by
  norm_num [factorSlopeQ, cutoffQ, QComplex.add, QComplex.sub, QComplex.div,
    QComplex.normSq, QComplex.smul, QComplex.pow, QComplex.mul, QComplex.one]

theorem empty_prefix_keeps_tail : FiniteNewtonCenter.diskBudgetQ 0 ⟨2, 0⟩ 0 = 1 / 4 := by
  norm_num [FiniteNewtonCenter.diskBudgetQ, QComplex.rect, QComplex.add,
    QComplex.one, QComplex.smul]

theorem pole_rejected (N : ℕ) (p : Plan N) : ¬Admissible N QComplex.one p := by
  intro hp
  have h := hp.2.2.1
  norm_num [QComplex.sub, QComplex.one, QComplex.normSq] at h

theorem zero_radius_rejected (N : ℕ) (c : QComplex) (p : Plan N)
    (hr : p.cauchyRadius = 0) : ¬Admissible N c p := by
  intro hp
  have h := hp.1
  rw [hr] at h
  exact (lt_irrefl 0) h

theorem too_large_radius_rejected (N : ℕ) (c : QComplex) (p : Plan N)
    (hr : c.re < p.cauchyRadius) : ¬Admissible N c p :=
  fun hp => (not_le_of_gt hr) hp.2.1

theorem bad_prefix_rejected (N : ℕ) (c : QComplex) (p : Plan N) (i : Fin N)
    (hb : ¬GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible
      ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)) : ¬Admissible N c p :=
  fun hp => hb (hp.2.2.2.1 i)

theorem bad_terminal_rejected (N : ℕ) (c : QComplex) (p : Plan N)
    (hb : ¬GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible
      (cutoffQ N) (sourceExponent c) p.terminal) : ¬Admissible N c p :=
  fun hp => hb hp.2.2.2.2

theorem altered_claim_rejected (N : ℕ) (c : QComplex) (p : Plan N)
    (tv td : ℚ) (out : CenterState) (hbad : compute N c p ≠ out) :
    verify N c p tv td out ≠ true := by
  intro hv
  exact hbad ((verify_iff N c p tv td out).mp hv).2.2

theorem slope_target_is_independent (N : ℕ) (c : QComplex) (p : Plan N)
    (tv td : ℚ) (hd : td < (compute N c p).slope.error) :
    evaluate N c p tv td = none :=
  (evaluate_none_iff N c p tv td).mpr (Or.inr (Or.inr hd))

theorem equality_is_numeric_tolerance (N : ℕ) (c : QComplex) (p : Plan N)
    (hp : Admissible N c p) :
    evaluate N c p (compute N c p).value.error (compute N c p).slope.error =
      some (compute N c p) :=
  (evaluate_some_iff N c p _ _ _).mpr ⟨hp, ⟨le_rfl, le_rfl⟩, rfl⟩

end GRWTSK.RiemannHypothesis.RationalZetaCenterControls
```
