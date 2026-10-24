import ActualFirstStieltjes
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.Normed.Ring.InfiniteSum

/-! Actual prime-indexed proper-power moments.
Direction grwtsk contributors; scratch construction OpenAI Codex.
No closed-prefix arithmetic dictionary, Tonelli integral transport or Laurent/c identity. -/
set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ProperPowerMoments
open Filter Set
open scoped Topology
open ContinuousResearch.ArithmeticInterceptFinite ContinuousResearch.ActualFirstStieltjes

def outerWeight (r n : ℕ) : ℝ := (Real.log (n : ℝ))^(r+1)/(n : ℝ)^2

def exponentWeight (r k : ℕ) : ℝ := ((k+2 : ℕ) : ℝ)^r*(1/2:ℝ)^k

def momentAtom (r p k : ℕ) : ℝ :=
  ((k+2 : ℕ) : ℝ)^r*(Real.log (p : ℝ))^(r+1)/(p : ℝ)^(k+2)

def primeMomentAtom (r : ℕ) (p : Nat.Primes) (k : ℕ) : ℝ := momentAtom r p.val k

def properPowerMoment (r : ℕ) : ℝ := ∑' p : Nat.Primes, ∑' k : ℕ, primeMomentAtom r p k

def properPowerB1 : ℝ := properPowerMoment 1

def properPowerB2 : ℝ := properPowerMoment 2

theorem outerWeight_nonneg (r n : ℕ) : 0 ≤ outerWeight r n := by
  unfold outerWeight
  have hl : 0 ≤ Real.log (n : ℝ) := by
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · simp
    · exact Real.log_nonneg (by exact_mod_cast hn)
  positivity

theorem exponentWeight_nonneg (r k : ℕ) : 0 ≤ exponentWeight r k := by
  unfold exponentWeight
  positivity

theorem momentAtom_nonneg (r p k : ℕ) : 0 ≤ momentAtom r p k := by
  unfold momentAtom
  have hl : 0 ≤ Real.log (p : ℝ) := by
    rcases Nat.eq_zero_or_pos p with rfl | hp
    · simp
    · exact Real.log_nonneg (by exact_mod_cast hp)
  positivity

theorem outerWeight_summable (r : ℕ) : Summable (outerWeight r) := by
  apply (summable_nat_add_iff 2).mp
  have hs : Summable (fun n : ℕ => ((n+2 : ℕ) : ℝ)^(-(3/2:ℝ))) :=
    ((Real.summable_nat_rpow.mpr (by norm_num : -(3/2:ℝ)< -1)).comp_injective
      (i := fun n : ℕ => n+2) (by intro a b h; dsimp at h; omega))
  apply hs.of_norm_bounded_eventually_nat
  have hlog := isLittleO_log_rpow_rpow_atTop ((r+1:ℕ):ℝ) (s:=1/2) (by norm_num)
  have ht : Tendsto (fun n : ℕ => ((n+2 : ℕ) : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp (tendsto_add_atTop_nat 2)
  have hb := ht.eventually (hlog.bound (by norm_num : (0:ℝ)<1))
  filter_upwards [hb] with n hn
  have hp : 0<((n+2 : ℕ) : ℝ) := by positivity
  have hlogn : 0 ≤ Real.log ((n+2 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1≤n+2 by omega))
  have hn' : (Real.log ((n+2 : ℕ) : ℝ))^(r+1) ≤ ((n+2 : ℕ) : ℝ)^(1/2:ℝ) := by
    have hn0 : ‖(Real.log ((n+2 : ℕ) : ℝ))^((r+1 : ℕ) : ℝ)‖ ≤
        ‖((n+2 : ℕ) : ℝ)^(1/2:ℝ)‖ := by simpa only [one_mul] using hn
    rw [Real.rpow_natCast, Real.norm_of_nonneg (pow_nonneg hlogn _),
      Real.norm_of_nonneg (Real.rpow_nonneg hp.le _)] at hn0
    exact hn0
  rw [Real.norm_of_nonneg (outerWeight_nonneg r (n+2))]
  unfold outerWeight
  apply (div_le_iff₀ (sq_pos_of_pos hp)).mpr
  have he : ((n+2 : ℕ) : ℝ)^(-(3/2:ℝ))*((n+2 : ℕ) : ℝ)^2 =
      ((n+2 : ℕ) : ℝ)^(1/2:ℝ) := by
    rw [←Real.rpow_natCast,←Real.rpow_add hp]
    norm_num
  rw [he]
  exact hn'

theorem exponentWeight_summable (r : ℕ) : Summable (exponentWeight r) := by
  have hs := (summable_pow_mul_geometric_of_norm_lt_one r (r:=(1/2:ℝ)) (by norm_num)).comp_injective
    (i:=fun n : ℕ => n+2) (by intro a b h; dsimp at h;omega)
  apply (hs.mul_left (4:ℝ)).congr
  intro n
  unfold exponentWeight
  simp only [Function.comp_apply,pow_add]
  ring

theorem momentAtom_le_product (r p k : ℕ) (hp : 2≤p) :
    momentAtom r p k ≤ outerWeight r p*exponentWeight r k := by
  have hpp : 0<(p:ℝ) := by exact_mod_cast (show 0<p by omega)
  have hi : (p:ℝ)⁻¹≤(1/2:ℝ) := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0:ℝ)<2)
      (by exact_mod_cast hp : (2:ℝ)≤p)
  have hk := pow_le_pow_left₀ (le_of_lt (inv_pos.mpr hpp)) hi k
  have hc : 0≤((k+2:ℕ):ℝ)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2 := by
    have hl := Real.log_nonneg (show (1:ℝ)≤p by exact_mod_cast (show 1≤p by omega))
    positivity
  have hm := mul_le_mul_of_nonneg_left hk hc
  calc
    momentAtom r p k = (↑(k+2)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2)*(p:ℝ)⁻¹^k := by
      unfold momentAtom
      rw [inv_pow,pow_add]
      field_simp
      simp only [pow_add]
      ring
    _ ≤ (↑(k+2)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2)*(1/2:ℝ)^k := hm
    _ = outerWeight r p*exponentWeight r k := by unfold outerWeight exponentWeight; ring

