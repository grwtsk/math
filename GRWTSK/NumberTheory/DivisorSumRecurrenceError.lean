import GRWTSK.NumberTheory.DivisorSumComponentGap

/-!
# Absolute precision for the divisor-sum recurrence

Authors: grwtsk contributors

Integer estimates behind equations (3.9)–(3.10) of Shunia, arXiv:2611.34242v1.
The inverse norm and the coefficient bound are separate matrix statements.
-/
namespace GRWTSK.IntegerFactorization.AbundanceRecovery

/-- Right side of the paper's upper estimate on the inverse row-sum norm. -/
def inverseEnvelope (B J l : ℕ) : ℕ := l*(2*B^2)^(2*(l-1))*B^(J+2)

/-- Remove the factor B^J from the inverse envelope times the signed-tail
numerator, leaving at most a twelfth power of the original input. -/
theorem inverseEnvelope_cancel {n B J l : ℕ} (hB : 0 < B) (hl : l ≤ n)
    (hcount : 2^l ≤ n) (hprod : B^l ≤ n^2) (hlpos : 0 < l) :
    inverseEnvelope B J l * n ≤ n^12 * B^J := by
  let e := 2*(l-1)
  have h₂ : 2^e ≤ n^2 := calc
    _ ≤ 2^(l*2) := Nat.pow_le_pow_right (by decide) (by dsimp [e]; omega)
    _ = (2^l)^2 := pow_mul ..
    _ ≤ _ := Nat.pow_le_pow_left hcount _
  have h₄ : B^(2*e+2) ≤ n^8 := calc
    _ ≤ B^(l*4) := Nat.pow_le_pow_right hB (by dsimp [e]; omega)
    _ = (B^l)^4 := pow_mul ..
    _ ≤ (n^2)^4 := Nat.pow_le_pow_left hprod _
    _ = _ := by ring
  calc
    _ = (l*(2^e*B^(2*e+2))*n)*B^J := by
      unfold inverseEnvelope
      rw [mul_pow, ← pow_mul, pow_add, pow_add]
      dsimp [e]
      ring
    _ ≤ (n*(n^2*n^8)*n)*B^J :=
      Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ (Nat.mul_le_mul hl (Nat.mul_le_mul h₂ h₄)))
    _ = _ := by ring

/-- At the actual source window the paper's E = n/z^J and inverse envelope
K satisfy K E ≤ 2^(-24) n^(-12), written without division. -/
theorem recurrence_error_budget {w n B z l : ℕ} (hwn : w ≤ n) (hB : 0 < B)
    (hr : (2*(w.log2+1)+1)*B ≤ (2*(w.log2+1))*z)
    (hl : l ≤ n) (hcount : 2^l ≤ n) (hprod : B^l ≤ n^2) (hlpos : 0 < l) :
    let m := Nat.clog 2 n
    let J := 48*(1+m)^2
    2^24*n^12*(inverseEnvelope B J l*n) ≤ z^J := by
  dsimp only
  let m := Nat.clog 2 n
  let J := 48*(1+m)^2
  have hs := shunia_window_suppression hwn hB hr
  have h24 : 2^24*n^24 ≤ 2^(24*(1+m)) := calc
    _ ≤ 2^24*(2^m)^24 := Nat.mul_le_mul_left _ (Nat.pow_le_pow_left (Nat.le_pow_clog (by decide) n) _)
    _ = _ := by rw [← pow_mul, ← pow_add]; congr 1; ring
  calc
    _ ≤ 2^24*n^12*(n^12*B^J) :=
      Nat.mul_le_mul_left _ (inverseEnvelope_cancel hB hl hcount hprod hlpos)
    _ = (2^24*n^24)*B^J := by ring
    _ ≤ _ := (Nat.mul_le_mul_right (B^J) h24).trans hs


