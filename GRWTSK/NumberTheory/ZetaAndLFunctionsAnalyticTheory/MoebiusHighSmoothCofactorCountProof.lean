/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothIncidentDyadic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteSmoothEulerMomentsProof
import Mathlib.NumberTheory.SmoothNumbers
import Mathlib.Data.Nat.Log
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Prime-exponent vector and complementary-cofactor injection

Mathematical payload: a finite bank of r genuine primes has at most
(log_2 N + 1)^r positive smooth integers up to N. Proof uses the
PINNED Nat.equivProdNatFactoredNumbers and Nat.log cutoff API.
For an original high index n in (X,2X], a large smooth divisor d>Q
leaves cofactor n/d < exp(2 sqrt(log(2X))). Hence the high-support
cardinality is bounded by the product of the two independently
counted finite choices. Source definitions and original n are retained.

Native pinned compilation, expected types, kernel and axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.HighSmoothCofactorCountProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothIncidentDyadic
open GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentProof

/-- Genuine finite Mathlib positive smooth integer inventory. -/
def factoredUpTo (P : Finset ℕ) (N : ℕ) :
    Finset (Nat.factoredNumbers P) :=
  (Finset.Icc 1 N).subtype (fun d => d ∈ Nat.factoredNumbers P)

/-- Prime powers in a positive product cannot carry exponent beyond
the binary-log ceiling of that product. This is the exact finite
exponent-vector budget used by the induction. -/
private theorem exponent_le_of_bounded_product
    {p e m N k : ℕ} (hp : p.Prime) (hm : 0 < m)
    (hprod : p ^ e * m ≤ N) (hN : N < 2 ^ (k + 1)) :
    e ≤ k := by
  have hp2 : 2 ≤ p := hp.two_le
  have hpwr : 2 ^ e ≤ p ^ e := Nat.pow_le_pow_left hp2 e
  have hmul : p ^ e ≤ p ^ e * m := Nat.le_mul_of_pos_right _ hm
  have hle : 2 ^ e ≤ N := (hpwr.trans hmul).trans hprod
  by_contra hbad
  have hEk : k + 1 ≤ e := by omega
  have hpow : 2 ^ (k + 1) ≤ 2 ^ e :=
    Nat.pow_le_pow_right (by omega) hEk
  omega