theorem prime_outerWeight_summable (r : ℕ) :
    Summable (fun p : Nat.Primes => outerWeight r p.val) :=
  (outerWeight_summable r).comp_injective Subtype.val_injective

theorem primeMomentAtom_summable (r : ℕ) :
    Summable (fun pk : Nat.Primes×ℕ => primeMomentAtom r pk.1 pk.2) := by
  have hs := (prime_outerWeight_summable r).mul_of_nonneg (exponentWeight_summable r)
    (fun p => outerWeight_nonneg r p.val) (exponentWeight_nonneg r)
  apply Summable.of_nonneg_of_le (fun pk : Nat.Primes×ℕ => momentAtom_nonneg r pk.1.val pk.2)
    (fun pk : Nat.Primes×ℕ => momentAtom_le_product r pk.1.val pk.2 pk.1.property.two_le) hs

theorem primeMomentAtom_inner_summable (r : ℕ) (p : Nat.Primes) :
    Summable (primeMomentAtom r p) :=
  ((summable_prod_of_nonneg (fun pk : Nat.Primes×ℕ => momentAtom_nonneg r pk.1.val pk.2)).mp
    (primeMomentAtom_summable r)).1 p

theorem primeMomentAtom_outer_summable (r : ℕ) :
    Summable (fun p : Nat.Primes => ∑' k : ℕ, primeMomentAtom r p k) :=
  ((summable_prod_of_nonneg (fun pk : Nat.Primes×ℕ => momentAtom_nonneg r pk.1.val pk.2)).mp
    (primeMomentAtom_summable r)).2

theorem properPowerMoment_nonneg (r : ℕ) : 0 ≤ properPowerMoment r := by
  exact tsum_nonneg (fun p => tsum_nonneg (fun k => momentAtom_nonneg r p.val k))

theorem finiteProperPowerMoment_le_B1 : finiteProperPowerMoment ≤ properPowerB1 := by
  classical
  let e : {p : ℕ // p ∈ primeInventory} → Nat.Primes :=
    fun p => ⟨p.val, inventory_primes p.val p.property⟩
  have he : Function.Injective e := by
    intro p q hpq
    apply Subtype.ext
    exact congrArg (fun n : Nat.Primes => n.val) hpq
  have hsum := (primeMomentAtom_outer_summable 1).sum_le_tsum
    (primeInventory.attach.image e)
    (fun p _ => tsum_nonneg (fun k => momentAtom_nonneg 1 p.val k))
  rw [Finset.sum_image he.injOn] at hsum
  calc
    finiteProperPowerMoment = ∑ p ∈ primeInventory.attach, ∑ k ∈ Finset.range 11,
        momentAtom 1 p.val k := by
      rw [Finset.sum_attach primeInventory (fun p : ℕ => ∑ k ∈ Finset.range 11,
        momentAtom 1 p k), finiteProperPowerMoment_eq_atoms]
      apply Finset.sum_congr rfl
      intro p hp
      apply Finset.sum_congr rfl
      intro k hk
      simp only [momentAtom, pow_one]
    _ ≤ ∑ p ∈ primeInventory.attach, ∑' k : ℕ, primeMomentAtom 1 (e p) k := by
      apply Finset.sum_le_sum
      intro p hp
      exact (primeMomentAtom_inner_summable 1 (e p)).sum_le_tsum (Finset.range 11)
        (fun k _ => momentAtom_nonneg 1 p.val k)
    _ ≤ properPowerB1 := hsum

theorem properPowerB1_gt_nine_quarters : (9:ℝ)/4 < properPowerB1 :=
  lt_of_lt_of_le finiteProperPowerMoment_gt_nine_quarters finiteProperPowerMoment_le_B1

theorem arithmeticConstant_gt_one_five_hundred : (1:ℝ)/500 <
    Real.eulerMascheroniConstant^2 + 2*firstStieltjesConstant + properPowerB1 - 2 :=
  intercept_gt_one_five_hundred finiteProperPowerMoment_le_B1

/-- Literal omitted proper-power onsets. The endpoint is strict: equality is retained in
    the complementary closed prefix. No source-prefix equality is asserted here. -/
def omittedOnsetAtom (t : ℝ) (p : Nat.Primes) (k : ℕ) : ℝ :=
  if t < ((k+2 : ℕ) : ℝ)*Real.log (p.val : ℝ) then
    Real.log (p.val : ℝ)/(p.val : ℝ)^(k+2) else 0

def omittedOnsetTail (t : ℝ) : ℝ :=
  ∑' pk : Nat.Primes×ℕ, omittedOnsetAtom t pk.1 pk.2

theorem properPowerMoment_eq_joint_sum (r : ℕ) :
    properPowerMoment r = ∑' pk : Nat.Primes×ℕ, primeMomentAtom r pk.1 pk.2 := by
  exact (primeMomentAtom_summable r).tsum_prod.symm

theorem omittedOnsetAtom_nonneg (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    0 ≤ omittedOnsetAtom t p k := by
  have hl := Real.log_nonneg (show (1:ℝ)≤p.val by exact_mod_cast p.property.one_le)
  unfold omittedOnsetAtom
  split_ifs <;> positivity

theorem omittedOnsetAtom_le_zeroMoment (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    omittedOnsetAtom t p k ≤ primeMomentAtom 0 p k := by
  unfold omittedOnsetAtom primeMomentAtom momentAtom
  split_ifs
  · simp
  · exact momentAtom_nonneg 0 p.val k

theorem omittedOnsetTail_summable (t : ℝ) :
    Summable (fun pk : Nat.Primes×ℕ => omittedOnsetAtom t pk.1 pk.2) :=
  Summable.of_nonneg_of_le (fun pk => omittedOnsetAtom_nonneg t pk.1 pk.2)
    (fun pk => omittedOnsetAtom_le_zeroMoment t pk.1 pk.2) (primeMomentAtom_summable 0)

theorem omittedOnsetTail_nonneg (t : ℝ) : 0 ≤ omittedOnsetTail t :=
  tsum_nonneg (fun pk => omittedOnsetAtom_nonneg t pk.1 pk.2)

theorem omittedOnsetTail_eq_iterated (t : ℝ) :
    omittedOnsetTail t = ∑' p : Nat.Primes, ∑' k : ℕ, omittedOnsetAtom t p k :=
  (omittedOnsetTail_summable t).tsum_prod

theorem omittedOnsetAtom_secondMoment (t : ℝ) (ht : 0<t) (p : Nat.Primes) (k : ℕ) :
    t^2*omittedOnsetAtom t p k ≤ primeMomentAtom 2 p k := by
  have hp : 0<(p.val:ℝ) := by exact_mod_cast p.property.pos
  have hl := Real.log_nonneg (show (1:ℝ)≤p.val by exact_mod_cast p.property.one_le)
  unfold omittedOnsetAtom
  split_ifs with h
  · have hc : 0 ≤ Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2) := by positivity
    have hs : t^2 ≤ (↑(k+2)*Real.log (p.val:ℝ))^2 := by nlinarith
    have hm := mul_le_mul_of_nonneg_right hs hc
    convert hm using 1 <;> unfold primeMomentAtom momentAtom <;> ring
  · simpa using momentAtom_nonneg 2 p.val k

theorem omittedOnsetTail_le_B2_div_square (t : ℝ) (ht : 0<t) :
    omittedOnsetTail t ≤ properPowerB2/t^2 := by
  have hm := ((omittedOnsetTail_summable t).mul_left (t^2)).tsum_le_tsum
    (fun pk => omittedOnsetAtom_secondMoment t ht pk.1 pk.2) (primeMomentAtom_summable 2)
  rw [tsum_mul_left, ←properPowerMoment_eq_joint_sum] at hm
  exact (le_div_iff₀ (sq_pos_of_pos ht)).mpr (by simpa [properPowerB2,mul_comm] using hm)

end ContinuousResearch.ProperPowerMoments
