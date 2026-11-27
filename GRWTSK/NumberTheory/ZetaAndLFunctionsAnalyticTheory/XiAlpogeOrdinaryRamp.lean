/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Normed.Ring.InfiniteSum
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Removing proper prime powers from the centered prime ramp

At every nonnegative scale, the linear renormalization less the removed ramps
is an absolutely summable positive correction. For every exponent strictly
above one half and at most one this correction is bounded by a constant times
that power of the scale. This suffices to transfer power-window ceilings with
arbitrarily small exponent slack, without a prime number theorem.
-/

namespace GRWTSK.XiAlpogeOrdinaryRamp
noncomputable section

abbrev PrimePowerIndex := Nat.Primes × ℕ
/-- Each ordinary prime occurs once for each exponent 2,3,... . -/
def site (q : PrimePowerIndex) : ℝ := (q.1.val : ℝ) ^ (q.2 + 2)
def weight (q : PrimePowerIndex) : ℝ := Real.log q.1.val

private theorem prime_two (p : Nat.Primes) : 2 ≤ (p.val : ℝ) := by exact_mod_cast p.prop.two_le
private theorem site_pos (q : PrimePowerIndex) : 0 < site q := by
  have := prime_two q.1
  unfold site
  positivity
private theorem weight_nonneg (q : PrimePowerIndex) : 0 ≤ weight q :=
  Real.log_nonneg (by linarith [prime_two q.1])

private theorem prime_weight_summable {s : ℝ} (hs : 1/2 < s) :
    Summable fun p : Nat.Primes => Real.log p.val * (p.val : ℝ)^(-2*s) := by
  let a := s - 1/2
  have ha : 0 < a := by dsimp [a]; linarith
  have hab : a - 2*s < -1 := by dsimp [a]; linarith
  have hsum := (Real.summable_nat_rpow.mpr hab).comp_injective
    (Subtype.val_injective (p := Nat.Prime))
  apply Summable.of_nonneg_of_le (fun p => mul_nonneg (Real.log_nonneg (by linarith [prime_two p]))
    (Real.rpow_nonneg (by positivity) _)) _ (hsum.mul_right a⁻¹)
  intro p
  have hpos : 0 < (p.val : ℝ) := by linarith [prime_two p]
  have hlog := Real.log_le_rpow_div hpos.le ha
  change _ ≤ (p.val : ℝ)^(a-2*s) * a⁻¹
  rw [show a-2*s = a+(-2*s) by ring, Real.rpow_add hpos]
  calc _ ≤ ((p.val : ℝ)^a / a) * (p.val : ℝ)^(-2*s) :=
      mul_le_mul_of_nonneg_right hlog (Real.rpow_nonneg hpos.le _)
    _ = _ := by ring

/-- Absolute convergence of the prime-power coefficient series for every
real exponent above one half. -/
theorem summable_weight_site {s : ℝ} (hs : 1/2 < s) :
    Summable (fun q : PrimePowerIndex => weight q * (site q)^(-s)) := by
  have hs0 : 0 < s := by linarith
  have hgeo := summable_geometric_of_lt_one (Real.rpow_nonneg (by norm_num : (0:ℝ) ≤ 2) (-s))
    (Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (neg_lt_zero.mpr hs0))
  have hmajor := (prime_weight_summable hs).mul_of_nonneg hgeo
    (fun p => mul_nonneg (Real.log_nonneg (by linarith [prime_two p])) (Real.rpow_nonneg (by positivity) _))
    (fun n => pow_nonneg (Real.rpow_nonneg (by norm_num) _) _)
  apply Summable.of_nonneg_of_le (fun q => mul_nonneg (weight_nonneg q) (Real.rpow_nonneg (site_pos q).le _)) _ hmajor
  rintro ⟨p,k⟩
  have hp : 0 < (p.val : ℝ) := by linarith [prime_two p]
  have hpow : ((p.val : ℝ)^(k+2))^(-s) = (p.val : ℝ)^(-2*s) * ((p.val : ℝ)^(-s))^k := by
    rw [← Real.rpow_natCast_mul hp.le, ← Real.rpow_mul_natCast hp.le, ← Real.rpow_add hp]
    congr 1
    push_cast
    ring
  change Real.log p.val * (((p.val : ℝ)^(k+2))^(-s)) ≤ _ * ((2:ℝ)^(-s))^k
  rw [hpow, ←mul_assoc]
  exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (Real.rpow_nonneg hp.le _)
    (Real.rpow_le_rpow_of_nonpos (by norm_num) (prime_two p) (by linarith)) k)
    (mul_nonneg (Real.log_nonneg (by linarith [prime_two p])) (Real.rpow_nonneg hp.le _))

