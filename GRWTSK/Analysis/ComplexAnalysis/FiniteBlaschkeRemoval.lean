/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
import Mathlib.Analysis.Meromorphic.NormalForm

set_option autoImplicit false

/-!
# Simultaneous removal of a finite, exact divisor

Normalize the actual meromorphic quotient rather than assigning zero to its
removable centers. Matching local multiplicities supply analytic nonzero germs
at those centers. The same globally normalized function realizes every germ.
Completeness is used only to deduce nonvanishing on the inner disk. It is not
inferred from the existence of a finite list. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. The construction is classical and noncomputable.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.FiniteBlaschkeRemoval

open Set Metric Filter
open scoped Topology BigOperators ComplexConjugate
open DiskBlaschkeFactors

noncomputable section

/-- The analytic nonzero coefficient in B_(3,a)(w)=(w-a)u_a(w). -/
def unitCoefficient (a w : ℂ) : ℂ := 3 / ((3 : ℂ) ^ 2 - conj a * w)

theorem factor_eq_sub_mul_unit (a w : ℂ) :
    factor 3 a w = (w - a) * unitCoefficient a w := by
  unfold factor unitCoefficient
  norm_num only [Complex.ofReal_ofNat]
  ring

theorem analyticAt_unit (a w : ℂ) (ha : ‖a‖ ≤ 11 / 4) (hw : ‖w‖ ≤ 3) :
    AnalyticAt ℂ (unitCoefficient a) w := by
  have hd := denominator_ne_zero 3 (by norm_num) a w (by linarith) hw
  unfold unitCoefficient
  fun_prop (disch := assumption)

theorem unit_ne_zero (a w : ℂ) (ha : ‖a‖ ≤ 11 / 4) (hw : ‖w‖ ≤ 3) :
    unitCoefficient a w ≠ 0 :=
  div_ne_zero (by norm_num) (denominator_ne_zero 3 (by norm_num) a w (by linarith) hw)

theorem analyticAt_factor_three (a w : ℂ) (ha : ‖a‖ ≤ 11 / 4) (hw : ‖w‖ ≤ 3) :
    AnalyticAt ℂ (factor 3 a) w := by
  have he : factor 3 a = fun z => (z - a) * unitCoefficient a z :=
    funext (factor_eq_sub_mul_unit a)
  rw [he]
  exact (analyticAt_id.sub analyticAt_const).mul (analyticAt_unit a w ha hw)

