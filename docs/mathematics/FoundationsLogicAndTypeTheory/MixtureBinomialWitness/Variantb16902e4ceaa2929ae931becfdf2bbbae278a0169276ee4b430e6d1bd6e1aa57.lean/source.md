# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MixtureBinomialWitness.Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a309fe9b8a409c5ecdeaa6abbb9b5e165097a144` · SHA-256 `b16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.KnownLabelPhaseConsumer
import Mathlib.Data.Nat.Choose.Vandermonde

/-!
# The actual auxiliary mixture has an exact binomial cancellation vector

Written conditioning countermodel 2026-10-09: grwtsk contributors. Local
finite matrix/witness proofs: OpenAI Codex. The auxiliary heights and signed
binomial coefficients are not asserted to be zeta zeros or Möbius data.
Full rank is independent of the small response established here.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MixtureBinomialWitness
open PrimePhaseGeometry
open scoped BigOperators
noncomputable section

/-- The height in this module, with the following exact parameterization.

def height (m : ℕ) (j : Fin (m + 1)) : ℝ := (j : ℝ) / (m : ℝ) ^ 2
-/
def height (m : ℕ) (j : Fin (m + 1)) : ℝ := (j : ℝ) / (m : ℝ) ^ 2

/-- The witness in this module, with the following exact parameterization.

def witness (m : ℕ) : EuclideanSpace ℂ (Fin (m + 1)) := WithLp.toLp 2 (fun j => (-1 : ℂ) ^ (j
: ℕ) * (m.choose j : ℂ))
-/
def witness (m : ℕ) : EuclideanSpace ℂ (Fin (m + 1)) :=
  WithLp.toLp 2 (fun j => (-1 : ℂ) ^ (j : ℕ) * (m.choose j : ℂ))

/-- The entry in this module, with the following exact parameterization.

def entry (m : ℕ) (p : Fin 2) (r j : ℕ) : ℂ := Complex.exp (Complex.I * (((r : ℝ) * ((j : ℝ) /
(m : ℝ) ^ 2) * primeLog p : ℝ) : ℂ))
-/
def entry (m : ℕ) (p : Fin 2) (r j : ℕ) : ℂ :=
  Complex.exp (Complex.I * (((r : ℝ) * ((j : ℝ) / (m : ℝ) ^ 2) * primeLog p : ℝ) : ℂ))

/-- The response in this module, with the following exact parameterization.

def response (m : ℕ) (v : EuclideanSpace ℂ (Fin (m + 1))) : EuclideanSpace ℂ (Fin 2 × Fin (m +
1)) := WithLp.toLp 2 (fun pr => ∑ j : Fin (m + 1), entry m pr.1 pr.2 j * v j)
-/
def response (m : ℕ) (v : EuclideanSpace ℂ (Fin (m + 1))) :
    EuclideanSpace ℂ (Fin 2 × Fin (m + 1)) :=
  WithLp.toLp 2 (fun pr => ∑ j : Fin (m + 1), entry m pr.1 pr.2 j * v j)

theorem binomial_identity (m : ℕ) (z : ℂ) :
    ∑ j ∈ Finset.range (m + 1), (-1 : ℂ) ^ j * (m.choose j : ℂ) * z ^ j =
      (1 - z) ^ m := by
  have he : (1 - z) ^ m = (-z + 1) ^ m := by congr 1; ring
  rw [he, add_pow]
  apply Finset.sum_congr rfl
  intro j _
  rw [neg_pow]
  simp only [one_pow, mul_one]
  ring

theorem witness_norm_sq (m : ℕ) : ‖witness m‖ ^ 2 = ((2 * m).choose m : ℝ) := by
  rw [EuclideanSpace.norm_sq_eq]
  simp only [witness, norm_mul, norm_pow, norm_neg, norm_one,
    one_pow, one_mul, Complex.norm_natCast]
  change (∑ j : Fin (m + 1), (m.choose (j : ℕ) : ℝ) ^ 2) = _
  rw [Fin.sum_univ_eq_sum_range (fun j : ℕ => (m.choose j : ℝ) ^ 2)]
  exact_mod_cast Nat.sum_range_choose_sq m

theorem witness_nonzero (m : ℕ) : witness m ≠ 0 := by
  intro h
  have h0 := congrArg (fun v : EuclideanSpace ℂ (Fin (m + 1)) => v 0) h
  simp [witness] at h0