/-- Induction on the ACTUAL finite set of prime factors. Its step
uses Mathlib's exact prime-power/smaller-bank equivalence, rather
than inventing an exponent alphabet or assuming uniqueness. -/
theorem factoredUpTo_card_le_pow_of_binary_cutoff
    (N k : ℕ) (hN : N < 2 ^ (k + 1)) :
    ∀ (P : Finset ℕ), (∀ p ∈ P, p.Prime) →
      (factoredUpTo P N).card ≤ (k + 1) ^ P.card := by
  intro P
  induction P using Finset.induction with
  | empty =>
      intro _
      have hone : (1 : ℕ) ∈ Nat.factoredNumbers (∅ : Finset ℕ) := by
        simp [Nat.factoredNumbers_empty]
      have hsubset : factoredUpTo ∅ N ⊆
          ({⟨1, hone⟩} : Finset (Nat.factoredNumbers ∅)) := by
        intro d hd
        have h : (d : ℕ) = 1 := by
          have hd' : (d : ℕ) ∈ Nat.factoredNumbers (∅ : Finset ℕ) := d.property
          simpa [Nat.factoredNumbers_empty] using hd'
        have heq : d = ⟨1, hone⟩ := Subtype.ext h
        simp [heq]
      have hc := Finset.card_le_card hsubset
      simpa using hc
  | @insert p s hps ih =>
      intro hprime
      have hp : p.Prime := hprime p (Finset.mem_insert_self p s)
      have hsprime : ∀ q ∈ s, q.Prime := by
        intro q hq
        exact hprime q (Finset.mem_insert_of_mem hq)
      let E : ℕ × Nat.factoredNumbers s ≃ Nat.factoredNumbers (insert p s) :=
        Nat.equivProdNatFactoredNumbers hp hps
      let S : Finset (Nat.factoredNumbers (insert p s)) :=
        factoredUpTo (insert p s) N
      let R : Finset (ℕ × Nat.factoredNumbers s) :=
        (Finset.range (k + 1)).product (factoredUpTo s N)
      have hsubset : S.image E.symm ⊆ R := by
        intro z hz
        obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hz
        let y : ℕ × Nat.factoredNumbers s := E.symm x
        have hxIcc : (x : ℕ) ∈ Finset.Icc 1 N := by
          simpa only [S, factoredUpTo, Finset.mem_subtype] using hx
        have hxN : (x : ℕ) ≤ N := (Finset.mem_Icc.mp hxIcc).2
        have hxval : (x : ℕ) = p ^ y.1 * (y.2 : ℕ) := by
          have h := congrArg Subtype.val (E.apply_symm_apply x)
          simpa [y, E, Nat.equivProdNatFactoredNumbers_apply'] using h.symm
        have hprod : p ^ y.1 * (y.2 : ℕ) ≤ N := by
          rw [hxval] at hxN
          exact hxN
        have hmpos : 0 < (y.2 : ℕ) := Nat.pos_of_ne_zero y.2.property.1
        have he : y.1 ≤ k :=
          exponent_le_of_bounded_product hp hmpos hprod hN
        have hmBound : (y.2 : ℕ) ≤ N := by
          have hmul : (y.2 : ℕ) ≤ p ^ y.1 * (y.2 : ℕ) :=
            Nat.le_mul_of_pos_left _ (pow_pos hp.pos _)
          exact hmul.trans hprod
        change y ∈ R
        refine Finset.mem_product.mpr ⟨?_, ?_⟩
        · exact Finset.mem_range.mpr (Nat.lt_succ_of_le he)
        · change y.2 ∈ factoredUpTo s N
          exact Finset.mem_subtype.mpr
            (Finset.mem_Icc.mpr ⟨hmpos, hmBound⟩)
      have hc : S.card ≤ (k + 1) * (factoredUpTo s N).card := by
        calc
          S.card = (S.image E.symm).card :=
            (Finset.card_image_iff.mpr E.symm.injective.injOn).symm
          _ ≤ R.card := Finset.card_le_card hsubset
          _ = (k + 1) * (factoredUpTo s N).card := by
            simp [R, Finset.card_product]
      calc
        (factoredUpTo (insert p s) N).card = S.card := rfl
        _ ≤ (k + 1) * (factoredUpTo s N).card := hc
        _ ≤ (k + 1) * (k + 1) ^ s.card :=
          Nat.mul_le_mul_left _ (ih hsprime)
        _ = (k + 1) ^ (insert p s).card := by
          rw [Finset.card_insert_of_not_mem hps, pow_succ]
          ring

/-- A completely explicit integer version, using the pinned
floor-binary-log inequality N < 2^(Nat.log 2 N+1). -/
theorem factoredUpTo_card_le_natLog (B : PrimeBand) (N : ℕ) :
    (factoredUpTo B.primes N).card ≤
      (Nat.log 2 N + 1) ^ B.primes.card := by
  exact factoredUpTo_card_le_pow_of_binary_cutoff N (Nat.log 2 N)
    (Nat.lt_pow_succ_log_self (by decide : 1 < 2) N)
    B.primes B.prime_mem

/-- The binary logarithm bound is no larger than the REAL prime-
exponent allowance of the original paper proof. -/
theorem binaryLog_count_cost_le (N : ℕ) (hN : 1 ≤ N) :
    ((Nat.log 2 N + 1 : ℕ) : ℝ) ≤
      1 + Real.log (N : ℝ) / Real.log 2 := by
  have hN0 : N ≠ 0 := by omega
  have hP : (2 : ℕ) ^ Nat.log 2 N ≤ N := Nat.pow_log_le_self 2 hN0
  have hpReal : ((2 : ℝ) ^ Nat.log 2 N) ≤ (N : ℝ) := by
    exact_mod_cast hP
  have hPos : (0 : ℝ) < (2 : ℝ) ^ Nat.log 2 N := by positivity
  have hlogs : (Nat.log 2 N : ℝ) * Real.log 2 ≤ Real.log (N : ℝ) := by
    have h := Real.log_le_log hPos hpReal
    simpa only [Real.log_pow] using h
  have hlog2 : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
  have hquot : (Nat.log 2 N : ℝ) ≤
      Real.log (N : ℝ) / Real.log 2 :=
    (le_div_iff₀ hlog2).mpr hlogs
  push_cast
  linarith

/-- The exact original-index high support is covered by the product
of the finite Mathlib P-factored inventory and a cofactor range.
No arithmetic sign or original index is redefined. -/
theorem highSmoothBlock_subset_divisor_cofactor_image
    (B : PrimeBand) (X : ℕ) (hX : 1 ≤ X) :
    let T := Real.log (2 * (X : ℝ))
    let U := Real.exp (2 * Real.sqrt T)
    let S := (factoredUpTo B.primes (2 * X)).product
      (Finset.Icc 1 ⌊U⌋₊)
    highSmoothBlock B X T ⊆ S.image (fun z => (z.1 : ℕ) * z.2) := by
  classical
  dsimp
  intro n hn
  have hn' := hn
  dsimp [highSmoothBlock] at hn'
  have hnblock : n ∈ balancedBlock X (Real.log (2 * (X : ℝ))) :=
    (Finset.mem_filter.mp hn').1
  have hnIoc : n ∈ Finset.Ioc X (2 * X) := by
    change n ∈ (Finset.Ioc X (2 * X)).filter
      (fun n => n ∈ endpointIndex (Real.log (2 * (X : ℝ)))) at hnblock
    exact (Finset.mem_filter.mp hnblock).1
  have hnPos : 0 < n := by omega
  obtain ⟨d, hd, hs, hlarge⟩ := (Finset.mem_filter.mp hn').2
  have hdPos : 0 < d := by
    by_contra hbad
    have hd0 : d = 0 := by omega
    subst d
    have : n = 0 := (zero_dvd_iff.mp hd)
    omega
  have hdN : d ≤ 2 * X :=
    (Nat.le_of_dvd hnPos hd).trans (Finset.mem_Ioc.mp hnIoc).2
  let k : ℕ := n / d
  have hkEq : d * k = n := Nat.mul_div_cancel' hd
  have hkPos : 1 ≤ k := by
    have hdn : d ≤ n := Nat.le_of_dvd hnPos hd
    exact Nat.div_pos hdn hdPos
  have hXP : (0 : ℝ) < X := by exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 1) hX)
  have hdReal : (0 : ℝ) < d := by exact_mod_cast hdPos
  have hU : (0 : ℝ) < Real.exp
      (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) := Real.exp_pos _
  have hR : (k : ℝ) < Real.exp
      (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) := by
    have hNreal : (n : ℝ) ≤ 2 * (X : ℝ) := by
      have := (Finset.mem_Ioc.mp hnIoc).2
      push_cast at this
      simpa only [Nat.cast_mul] using this
    have hprodReal : (d : ℝ) * (k : ℝ) = (n : ℝ) := by exact_mod_cast hkEq
    have hlarge' : 2 * (X : ℝ) *
        Real.exp (-2 * Real.sqrt (Real.log (2 * (X : ℝ)))) < (d : ℝ) := by
      simpa only [nearSquareRootCut, Nat.cast_mul] using hlarge
    have hexp : Real.exp (-2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) = 1 := by
      rw [← Real.exp_add]
      convert Real.exp_zero using 1 <;> ring
    have hmul := mul_lt_mul_of_pos_right hlarge' hU
    have hlt : (d : ℝ) * (k : ℝ) < (d : ℝ) *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) := by
      calc
        _ = (n : ℝ) := hprodReal
        _ ≤ 2 * (X : ℝ) := hNreal
        _ = (2 * (X : ℝ) *
            Real.exp (-2 * Real.sqrt (Real.log (2 * (X : ℝ))))) *
            Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) := by
          rw [mul_assoc, hexp, mul_one]
        _ < _ := hmul
    exact (mul_lt_mul_left hdReal).mp hlt
  have hkFloor : k ≤ ⌊Real.exp
      (2 * Real.sqrt (Real.log (2 * (X : ℝ))))⌋₊ := by
    exact Nat.le_floor hR.le
  have hdFactor : d ∈ Nat.factoredNumbers B.primes :=
    (bankSmooth_iff_factoredNumbers B.primes d).mp hs
  have hdS : (⟨d, hdFactor⟩ : Nat.factoredNumbers B.primes) ∈
      factoredUpTo B.primes (2 * X) := by
    exact Finset.mem_subtype.mpr (Finset.mem_Icc.mpr ⟨hdPos, hdN⟩)
  have hpairs : ((⟨d, hdFactor⟩ : Nat.factoredNumbers B.primes), k) ∈
      (factoredUpTo B.primes (2 * X)).product
        (Finset.Icc 1 ⌊Real.exp (2 * Real.sqrt
          (Real.log (2 * (X : ℝ))))⌋₊) :=
    Finset.mem_product.mpr ⟨hdS, Finset.mem_Icc.mpr ⟨hkPos, hkFloor⟩⟩
  exact Finset.mem_image.mpr ⟨_, hpairs, hkEq⟩

