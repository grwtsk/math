# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SampleCountLowerBound.Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feb2979a42dd5bba0b05466d33e4e829731a98d7` · SHA-256 `0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.LipschitzSampleEnvelope

/-!
# A finite sample-only certificate must cover the whole real interval

Batch 03's exact Lipschitz information envelope feeds a finite-cover length
bound. A zero-cap transcript can certify additive error epsilon throughout an
interval only if its sample balls of radius epsilon/L cover that interval.
Lebesgue length then gives card(S) >= L*(b-a)/(2*epsilon). Substituting the
literal exponential source endpoints retains the stated scale cost. No bound
on algorithms using additional arithmetic information follows.

Human sampling-cost direction: grwtsk contributors. Local coverage adapter and
Lean consumer: OpenAI Codex. Mathlib finite infima and Lebesgue measure retain
their identity. The actual source Lipschitz modulus is a separate obligation.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SampleCountLowerBound

open LipschitzSampleEnvelope MeasureTheory
open scoped BigOperators
noncomputable section

theorem finite_cover_length {samples : Finset ℝ} {a b r : ℝ} (hr : 0 ≤ r)
    (hcover : ∀ x ∈ Set.Icc a b, ∃ s ∈ samples, |x - s| ≤ r) :
    b - a ≤ (samples.card : ℝ) * (2 * r) := by
  have hsubset : Set.Icc a b ⊆ ⋃ s ∈ samples, Set.Icc (s - r) (s + r) := by
    intro x hx
    obtain ⟨s, hs, hdist⟩ := hcover x hx
    obtain ⟨hlo, hhi⟩ := abs_le.mp hdist
    exact Set.mem_iUnion.mpr ⟨s, Set.mem_iUnion.mpr ⟨hs,
      Set.mem_Icc.mpr ⟨by linarith, by linarith⟩⟩⟩
  have hv := (measure_mono (μ := volume) hsubset).trans
    (measure_biUnion_finset_le (μ := volume) samples
      (fun s => Set.Icc (s - r) (s + r)))
  simp only [Real.volume_Icc] at hv
  have heq : (∑ s ∈ samples, ENNReal.ofReal ((s + r) - (s - r))) =
      ENNReal.ofReal ((samples.card : ℝ) * (2 * r)) := by
    simp_rw [show ∀ s : ℝ, (s + r) - (s - r) = 2 * r by intro s; ring]
    rw [← ENNReal.ofReal_sum_of_nonneg (fun _ _ => by linarith :
      ∀ s ∈ samples, 0 ≤ (2 : ℝ) * r)]
    congr 1
    simp [nsmul_eq_mul]
  rw [heq] at hv
  exact (ENNReal.ofReal_le_ofReal_iff (mul_nonneg (Nat.cast_nonneg _)
    (by linarith : 0 ≤ 2 * r))).mp hv

theorem distance_cap_implies_finite_cover {samples : Finset ℝ} (hs : samples.Nonempty)
    {a b r : ℝ} (hcap : ∀ x ∈ Set.Icc a b, sampleDistance (samples : Set ℝ) x ≤ r) :
    ∀ x ∈ Set.Icc a b, ∃ s ∈ samples, |x - s| ≤ r := by
  have : Nonempty (samples : Set ℝ) := ⟨⟨hs.choose, hs.choose_spec⟩⟩
  have : Finite (samples : Set ℝ) := samples.finite_toSet.to_subtype
  intro x hx
  obtain ⟨s, hsmin⟩ := exists_eq_ciInf_of_finite
    (f := fun s : (samples : Set ℝ) => |x - (s : ℝ)|)
  refine ⟨s, s.property, ?_⟩
  rw [hsmin]
  exact hcap x hx

theorem zero_transcript_sample_count {samples : Finset ℝ} (hs : samples.Nonempty)
    {a b L ε : ℝ} (hL : 0 < L) (hε : 0 < ε)
    (hcert : ∀ f : ℝ → ℝ, Admissible (samples : Set ℝ) (fun _ => 0) L f →
      ∀ x ∈ Set.Icc a b, f x ≤ ε) :
    L * (b - a) / (2 * ε) ≤ (samples.card : ℝ) := by
  have : Nonempty (samples : Set ℝ) := ⟨⟨hs.choose, hs.choose_spec⟩⟩
  have hcap : ∀ x ∈ Set.Icc a b, sampleDistance (samples : Set ℝ) x ≤ ε / L := by
    intro x hx
    exact (zero_cap_information_iff_distance_cap hL).mp
      (fun f hf => hcert f hf x hx)
  have hlength := finite_cover_length (div_nonneg hε.le hL.le)
    (distance_cap_implies_finite_cover hs hcap)
  apply (div_le_iff₀ (by positivity : 0 < 2 * ε)).mpr
  have hmul := mul_le_mul_of_nonneg_left hlength hL.le
  field_simp at hmul
  nlinarith

theorem exponential_window_sample_count {samples : Finset ℝ} (hs : samples.Nonempty)
    {A₀ B L ε : ℝ} (hL : 0 < L) (hε : 0 < ε)
    (hcert : ∀ f : ℝ → ℝ, Admissible (samples : Set ℝ) (fun _ => 0) L f →
      ∀ x ∈ Set.Icc (Real.exp A₀) (Real.exp B), f x ≤ ε) :
    L * (Real.exp B - Real.exp A₀) / (2 * ε) ≤ (samples.card : ℝ) :=
  zero_transcript_sample_count hs hL hε hcert

end
end GRWTSK.RiemannHypothesis.Conversation.SampleCountLowerBound
```
