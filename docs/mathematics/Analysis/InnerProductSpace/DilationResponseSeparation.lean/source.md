# Complete source: GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7` · SHA-256 `f2d9dce65eb18dd999d528448d3331e4679c826b2e2a8dbf83ddd339c7e514ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.DilationGram
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Obstruction to direct identification of native and prescribed Gram entries

The native causal gate has zero response at a touching admitted atom. The
prescribed positive-radius normalized Gram diagonal is one. A transformed or
renormalized comparison requires its own theorem; direct equality is false.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceNativeSeparation

open MeasureTheory Set
open ArithmeticPickupEnergy

noncomputable section

theorem native_touching_diagonal_zero {n : ℕ} (hn : 1 ≤ n) :
    gram (Real.log (n : ℝ)) n n = 0 := by
  unfold gram
  calc
    (∫ u in Ioc 0 (Real.log (n : ℝ)), response n u * response n u) =
        ∫ _u : ℝ in Ioc 0 (Real.log (n : ℝ)), (0 : ℝ) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u hu
      change response n u * response n u = 0
      by_cases htouch : u = Real.log (n : ℝ)
      · subst u
        rw [response_touching_atom_zero hn, zero_mul]
      · have before : ¬ Real.log (n : ℝ) ≤ u := by
          intro arrived
          exact htouch (le_antisymm hu.2 arrived)
        rw [response_of_not_arrived before, zero_mul]
    _ = 0 := by simp

theorem touching_atom_in_inventory {n : ℕ} (hn : 1 ≤ n) :
    n ∈ inventory (Real.log (n : ℝ)) :=
  (admitted_iff_arrived hn).mpr le_rfl

theorem native_touching_ne_prescribed {A : ℝ} (hA : 0 < A) {n : ℕ} (hn : 1 ≤ n) :
    gram (Real.log (n : ℝ)) n n ≠ SourceGram.sourceGram A n n := by
  rw [native_touching_diagonal_zero hn, SourceGram.source_gram_diagonal_eq_one hA]
  norm_num

/-- Failure already occurs at a positive horizon and a literal admitted label. -/
theorem positive_horizon_obstruction {A : ℝ} (hA : 0 < A) :
    0 < Real.log (2 : ℝ) ∧
      2 ∈ inventory (Real.log (2 : ℝ)) ∧
      gram (Real.log (2 : ℝ)) 2 2 ≠ SourceGram.sourceGram A 2 2 := by
  refine ⟨Real.log_pos (by norm_num), touching_atom_in_inventory (by norm_num),
    native_touching_ne_prescribed hA (by norm_num)⟩


/-- The obstruction also obeys the prescribed horizon relation T = 2A with A ≥ 1. -/
theorem prescribed_horizon_obstruction :
    ∃ A : ℝ, 1 ≤ A ∧ 8 ∈ inventory (2 * A) ∧
      gram (2 * A) 8 8 ≠ SourceGram.sourceGram A 8 8 := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_, ?_⟩
  · rw [horizon]
    exact touching_atom_in_inventory (n := 8) (by norm_num)
  · rw [horizon]
    exact native_touching_ne_prescribed (A := Real.log (8 : ℝ) / 2)
      (by linarith) (n := 8) (by norm_num)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceNativeSeparation
```
