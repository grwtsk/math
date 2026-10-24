# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LipschitzSampleEnvelope.Variant20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2f7066b9e4f2cee0cb3580efb30244b043198a6` · SHA-256 `20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SamplingOptimization

/-!
# The exact envelope supplied by Lipschitz data and sample caps

Batch 03's sampling information class is reconstructed on an arbitrary
nonempty set of real samples. Nonnegative finite caps and a nonnegative
Lipschitz constant make the conditional infimum well-defined. The envelope
itself has the prescribed Lipschitz modulus and obeys every cap, so no smaller
pointwise upper bound follows from this information class alone. This does
not restrict algorithms that use additional arithmetic information.

Human sampling-bound direction: grwtsk contributors. Local infimum interface
and Lean proof: OpenAI Codex. Mathlib conditional completeness retains its
upstream identity. The sample-count and logarithmic-coverage consumers are
separate from the envelope theorem.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.LipschitzSampleEnvelope

noncomputable section

/-- The envelope in this module, with the following exact parameterization.

def envelope (S : Set ℝ) (b : S → ℝ) (L x : ℝ) : ℝ := ⨅ s : S, b s + L * |x - (s : ℝ)|
-/
def envelope (S : Set ℝ) (b : S → ℝ) (L x : ℝ) : ℝ :=
  ⨅ s : S, b s + L * |x - (s : ℝ)|

/-- The admissible in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def Admissible (S : Set ℝ) (b : S → ℝ) (L : ℝ) (f : ℝ → ℝ) : Prop := (∀ s : S, f s ≤ b s) ∧ ∀
x y : ℝ, |f x - f y| ≤ L * |x - y|
-/
def Admissible (S : Set ℝ) (b : S → ℝ) (L : ℝ) (f : ℝ → ℝ) : Prop :=
  (∀ s : S, f s ≤ b s) ∧ ∀ x y : ℝ, |f x - f y| ≤ L * |x - y|

theorem envelope_candidates_bounded_below {S : Set ℝ} {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (x : ℝ) :
    BddBelow (Set.range (fun s : S => b s + L * |x - (s : ℝ)|)) := by
  refine ⟨0, ?_⟩
  rintro z ⟨s, rfl⟩
  exact add_nonneg (hb s) (mul_nonneg hL (abs_nonneg _))

theorem envelope_le_sample_cone {S : Set ℝ} {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (x : ℝ) (s : S) :
    envelope S b L x ≤ b s + L * |x - (s : ℝ)| :=
  ciInf_le (envelope_candidates_bounded_below hb hL x) s

theorem envelope_nonneg {S : Set ℝ} [Nonempty S] {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (x : ℝ) : 0 ≤ envelope S b L x := by
  exact le_ciInf (fun s => add_nonneg (hb s) (mul_nonneg hL (abs_nonneg _)))

theorem envelope_obeys_caps {S : Set ℝ} {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (s : S) : envelope S b L s ≤ b s := by
  simpa using envelope_le_sample_cone hb hL (s : ℝ) s

theorem envelope_directed_lipschitz {S : Set ℝ} [Nonempty S] {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (x y : ℝ) :
    envelope S b L x ≤ envelope S b L y + L * |x - y| := by
  apply (sub_le_iff_le_add).mp
  apply le_ciInf
  intro s
  have hx := envelope_le_sample_cone hb hL x s
  have htriangle := mul_le_mul_of_nonneg_left (abs_sub_le x y (s : ℝ)) hL
  linarith

theorem envelope_is_lipschitz {S : Set ℝ} [Nonempty S] {b : S → ℝ} {L : ℝ}
    (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) (x y : ℝ) :
    |envelope S b L x - envelope S b L y| ≤ L * |x - y| := by
  have hxy := envelope_directed_lipschitz hb hL x y
  have hyx := envelope_directed_lipschitz hb hL y x
  rw [abs_sub_comm y x] at hyx
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem admissible_below_envelope {S : Set ℝ} [Nonempty S] {b : S → ℝ}
    {L : ℝ} {f : ℝ → ℝ} (hf : Admissible S b L f) (x : ℝ) :
    f x ≤ envelope S b L x := by
  apply le_ciInf
  intro s
  have h := (le_abs_self (f x - f s)).trans (hf.2 x s)
  linarith [hf.1 s]

theorem envelope_is_greatest_admissible {S : Set ℝ} [Nonempty S] {b : S → ℝ}
    {L : ℝ} (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) :
    Admissible S b L (envelope S b L) ∧
      ∀ f : ℝ → ℝ, Admissible S b L f → ∀ x, f x ≤ envelope S b L x := by
  exact ⟨⟨envelope_obeys_caps hb hL, envelope_is_lipschitz hb hL⟩,
    fun f hf x => admissible_below_envelope hf x⟩

theorem information_cap_iff_envelope_cap {S : Set ℝ} [Nonempty S] {b : S → ℝ}
    {L C x : ℝ} (hb : ∀ s, 0 ≤ b s) (hL : 0 ≤ L) :
    (∀ f : ℝ → ℝ, Admissible S b L f → f x ≤ C) ↔ envelope S b L x ≤ C := by
  constructor
  · intro hall
    exact hall _ (envelope_is_greatest_admissible hb hL).1
  · intro h f hf
    exact (admissible_below_envelope hf x).trans h

/-- The sample distance in this module, with the following exact parameterization.

def sampleDistance (S : Set ℝ) (x : ℝ) : ℝ := ⨅ s : S, |x - (s : ℝ)|
-/
def sampleDistance (S : Set ℝ) (x : ℝ) : ℝ := ⨅ s : S, |x - (s : ℝ)|

theorem zero_cap_envelope_eq_distance {S : Set ℝ} [Nonempty S] {L : ℝ}
    (hL : 0 < L) (x : ℝ) :
    envelope S (fun _ => 0) L x = L * sampleDistance S x := by
  have hb : ∀ s : S, (0 : ℝ) ≤ 0 := fun _ => le_refl _
  apply le_antisymm
  · have hdiv : envelope S (fun _ => 0) L x / L ≤ sampleDistance S x := by
      apply le_ciInf
      intro s
      apply (div_le_iff₀ hL).mpr
      simpa only [zero_add, mul_comm] using envelope_le_sample_cone hb hL.le x s
    simpa only [mul_comm] using (div_le_iff₀ hL).mp hdiv
  · apply le_ciInf
    intro s
    have hd : sampleDistance S x ≤ |x - (s : ℝ)| := by
      apply ciInf_le
      refine ⟨0, ?_⟩
      rintro z ⟨t, rfl⟩
      exact abs_nonneg _
    simpa only [zero_add] using mul_le_mul_of_nonneg_left hd hL.le

/-- The next consumer converts every permitted zero-cap inference into metric coverage. -/
theorem zero_cap_information_iff_distance_cap {S : Set ℝ} [Nonempty S]
    {L C x : ℝ} (hL : 0 < L) :
    (∀ f : ℝ → ℝ, Admissible S (fun _ => 0) L f → f x ≤ C) ↔
      sampleDistance S x ≤ C / L := by
  rw [information_cap_iff_envelope_cap (fun _ => le_refl 0) hL.le,
    zero_cap_envelope_eq_distance hL]
  rw [le_div_iff₀ hL, mul_comm]

end
end GRWTSK.RiemannHypothesis.Conversation.LipschitzSampleEnvelope
```