/-- A proper prime-power ramp is subtracted before restoring its full slope. -/
def removedRamp (x : ℝ) : ℝ := ∑' q, weight q * max (x / site q - 1) 0
def slope : ℝ := ∑' q, weight q / site q
def correction (x : ℝ) : ℝ := ∑' q, weight q * min 1 (x / site q)

private theorem summable_slope : Summable (fun q => weight q / site q) := by
  simpa only [Real.rpow_neg_one, div_eq_mul_inv] using summable_weight_site (s := 1) (by norm_num)

private theorem split_ramp (u : ℝ) : u - max (u-1) 0 = min 1 u := by
  rcases le_total u 1 with h | h
  · rw [max_eq_right (by linarith), min_eq_right h, sub_zero]
  · rw [max_eq_left (by linarith), min_eq_left h]; ring

/-- Exact positive correction at every scale, using the actual primes and
all exponents of at least two. -/
theorem linear_minus_removedRamp {x : ℝ} (hx : 0 ≤ x) :
    x * slope - removedRamp x = correction x := by
  have hlin := summable_slope.mul_left x
  have hrem : Summable (fun q => weight q * max (x / site q - 1) 0) := by
    apply Summable.of_nonneg_of_le (fun q => mul_nonneg (weight_nonneg q) (le_max_right _ _)) _ hlin
    intro q
    rw [show x * (weight q / site q) = weight q * (x/site q) by ring]
    exact mul_le_mul_of_nonneg_left (max_le (by linarith) (div_nonneg hx (site_pos q).le)) (weight_nonneg q)
  unfold slope removedRamp correction
  rw [← summable_slope.tsum_mul_left x, ← hlin.tsum_sub hrem]
  apply tsum_congr
  intro q
  rw [show x * (weight q / site q) - weight q * max (x / site q - 1) 0 =
    weight q * (x / site q - max (x/site q-1) 0) by ring, split_ramp (x / site q)]

theorem correction_nonneg {x : ℝ} (hx : 0 ≤ x) : 0 ≤ correction x :=
  tsum_nonneg (fun q => mul_nonneg (weight_nonneg q) (le_min zero_le_one (div_nonneg hx (site_pos q).le)))

