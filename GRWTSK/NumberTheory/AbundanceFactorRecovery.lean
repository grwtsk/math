import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.NthRootLemmas
import Mathlib.Data.Finset.Max
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity

/-!
# Arithmetic steps in the reverse reduction from abundance

Local source attribution: grwtsk contributors. Adapted from Joseph M. Shunia,
*Deterministic integer factorization from abundance decisions*, arXiv:2611.34242v1,
Lemma 2.1 and the proof of Theorem 3.1 (§3.4). The multiplier and candidate-root
suppliers remain explicit. See AbundanceFactorRecovery.md.
-/
namespace GRWTSK.IntegerFactorization.AbundanceRecovery

abbrev sigma (n : ℕ) : ℕ := ArithmeticFunction.sigma 1 n

def index (n : ℕ) : ℚ := (sigma n : ℚ) / n

/-- If the approximating multiplier is supplied, the strictly abundant and
strictly deficient cases distinguish the integer threshold, including equality. -/
theorem threshold_signs {x m g : ℕ} (hx : 0 < x) (hm : 0 < m) (hg : 0 < g)
    (hgmax : g ≤ 2 * x) (hsmax : sigma x ≤ 2 * x) (hcop : m.Coprime x)
    (hclose : |index m - 2 * x / ((g : ℚ) - 1/2)| < 1 / (100 * x)) :
    (g ≤ sigma x → 2 * (m * x) < sigma (m * x)) ∧
    (sigma x < g → sigma (m * x) < 2 * (m * x)) := by
  let τ : ℚ := 2 * x / ((g : ℚ) - 1/2)
  have hgr : (1 : ℚ) ≤ g := by exact_mod_cast hg
  have hxr : (0 : ℚ) < x := by exact_mod_cast hx
  have hmr : (0 : ℚ) < m := by exact_mod_cast hm
  have hsr : (0 : ℚ) < sigma x := by exact_mod_cast ArithmeticFunction.sigma_pos 1 x hx.ne'
  have hgm : (g : ℚ) ≤ 2 * x := by exact_mod_cast hgmax
  have hsm : (sigma x : ℚ) ≤ 2 * x := by exact_mod_cast hsmax
  have hden : 0 < (g : ℚ) - 1/2 := by linarith
  have ht : τ * ((g : ℚ) - 1/2) = 2 * x := div_mul_cancel₀ _ hden.ne'
  have ht1 : 1 < τ := (lt_div_iff₀ hden).2 (by linarith)
  have he : |(sigma x : ℚ) * (index m - τ)| < 1/2 := calc
    _ = (sigma x : ℚ) * |index m - τ| := by rw [abs_mul, abs_of_pos hsr]
    _ < (sigma x : ℚ) * (1 / (100 * x)) := mul_lt_mul_of_pos_left hclose hsr
    _ ≤ 1/50 := by rw [mul_one_div]; apply (div_le_iff₀ (by positivity)).2; linarith
    _ < 1/2 := by norm_num
  have hem := abs_lt.mp he
  have hprod : (sigma (m * x) : ℚ) = ((sigma x : ℚ) * index m) * m := by
    unfold sigma index
    rw [ArithmeticFunction.isMultiplicative_sigma.map_mul_of_coprime hcop,
      Nat.cast_mul]
    unfold sigma
    field_simp
  constructor
  · intro hs
    have hsg : (g : ℚ) ≤ sigma x := by exact_mod_cast hs
    have hs' : 2 * (x : ℚ) < sigma x * index m := by
      nlinarith [mul_le_mul_of_nonneg_right hsg (le_trans (by norm_num) ht1.le)]
    have := mul_lt_mul_of_pos_right hs' hmr
    rw [← hprod] at this
    exact_mod_cast (by linarith : 2 * ((m : ℚ) * x) < sigma (m * x))
  · intro hs
    have hsg : (sigma x : ℚ) + 1 ≤ g := by exact_mod_cast hs
    have hs' : (sigma x : ℚ) * index m < 2 * x := by
      nlinarith [mul_le_mul_of_nonneg_right hsg (le_trans (by norm_num) ht1.le)]
    have := mul_lt_mul_of_pos_right hs' hmr
    rw [← hprod] at this
    exact_mod_cast (by linarith : (sigma (m * x) : ℚ) < 2 * ((m : ℚ) * x))

