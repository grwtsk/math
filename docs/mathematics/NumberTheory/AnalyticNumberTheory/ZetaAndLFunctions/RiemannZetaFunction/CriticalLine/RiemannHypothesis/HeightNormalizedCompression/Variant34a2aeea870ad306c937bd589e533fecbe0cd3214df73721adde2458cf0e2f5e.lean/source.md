# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HeightNormalizedCompression.Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2428bb922b7d667423a8f46c01e7069bd5c387d` · SHA-256 `34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RealSuperlevelCompression
import FormalResearch.RiemannHypothesis.Conversation.NativeSuperlevelConsumer

/-!
# Height normalization preserves compression and exposes the complete curve

The original panel loads and p-moments are H and H^p times those of the exact
unit profile. Their compression factor is unchanged. This gives Batch 07's
complete-curve ratio for arbitrary positive height and its next consumer on
literal ordinary-prime storage and native widths. The selected source panel,
height bound and nonzero moment remain explicit; no favorable substitute
profile, random prime phase, or estimate on the curve is supplied.

Human normalization constraints: grwtsk contributors. Local height adapter and
actual-source consumer: OpenAI Codex. Mathlib layer cake and powers retain
upstream formal-artifact and mathematical-source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.HeightNormalizedCompression

open FinitePanelCompression RealSuperlevelCompression
open NativeRecordConsumer ArithmeticPrimitive
open scoped BigOperators ENNReal
noncomputable section

/-- The unit profile in this module, with the following exact parameterization.

def unitProfile {ι : Type*} [DecidableEq ι] (s : Finset ι) (H : ℝ) (B : ι → ℝ) (i : ι) : ℝ :=
if i ∈ s then B i / H else 0
-/
def unitProfile {ι : Type*} [DecidableEq ι] (s : Finset ι) (H : ℝ) (B : ι → ℝ) (i : ι) : ℝ :=
  if i ∈ s then B i / H else 0

theorem load_height_identity {ι : Type*} [DecidableEq ι] (s : Finset ι) (w B : ι → ℝ)
    {H : ℝ} (hH : 0 < H) : load s w B = H * load s w (unitProfile s H B) := by
  unfold load
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [unitProfile, if_pos hi]
  field_simp

theorem moment_height_identity {ι : Type*} [DecidableEq ι] (s : Finset ι) (w B : ι → ℝ)
    {H p : ℝ} (hH : 0 < H) (hB : ∀ i ∈ s, 0 ≤ B i) :
    moment s w B p = H ^ p * moment s w (unitProfile s H B) p := by
  unfold moment
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [unitProfile, if_pos hi, Real.div_rpow (hB i hi) hH.le]
  have hHp : H ^ p ≠ 0 := (Real.rpow_pos_of_pos hH p).ne'
  field_simp

theorem compression_height_invariant {ι : Type*} [DecidableEq ι] {s : Finset ι}
    {w B : ι → ℝ} {H p : ℝ} (hs : s.Nonempty) (hw : ∀ i, 0 < w i)
    (hH : 0 < H) (hB : ∀ i ∈ s, 0 ≤ B i) (hE : 0 < moment s w B p) :
    compressionFactor s w B p = compressionFactor s w (unitProfile s H B) p := by
  have hW := mass_pos hs hw
  have hV : 0 ≤ load s w B := Finset.sum_nonneg (fun i hi => mul_nonneg (hw i).le (hB i hi))
  have hf0 : ∀ i, 0 ≤ unitProfile s H B i := by
    intro i
    unfold unitProfile
    split_ifs with hi
    · exact div_nonneg (hB i hi) hH.le
    · rfl
  have hVp : 0 ≤ load s w (unitProfile s H B) := Finset.sum_nonneg
    (fun i _ => mul_nonneg (hw i).le (hf0 i))
  have hm := moment_height_identity s w B (p := p) hH hB
  have hEp : moment s w (unitProfile s H B) p ≠ 0 := by
    intro he
    rw [he, mul_zero] at hm
    exact hE.ne' hm
  have hHp : H ^ p ≠ 0 := (Real.rpow_pos_of_pos hH p).ne'
  rw [compression_factor_is_normalized_moment_ratio hW hV hE.ne',
    compression_factor_is_normalized_moment_ratio hW hVp hEp,
    load_height_identity s w B hH, hm, mul_div_assoc,
    Real.mul_rpow hH.le (div_nonneg hVp hW.le)]
  field_simp [hHp, hEp, hW.ne']

theorem positive_panel_complete_curve {ι : Type*} [DecidableEq ι] [MeasurableSpace ι]
    [MeasurableSingletonClass ι] {s : Finset ι} {w B : ι → ℝ} {H p : ℝ}
    (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hH : 0 < H) (hp : 1 ≤ p)
    (hpanel : ∀ i ∈ s, 0 ≤ B i ∧ B i ≤ H)
    (hf : Measurable (unitProfile s H B)) (hE : 0 < moment s w B p) :
    compressionFactor s w B p =
      ((∫⁻ t in Set.Ioc (0 : ℝ) 1, normalizedCurve s w (unitProfile s H B) t).toReal) ^ p /
        (p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
          normalizedCurve s w (unitProfile s H B) t * ENNReal.ofReal (t ^ (p - 1))).toReal) := by
  have hf0 : ∀ i, 0 ≤ unitProfile s H B i := by
    intro i
    unfold unitProfile
    split_ifs with hi
    · exact div_nonneg (hpanel i hi).1 hH.le
    · rfl
  have hf1 : ∀ i ∈ s, unitProfile s H B i ≤ 1 := by
    intro i hi
    rw [unitProfile, if_pos hi]
    exact (div_le_one hH).mpr (hpanel i hi).2
  have hEunit : 0 < moment s w (unitProfile s H B) p := by
    have hm := moment_height_identity s w B (p := p) hH (fun i hi => (hpanel i hi).1)
    rw [hm] at hE
    exact (mul_pos_iff_of_pos_left (Real.rpow_pos_of_pos hH p)).mp hE
  rw [compression_height_invariant hs hw hH (fun i hi => (hpanel i hi).1) hE]
  exact compression_from_complete_superlevels hs hw hf hf0 hf1 hp hEunit

theorem actual_prime_panel_complete_curve {N : ℕ} {s : Finset ℕ} {H p : ℝ}
    (hN : 1 ≤ N) (hs : s.Nonempty) (hH : 0 < H) (hp : 1 ≤ p)
    (hpanel : ∀ j ∈ s, 0 ≤ NativeSuperlevelConsumer.storage N j ∧
      NativeSuperlevelConsumer.storage N j ≤ H)
    (hE : 0 < moment s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
      (NativeSuperlevelConsumer.storage N) p) :
    compressionFactor s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
      (NativeSuperlevelConsumer.storage N) p =
      ((∫⁻ t in Set.Ioc (0 : ℝ) 1,
        normalizedCurve s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
          (NativeSuperlevelConsumer.profile N s H) t).toReal) ^ p /
        (p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
          normalizedCurve s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
            (NativeSuperlevelConsumer.profile N s H) t * ENNReal.ofReal (t ^ (p - 1))).toReal) := by
  exact positive_panel_complete_curve hs (fun j => cellClock_pos (by omega : 1 ≤ N + j))
    hH hp hpanel (measurable_of_countable _) hE

end
end GRWTSK.RiemannHypothesis.Conversation.HeightNormalizedCompression
```