/-- The finite retained prime set realizes the numerical budget at the first
sample, with the same cutoff as the signed unitary-divisor decomposition. -/
theorem exists_window_budget {w n : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n) :
    let m := Nat.clog 2 n
    let J := 48*(1+m)^2
    ∃ q B z : ℕ, ∃ S : Finset ℕ, 2 ≤ q ∧ q ≤ B ∧ B < z ∧ S.Nonempty ∧
      S ⊆ w.primeFactors ∧ (∃ p ∈ S, p^w.factorization p = q) ∧
      (∀ p ∈ w.primeFactors, q ≤ p^w.factorization p) ∧
      (∀ d, 1 < d → d ∣ w → d.Coprime (w/d) →
        ((d ≤ B ↔ ∃ p ∈ S, d = p^w.factorization p) ∧ (d ≤ B ∨ z ≤ d))) ∧
      B^S.card ≤ w^2 ∧ 2^24*n^12*(inverseEnvelope B J S.card*n) ≤ z^J := by
  dsimp only
  obtain ⟨q,B,z,S,hq,hB,hz,_,hr,hS,hsub,hmin,hlow,hprod,hcut⟩ := component_gap hw
  have hc : S.card ≤ w.log2 := calc
    _ ≤ w.primeFactors.card := Finset.card_le_card hsub
    _ = (canonical w).length := by simp [canonical]
    _ ≤ _ := (canonical_complete hw).length_le
  have hc2 : 2^S.card ≤ w := (Nat.le_log2 (by omega)).mp hc
  refine ⟨q,B,z,S,hq,hB,hz,hS,hsub,hmin,hlow,hcut,hprod,?_⟩
  exact recurrence_error_budget hwn (by omega) hr
    ((Nat.lt_two_pow_self (n:=S.card)).le.trans (hc2.trans hwn))
    (hc2.trans hwn) (hprod.trans (Nat.pow_le_pow_left hwn _)) hS.card_pos

/-- Given the integer margin (3.10), a coefficient-mass bound n³ still
suffices for a strict quarter-unit preconditioned residual. -/
theorem rational_margins {n w K z J l : ℕ} (hn : 2 ≤ n) (hw : w ≤ n)
    (hz : 0 < z) (hl : l ≤ n)
    (hbudget : 2^24*n^12*(K*n) ≤ z^J) :
    (l:ℚ) * ((K:ℚ) * ((w:ℚ) / (z:ℚ)^J)) ≤ 1/2 ∧
    (K:ℚ) * (((w:ℚ)/(z:ℚ)^J)*(n:ℚ)^3) < 1/4 := by
  have hzq : 0 < (z:ℚ)^J := by exact_mod_cast pow_pos hz J
  have hnq : (1:ℚ) ≤ n := by exact_mod_cast (by omega : 1 ≤ n)
  have hKw : (K:ℚ)*w ≤ (K:ℚ)*n := by exact_mod_cast Nat.mul_le_mul_left K hw
  have hnn : (n:ℚ)^3 ≤ (n:ℚ)^12 := pow_le_pow_right₀ hnq (by decide)
  have hn3 : (n:ℚ) ≤ (n:ℚ)^3 := by simpa using pow_le_pow_right₀ hnq (by decide : 1 ≤ 3)
  have hlq : (l:ℚ) ≤ (n:ℚ)^3 := (by exact_mod_cast hl : (l:ℚ) ≤ n).trans hn3
  have hcap : (2:ℚ)^24*(n:ℚ)^12*((K:ℚ)*n) ≤ (z:ℚ)^J := by exact_mod_cast hbudget
  by_cases hK : K=0
  · simp [hK]
  have hpositive : 0 < (K:ℚ)*n := by positivity
  have hcoef : 4*(n:ℚ)^3 < (2:ℚ)^24*(n:ℚ)^12 := calc
    _ < (2:ℚ)^24*(n:ℚ)^3 := mul_lt_mul_of_pos_right (by norm_num) (by positivity)
    _ ≤ _ := mul_le_mul_of_nonneg_left hnn (by positivity)
  have hstrict : 4*(n:ℚ)^3*((K:ℚ)*w) < (z:ℚ)^J :=
    ((mul_le_mul_of_nonneg_left hKw (by positivity)).trans_lt
      (mul_lt_mul_of_pos_right hcoef hpositive)).trans_le hcap
  have hsmall : 2*(l:ℚ)*((K:ℚ)*w) ≤ 4*(n:ℚ)^3*((K:ℚ)*w) := by
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    linarith [show (0:ℚ) ≤ (n:ℚ)^3 by positivity]
  constructor
  · have hh := hsmall.trans hstrict.le
    apply (le_div_iff₀ (by norm_num : (0:ℚ)<2)).2
    rw [← mul_div_assoc, ← mul_div_assoc, div_mul_eq_mul_div]
    apply (div_le_iff₀ hzq).2
    nlinarith only [hh]
  · apply (lt_div_iff₀ (by norm_num : (0:ℚ)<4)).2
    rw [div_mul_eq_mul_div, ← mul_div_assoc, div_mul_eq_mul_div]
    apply (div_lt_iff₀ hzq).2
    nlinarith only [hstrict]

end GRWTSK.IntegerFactorization.AbundanceRecovery