/-- Integer cardinal price of the source-cofactor image, ready for
real exponential and prime-exponent conversion. -/
theorem highSmoothBlock_card_le_integer_cofactor_cost
    (B : PrimeBand) (X : ℕ) (hX : 1 ≤ X) :
    let T := Real.log (2 * (X : ℝ))
    ((highSmoothBlock B X T).card : ℝ) ≤
      ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ^ B.primes.card *
      (⌊Real.exp (2 * Real.sqrt T)⌋₊ : ℝ) := by
  dsimp
  let T := Real.log (2 * (X : ℝ))
  let U := Real.exp (2 * Real.sqrt T)
  have hs := highSmoothBlock_subset_divisor_cofactor_image B X hX
  dsimp at hs
  have hc : (highSmoothBlock B X T).card ≤
      (factoredUpTo B.primes (2 * X)).card * (Finset.Icc 1 ⌊U⌋₊).card := by
    calc
      _ ≤ (((factoredUpTo B.primes (2 * X)).product
          (Finset.Icc 1 ⌊U⌋₊)).image (fun z => (z.1 : ℕ) * z.2)).card :=
        Finset.card_le_card hs
      _ ≤ ((factoredUpTo B.primes (2 * X)).product
            (Finset.Icc 1 ⌊U⌋₊)).card := Finset.card_image_le
      _ = _ := Finset.card_product ..
  have hdc := factoredUpTo_card_le_natLog B (2 * X)
  have hK : 0 ≤ (⌊U⌋₊ : ℝ) := Nat.cast_nonneg _
  have hfincard : (Finset.Icc 1 ⌊U⌋₊).card = ⌊U⌋₊ := by simp
  have hsizes : ((highSmoothBlock B X T).card : ℝ) ≤
      ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ^ B.primes.card * (⌊U⌋₊ : ℝ) := by
    calc
      _ ≤ ((factoredUpTo B.primes (2 * X)).card : ℝ) *
          ((Finset.Icc 1 ⌊U⌋₊).card : ℝ) := by
        exact_mod_cast hc
      _ = ((factoredUpTo B.primes (2 * X)).card : ℝ) *
          (⌊U⌋₊ : ℝ) := by rw [hfincard]
      _ ≤ ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ^ B.primes.card *
          (⌊U⌋₊ : ℝ) := by
        exact mul_le_mul_of_nonneg_right (by exact_mod_cast hdc) hK
  exact hsizes