/-- The finite product is analytic even at its zeros, including the outer boundary. -/
theorem analyticAt_product {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (w : ℂ) (hw : ‖w‖ ≤ 3) :
    AnalyticAt ℂ (fun z => ∏ i ∈ S, (factor 3 (a i) z) ^ m i) w :=
  S.analyticAt_fun_prod (fun i hi => (analyticAt_factor_three (a i) w (ha i hi) hw).pow (m i))

theorem product_ne_zero_off_roots {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (w : ℂ) (hw : ‖w‖ ≤ 3)
    (hne : ∀ i ∈ S, w ≠ a i) :
    (∏ i ∈ S, (factor 3 (a i) w) ^ m i) ≠ 0 := by
  apply Finset.prod_ne_zero_iff.mpr
  intro i hi
  exact pow_ne_zero _ (factor_ne_zero 3 (by norm_num) (a i) w (hne i hi)
    (denominator_ne_zero 3 (by norm_num) (a i) w (by linarith [ha i hi]) hw))

/-- Isolate exactly one root, retaining its full exponent and every other factor.
Injectivity is on complex locations, not on heights or labels. -/
theorem product_local_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hinj : Set.InjOn a (S : Set ι))
    (i : ι) (hi : i ∈ S) :
    ∃ d : ℂ → ℂ, AnalyticAt ℂ d (a i) ∧ d (a i) ≠ 0 ∧
      ∀ w, (∏ j ∈ S, (factor 3 (a j) w) ^ m j) = (w - a i) ^ m i * d w := by
  classical
  let d : ℂ → ℂ := fun w => (unitCoefficient (a i) w) ^ m i *
    ∏ j ∈ S.erase i, (factor 3 (a j) w) ^ m j
  have hw : ‖a i‖ ≤ 3 := by linarith [ha i hi]
  have herase : ∀ j ∈ S.erase i, ‖a j‖ ≤ 11 / 4 :=
    fun j hj => ha j (Finset.mem_of_mem_erase hj)
  have hne : ∀ j ∈ S.erase i, a i ≠ a j := by
    intro j hj he
    exact (Finset.mem_erase.mp hj).1 (hinj (Finset.mem_of_mem_erase hj) hi he.symm)
  refine ⟨d, ?_, ?_, ?_⟩
  · exact ((analyticAt_unit (a i) (a i) (ha i hi) hw).pow (m i)).mul
      (analyticAt_product (S.erase i) a m herase (a i) hw)
  · exact mul_ne_zero (pow_ne_zero _ (unit_ne_zero (a i) (a i) (ha i hi) hw))
      (product_ne_zero_off_roots (S.erase i) a m herase (a i) hw hne)
  · intro w
    rw [← Finset.mul_prod_erase S (fun j => (factor 3 (a j) w) ^ m j) hi,
      factor_eq_sub_mul_unit, mul_pow]
    dsimp [d]
    ring

/-- Punctured agreement with an analytic germ identifies the SAME global normal form.
This is stronger than merely knowing that a removable limit exists. -/
theorem normalForm_germ (F G : ℂ → ℂ) (U : Set ℂ) (z : ℂ)
    (hF : MeromorphicOn F U) (hz : z ∈ U) (hG : AnalyticAt ℂ G z)
    (he : F =ᶠ[𝓝[≠] z] G) :
    toMeromorphicNFOn F U =ᶠ[𝓝 z] G := by
  apply ((meromorphicNFOn_toMeromorphicNFOn F U hz).eventuallyEq_nhdsNE_iff_eventuallyEq_nhds
    hG.meromorphicNFAt).mp
  exact (hF.toMeromorphicNFOn_eq_self_on_nhdsNE hz).trans he

/-- Equal exact vanishing orders leave an analytic NONZERO quotient germ. -/
theorem quotient_germ_of_matching_power (f P A d : ℂ → ℂ) (z : ℂ) (m : ℕ)
    (hA : AnalyticAt ℂ A z) (hA0 : A z ≠ 0)
    (hd : AnalyticAt ℂ d z) (hd0 : d z ≠ 0)
    (hf : f =ᶠ[𝓝 z] fun w => (w - z) ^ m * A w)
    (hP : ∀ w, P w = (w - z) ^ m * d w) :
    AnalyticAt ℂ (fun w => A w / d w) z ∧ A z / d z ≠ 0 ∧
      (fun w => f w / P w) =ᶠ[𝓝[≠] z] fun w => A w / d w := by
  refine ⟨hA.div hd hd0, div_ne_zero hA0 hd0, ?_⟩
  filter_upwards [hf.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with w hw hwz
  rw [hw, hP w]
  exact mul_div_mul_left (A w) (d w) (pow_ne_zero m (sub_ne_zero.mpr hwz))

/-- Construct one quotient across ALL selected roots, with exact closed-disk factorization.
The root germs must have the recorded exact order. Completeness is a separate input.
No log, quotient-extension, regular-value, or modulus-bound premise is used. -/
theorem exists_removed_quotient {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f : ℂ → ℂ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hinj : Set.InjOn a (S : Set ι)) (hm : ∀ i ∈ S, 0 < m i)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (3 : ℝ)))
    (hlocal : ∀ i ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A (a i) ∧ A (a i) ≠ 0 ∧
      f =ᶠ[𝓝 (a i)] fun w => (w - a i) ^ m i * A w)
    (hcover : ∀ w ∈ ball 0 (11 / 4 : ℝ), f w = 0 → ∃ i ∈ S, w = a i) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ), f w = g w * ∏ i ∈ S, (factor 3 (a i) w) ^ m i) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ), (∀ i ∈ S, w ≠ a i) →
        g w = f w / (∏ i ∈ S, (factor 3 (a i) w) ^ m i)) := by
  classical
  let U : Set ℂ := closedBall 0 (3 : ℝ)
  let P : ℂ → ℂ := fun w => ∏ i ∈ S, (factor 3 (a i) w) ^ m i
  let F : ℂ → ℂ := fun w => f w / P w
  let g : ℂ → ℂ := toMeromorphicNFOn F U
  have hw_norm (w : ℂ) (hw : w ∈ U) : ‖w‖ ≤ 3 := by
    simpa only [U, Metric.mem_closedBall, dist_zero_right] using hw
  have hP (w : ℂ) (hw : w ∈ U) : AnalyticAt ℂ P w :=
    analyticAt_product S a m ha w (hw_norm w hw)
  have hF : MeromorphicOn F U := fun w hw =>
    (hf w hw).meromorphicAt.div (hP w hw).meromorphicAt
  have hroot (i : ι) (hi : i ∈ S) : AnalyticAt ℂ g (a i) ∧ g (a i) ≠ 0 := by
    obtain ⟨A, hA, hA0, he⟩ := hlocal i hi
    obtain ⟨d, hd, hd0, hPd⟩ := product_local_factorization S a m ha hinj i hi
    obtain ⟨hQ, hQ0, hQeq⟩ := quotient_germ_of_matching_power f P A d (a i) (m i)
      hA hA0 hd hd0 he hPd
    have hai : a i ∈ U := by
      change a i ∈ closedBall (0 : ℂ) (3 : ℝ)
      rw [Metric.mem_closedBall, dist_zero_right]
      linarith [ha i hi]
    have hgerm := normalForm_germ F (fun w => A w / d w) U (a i) hF hai hQ hQeq
    exact ⟨hQ.congr hgerm.symm, hgerm.eq_of_nhds.trans_ne hQ0⟩
  have hoff (w : ℂ) (hw : w ∈ U) (hne : ∀ i ∈ S, w ≠ a i) :
      AnalyticAt ℂ g w ∧ g w = f w / P w := by
    have hPn := product_ne_zero_off_roots S a m ha w (hw_norm w hw) hne
    have hraw : AnalyticAt ℂ F w := (hf w hw).div (hP w hw) hPn
    have he := normalForm_germ F F U w hF hw hraw Filter.EventuallyEq.rfl
    exact ⟨hraw.congr he.symm, he.eq_of_nhds⟩
  have hg : AnalyticOnNhd ℂ g U := by
    intro w hw
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      exact (hroot i hi).1
    · exact (hoff w hw (by simpa only [not_exists, not_and] using hr)).1
  refine ⟨g, hg, ?_, ?_, ?_⟩
  · intro w hw
    have hwU : w ∈ U := by
      change w ∈ closedBall (0 : ℂ) (3 : ℝ)
      rw [Metric.mem_closedBall, dist_zero_right]
      have hn : ‖w‖ < 11 / 4 := by simpa only [Metric.mem_ball, dist_zero_right] using hw
      linarith
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      exact (hroot i hi).2
    · have hn : ∀ i ∈ S, w ≠ a i := by simpa only [not_exists, not_and] using hr
      rw [(hoff w hwU hn).2]
      exact div_ne_zero (fun he => hr (hcover w hw he))
        (product_ne_zero_off_roots S a m ha w (hw_norm w hwU) hn)
  · intro w hw
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      obtain ⟨A, _hA, _hA0, he⟩ := hlocal i hi
      have hzero : f (a i) = 0 := by
        simpa only [sub_self, zero_pow (Nat.ne_of_gt (hm i hi)), zero_mul] using he.eq_of_nhds
      have hPzero : P (a i) = 0 := by
        apply Finset.prod_eq_zero hi
        simp [factor, Nat.ne_of_gt (hm i hi)]
      change f (a i) = g (a i) * P (a i)
      rw [hzero, hPzero, mul_zero]
    · have hn : ∀ i ∈ S, w ≠ a i := by simpa only [not_exists, not_and] using hr
      change f w = g w * P w
      rw [(hoff w hw hn).2, div_mul_cancel₀ _
        (product_ne_zero_off_roots S a m ha w (hw_norm w hw) hn)]
  · intro w hw hn
    exact (hoff w hw hn).2

end
end GRWTSK.Analysis.ComplexAnalysis.FiniteBlaschkeRemoval
