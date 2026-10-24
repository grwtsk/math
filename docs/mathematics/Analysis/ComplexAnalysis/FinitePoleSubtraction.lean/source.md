# Complete source: GRWTSK.Analysis.Complex.FinitePoleSubtraction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1686ea7594c4c99791be80c7603cc94612f2150c` · SHA-256 `0992db82a7602b5f3cff05b1afde631a38574c4e4d8f04e2cd35ee1137624d0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false

/-!
# Finite subtraction of genuine local simple principal parts

An analytic extension after subtraction is constructed, not assumed. Point values
at the removed set are replaced by the analytic regular values. This is not a
statement that the original totalized expression is continuous there. Coefficients
may be zero. No contour normalization or infinite boundary estimate is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.FinitePoleSubtraction

open Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.LogarithmicPrincipalPart

noncomputable section

/-- The divided difference has the analytic derivative value at its center. -/
theorem analyticAt_dividedDifference (M : ℂ → ℂ) (a : ℂ)
    (hM : AnalyticAt ℂ M a) : AnalyticAt ℂ (dslope M a) a := by
  obtain ⟨p, hp⟩ := hM
  exact ⟨p.fslope, hp.has_fpower_series_dslope_fslope⟩

/-- Multiplication changes the regular part as well as the residue coefficient. -/
theorem principal_part_mul (f A M : ℂ → ℂ) (a c : ℂ)
    (hA : AnalyticAt ℂ A a) (hM : AnalyticAt ℂ M a)
    (hpart : f =ᶠ[𝓝[≠] a] fun z => c / (z - a) + A z) :
    ∃ B : ℂ → ℂ, AnalyticAt ℂ B a ∧
      (fun z => f z * M z) =ᶠ[𝓝[≠] a]
        fun z => (c * M a) / (z - a) + B z := by
  refine ⟨fun z => c * dslope M a z + A z * M z,
    (analyticAt_const.mul (analyticAt_dividedDifference M a hM)).add (hA.mul hM), ?_⟩
  filter_upwards [hpart, self_mem_nhdsWithin] with z hz hza
  have hne : z - a ≠ 0 := sub_ne_zero.mpr (by simpa using hza)
  have hd : (z - a) * dslope M a z = M z - M a := by
    simpa only [smul_eq_mul] using sub_smul_dslope M a z
  rw [hz]
  field_simp [hne]
  linear_combination -c * hd

/-- Actual analyticity and a nonzero derivative give a unit factorization at a simple zero. -/
theorem simple_zero_factorization (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hz : f a = 0) (hd : deriv f a ≠ 0) :
    AnalyticAt ℂ (dslope f a) a ∧ dslope f a a ≠ 0 ∧
      ∀ z : ℂ, f z = (z - a) * dslope f a z := by
  refine ⟨analyticAt_dividedDifference f a hf, by simpa using hd, ?_⟩
  intro z
  simpa only [smul_eq_mul, hz, sub_zero] using (sub_smul_dslope f a z).symm

/-- The natural analytic order is exactly one, not merely a metadata label. -/
theorem simple_zero_order_nat (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hz : f a = 0) (hd : deriv f a ≠ 0) :
    analyticOrderNatAt f a = 1 := by
  obtain ⟨hg, hg0, he⟩ := simple_zero_factorization f a hf hz hd
  have ho : analyticOrderAt f a = (1 : ℕ∞) :=
    hf.analyticOrderAt_eq_natCast.mpr ⟨dslope f a, hg, hg0,
      Eventually.of_forall (fun z => by simpa only [pow_one, smul_eq_mul] using he z)⟩
  simp [analyticOrderNatAt, ho]

/-- A full local principal part, stronger than a scaled-limit coefficient alone. -/
theorem simple_zero_log_principal_part (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hz : f a = 0) (hd : deriv f a ≠ 0) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      logDeriv f =ᶠ[𝓝[≠] a] fun z => 1 / (z - a) + A z := by
  obtain ⟨hg, hg0, he⟩ := simple_zero_factorization f a hf hz hd
  have hp := logDeriv_principal_part f (dslope f a) a (1 : ℤ) hg hg0
    (Eventually.of_forall (fun z => by simpa only [zpow_one] using he z))
  exact ⟨logDeriv (dslope f a), hp.1, by simpa only [Int.cast_one] using hp.2⟩

