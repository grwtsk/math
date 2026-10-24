# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedSourceMass.Variantc126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1564a0e82407607c0e56cd934c6be7796962f1d` · SHA-256 `c126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens

/-!
# Uniform mass decoder for the unchanged source

Written continuation 2026-10-09: grwtsk contributors. Formal adapter: OpenAI
Codex. Exact source mass is consumed from SourceDiagonalMainTerm at its
existing qualified identity. The interval Cauchy--Schwarz law is imported
directly from SupplierWeakMertens, retaining its existing identity.
A scalar mass estimate pays the full physical
square integral; it makes no claim about a coefficient dual or cheap diagonal
multiplication. No arithmetic cancellation theorem is asserted.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceMass
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open MeasureTheory Set
noncomputable section

/-- The bump mass in this module, with the following exact parameterization.

def bumpMass : ℝ := 256 / 315
-/
def bumpMass : ℝ := 256 / 315
/-- The unit normalization in this module, with the following exact parameterization.

def unitNormalization : ℝ := 45056 / 1105
-/
def unitNormalization : ℝ := 45056 / 1105
/-- The mass decoder in this module, with the following exact parameterization.

def massDecoder : ℝ := 8 * Real.sqrt unitNormalization / bumpMass
-/
def massDecoder : ℝ := 8 * Real.sqrt unitNormalization / bumpMass

theorem unit_normalization_exact : sourceNormalization 1 = unitNormalization := by
  norm_num [sourceNormalization, unitNormalization]

theorem normalization_uniform {A : ℝ} (hA : 1 ≤ A) :
    sourceNormalization A ≤ unitNormalization := by
  have h2 : 1 ≤ A ^ 2 := by nlinarith
  have h4 : 1 ≤ A ^ 4 := by nlinarith [sq_nonneg (A ^ 2 - 1)]
  have h₁ : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045) / 2 := by
    apply (div_le_iff₀ (by positivity : 0 < 2 * A ^ 2)).mpr
    nlinarith
  have h₂ : (196608 / 5005 : ℝ) / A ^ 4 ≤ 196608 / 5005 := by
    apply (div_le_iff₀ (by positivity : 0 < A ^ 4)).mpr
    nlinarith
  unfold sourceNormalization unitNormalization
  linarith

theorem prescribed_mass {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, prescribedSource A x) =
      -(Real.sqrt A * bumpMass) / (4 * Real.sqrt (sourceZ A)) := by
  rw [prescribedSource_eq A hA, sourceZ_eq A hA]
  exact normalizedTest_integral A hA

theorem prescribed_mass_ne_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, prescribedSource A x) ≠ 0 := by
  rw [prescribed_mass hA]
  apply div_ne_zero
  · exact neg_ne_zero.mpr (mul_ne_zero
      (Real.sqrt_pos.mpr (by linarith : 0 < A)).ne' (by norm_num [bumpMass]))
  · exact mul_ne_zero (by norm_num) (Real.sqrt_pos.mpr (sourceZ_pos A hA)).ne'

theorem decoder_nonneg : 0 ≤ massDecoder := by
  unfold massDecoder bumpMass
  positivity

theorem decoder_square_exact : massDecoder ^ 2 = (873180 / 221 : ℝ) := by
  unfold massDecoder
  rw [div_pow, mul_pow, Real.sq_sqrt (by norm_num [unitNormalization])]
  norm_num [unitNormalization, bumpMass]

/-- The evaluated source mass converts a physical square-energy budget into
a scalar budget. This algebra also applies to discarded finite-window tests. -/
theorem mass_decoder_of_square_bound {A y E : ℝ} (hA : 1 ≤ A)
    (he : 0 ≤ E) (hcs : |y| ^ 2 ≤ 4 * A * E) :
    |y / (∫ x : ℝ, prescribedSource A x)| ≤ massDecoder * Real.sqrt E := by
  have hp : 0 < A := by linarith
  have hrootE := Real.sq_sqrt he
  have hrootA := Real.sq_sqrt hp.le
  have hbound : |y| ≤ 2 * Real.sqrt A * Real.sqrt E := by
    have hright : 0 ≤ 2 * Real.sqrt A * Real.sqrt E := by positivity
    nlinarith only [hcs, hrootE, hrootA, hright, abs_nonneg y]
  have hmassabs : |∫ x : ℝ, prescribedSource A x| =
      Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A)) := by
    rw [prescribed_mass hA, abs_div, abs_neg, abs_of_nonneg (by unfold bumpMass; positivity),
      abs_of_nonneg (by positivity)]
  have hZ := normalization_uniform hA
  rw [← sourceZ_eq A hA] at hZ
  have hm : 0 < Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A)) := by
    exact div_pos (mul_pos (Real.sqrt_pos.mpr hp) (by norm_num [bumpMass]))
      (mul_pos (by norm_num) (Real.sqrt_pos.mpr (sourceZ_pos A hA)))
  rw [abs_div, hmassabs]
  apply (div_le_iff₀ hm).mpr
  have hzroot := Real.sqrt_le_sqrt hZ
  have hprice : 2 * Real.sqrt A * Real.sqrt E ≤
      massDecoder * Real.sqrt E *
        (Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A))) := by
    unfold massDecoder
    have hb : bumpMass ≠ 0 := by norm_num [bumpMass]
    have hz : Real.sqrt (sourceZ A) ≠ 0 := (Real.sqrt_pos.mpr (sourceZ_pos A hA)).ne'
    rw [show 8 * Real.sqrt unitNormalization / bumpMass *
      Real.sqrt E *
      (Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A))) =
      (8 * Real.sqrt unitNormalization * Real.sqrt E * Real.sqrt A) /
      (4 * Real.sqrt (sourceZ A)) by field_simp [hb]]
    apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 4)
      (Real.sqrt_pos.mpr (sourceZ_pos A hA)))).mpr
    nlinarith only [mul_le_mul_of_nonneg_left hzroot
      (by positivity : 0 ≤ 8 * Real.sqrt A * Real.sqrt E)]
  exact hbound.trans hprice

/-- This decoder requires actual support in the finite source window. -/
theorem mass_readout_bound {A : ℝ} (hA : 1 ≤ A) (f : ℝ → ℝ)
    (hf : Continuous f) (hs : Function.support f ⊆ Ioc (-A) (3 * A)) :
    |(∫ x : ℝ, f x) / (∫ x : ℝ, prescribedSource A x)| ≤
      massDecoder * Real.sqrt (∫ x : ℝ, f x ^ 2) := by
  have hp : 0 < A := by linarith
  have hs2 : Function.support (fun x ↦ f x ^ 2) ⊆ Ioc (-A) (3 * A) := by
    intro x hx
    apply hs
    intro hz
    exact hx (by simp [hz])
  have hwhole := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have hwhole2 := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs2
  have hcs :=
    open FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens in
      integral_sq_le_length_mul_integral_sq (by linarith : -A ≤ 3 * A)
        (hf.intervalIntegrable (μ := volume) (-A) (3 * A))
        ((hf.pow 2).intervalIntegrable (μ := volume) (-A) (3 * A))
  rw [hwhole, hwhole2] at hcs
  apply mass_decoder_of_square_bound hA
    (integral_nonneg (fun _ ↦ sq_nonneg _))
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceMass
```