/-- The clipping correction costs at most a convergent moment times x^s. -/
theorem correction_le_power {s x : ℝ} (hs : 1/2 < s) (hs1 : s ≤ 1) (hx : 0 ≤ x) :
    correction x ≤ x^s * ∑' q, weight q * (site q)^(-s) := by
  have hs0 : 0 ≤ s := by linarith
  have hmajor := (summable_weight_site hs).mul_left (x^s)
  have hle (q) : weight q * min 1 (x / site q) ≤ x^s * (weight q * (site q)^(-s)) := by
    have ht := site_pos q
    have hz : 0 ≤ x/site q := div_nonneg hx ht.le
    have hclip : min 1 (x/site q) ≤ (x/site q)^s := by
      rcases le_total (x/site q) 1 with h|h
      · rw [min_eq_right h]
        simpa only [Real.rpow_one] using
          (Real.rpow_le_rpow_of_exponent_ge' hz h hs0 hs1)
      · rw [min_eq_left h]
        exact Real.one_le_rpow h hs0
    calc _ ≤ weight q * (x/site q)^s := mul_le_mul_of_nonneg_left hclip (weight_nonneg q)
      _ = _ := by rw [Real.div_rpow hx ht.le, Real.rpow_neg ht.le]; ring
  rw [← (summable_weight_site hs).tsum_mul_left]
  exact (Summable.of_nonneg_of_le (fun q => mul_nonneg (weight_nonneg q) (le_min zero_le_one (div_nonneg hx (site_pos q).le))) hle hmajor).tsum_le_tsum hle hmajor

/-- One-sided bounds on cofinal whole power windows, for every exponent
strictly above one half. The window exponent is kept fixed. -/
def WindowCeilings (G : ℝ → ℝ) (windowExponent : ℝ) : Prop :=
  ∀ θ : ℝ, 1/2 < θ → ∀ lower : ℝ, ∃ Y ≥ lower, ∀ x : ℝ,
    Y ≤ x → x ≤ Y ^ windowExponent → G x ≤ x ^ θ

/-- Removing all proper prime powers with their exact linear correction
preserves the complete family of one-sided power windows in both directions. -/
theorem windowCeilings_renormalized_iff (G : ℝ → ℝ) (windowExponent : ℝ) :
    WindowCeilings (fun x => G x + (x * slope - removedRamp x)) windowExponent ↔
      WindowCeilings G windowExponent := by
  constructor
  · intro h θ hθ lower
    obtain ⟨Y,hY,hG⟩ := h θ hθ (max lower 0)
    refine ⟨Y, (le_max_left _ _).trans hY, ?_⟩
    intro x hYx hx
    have hx0 : 0 ≤ x := (le_max_right _ _).trans (hY.trans hYx)
    simpa only [linear_minus_removedRamp hx0] using
      (le_trans (le_add_of_nonneg_right (correction_nonneg hx0))
        (by simpa only [linear_minus_removedRamp hx0] using hG x hYx hx))
  · intro h θ hθ lower
    let s : ℝ := min 1 ((θ+1/2)/2)
    have hs : 1/2 < s := lt_min (by norm_num) (by linarith)
    have hs1 : s ≤ 1 := min_le_left _ _
    have hsθ : s < θ := (min_le_right _ _).trans_lt (by linarith)
    let C : ℝ := ∑' q, weight q * (site q)^(-s)
    obtain ⟨T,hT⟩ := Filter.eventually_atTop.mp
      ((tendsto_rpow_atTop (sub_pos.mpr hsθ)).eventually_ge_atTop (1+C))
    obtain ⟨Y,hY,hG⟩ := h s hs (max lower (max 1 T))
    refine ⟨Y, (le_max_left _ _).trans hY, ?_⟩
    intro x hYx hx
    have hbase := (le_max_right lower (max 1 T)).trans (hY.trans hYx)
    have hx1 : 1 ≤ x := (le_max_left _ _).trans hbase
    have hx0 : 0 < x := zero_lt_one.trans_le hx1
    have hconstant : 1+C ≤ x^(θ-s) := hT x ((le_max_right _ _).trans hbase)
    have hcor : correction x ≤ x^s*C := correction_le_power hs hs1 hx0.le
    change G x + (x * slope - removedRamp x) ≤ x^θ
    rw [linear_minus_removedRamp hx0.le]
    calc G x + correction x ≤ x^s + x^s*C := add_le_add (hG x hYx hx) hcor
      _ = x^s*(1+C) := by ring
      _ ≤ x^s*x^(θ-s) := mul_le_mul_of_nonneg_left hconstant (Real.rpow_nonneg hx0.le _)
      _ = x^θ := by rw [← Real.rpow_add hx0]; congr 1; ring

open ArithmeticFunction

/-- The uncentered ramp of all natural-number von Mangoldt weights. -/
def mangoldtRamp (x : ℝ) : ℝ := ∑' n : ℕ, vonMangoldt n * max (x / n - 1) 0
/-- The uncentered ramp using ordinary primes only. -/
def ordinaryRamp (x : ℝ) : ℝ := ∑' p : Nat.Primes, Real.log p.val * max (x / p.val - 1) 0

private def splitExponent : (Nat.Primes ⊕ PrimePowerIndex) ≃ PrimePowerIndex where
  toFun := Sum.elim (fun p => (p, 0)) (fun q => (q.1, q.2 + 1))
  invFun := fun (p,k) => Nat.casesOn k (Sum.inl p) (fun n => Sum.inr (p,n))
  left_inv
    | .inl _ => rfl
    | .inr (_,_) => rfl
  right_inv
    | (_,0) => rfl
    | (_,Nat.succ _) => rfl

/-- Exact arithmetic separation of the full von Mangoldt ramp. -/
theorem mangoldtRamp_eq (x : ℝ) : mangoldtRamp x = ordinaryRamp x + removedRamp x := by
  let f (n : ℕ) := vonMangoldt n * max (x / n - 1) 0
  have hf : Summable f := by
    apply summable_of_ne_finset_zero (s := Finset.range (⌈x⌉₊+1))
    intro n hn
    have hN : ⌈x⌉₊ < n := by simpa using hn
    have hnpos : 0 < (n:ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hN
    have hxn : x ≤ (n:ℝ) := (Nat.le_ceil x).trans (by exact_mod_cast hN.le)
    simp [f, max_eq_right (sub_nonpos.mpr ((div_le_one hnpos).mpr hxn))]
  have hsup : Function.support f ⊆ {n | IsPrimePow n} := by
    intro n hn
    by_contra h
    exact hn (by simp [f, vonMangoldt_eq_zero_iff.mpr h])
  let e := splitExponent.trans Nat.Primes.prodNatEquiv
  let F (i : Nat.Primes ⊕ PrimePowerIndex) := f (e i).val
  have hinj : Function.Injective (fun i => (e i).val) := Subtype.val_injective.comp e.injective
  have hF : Summable F := hf.comp_injective hinj
  have hL (p : Nat.Primes) : F (.inl p) = Real.log p.val * max (x / p.val - 1) 0 := by
    change f (Nat.Primes.prodNatEquiv (p,0)).val = _
    simp [f, vonMangoldt_apply_prime p.prop]
  have hR (q : PrimePowerIndex) : F (.inr q) = weight q * max (x / site q - 1) 0 := by
    rcases q with ⟨p,k⟩
    change f (Nat.Primes.prodNatEquiv (p,k+1)).val = _
    simp [f, vonMangoldt_apply_pow, vonMangoldt_apply_prime p.prop, site, weight]
  calc mangoldtRamp x = ∑' n : {n : ℕ // IsPrimePow n}, f n :=
      (tsum_subtype_eq_of_support_subset hsup).symm
    _ = ∑' i, F i := (e.tsum_eq (fun n => f n.val)).symm
    _ = (∑' p, F (.inl p)) + ∑' q, F (.inr q) :=
      (hF.comp_injective Sum.inl_injective).tsum_sum (hF.comp_injective Sum.inr_injective)
    _ = ordinaryRamp x + removedRamp x := by
      rw [tsum_congr hL, tsum_congr hR]; rfl

/-- Any common centering, including the ordinary zeta pole and Euler-constant
term, drops out once the missing linear slope is paid. -/
theorem ordinary_windows_iff (center : ℝ → ℝ) (w : ℝ) :
    WindowCeilings (fun x => ordinaryRamp x + center x + x*slope) w ↔
      WindowCeilings (fun x => mangoldtRamp x + center x) w := by
  convert windowCeilings_renormalized_iff (fun x => mangoldtRamp x + center x) w using 2
  funext x
  rw [mangoldtRamp_eq]
  ring

end
end GRWTSK.XiAlpogeOrdinaryRamp
