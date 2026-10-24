# Complete source: GRWTSK.Analysis.Complex.SymmetricPairUnitTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c58f5cab5ebba880c91a9314aecea6665ca8ae1` · SHA-256 `e42cb627ebf6d7ccbd34ff9f5690ca0e0d76531f60ebfb722b1a2a203d3db84b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairChannelChoice

set_option autoImplicit false

/-!
# Exact unit changes for symmetric-pair channels

A nonzero multiplier at BOTH endpoints preserves simultaneous zero locations.
It does not preserve channel values or the positive energy numerically. The
inverse mixes channels and retains its determinant. Endpoint norm factors are
charged when transporting the energy back. No source-independent spectral gap.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.SymmetricPair
open _root_.Complex
noncomputable section

/-- The determinant is complex, not a positive metric or a squared norm. -/
def unitDeterminant (A : ℂ → ℂ) (c d : ℂ) : ℂ :=
  (even A c d)^2-d^2*(odd A c d)^2

lemma unitDeterminant_eq (A : ℂ → ℂ) (c d : ℂ) :
    unitDeterminant A c d=A (c+d)*A (c-d) := by
  calc
    _ = (even A c d+d*odd A c d)*(even A c d-d*odd A c d) := by
      unfold unitDeterminant; ring
    _ = _ := by rw [reconstruct_plus,reconstruct_minus]

lemma unitDeterminant_ne_zero {A : ℂ → ℂ} {c d : ℂ}
    (hp : A (c+d) ≠ 0) (hm : A (c-d) ≠ 0) : unitDeterminant A c d ≠ 0 := by
  rw [unitDeterminant_eq]
  exact mul_ne_zero hp hm

/-- Inverting the actual two-channel multiplication matrix; no componentwise division. -/
theorem quotient_channels (F A : ℂ → ℂ) (c : ℂ) {d : ℂ} (hd : d ≠ 0)
    (hp : A (c+d) ≠ 0) (hm : A (c-d) ≠ 0) :
    even (fun z => F z/A z) c d =
      (even A c d*even F c d-d^2*odd A c d*odd F c d)/unitDeterminant A c d ∧
    odd (fun z => F z/A z) c d =
      (even A c d*odd F c d-odd A c d*even F c d)/unitDeterminant A c d := by
  rw [unitDeterminant_eq]
  constructor <;> unfold even odd <;> field_simp [hp,hm,hd] <;> ring

/-- Only zero locations are preserved. No equality of reflected values is used. -/
theorem quotient_zero_pair_iff (F A : ℂ → ℂ) (c d : ℂ)
    (hp : A (c+d) ≠ 0) (hm : A (c-d) ≠ 0) :
    ((F (c+d)/A (c+d))=0 ∧ (F (c-d)/A (c-d))=0) ↔
      (F (c+d)=0 ∧ F (c-d)=0) := by
  simp [div_eq_zero_iff,hp,hm]

/-- An exact cutoff or chart telescope uses the same actual denominator. -/
theorem quotient_telescope (F P Q A : ℂ → ℂ) (z : ℂ) :
    F z/A z-Q z/A z=(F z-P z)/A z+(P z-Q z)/A z := by ring

/-- Returning from the normalized metric pays BOTH endpoint multipliers. -/
theorem energy_unit_comparison (F A : ℂ → ℂ) (c d : ℂ) {m M : ℝ}
    (hm0 : 0 ≤ m) (hp : A (c+d) ≠ 0) (hn : A (c-d) ≠ 0)
    (hlp : m ≤ ‖A (c+d)‖) (hln : m ≤ ‖A (c-d)‖)
    (hup : ‖A (c+d)‖ ≤ M) (hun : ‖A (c-d)‖ ≤ M) :
    m^2*energy (fun z => F z/A z) c d ≤ energy F c d ∧
      energy F c d ≤ M^2*energy (fun z => F z/A z) c d := by
  have hfp : F (c+d)=A (c+d)*(F (c+d)/A (c+d)) := by field_simp [hp]
  have hfn : F (c-d)=A (c-d)*(F (c-d)/A (c-d)) := by field_simp [hn]
  have hlp2 := mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hm0 hlp 2)
    (sq_nonneg ‖F (c+d)/A (c+d)‖)
  have hln2 := mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hm0 hln 2)
    (sq_nonneg ‖F (c-d)/A (c-d)‖)
  have hup2 := mul_le_mul_of_nonneg_right
    (pow_le_pow_left₀ (norm_nonneg _) hup 2) (sq_nonneg ‖F (c+d)/A (c+d)‖)
  have hun2 := mul_le_mul_of_nonneg_right
    (pow_le_pow_left₀ (norm_nonneg _) hun 2) (sq_nonneg ‖F (c-d)/A (c-d)‖)
  have hep : ‖F (c+d)‖^2=‖A (c+d)‖^2*‖F (c+d)/A (c+d)‖^2 := by
    conv_lhs => rw [hfp,norm_mul,mul_pow]
  have hen : ‖F (c-d)‖^2=‖A (c-d)‖^2*‖F (c-d)/A (c-d)‖^2 := by
    conv_lhs => rw [hfn,norm_mul,mul_pow]
  simp only [energy_identity]
  constructor <;> nlinarith

/-- Endpoint disks may have different radii. This evaluator, unlike a C1 region
supplier, retains the inverse-separation cost in its finite evaluation error. -/
theorem channels_of_endpoint_disks {F : ℂ → ℂ} {c d p q : ℂ} {ep em : ℝ}
    (hp : ‖F (c+d)-p‖ ≤ ep) (hm : ‖F (c-d)-q‖ ≤ em) :
    ‖even F c d-(p+q)/2‖ ≤ (ep+em)/2 ∧
      ‖odd F c d-(p-q)/(2*d)‖ ≤ (ep+em)/(2*‖d‖) := by
  constructor
  · have he : even F c d-(p+q)/2=((F (c+d)-p)+(F (c-d)-q))/2 := by
      unfold even; ring
    rw [he,norm_div]
    have h := (norm_add_le (F (c+d)-p) (F (c-d)-q)).trans (add_le_add hp hm)
    norm_num only [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    exact div_le_div_of_nonneg_right h (by norm_num)
  · have he : odd F c d-(p-q)/(2*d)=((F (c+d)-p)-(F (c-d)-q))/(2*d) := by
      unfold odd; ring
    rw [he,norm_div,norm_mul]
    norm_num only [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    exact div_le_div_of_nonneg_right
      ((norm_sub_le (F (c+d)-p) (F (c-d)-q)).trans (add_le_add hp hm)) (by positivity)

end
end GRWTSK.Analysis.Complex.SymmetricPair
```