theorem exact_response (m : ℕ) (p : Fin 2) (r : Fin (m + 1)) :
    response m (witness m) (p, r) =
      (1 - Complex.exp (Complex.I * ((((r : ℝ) / (m : ℝ) ^ 2 * primeLog p) : ℝ) : ℂ))) ^ m := by
  change (∑ j : Fin (m + 1), entry m p r j *
    ((-1 : ℂ) ^ (j : ℕ) * (m.choose j : ℂ))) = _
  rw [Fin.sum_univ_eq_sum_range
    (fun j : ℕ => entry m p r j * ((-1 : ℂ) ^ j * (m.choose j : ℂ)))]
  rw [← binomial_identity]
  apply Finset.sum_congr rfl
  intro j hj
  have he : entry m p r j =
      Complex.exp (Complex.I * (((r : ℝ) / (m : ℝ) ^ 2 * primeLog p : ℝ) : ℂ)) ^ j := by
    rw [entry, ← Complex.exp_nat_mul]
    push_cast
    congr 1
    ring
  rw [he]
  ring

theorem heights_in_unit_window {m : ℕ} (hm : 2 ≤ m) (j : Fin (m + 1)) :
    height m j ∈ Set.Icc 0 1 := by
  have hj : (j : ℝ) ≤ m := by exact_mod_cast Nat.le_of_lt_succ j.isLt
  have hmp : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  constructor
  · unfold height; positivity
  · unfold height
    apply (div_le_one (sq_pos_of_pos hmp)).2
    have hm1 : (1 : ℝ) ≤ m := by exact_mod_cast (by omega : 1 ≤ m)
    nlinarith

theorem primeLog_nonnegative (p : Fin 2) : 0 ≤ primeLog p := by
  fin_cases p <;> exact Real.log_nonneg (by norm_num)

theorem primeLog_le_three (p : Fin 2) : primeLog p ≤ Real.log 3 := by
  fin_cases p
  · exact Real.log_le_log (by norm_num) (by norm_num)
  · exact le_rfl

theorem response_coordinate_bound {m : ℕ} (hm : 2 ≤ m)
    (p : Fin 2) (r : Fin (m + 1)) :
    ‖response m (witness m) (p, r)‖ ≤ (Real.log 3 / m) ^ m := by
  rw [exact_response, norm_pow]
  apply pow_le_pow_left₀ (norm_nonneg _)
  rw [norm_sub_rev]
  have h := Real.norm_exp_I_mul_ofReal_sub_one_le
    (x := (r : ℝ) / (m : ℝ) ^ 2 * primeLog p)
  have hr : (r : ℝ) ≤ m := by exact_mod_cast Nat.le_of_lt_succ r.isLt
  have hmp : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have harg : 0 ≤ (r : ℝ) / (m : ℝ) ^ 2 * primeLog p :=
    mul_nonneg (by positivity) (primeLog_nonnegative p)
  rw [Real.norm_eq_abs, abs_of_nonneg harg] at h
  apply h.trans
  apply (le_div_iff₀ hmp).2
  have hdiv : (r : ℝ) / (m : ℝ) ^ 2 * primeLog p * m =
      (r : ℝ) / m * primeLog p := by field_simp
  rw [hdiv]
  exact (mul_le_of_le_one_left (primeLog_nonnegative p)
    ((div_le_one hmp).2 hr)).trans (primeLog_le_three p)

theorem response_norm_bound {m : ℕ} (hm : 2 ≤ m) :
    ‖response m (witness m)‖ ≤ Real.sqrt (2 * (m + 1 : ℝ)) * (Real.log 3 / m) ^ m := by
  have hq : 0 ≤ (Real.log 3 / (m : ℝ)) ^ m := by positivity
  have hs : ‖response m (witness m)‖ ^ 2 ≤
      (2 * (m + 1 : ℝ)) * ((Real.log 3 / m) ^ m) ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq]
    calc
      _ ≤ ∑ _pr : Fin 2 × Fin (m + 1), ((Real.log 3 / (m : ℝ)) ^ m) ^ 2 := by
        apply Finset.sum_le_sum
        intro pr _
        exact pow_le_pow_left₀ (norm_nonneg _) (response_coordinate_bound hm pr.1 pr.2) 2
      _ = _ := by simp
  have ht := Real.sqrt_le_sqrt hs
  rw [Real.sqrt_sq (norm_nonneg _), Real.sqrt_mul (by positivity), Real.sqrt_sq hq] at ht
  exact ht

end
end GRWTSK.RiemannHypothesis.Conversation.MixtureBinomialWitness
```
