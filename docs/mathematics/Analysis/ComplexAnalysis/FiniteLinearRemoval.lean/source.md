# Complete source: GRWTSK.Analysis.Complex.FiniteLinearRemoval

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c645d73e82ae986ce00f2b249ca17dfbe65f93cc` · SHA-256 `8b0428378c20eee2aaf2e92a7de695c53091e73cbca793bdcaeb7dfe45e0928a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Meromorphic.NormalForm
import Mathlib.Analysis.Analytic.Order
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Simultaneous removal of an exact finite ordinary linear divisor

This is the ordinary-product / arbitrary-region counterpart of the disk
Blaschke-removal construction. The same pinned normal-form uniqueness API is
used. It neither imports a disk-specific quotient nor treats totalized division
at a removed zero as its analytic extension. Exact local orders, distinct full
complex locations and complete coverage of source zeros remain necessary.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.FiniteLinearRemoval

open Set Filter
open scoped Topology BigOperators

noncomputable section

/-- Ordinary factors, not normalized Blaschke factors or a replacement source. -/
def product {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ) (w : ℂ) : ℂ :=
  ∏ i, (w-a i) ^ m i

theorem product_analytic {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ) (w : ℂ) :
    AnalyticAt ℂ (product a m) w :=
  Finset.univ.analyticAt_fun_prod (fun i _ => (analyticAt_id.sub analyticAt_const).pow (m i))

theorem product_nonzero {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ)
    {w : ℂ} (hw : ∀ i, w ≠ a i) : product a m w ≠ 0 := by
  exact Finset.prod_ne_zero_iff.mpr (fun i _ => pow_ne_zero _ (sub_ne_zero.mpr (hw i)))

theorem local_product {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ)
    (hinj : Function.Injective a) (i : ι) :
    ∃ d : ℂ → ℂ, AnalyticAt ℂ d (a i) ∧ d (a i) ≠ 0 ∧
      ∀ w, product a m w = (w-a i) ^ m i * d w := by
  classical
  let d : ℂ → ℂ := fun w => ∏ j ∈ Finset.univ.erase i, (w-a j) ^ m j
  refine ⟨d, ?_, ?_, ?_⟩
  · exact (Finset.univ.erase i).analyticAt_fun_prod
      (fun j _ => (analyticAt_id.sub analyticAt_const).pow (m j))
  · apply Finset.prod_ne_zero_iff.mpr
    intro j hj
    apply pow_ne_zero
    exact sub_ne_zero.mpr (fun he => (Finset.mem_erase.mp hj).1 (hinj he).symm)
  · intro w
    exact (Finset.mul_prod_erase Finset.univ (fun j => (w-a j) ^ m j) (Finset.mem_univ i)).symm

/-- A genuine normal-form extension is constructed. No quotient, regular value,
nonvanishing remainder or factorization conclusion is supplied by the caller. -/
theorem exists_quotient {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ)
    (f : ℂ → ℂ) (U : Set ℂ) (hinj : Function.Injective a) (hm : ∀ i, 0 < m i)
    (ha : ∀ i, a i ∈ U) (hf : AnalyticOnNhd ℂ f U)
    (hlocal : ∀ i, ∃ A : ℂ → ℂ, AnalyticAt ℂ A (a i) ∧ A (a i) ≠ 0 ∧
      f =ᶠ[𝓝 (a i)] fun w => (w-a i) ^ m i * A w)
    (hcover : ∀ w ∈ U, f w = 0 → ∃ i, w = a i) :
    ∃ q : ℂ → ℂ, AnalyticOnNhd ℂ q U ∧ (∀ w ∈ U, q w ≠ 0) ∧
      (∀ w ∈ U, f w = q w * product a m w) ∧
      (∀ w ∈ U, (∀ i, w ≠ a i) → q w = f w / product a m w) := by
  classical
  let P := product a m
  let raw : ℂ → ℂ := fun w => f w / P w
  let q : ℂ → ℂ := toMeromorphicNFOn raw U
  have hraw : MeromorphicOn raw U := fun w hw =>
    (hf w hw).meromorphicAt.div (product_analytic a m w).meromorphicAt
  have hgerm (w : ℂ) (hw : w ∈ U) (g : ℂ → ℂ) (hg : AnalyticAt ℂ g w)
      (he : raw =ᶠ[𝓝[≠] w] g) : q =ᶠ[𝓝 w] g := by
    apply ((meromorphicNFOn_toMeromorphicNFOn raw U hw).eventuallyEq_nhdsNE_iff_eventuallyEq_nhds
      hg.meromorphicNFAt).mp
    exact (hraw.toMeromorphicNFOn_eq_self_on_nhdsNE hw).trans he
  have hroot (i : ι) : AnalyticAt ℂ q (a i) ∧ q (a i) ≠ 0 := by
    obtain ⟨A, hA, hA0, he⟩ := hlocal i
    obtain ⟨d, hd, hd0, hPd⟩ := local_product a m hinj i
    have hQ : AnalyticAt ℂ (fun w => A w/d w) (a i) := hA.div hd hd0
    have heq : raw =ᶠ[𝓝[≠] (a i)] (fun w => A w/d w) := by
      filter_upwards [he.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with w hw hwi
      change f w / product a m w = A w/d w
      rw [hw, hPd w]
      exact mul_div_mul_left (A w) (d w) (pow_ne_zero _ (sub_ne_zero.mpr hwi))
    have hqg := hgerm (a i) (ha i) _ hQ heq
    exact ⟨hQ.congr hqg.symm, hqg.eq_of_nhds.trans_ne (div_ne_zero hA0 hd0)⟩
  have hoff (w : ℂ) (hw : w ∈ U) (hn : ∀ i, w ≠ a i) :
      AnalyticAt ℂ q w ∧ q w = raw w := by
    have hr : AnalyticAt ℂ raw w := (hf w hw).div (product_analytic a m w) (product_nonzero a m hn)
    have he := hgerm w hw raw hr Filter.EventuallyEq.rfl
    exact ⟨hr.congr he.symm, he.eq_of_nhds⟩
  refine ⟨q, ?_, ?_, ?_, ?_⟩
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr; exact (hroot i).1
    · exact (hoff w hw (by simpa only [not_exists] using hr)).1
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr; exact (hroot i).2
    · have hn : ∀ i, w ≠ a i := by simpa only [not_exists] using hr
      rw [(hoff w hw hn).2]
      exact div_ne_zero (fun hz => hr (hcover w hw hz)) (product_nonzero a m hn)
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr
      obtain ⟨A, _, _, he⟩ := hlocal i
      have hf0 : f (a i) = 0 := by
        simpa only [sub_self, zero_pow (Nat.ne_of_gt (hm i)), zero_mul] using he.eq_of_nhds
      have hP0 : product a m (a i) = 0 := by
        apply Finset.prod_eq_zero (Finset.mem_univ i)
        simp [Nat.ne_of_gt (hm i)]
      rw [hf0, hP0, mul_zero]
    · have hn : ∀ i, w ≠ a i := by simpa only [not_exists] using hr
      rw [(hoff w hw hn).2]
      exact (div_mul_cancel₀ _ (product_nonzero a m hn)).symm
  · intro w hw hn
    exact (hoff w hw hn).2

end
end GRWTSK.Analysis.Complex.FiniteLinearRemoval
```
