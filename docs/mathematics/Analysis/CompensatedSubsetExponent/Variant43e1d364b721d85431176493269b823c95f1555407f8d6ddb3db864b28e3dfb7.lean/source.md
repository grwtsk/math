# Complete source: GRWTSK.Analysis.CompensatedSubsetExponent.Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f1ebd37ac353f69fd5d49cbc8cd98bd3d145edb` · SHA-256 `43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Positive slot lengths leave one leading compensated subset

Batch 20 B20-L6 specifies the extra exponent as minus the sum of lengths of
rescaled slots. Every nonempty subset is strictly lower. A finite bank of fixed
coefficients at these lower powers tends to zero after division by the common
leading scale; a nonzero leading coefficient therefore survives. This is the
finite exponent interface. Identification with every physical 003 row, varying
coefficient estimates, and an exceptional arithmetic improvement remain separate.

Human leading-packet requirement: grwtsk contributors. Local finite subset and
asymptotic consumer: OpenAI Codex. Mathlib power limits retain source identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CompensatedSubsetExponent
open scoped BigOperators Topology
open Filter
noncomputable section

/-- The rescaled length in this module, with the following exact parameterization.

def rescaledLength {ι : Type*} (ell : ι → ℝ) (J : Finset ι) : ℝ := ∑ i ∈ J, ell i
-/
def rescaledLength {ι : Type*} (ell : ι → ℝ) (J : Finset ι) : ℝ := ∑ i ∈ J, ell i
/-- The extra exponent in this module, with the following exact parameterization.

def extraExponent {ι : Type*} (ell : ι → ℝ) (J : Finset ι) : ℝ := -rescaledLength ell J
-/
def extraExponent {ι : Type*} (ell : ι → ℝ) (J : Finset ι) : ℝ := -rescaledLength ell J

theorem empty_is_leading {ι : Type*} (ell : ι → ℝ) : extraExponent ell ∅ = 0 := by
  simp [extraExponent, rescaledLength]

theorem nonempty_is_strictly_lower {ι : Type*} {ell : ι → ℝ} {J : Finset ι}
    (hJ : J.Nonempty) (hell : ∀ i ∈ J, 0 < ell i) : extraExponent ell J < 0 := by
  unfold extraExponent rescaledLength
  exact neg_neg_of_pos (Finset.sum_pos hell hJ)

theorem unique_leading_subset {ι : Type*} {ell : ι → ℝ} {J : Finset ι}
    (hell : ∀ i ∈ J, 0 < ell i) : extraExponent ell J = 0 ↔ J = ∅ := by
  constructor
  · intro h
    by_contra hn
    have := nonempty_is_strictly_lower (Finset.nonempty_iff_ne_empty.mpr hn) hell
    rw [h] at this
    exact (lt_irrefl _ this)
  · rintro rfl
    exact empty_is_leading ell

theorem subset_relative_power_decays {ι : Type*} {ell : ι → ℝ} {J : Finset ι}
    (hJ : J.Nonempty) (hell : ∀ i ∈ J, 0 < ell i) :
    Tendsto (fun Z : ℝ ↦ Z ^ extraExponent ell J) atTop (𝓝 0) := by
  exact tendsto_rpow_neg_atTop (Finset.sum_pos hell hJ)

theorem finite_lower_bank_decays {ι : Type*} (bank : Finset (Finset ι))
    (ell : ι → ℝ) (a : Finset ι → ℝ)
    (hn : ∀ J ∈ bank, J.Nonempty) (hell : ∀ J ∈ bank, ∀ i ∈ J, 0 < ell i) :
    Tendsto (fun Z : ℝ ↦ ∑ J ∈ bank, a J * Z ^ extraExponent ell J) atTop (𝓝 0) := by
  have h := tendsto_finsetSum bank (fun J hJ ↦
    (subset_relative_power_decays (hn J hJ) (hell J hJ)).const_mul (a J))
  simpa using h

theorem leading_coefficient_survives {ι : Type*} (bank : Finset (Finset ι))
    (ell : ι → ℝ) (a : Finset ι → ℝ) (a0 : ℝ)
    (hn : ∀ J ∈ bank, J.Nonempty) (hell : ∀ J ∈ bank, ∀ i ∈ J, 0 < ell i) :
    Tendsto (fun Z : ℝ ↦ a0 + ∑ J ∈ bank, a J * Z ^ extraExponent ell J)
      atTop (𝓝 a0) := by
  simpa using (finite_lower_bank_decays bank ell a hn hell).const_add a0

/-- No cancellation of the top packet occurs merely from finitely many lower powers. -/
theorem nonzero_leading_packet_eventually_nonzero {ι : Type*}
    (bank : Finset (Finset ι)) (ell : ι → ℝ) (a : Finset ι → ℝ) {a0 : ℝ}
    (ha0 : a0 ≠ 0) (hn : ∀ J ∈ bank, J.Nonempty)
    (hell : ∀ J ∈ bank, ∀ i ∈ J, 0 < ell i) :
    ∀ᶠ Z : ℝ in atTop, a0 + ∑ J ∈ bank, a J * Z ^ extraExponent ell J ≠ 0 :=
  (leading_coefficient_survives bank ell a a0 hn hell).eventually_ne ha0

end
end GRWTSK.RiemannHypothesis.Conversation.CompensatedSubsetExponent
```