/-- Removing an entire prime-power component leaves a coprime residual.
The divisor-sum divisor in (3.13) is exactly the geometric sum, also at j=0. -/
theorem sigma_prime_power_sample {p : ℕ} (hp : p.Prime) (e j : ℕ) :
    sigma ((p ^ e) ^ j) = (p * (p ^ e) ^ j - 1) / (p - 1) := by
  unfold sigma
  rw [← pow_mul, ArithmeticFunction.sigma_one_apply_prime_pow hp,
    Nat.geomSum_eq hp.two_le, pow_succ, Nat.mul_comm (p ^ (e * j)) p]

/-- A single exact quotient update applies to every stored exponent. -/
theorem residual_sample {w q : ℕ} (hq : q ∣ w) (hqpos : 0 < q)
    (hc : q.Coprime (w / q)) (j : ℕ) :
    sigma (q ^ j) ∣ sigma (w ^ j) ∧
    sigma (w ^ j) / sigma (q ^ j) = sigma ((w / q) ^ j) := by
  have hw : q * (w / q) = w := Nat.mul_div_cancel' hq
  have hm : sigma (w ^ j) = sigma (q ^ j) * sigma ((w / q) ^ j) := by
    conv_lhs => rw [← hw, mul_pow]
    exact ArithmeticFunction.isMultiplicative_sigma.map_mul_of_coprime (hc.pow _ _)
  rw [hm]
  exact ⟨dvd_mul_right _ _, Nat.mul_div_cancel_left _ (ArithmeticFunction.sigma_pos _ _
    (pow_pos hqpos j).ne')⟩

/-- A whole list of exact sums is reused without another oracle call. -/
theorem update_consecutive {w p : ℕ} (hp : p.Prime) (a J count : ℕ)
    (hd : p ^ a ∣ w) (hc : (p ^ a).Coprime (w / p ^ a)) :
    (List.range count).map (fun s => sigma (w ^ (J+s)) /
      ((p * (p ^ a) ^ (J+s) - 1) / (p - 1))) =
    (List.range count).map (fun s => sigma ((w / p ^ a) ^ (J+s))) := by
  apply List.map_congr_left
  intro s _
  rw [← sigma_prime_power_sample hp a (J+s)]
  exact (residual_sample hd (pow_pos hp.pos _) hc (J+s)).2

/-- A nontrivial unitary divisor contains at least one *full* prime power
of the ambient integer. This lower bound filters spurious recurrence roots. -/
theorem unitary_contains_component {w d : ℕ} (hd : 1 < d) (hw : w ≠ 0)
    (hdw : d ∣ w) (hc : d.Coprime (w / d)) :
    ∃ p ∈ w.primeFactors, p ^ w.factorization p ∣ d := by
  let p := d.minFac
  have hp : p.Prime := Nat.minFac_prime (by omega)
  have hpd : p ∣ d := Nat.minFac_dvd d
  have hpn : ¬p ∣ w / d := hp.coprime_iff_not_dvd.mp (hc.coprime_dvd_left hpd)
  have hf : w.factorization p = d.factorization p := by
    conv_lhs => rw [← Nat.mul_div_cancel' hdw, Nat.factorization_mul_apply_of_coprime hc]
    simp [Nat.factorization_eq_zero_of_not_dvd hpn]
  exact ⟨p, Nat.mem_primeFactors.mpr ⟨hp, dvd_trans hpd hdw, hw⟩, hf ▸ Nat.ordProj_dvd d p⟩

def retained (w : ℕ) (roots : Finset ℕ) : Finset ℕ :=
  roots.filter fun d => 1 < d ∧ d ∣ w ∧ d.Coprime (w / d)

/-- Once a correct recurrence contributes the smallest full prime power, no
other tested order changes the answer. -/
theorem least_retained {w q : ℕ} {roots : Finset ℕ} (hw : w ≠ 0)
    (hlow : ∀ p ∈ w.primeFactors, q ≤ p ^ w.factorization p)
    (hgood : q ∈ retained w roots) :
    (retained w roots).min' ⟨q, hgood⟩ = q := by
  apply Nat.le_antisymm (Finset.min'_le _ _ hgood)
  apply Finset.le_min'
  intro d hd
  obtain ⟨_, hpos, hdw, hc⟩ := Finset.mem_filter.mp hd
  obtain ⟨p, hp, hpd⟩ := unitary_contains_component hpos hw hdw hc
  exact (hlow p hp).trans (Nat.le_of_dvd (by omega) hpd)

/-- The largest exponent representation of a prime-power component recovers
its original prime even if its exponent is composite. -/
theorem exact_power_extraction {p a y k : ℕ} (hp : p.Prime) (ha : 0 < a)
    (hpow : y ^ k = p ^ a) : k ≤ a ∧ (k = a → y = p) := by
  have hv := congrArg (fun n : ℕ => n.factorization p) hpow
  simp only [Nat.factorization_pow, Finsupp.smul_apply, nsmul_eq_mul,
    hp.factorization_self, mul_one, Nat.cast_id] at hv
  have hk : k ∣ a := ⟨y.factorization p, hv.symm⟩
  refine ⟨Nat.le_of_dvd ha hk, ?_⟩
  rintro rfl
  exact (pow_left_inj₀ (Nat.zero_le _) (Nat.zero_le _) ha.ne').mp hpow

/-- A correct-order root that is a full component passes the unitary filter. -/
theorem component_mem_retained {w p : ℕ} {roots : Finset ℕ} (hw : w ≠ 0)
    (hp : p ∈ w.primeFactors) (hroot : p ^ w.factorization p ∈ roots) :
    p ^ w.factorization p ∈ retained w roots := by
  obtain ⟨hprime, hd, _⟩ := Nat.mem_primeFactors.mp hp
  refine Finset.mem_filter.mpr ⟨hroot, ?_, Nat.ordProj_dvd w p, ?_⟩
  · exact Nat.one_lt_pow (hprime.factorization_pos_of_dvd hw hd).ne' hprime.one_lt
  · exact (Nat.coprime_ordCompl hprime hw).pow_left _

/-- Enumerate candidate exponents only through floor(log2 q), verify each
exact integer root, and extract the base at the largest successful exponent. -/
def exactExponents (q : ℕ) : Finset ℕ :=
  (Finset.Icc 1 q.log2).filter fun e => (Nat.nthRoot e q) ^ e = q

def decodeComponent (q : ℕ) : Option (ℕ × ℕ) :=
  let es := exactExponents q
  if h : es.Nonempty then
    let e := es.max' h
    some (Nat.nthRoot e q, e)
  else none

theorem decodeComponent_prime_power {p a : ℕ} (hp : p.Prime) (ha : 0 < a) :
    decodeComponent (p ^ a) = some (p, a) := by
  have halog : a ≤ (p ^ a).log2 :=
    (Nat.le_log2 (pow_ne_zero _ hp.ne_zero)).2 (Nat.pow_le_pow_left hp.two_le _)
  have hmem : a ∈ exactExponents (p ^ a) := Finset.mem_filter.mpr
    ⟨Finset.mem_Icc.mpr ⟨ha, halog⟩, by rw [Nat.nthRoot_pow ha.ne']⟩
  have hex : (exactExponents (p ^ a)).Nonempty := ⟨a, hmem⟩
  have hmax : (exactExponents (p ^ a)).max' hex = a := by
    apply Nat.le_antisymm _ (Finset.le_max' _ _ hmem)
    apply Finset.max'_le
    intro e he
    exact (exact_power_extraction hp ha (Finset.mem_filter.mp he).2).1
  simp only [decodeComponent, dite_eq_left hex, hmax, Nat.nthRoot_pow ha.ne']

end GRWTSK.IntegerFactorization.AbundanceRecovery
