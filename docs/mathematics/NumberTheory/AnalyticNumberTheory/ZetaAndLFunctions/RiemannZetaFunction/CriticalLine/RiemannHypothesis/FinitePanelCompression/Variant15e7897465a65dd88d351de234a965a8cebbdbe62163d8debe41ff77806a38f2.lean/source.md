# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FinitePanelCompression.Variant15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82281a63a4d43c97d7c0612daaa86ad1323118b` · SHA-256 `15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AtomicSuperlevels

/-!
# The finite positive-panel compression factor keeps its complete moment

Batch 07's compression ratio is the compressed root p-energy divided by the
uncompressed weighted p-moment. For every fixed real p>=1 the exact weighted
Holder law gives a factor between zero and one, with the nonzero-moment guard
retained. The same factor is the normalized mean to the pth power divided by
the normalized p-moment. No zero-seam data or probability shape substitutes
for either scalar moment, and no prime-panel compression estimate is supplied.

Human compression/superlevel direction: grwtsk contributors. Local complete
finite moment interface and Lean proofs: OpenAI Codex. Mathlib Holder and real
powers retain their upstream identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FinitePanelCompression

open WeightedLpReserve
open scoped BigOperators
noncomputable section

/-- The mass in this module, with the following exact parameterization.

def mass {ι : Type*} (s : Finset ι) (w : ι → ℝ) : ℝ := ∑ i ∈ s, w i
-/
def mass {ι : Type*} (s : Finset ι) (w : ι → ℝ) : ℝ := ∑ i ∈ s, w i
/-- The load in this module, with the following exact parameterization.

def load {ι : Type*} (s : Finset ι) (w B : ι → ℝ) : ℝ := ∑ i ∈ s, w i * B i
-/
def load {ι : Type*} (s : Finset ι) (w B : ι → ℝ) : ℝ := ∑ i ∈ s, w i * B i
/-- The moment in this module, with the following exact parameterization.

def moment {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ := ∑ i ∈ s, w i * (B i) ^ p
-/
def moment {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ :=
  ∑ i ∈ s, w i * (B i) ^ p
/-- The root energy in this module, with the following exact parameterization.

def rootEnergy {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ := (load s w B) ^ p /
(mass s w) ^ (p - 1)
-/
def rootEnergy {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ :=
  (load s w B) ^ p / (mass s w) ^ (p - 1)
/-- The compression factor in this module, with the following exact parameterization.

def compressionFactor {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ := rootEnergy s w B
p / moment s w B p
-/
def compressionFactor {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (p : ℝ) : ℝ :=
  rootEnergy s w B p / moment s w B p

theorem mass_pos {ι : Type*} {s : Finset ι} {w : ι → ℝ} (hs : s.Nonempty)
    (hw : ∀ i, 0 < w i) : 0 < mass s w :=
  Finset.sum_pos (fun i _ => hw i) hs

theorem positive_panel_root_le_moment {ι : Type*} {s : Finset ι} {w B : ι → ℝ}
    {p : ℝ} (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hB : ∀ i, 0 ≤ B i) (hp : 1 ≤ p) :
    rootEnergy s w B p ≤ moment s w B p := by
  have hW := mass_pos hs hw
  have hV : 0 ≤ load s w B := Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (hB i))
  have hE : 0 ≤ moment s w B p := Finset.sum_nonneg
    (fun i _ => mul_nonneg (hw i).le (Real.rpow_nonneg (hB i) p))
  have hppos : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have h := finite_weighted_holder s w (fun i => w i * B i) hp hw
    (fun i => mul_nonneg (hw i).le (hB i))
  have hterms : (∑ i ∈ s, (w i * B i) ^ p / (w i) ^ (p - 1)) = moment s w B p := by
    apply Finset.sum_congr rfl
    intro i _
    have he := weighted_power_payment (p := p) (hw i) (mul_nonneg (hw i).le (hB i))
    have hd : w i * B i / w i = B i := by field_simp [(hw i).ne']
    rw [hd] at he
    exact he.symm
  rw [hterms] at h
  change load s w B ≤ (mass s w) ^ (1 - p⁻¹) * (moment s w B p) ^ p⁻¹ at h
  have hpow := Real.rpow_le_rpow hV h hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le, ← Real.rpow_mul hE] at hpow
  have he : (1 - p⁻¹) * p = p - 1 := by field_simp
  rw [he, inv_mul_cancel₀ hppos.ne', Real.rpow_one] at hpow
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p - 1))).mpr
  simpa only [mass, load, mul_comm] using hpow

theorem compression_factor_bounds {ι : Type*} {s : Finset ι} {w B : ι → ℝ} {p : ℝ}
    (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hB : ∀ i, 0 ≤ B i) (hp : 1 ≤ p)
    (hE : 0 < moment s w B p) : 0 ≤ compressionFactor s w B p ∧ compressionFactor s w B p ≤ 1 := by
  constructor
  · exact div_nonneg (div_nonneg
      (Real.rpow_nonneg (Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (hB i))) p)
      (Real.rpow_nonneg (mass_pos hs hw).le (p - 1))) hE.le
  · exact (div_le_one hE).mpr (positive_panel_root_le_moment hs hw hB hp)

theorem compression_factor_is_normalized_moment_ratio {ι : Type*} {s : Finset ι}
    {w B : ι → ℝ} {p : ℝ} (hW : 0 < mass s w) (hV : 0 ≤ load s w B)
    (hE : moment s w B p ≠ 0) :
    compressionFactor s w B p =
      (load s w B / mass s w) ^ p / (moment s w B p / mass s w) := by
  rw [Real.div_rpow hV hW.le]
  unfold compressionFactor rootEnergy
  have hpow : (mass s w) ^ p = (mass s w) ^ (p - 1) * mass s w := by
    calc
      (mass s w) ^ p = (mass s w) ^ ((p - 1) + 1) := by congr 1; ring
      _ = (mass s w) ^ (p - 1) * (mass s w) ^ (1 : ℝ) := Real.rpow_add hW _ _
      _ = (mass s w) ^ (p - 1) * mass s w := by rw [Real.rpow_one]
  rw [hpow]
  have hd : (mass s w) ^ (p - 1) ≠ 0 := (Real.rpow_pos_of_pos hW _).ne'
  field_simp [hW.ne', hE, hd]

end
end GRWTSK.RiemannHypothesis.Conversation.FinitePanelCompression
```
