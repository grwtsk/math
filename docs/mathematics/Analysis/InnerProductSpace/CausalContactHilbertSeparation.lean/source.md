# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c648cf161235be6f8a319980ba9adea4614e3487` · SHA-256 `09abbb34f51c651011d97bea9fd7acc94b71018e15a6f2f9478fb328db2edf98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
import Mathlib.MeasureTheory.Function.L2Space

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Contact separation in the actual Lebesgue L2 space


The contacting original-window feature is the zero L2 class. The prescribed
source class is nonzero by its genuine unit squared integral. A linear map on
this same L2 space cannot send the former to the latter. No continuity, bounded
operator norm or source-free realization assumption is needed for this limited
obstruction. Arbitrary label mixing, added boundary features, changed windows,
native arithmetic budgets and more general transformed comparisons remain open.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation

open MeasureTheory
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation

noncomputable section

/-- The actual source cannot vanish even almost everywhere. -/
theorem prescribed_source_vector_not_ae_zero {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    ¬ SourceGram.sourceVector A n =ᵐ[volume] (0 : ℝ → ℝ) := by
  intro isZero
  have positive : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  have unit := SourceGram.source_gram_diagonal_eq_one hA n
  rw [SourceGram.source_gram_eq_integral positive positive] at unit
  have integralZero : (∫ x : ℝ, SourceGram.sourceVector A n x *
      SourceGram.sourceVector A n x) = 0 := by
    calc
      _ = ∫ _x : ℝ, (0 : ℝ) := by
        apply integral_congr_ae
        filter_upwards [isZero] with x hx
        simp only [Pi.zero_apply] at hx
        rw [hx, zero_mul]
      _ = 0 := by simp
  rw [integralZero] at unit
  norm_num at unit

/-- The full contacting native feature, admitted to the actual Lebesgue L2 space. -/
def touchingWindowL2 (n : ℕ) (hn : 1 ≤ n) : Lp ℝ 2 (volume : Measure ℝ) :=
  (show MemLp (windowResponse (Real.log (n : ℝ)) n) 2 volume from by
    rw [touching_window_response_eq_zero hn]
    exact MemLp.zero).toLp (windowResponse (Real.log (n : ℝ)) n)

/-- The actual translated prescribed source, using its proved positive-scale L2 admission. -/
def prescribedSourceL2 (A : ℝ) (hA : 0 < A) (n : ℕ) : Lp ℝ 2 (volume : Measure ℝ) :=
  (SourceGram.source_vector_memLp hA n).toLp (SourceGram.sourceVector A n)

theorem touching_window_L2_eq_zero (n : ℕ) (hn : 1 ≤ n) : touchingWindowL2 n hn = 0 := by
  unfold touchingWindowL2
  exact (MemLp.toLp_congr _ (MemLp.zero : MemLp (0 : ℝ → ℝ) 2 volume)
    (Filter.EventuallyEq.of_eq (touching_window_response_eq_zero hn))).trans
    (MemLp.toLp_zero _)

theorem prescribed_source_L2_ne_zero {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) : prescribedSourceL2 A hA n ≠ 0 := by
  intro isZero
  have equality : (SourceGram.source_vector_memLp hA n).toLp (SourceGram.sourceVector A n) =
      (MemLp.zero : MemLp (0 : ℝ → ℝ) 2 volume).toLp 0 := isZero
  exact prescribed_source_vector_not_ae_zero hA hn
    ((MemLp.toLp_eq_toLp_iff _ _).mp equality)

/-- Even an unbounded linear map cannot realize this same-label contacting feature.
This does not exclude operators using other labels or additional input features. -/
theorem linear_hilbert_contact_map_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n)
    (map : Lp ℝ 2 (volume : Measure ℝ) →ₗ[ℝ] Lp ℝ 2 (volume : Measure ℝ)) :
    map (touchingWindowL2 n hn) ≠ prescribedSourceL2 A hA n := by
  rw [touching_window_L2_eq_zero, map.map_zero]
  exact (prescribed_source_L2_ne_zero hA hn).symm

end

end GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
```