/-- Removing one pole requires an update at the center, using the actual analytic regular value. -/
theorem one_pole_subtraction (f A : ℂ → ℂ) (a c : ℂ)
    (hA : AnalyticAt ℂ A a)
    (hpart : f =ᶠ[𝓝[≠] a] fun z => c / (z - a) + A z) :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g a ∧
      ∀ z : ℂ, z ≠ a → g z = f z - c / (z - a) := by
  classical
  let g := Function.update (fun z => f z - c / (z - a)) a (A a)
  have hnear : g =ᶠ[𝓝 a] A := by
    have hp : ∀ᶠ z in 𝓝 a, z ≠ a → f z = c / (z - a) + A z :=
      eventually_nhdsWithin_iff.mp hpart
    filter_upwards [hp] with z hz
    by_cases hza : z = a
    · subst z
      simp only [g, Function.update_self]
    · change Function.update (fun z => f z - c / (z - a)) a (A a) z = A z
      rw [Function.update_of_ne hza, hz hza]
      ring
  exact ⟨g, hA.congr hnear.symm, fun z hz => Function.update_of_ne hz _ _⟩

/-- Finite local principal parts produce one analytic function on the whole declared domain.
The exact equality holds everywhere outside the finite set, not only on a sampled boundary. -/
theorem finite_pole_subtraction (S : Finset ℂ) (f : ℂ → ℂ) (c : ℂ → ℂ) (D : Set ℂ)
    (hreg : ∀ z ∈ D, z ∉ S → AnalyticAt ℂ f z)
    (hparts : ∀ a ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      f =ᶠ[𝓝[≠] a] fun z => c a / (z - a) + A z) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g D ∧
      ∀ z : ℂ, z ∉ S → f z = g z + ∑ a ∈ S, c a / (z - a) := by
  classical
  induction S using Finset.induction_on generalizing f with
  | empty =>
      exact ⟨f, fun z hz => hreg z hz (by simp), by simp⟩
  | @insert a S ha ih =>
      obtain ⟨A, hA, hpart⟩ := hparts a (Finset.mem_insert_self _ _)
      obtain ⟨f₁, hf₁a, heq⟩ := one_pole_subtraction f A a (c a) hA hpart
      have hnear (z : ℂ) (hza : z ≠ a) :
          f₁ =ᶠ[𝓝 z] fun w => f w - c a / (w - a) := by
        filter_upwards [isOpen_ne.mem_nhds hza] with w hw
        exact heq w hw
      have hreg₁ : ∀ z ∈ D, z ∉ S → AnalyticAt ℂ f₁ z := by
        intro z hz hzS
        by_cases hza : z = a
        · subst z
          exact hf₁a
        · have hr : AnalyticAt ℂ (fun w => c a / (w - a)) z :=
            analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hza)
          exact ((hreg z hz (by simp [hza, hzS])).sub hr).congr (hnear z hza).symm
      have hparts₁ : ∀ b ∈ S, ∃ B : ℂ → ℂ, AnalyticAt ℂ B b ∧
          f₁ =ᶠ[𝓝[≠] b] fun z => c b / (z - b) + B z := by
        intro b hb
        have hba : b ≠ a := by intro he; subst b; exact ha hb
        obtain ⟨B, hB, hp⟩ := hparts b (Finset.mem_insert_of_mem hb)
        refine ⟨fun z => B z - c a / (z - a), hB.sub
          (analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hba)), ?_⟩
        filter_upwards [hp, (hnear b hba).filter_mono nhdsWithin_le_nhds] with z hz he
        rw [he, hz]
        ring
      obtain ⟨g, hg, hgf⟩ := ih f₁ hreg₁ hparts₁
      refine ⟨g, hg, ?_⟩
      intro z hz
      have hza : z ≠ a := by intro he; subst z; exact hz (Finset.mem_insert_self _ _)
      have hzS : z ∉ S := fun he => hz (Finset.mem_insert_of_mem he)
      have h₁ := heq z hza
      have h₂ := hgf z hzS
      rw [Finset.sum_insert ha]
      linear_combination h₂ - h₁

end
end GRWTSK.Analysis.Complex.FinitePoleSubtraction
```