/-- Intended final REAL counting target. The previous theorem already
exposes both exact finite injections; this step converts Nat.log and
Nat.floor budgets to the original real envelope. -/
theorem highSmoothCofactorCount_target
    (B : PrimeBand) (X : ℕ) (hX : 1 ≤ X) :
    ((highSmoothBlock B X (Real.log (2 * (X : ℝ)))).card : ℝ) ≤
      Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
        (1 + Real.log (2 * (X : ℝ)) / Real.log 2) ^ B.primes.card := by
  let T := Real.log (2 * (X : ℝ))
  let U := Real.exp (2 * Real.sqrt T)
  have hN : 1 ≤ 2 * X := by omega
  have hlog := binaryLog_count_cost_le (2 * X) hN
  have hsize := highSmoothBlock_card_le_integer_cofactor_cost B X hX
  dsimp at hsize
  have hU : 0 ≤ U := (Real.exp_pos _).le
  have hfloor : (⌊U⌋₊ : ℝ) ≤ U := Nat.floor_le hU
  have hlog' : ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ≤
      1 + T / Real.log 2 := by
    simpa only [Nat.cast_mul] using hlog
  have hpow : ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ^ B.primes.card ≤
      (1 + T / Real.log 2) ^ B.primes.card := by
    exact pow_le_pow_left₀ (Nat.cast_nonneg _) hlog' _
  have hfactor_nonneg : 0 ≤
      (1 + T / Real.log 2) ^ B.primes.card := by
    have hT : 0 ≤ T := by
      exact Real.log_nonneg (by
        have : (1 : ℝ) ≤ 2 * (X : ℝ) := by
          have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
          linarith
        exact this)
    have hlogtwo : 0 < Real.log 2 := Real.log_pos (by norm_num)
    positivity
  calc
    _ ≤ ((Nat.log 2 (2 * X) + 1 : ℕ) : ℝ) ^ B.primes.card *
          (⌊U⌋₊ : ℝ) := hsize
    _ ≤ (1 + T / Real.log 2) ^ B.primes.card * U := by
      exact mul_le_mul hpow hfloor (Nat.cast_nonneg _) hfactor_nonneg
    _ = U * (1 + T / Real.log 2) ^ B.primes.card := by ring

end GRWTSK.NumberTheory.Moebius.HighSmoothCofactorCountProof