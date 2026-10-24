# Complete source: GRWTSK.Topology.SupplierEnvelopeRecurrence.Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636e6f3ed096315dcf8504042f0f8a875d46557f` · SHA-256 `ab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Order.Compact
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-!
# The delayed supplier and its running positive maximum

The record-time split is proved for a continuous real signal and its literal
running positive maximum on the closed interval `[0,T]`. An old record absorbs
the delayed supplier into its own maximum; a recent record uses antitonicity
of the coefficient at the later time. Finite iteration retains the full
weighted terminal signal, and the limiting consumer requires its decay
explicitly.

These are conditional real-analysis statements. They do not prove the signed
arithmetic supplier, its source-kernel adapter, classical Mertens decay, a
Landau theorem, or RH. Human research direction: grwtsk contributors.
Implementation and local proof construction: OpenAI Codex. Mathlib compactness,
ordered suprema, finite products and limits retain upstream attribution.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence

open Set Filter
open scoped Topology

noncomputable section

/-- The initial zero and the full closed reading interval are retained. -/
def runningPositiveMaximum (W : ℝ → ℝ) (T : ℝ) : ℝ :=
  sSup (insert 0 (W '' Icc 0 T))

theorem runningPositiveMaximum_bddAbove {W : ℝ → ℝ} (hW : Continuous W) (T : ℝ) :
    BddAbove (insert 0 (W '' Icc 0 T)) := by
  exact ((isCompact_Icc.image hW).insert 0).bddAbove

theorem runningPositiveMaximum_nonneg {W : ℝ → ℝ} (hW : Continuous W) (T : ℝ) :
    0 ≤ runningPositiveMaximum W T :=
  le_csSup (runningPositiveMaximum_bddAbove hW T) (mem_insert 0 _)

theorem le_runningPositiveMaximum {W : ℝ → ℝ} (hW : Continuous W) {s T : ℝ}
    (hs : s ∈ Icc 0 T) : W s ≤ runningPositiveMaximum W T := by
  apply le_csSup (runningPositiveMaximum_bddAbove hW T)
  exact mem_insert_of_mem 0 ⟨s, hs, rfl⟩

theorem runningPositiveMaximum_mono {W : ℝ → ℝ} (hW : Continuous W) :
    Monotone (runningPositiveMaximum W) := by
  intro S T hST
  apply csSup_le ⟨0, mem_insert 0 _⟩
  intro y hy
  rcases mem_insert_iff.mp hy with rfl | hy
  · exact runningPositiveMaximum_nonneg hW T
  · obtain ⟨s, hs, rfl⟩ := hy
    exact le_runningPositiveMaximum hW ⟨hs.1, hs.2.trans hST⟩

/-- A nonzero running positive maximum is attained at a genuine record time. -/
theorem runningPositiveMaximum_zero_or_record {W : ℝ → ℝ} (hW : Continuous W)
    (T : ℝ) : runningPositiveMaximum W T = 0 ∨
      ∃ s ∈ Icc 0 T, W s = runningPositiveMaximum W T := by
  have hc : IsCompact (insert 0 (W '' Icc 0 T)) :=
    (isCompact_Icc.image hW).insert 0
  have hm := hc.sSup_mem ⟨0, mem_insert 0 _⟩
  rcases mem_insert_iff.mp hm with hz | hz
  · exact Or.inl hz
  · obtain ⟨s, hs, hrecord⟩ := hz
    exact Or.inr ⟨s, hs, hrecord⟩

/-- The exact record split. The additive cost retains both the old maximum
and the supplier allowance divided by the uniform contraction gap. -/
theorem runningMaximum_recurrence {W a f : ℝ → ℝ} {S h T ρ : ℝ}
    (hW : Continuous W) (hS : 0 ≤ S) (hh : 0 ≤ h) (hT : S + h ≤ T)
    (hρ₀ : 0 ≤ ρ) (hρ : ρ < 1)
    (ha : AntitoneOn a (Ici S))
    (ha₀ : ∀ u, S ≤ u → 0 ≤ a u)
    (haρ : ∀ u, S ≤ u → a u ≤ ρ)
    (hf : MonotoneOn f (Ici 0)) (hf₀ : 0 ≤ f T)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ a (s + h) * runningPositiveMaximum W (s + h) + f s) :
    runningPositiveMaximum W T ≤ a T * runningPositiveMaximum W (T + h) +
      max (runningPositiveMaximum W S) (f T / (1 - ρ)) := by
  have hST : S ≤ T := by linarith
  have hcost : 0 ≤ max (runningPositiveMaximum W S) (f T / (1 - ρ)) :=
    (runningPositiveMaximum_nonneg hW S).trans (le_max_left _ _)
  have hmain : 0 ≤ a T * runningPositiveMaximum W (T + h) :=
    mul_nonneg (ha₀ T hST) (runningPositiveMaximum_nonneg hW _)
  rcases runningPositiveMaximum_zero_or_record hW T with hz | ⟨s, hs, hrecord⟩
  · rw [hz]
    exact add_nonneg hmain hcost
  · by_cases hsS : s ≤ S
    · have hold := le_runningPositiveMaximum hW ⟨hs.1, hsS⟩
      rw [hrecord] at hold
      linarith [le_max_left (runningPositiveMaximum W S) (f T / (1 - ρ))]
    · have hSs : S ≤ s := (lt_of_not_ge hsS).le
      have hsupplier' := hsupplier s hSs
      have hf' : f s ≤ f T := hf hs.1 (hS.trans hST) hs.2
      by_cases hold : s + h ≤ T
      · have hlevel := runningPositiveMaximum_mono hW hold
        have hmul := mul_le_mul_of_nonneg_left hlevel (ha₀ (s + h) (by linarith))
        have hmulρ := mul_le_mul_of_nonneg_right (haρ (s + h) (by linarith))
          (runningPositiveMaximum_nonneg hW T)
        have hpay : (1 - ρ) * runningPositiveMaximum W T ≤ f T := by
          rw [hrecord] at hsupplier'
          nlinarith
        have hgap : 0 < 1 - ρ := sub_pos.mpr hρ
        have hbound : runningPositiveMaximum W T ≤ f T / (1 - ρ) :=
          (le_div_iff₀ hgap).mpr (by simpa [mul_comm] using hpay)
        linarith [le_max_right (runningPositiveMaximum W S) (f T / (1 - ρ))]
      · have hrecent : T ≤ s + h := (lt_of_not_ge hold).le
        have hcoeff : a (s + h) ≤ a T :=
          ha hST (show S ≤ s + h by linarith) hrecent
        have hlevel : runningPositiveMaximum W (s + h) ≤
            runningPositiveMaximum W (T + h) :=
          runningPositiveMaximum_mono hW (add_le_add hs.2 le_rfl)
        have hmul := mul_le_mul hcoeff hlevel
          (runningPositiveMaximum_nonneg hW _) (ha₀ T hST)
        have hallow : f T ≤ f T / (1 - ρ) := by
          apply (le_div_iff₀ (sub_pos.mpr hρ)).mpr
          nlinarith
        rw [hrecord] at hsupplier'
        linarith [le_max_right (runningPositiveMaximum W S) (f T / (1 - ρ))]

/-- The exact coefficient appearing after the terminal time substitution. -/
def supplierCoefficient (K T : ℝ) : ℝ := (1 + 2 * K / T) / Real.sqrt 2

/-- A convenient fixed contraction for `T ≥ 8K`. It is used for accumulated
cost only; finite iteration below retains `supplierCoefficient` itself. -/
def uniformContraction : ℝ := (5 / 4 : ℝ) / Real.sqrt 2

theorem uniformContraction_pos : 0 < uniformContraction := by
  unfold uniformContraction
  positivity

theorem uniformContraction_nonneg : 0 ≤ uniformContraction := by
  unfold uniformContraction
  positivity

theorem uniformContraction_lt_one : uniformContraction < 1 := by
  have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hsq : Real.sqrt 2 ^ 2 = (2 : ℝ) := Real.sq_sqrt (by norm_num)
  have hr : (5 / 4 : ℝ) < Real.sqrt 2 := by nlinarith
  exact (div_lt_one hs).mpr hr

theorem supplierCoefficient_nonneg {K T : ℝ} (hK : 0 ≤ K) (hT : 0 < T) :
    0 ≤ supplierCoefficient K T := by
  unfold supplierCoefficient
  positivity

theorem supplierCoefficient_antitoneOn {K S : ℝ} (hK : 0 ≤ K) (hS : 0 < S) :
    AntitoneOn (supplierCoefficient K) (Ici S) := by
  intro x hx y hy hxy
  have hx₀ : 0 < x := hS.trans_le hx
  have hy₀ : 0 < y := hS.trans_le hy
  have hdiv : 2 * K / y ≤ 2 * K / x := by
    apply (div_le_div_iff₀ hy₀ hx₀).mpr
    nlinarith
  unfold supplierCoefficient
  exact (div_le_div_iff_of_pos_right (Real.sqrt_pos.mpr (by norm_num))).mpr
    (add_le_add le_rfl hdiv)

theorem supplierCoefficient_le_uniformContraction {K T : ℝ}
    (hT : 0 < T) (hKT : 8 * K ≤ T) :
    supplierCoefficient K T ≤ uniformContraction := by
  have hdiv : 2 * K / T ≤ (1 / 4 : ℝ) := by
    apply (div_le_iff₀ hT).mpr
    linarith
  unfold supplierCoefficient uniformContraction
  apply (div_le_div_iff_of_pos_right (Real.sqrt_pos.mpr (by norm_num))).mpr
  linarith

/-- Batch 38's exact coefficient and original real polynomial allowance,
with the record split proved rather than assumed. -/
theorem supplier_runningMaximum_recurrence {W : ℝ → ℝ} {K S h T C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hT : S + h ≤ T) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p) :
    runningPositiveMaximum W T ≤ supplierCoefficient K T *
      runningPositiveMaximum W (T + h) +
      max (runningPositiveMaximum W S) (C * (1 + T) ^ p / (1 - uniformContraction)) := by
  apply runningMaximum_recurrence hW hS.le hh hT uniformContraction_nonneg
    uniformContraction_lt_one (supplierCoefficient_antitoneOn hK hS)
  · intro u hSu
    exact supplierCoefficient_nonneg hK (hS.trans_le hSu)
  · intro u hSu
    exact supplierCoefficient_le_uniformContraction (hS.trans_le hSu) (hKS.trans hSu)
  · intro s hs t ht hst
    have hs₀ : 0 ≤ s := hs
    exact mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow (by linarith : 0 ≤ 1 + s) (by linarith) hp) hC
  · exact mul_nonneg hC (Real.rpow_nonneg (by linarith) _)
  · exact hsupplier

/-- The bounded initial record is absorbed into a fixed polynomial constant,
uniformly at all admissible real times. -/
theorem supplier_runningMaximum_polynomial_recurrence {W : ℝ → ℝ} {K S h C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p) :
    ∃ C' : ℝ, 0 ≤ C' ∧ ∀ T : ℝ, S + h ≤ T →
      runningPositiveMaximum W T ≤ supplierCoefficient K T *
        runningPositiveMaximum W (T + h) + C' * (1 + T) ^ p := by
  let C' : ℝ := max (runningPositiveMaximum W S) (C / (1 - uniformContraction))
  have hC' : 0 ≤ C' := (runningPositiveMaximum_nonneg hW S).trans (le_max_left _ _)
  refine ⟨C', hC', ?_⟩
  intro T hT
  have hT₀ : 0 ≤ T := by linarith
  have hpower : 1 ≤ (1 + T) ^ p := Real.one_le_rpow (by linarith) hp
  have hconstant : C' ≤ C' * (1 + T) ^ p := by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hpower hC'
  have hfirst : runningPositiveMaximum W S ≤ C' * (1 + T) ^ p :=
    (le_max_left _ _).trans hconstant
  have hsecond : C * (1 + T) ^ p / (1 - uniformContraction) ≤ C' * (1 + T) ^ p := by
    have hmul := mul_le_mul_of_nonneg_right
      (le_max_right (runningPositiveMaximum W S) (C / (1 - uniformContraction)))
      (Real.rpow_nonneg (by linarith : 0 ≤ 1 + T) p)
    change _ ≤ C' * (1 + T) ^ p at hmul
    convert hmul using 1
    ring
  exact (supplier_runningMaximum_recurrence hW hK hS hKS hh hT hC hp hsupplier).trans
    (add_le_add le_rfl (max_le hfirst hsecond))

/-- The full coefficient product; no uniformly larger surrogate is substituted
in the terminal signal. -/
def coefficientProduct (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∏ j ∈ Finset.range n, a j

theorem coefficientProduct_nonneg {a : ℕ → ℝ} (ha : ∀ j, 0 ≤ a j) (n : ℕ) :
    0 ≤ coefficientProduct a n :=
  Finset.prod_nonneg (fun j _ => ha j)

theorem coefficientProduct_succ (a : ℕ → ℝ) (n : ℕ) :
    coefficientProduct a (n + 1) = coefficientProduct a n * a n :=
  Finset.prod_range_succ a n

theorem coefficientProduct_le_geometric {a : ℕ → ℝ} {ρ : ℝ}
    (hρ : 0 ≤ ρ) (ha : ∀ j, 0 ≤ a j) (haρ : ∀ j, a j ≤ ρ) (n : ℕ) :
    coefficientProduct a n ≤ ρ ^ n := by
  induction n with
  | zero => simp [coefficientProduct]
  | succ n ih =>
    rw [coefficientProduct_succ, pow_succ]
    exact mul_le_mul ih (haρ n) (ha n) (pow_nonneg hρ n)

/-- Every finite iteration retains the weighted terminal value. -/
theorem finite_iteration {E a f : ℕ → ℝ} (ha : ∀ j, 0 ≤ a j)
    (hrec : ∀ j, E j ≤ a j * E (j + 1) + f j) (n : ℕ) :
    E 0 ≤ coefficientProduct a n * E n +
      ∑ j ∈ Finset.range n, coefficientProduct a j * f j := by
  induction n with
  | zero => simp [coefficientProduct]
  | succ n ih =>
    calc
      E 0 ≤ coefficientProduct a n * E n +
          ∑ j ∈ Finset.range n, coefficientProduct a j * f j := ih
      _ ≤ coefficientProduct a n * (a n * E (n + 1) + f n) +
          ∑ j ∈ Finset.range n, coefficientProduct a j * f j :=
        add_le_add
          (mul_le_mul_of_nonneg_left (hrec n) (coefficientProduct_nonneg ha n)) le_rfl
      _ = coefficientProduct a (n + 1) * E (n + 1) +
          ∑ j ∈ Finset.range (n + 1), coefficientProduct a j * f j := by
        rw [coefficientProduct_succ, Finset.sum_range_succ]
        ring

/-- Bounded accumulated cost and a vanishing *actual* weighted tail are
separate hypotheses of the infinite consumer. -/
theorem bound_of_iteration_and_vanishing_tail {E a f : ℕ → ℝ} {D : ℝ}
    (ha : ∀ j, 0 ≤ a j) (hrec : ∀ j, E j ≤ a j * E (j + 1) + f j)
    (hcost : ∀ n, (∑ j ∈ Finset.range n, coefficientProduct a j * f j) ≤ D)
    (htail : Tendsto (fun n => coefficientProduct a n * E n) atTop (𝓝 0)) :
    E 0 ≤ D := by
  have hbound : ∀ n, E 0 ≤ coefficientProduct a n * E n + D := by
    intro n
    exact (finite_iteration ha hrec n).trans (add_le_add le_rfl (hcost n))
  have hlim : Tendsto (fun n => coefficientProduct a n * E n + D) atTop (𝓝 D) := by
    simpa only [zero_add] using htail.add_const D
  exact ge_of_tendsto hlim (Eventually.of_forall hbound)

/-- Finite real-time iteration with the exact delayed coefficient products. -/
theorem finite_delay_iteration {E a f : ℝ → ℝ} {T h : ℝ}
    (hh : 0 ≤ h) (ha : ∀ s, T ≤ s → 0 ≤ a s)
    (hrec : ∀ s, T ≤ s → E s ≤ a s * E (s + h) + f s) (n : ℕ) :
    E T ≤ coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
      E (T + (n : ℝ) * h) +
      ∑ j ∈ Finset.range n,
        coefficientProduct (fun k => a (T + (k : ℝ) * h)) j *
          f (T + (j : ℝ) * h) := by
  have htime (j : ℕ) : T ≤ T + (j : ℝ) * h :=
    le_add_of_nonneg_right (mul_nonneg (Nat.cast_nonneg j) hh)
  have hstep (j : ℕ) : T + ((j + 1 : ℕ) : ℝ) * h = (T + (j : ℝ) * h) + h := by
    push_cast
    ring
  simpa only [Nat.cast_zero, zero_mul, add_zero] using
    finite_iteration (E := fun j => E (T + (j : ℝ) * h))
      (a := fun j => a (T + (j : ℝ) * h))
      (f := fun j => f (T + (j : ℝ) * h))
      (fun j => ha _ (htime j))
      (fun j => by simpa only [hstep j] using hrec _ (htime j)) n

/-- An exact all-real polynomial-envelope consumer. The weighted cost bound
and vanishing terminal signal remain explicit when classical decay has not
been formalized. The allowance exponent is the original real exponent. -/
theorem polynomialEnvelope_of_recurrence_cost_and_tail {E a f : ℝ → ℝ} {R h D p : ℝ}
    (hh : 0 ≤ h) (hD : 0 ≤ D)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + f s)
    (hcost : ∀ T, R ≤ T → ∀ n,
      (∑ j ∈ Finset.range n,
        coefficientProduct (fun k => a (T + (k : ℝ) * h)) j *
          f (T + (j : ℝ) * h)) ≤ D * (1 + T) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D' : ℝ, 0 ≤ D' ∧ ∀ T : ℝ, R ≤ T → E T ≤ D' * (1 + T) ^ p := by
  refine ⟨D, hD, ?_⟩
  intro T hRT
  have htime (j : ℕ) : R ≤ T + (j : ℝ) * h := by
    have hj : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
    linarith
  have hstep (j : ℕ) : T + ((j + 1 : ℕ) : ℝ) * h = (T + (j : ℝ) * h) + h := by
    push_cast
    ring
  simpa only [Nat.cast_zero, zero_mul, add_zero] using
    bound_of_iteration_and_vanishing_tail (E := fun j => E (T + (j : ℝ) * h))
      (a := fun j => a (T + (j : ℝ) * h))
      (f := fun j => f (T + (j : ℝ) * h))
      (fun j => ha _ (htime j))
      (fun j => by simpa only [hstep j] using hrec _ (htime j))
      (hcost T hRT) (htail T hRT)

/-- A polynomial times a strictly contracting geometric factor is summable. -/
theorem summable_polynomial_geometric {ρ : ℝ} (hρ₀ : 0 < ρ) (hρ : ρ < 1) (q : ℕ) :
    Summable (fun j : ℕ => ρ ^ j * (1 + (j : ℝ)) ^ q) := by
  have hnorm : ‖ρ‖ < 1 := by simpa [Real.norm_eq_abs, abs_of_pos hρ₀] using hρ
  have hbase := summable_pow_mul_geometric_of_norm_lt_one q hnorm
  have hshift : Summable (fun j : ℕ => ((j + 1 : ℕ) : ℝ) ^ q * ρ ^ (j + 1)) :=
    (summable_nat_add_iff 1).mpr hbase
  apply (hshift.div_const ρ).congr
  intro j
  simp only [Nat.cast_add, Nat.cast_one, pow_succ]
  rw [← mul_assoc, mul_div_cancel_right₀ _ hρ₀.ne']
  ring

/-- The accumulated polynomial cost is bounded uniformly at every real
starting time. Geometric compression is confined to the additive cost. -/
theorem polynomial_weighted_cost {a : ℕ → ℝ} {T h C ρ : ℝ} {q : ℕ}
    (hT : 0 ≤ T) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ : 0 ≤ ρ)
    (ha : ∀ j, 0 ≤ a j) (haρ : ∀ j, a j ≤ ρ)
    (hsum : Summable (fun j : ℕ => ρ ^ j * (1 + (j : ℝ)) ^ q)) (n : ℕ) :
    (∑ j ∈ Finset.range n, coefficientProduct a j *
      (C * (1 + T + (j : ℝ) * h) ^ q)) ≤
      (C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)) * (1 + T) ^ q := by
  have hbase : 0 ≤ C * (1 + h) ^ q * (1 + T) ^ q := by positivity
  have hpoint (j : ℕ) : coefficientProduct a j * (C * (1 + T + (j : ℝ) * h) ^ q) ≤
      (C * (1 + h) ^ q * (1 + T) ^ q) * (ρ ^ j * (1 + (j : ℝ)) ^ q) := by
    have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg j
    have hjh : 0 ≤ (j : ℝ) * h := mul_nonneg hj hh
    have hsize₀ : 0 ≤ 1 + T + (j : ℝ) * h := by linarith
    have hsize₁ : 1 + T + (j : ℝ) * h ≤ (1 + T) * (1 + (j : ℝ) * h) := by
      nlinarith [mul_nonneg hT hjh]
    have hsize₂ : 1 + (j : ℝ) * h ≤ (1 + h) * (1 + (j : ℝ)) := by nlinarith
    have hsize : 1 + T + (j : ℝ) * h ≤ (1 + T) * ((1 + h) * (1 + (j : ℝ))) :=
      hsize₁.trans (mul_le_mul_of_nonneg_left hsize₂ (by linarith))
    have hpow := pow_le_pow_left₀ hsize₀ hsize q
    have hbound := mul_le_mul (coefficientProduct_le_geometric hρ ha haρ j)
      (mul_le_mul_of_nonneg_left hpow hC)
      (mul_nonneg hC (pow_nonneg hsize₀ q)) (pow_nonneg hρ j)
    calc
      _ ≤ ρ ^ j * (C * ((1 + T) * ((1 + h) * (1 + (j : ℝ)))) ^ q) := hbound
      _ = _ := by rw [mul_pow, mul_pow]; ring
  calc
    _ ≤ ∑ j ∈ Finset.range n,
        (C * (1 + h) ^ q * (1 + T) ^ q) * (ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      Finset.sum_le_sum (fun j _ => hpoint j)
    _ = (C * (1 + h) ^ q * (1 + T) ^ q) *
        ∑ j ∈ Finset.range n, ρ ^ j * (1 + (j : ℝ)) ^ q :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (C * (1 + h) ^ q * (1 + T) ^ q) *
        (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      mul_le_mul_of_nonneg_left
        (hsum.sum_le_tsum (Finset.range n) (fun j _ => by positivity)) hbase
    _ = _ := by ring

/-- A full polynomial-envelope consumer with only the critical weighted tail
left as an analytic premise. Uniform contraction pays for the accumulated cost;
the actual coefficient product pays for the terminal value. -/
theorem polynomialEnvelope_of_recurrence_and_tail {E a : ℝ → ℝ} {R h C ρ : ℝ} {q : ℕ}
    (hR : 0 ≤ R) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ₀ : 0 < ρ) (hρ : ρ < 1)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (haρ : ∀ s, R ≤ s → a s ≤ ρ)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ q)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ T : ℝ, R ≤ T → E T ≤ D * (1 + T) ^ q := by
  have hsum := summable_polynomial_geometric hρ₀ hρ q
  let D : ℝ := C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)
  have hD : 0 ≤ D := by
    apply mul_nonneg (by positivity)
    exact tsum_nonneg (fun j => by positivity)
  refine ⟨D, hD, ?_⟩
  intro T hRT
  have hT : 0 ≤ T := hR.trans hRT
  have htime (j : ℕ) : R ≤ T + (j : ℝ) * h := by
    have hj : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
    linarith
  have hstep (j : ℕ) : T + ((j + 1 : ℕ) : ℝ) * h = (T + (j : ℝ) * h) + h := by
    push_cast
    ring
  simpa only [Nat.cast_zero, zero_mul, add_zero] using
    bound_of_iteration_and_vanishing_tail (E := fun j => E (T + (j : ℝ) * h))
      (a := fun j => a (T + (j : ℝ) * h))
      (f := fun j => C * (1 + T + (j : ℝ) * h) ^ q)
      (fun j => ha _ (htime j))
      (fun j => by simpa only [hstep j, add_assoc] using hrec _ (htime j))
      (polynomial_weighted_cost hT hh hC hρ₀.le
        (fun j => ha _ (htime j)) (fun j => haρ _ (htime j)) hsum)
      (htail T hRT)

/-- A weaker variant rounding up the starting-time exponent. The exact
exponent consumer below instead confines this rounding to the iteration index.
The critical weighted-tail premise remains visible in both variants. -/
theorem polynomialEnvelope_of_realAllowance_and_tail {E a : ℝ → ℝ} {R h C ρ p : ℝ}
    (hR : 0 ≤ R) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ₀ : 0 < ρ) (hρ : ρ < 1)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (haρ : ∀ s, R ≤ s → a s ≤ ρ)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D q : ℝ, 0 ≤ D ∧ 0 ≤ q ∧
      ∀ T : ℝ, R ≤ T → E T ≤ D * (1 + T) ^ q := by
  obtain ⟨q, hpq⟩ := exists_nat_ge p
  have hrec' : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ q := by
    intro s hRs
    have hs₀ : 0 ≤ s := hR.trans hRs
    have hpow : (1 + s) ^ p ≤ (1 + s) ^ q := by
      simpa only [Real.rpow_natCast] using
        Real.rpow_le_rpow_of_exponent_le (by linarith : 1 ≤ 1 + s) hpq
    exact (hrec s hRs).trans (add_le_add le_rfl (mul_le_mul_of_nonneg_left hpow hC))
  obtain ⟨D, hD, hbound⟩ :=
    polynomialEnvelope_of_recurrence_and_tail hR hh hC hρ₀ hρ ha haρ hrec' htail
  refine ⟨D, (q : ℝ), hD, Nat.cast_nonneg q, ?_⟩
  intro T hRT
  simpa only [Real.rpow_natCast] using hbound T hRT

/-- The natural exponent is used only in the summable iteration-index factor;
the original real exponent of the starting time is preserved exactly. -/
theorem realPolynomial_weighted_cost {a : ℕ → ℝ} {T h C ρ p : ℝ} {q : ℕ}
    (hT : 0 ≤ T) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ : 0 ≤ ρ) (hp : 0 ≤ p)
    (hpq : p ≤ (q : ℝ)) (ha : ∀ j, 0 ≤ a j) (haρ : ∀ j, a j ≤ ρ)
    (hsum : Summable (fun j : ℕ => ρ ^ j * (1 + (j : ℝ)) ^ q)) (n : ℕ) :
    (∑ j ∈ Finset.range n, coefficientProduct a j *
      (C * (1 + T + (j : ℝ) * h) ^ p)) ≤
      (C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)) * (1 + T) ^ p := by
  have hTbase : 0 ≤ 1 + T := by linarith
  have hTpow : 0 ≤ (1 + T) ^ p := Real.rpow_nonneg hTbase p
  have hbase : 0 ≤ C * (1 + h) ^ q * (1 + T) ^ p :=
    mul_nonneg (by positivity) hTpow
  have hpoint (j : ℕ) : coefficientProduct a j * (C * (1 + T + (j : ℝ) * h) ^ p) ≤
      (C * (1 + h) ^ q * (1 + T) ^ p) * (ρ ^ j * (1 + (j : ℝ)) ^ q) := by
    have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg j
    have hjh : 0 ≤ (j : ℝ) * h := mul_nonneg hj hh
    have hjbase : 0 ≤ 1 + (j : ℝ) * h := by linarith
    have hsize₀ : 0 ≤ 1 + T + (j : ℝ) * h := by linarith
    have hsize₁ : 1 + T + (j : ℝ) * h ≤ (1 + T) * (1 + (j : ℝ) * h) := by
      nlinarith [mul_nonneg hT hjh]
    have hsize₂ : 1 + (j : ℝ) * h ≤ (1 + h) * (1 + (j : ℝ)) := by nlinarith
    have hindex : (1 + (j : ℝ) * h) ^ p ≤ (1 + (j : ℝ) * h) ^ q := by
      simpa only [Real.rpow_natCast] using
        Real.rpow_le_rpow_of_exponent_le (by linarith : 1 ≤ 1 + (j : ℝ) * h) hpq
    have hshape : (1 + T + (j : ℝ) * h) ^ p ≤
        (1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q) := by
      calc
        _ ≤ ((1 + T) * (1 + (j : ℝ) * h)) ^ p :=
          Real.rpow_le_rpow hsize₀ hsize₁ hp
        _ = (1 + T) ^ p * (1 + (j : ℝ) * h) ^ p :=
          Real.mul_rpow hTbase hjbase
        _ ≤ (1 + T) ^ p * (1 + (j : ℝ) * h) ^ q :=
          mul_le_mul_of_nonneg_left hindex hTpow
        _ ≤ (1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q) := by
          apply mul_le_mul_of_nonneg_left _ hTpow
          simpa only [mul_pow] using pow_le_pow_left₀ hjbase hsize₂ q
    have hbound := mul_le_mul (coefficientProduct_le_geometric hρ ha haρ j)
      (mul_le_mul_of_nonneg_left hshape hC)
      (mul_nonneg hC (Real.rpow_nonneg hsize₀ p)) (pow_nonneg hρ j)
    calc
      _ ≤ ρ ^ j * (C * ((1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q))) := hbound
      _ = _ := by ring
  calc
    _ ≤ ∑ j ∈ Finset.range n,
        (C * (1 + h) ^ q * (1 + T) ^ p) * (ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      Finset.sum_le_sum (fun j _ => hpoint j)
    _ = (C * (1 + h) ^ q * (1 + T) ^ p) *
        ∑ j ∈ Finset.range n, ρ ^ j * (1 + (j : ℝ)) ^ q :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (C * (1 + h) ^ q * (1 + T) ^ p) *
        (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      mul_le_mul_of_nonneg_left
        (hsum.sum_le_tsum (Finset.range n) (fun j _ => by positivity)) hbase
    _ = _ := by ring

/-- The exact real allowance exponent survives iteration. No classical
arithmetic decay is asserted: the actual weighted terminal tail is an explicit
hypothesis and is the only additional limit premise. -/
theorem exactPolynomialEnvelope_of_recurrence_and_tail {E a : ℝ → ℝ} {R h C ρ p : ℝ}
    (hR : 0 ≤ R) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ₀ : 0 < ρ) (hρ : ρ < 1) (hp : 0 ≤ p)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (haρ : ∀ s, R ≤ s → a s ≤ ρ)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ T : ℝ, R ≤ T → E T ≤ D * (1 + T) ^ p := by
  obtain ⟨q, hpq⟩ := exists_nat_ge p
  have hsum := summable_polynomial_geometric hρ₀ hρ q
  let D : ℝ := C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)
  have hD : 0 ≤ D := by
    apply mul_nonneg (by positivity)
    exact tsum_nonneg (fun j => by positivity)
  apply polynomialEnvelope_of_recurrence_cost_and_tail hh hD ha hrec
  · intro T hRT n
    have hT : 0 ≤ T := hR.trans hRT
    have htime (j : ℕ) : R ≤ T + (j : ℝ) * h := by
      have hj : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
      linarith
    simpa only [add_assoc] using
      realPolynomial_weighted_cost hT hh hC hρ₀.le hp hpq
        (fun j => ha _ (htime j)) (fun j => haρ _ (htime j)) hsum n
  · exact htail

/-- The delayed pointwise supplier produces the polynomial positive envelope
with the *same* real allowance exponent. Only the actual critical weighted
tail, separately supplied by arithmetic decay, remains an analytic premise. -/
theorem polynomialEnvelope_of_supplier_and_tail {W : ℝ → ℝ} {K S h C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p)
    (htail : ∀ T, S + h ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => supplierCoefficient K (T + (j : ℝ) * h)) n *
        runningPositiveMaximum W (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ T : ℝ, S + h ≤ T →
      runningPositiveMaximum W T ≤ D * (1 + T) ^ p := by
  obtain ⟨C', hC', hrec⟩ :=
    supplier_runningMaximum_polynomial_recurrence hW hK hS hKS hh hC hp hsupplier
  apply exactPolynomialEnvelope_of_recurrence_and_tail (add_nonneg hS.le hh) hh hC'
    uniformContraction_pos uniformContraction_lt_one hp
  · intro s hs
    exact supplierCoefficient_nonneg hK (by linarith)
  · intro s hs
    exact supplierCoefficient_le_uniformContraction (by linarith) (by linarith)
  · exact hrec
  · exact htail

/-- Compact initial times can be included without changing the real exponent.
This is the global upper bound needed to form a nonnegative Landau transform. -/
theorem globalPolynomialEnvelope_of_eventual {W : ℝ → ℝ} {R D p : ℝ}
    (hW : Continuous W) (hD : 0 ≤ D) (hp : 0 ≤ p)
    (hbound : ∀ T : ℝ, R ≤ T → runningPositiveMaximum W T ≤ D * (1 + T) ^ p) :
    ∃ D' : ℝ, 0 ≤ D' ∧ ∀ T : ℝ, 0 ≤ T →
      runningPositiveMaximum W T ≤ D' * (1 + T) ^ p := by
  let D' : ℝ := max D (runningPositiveMaximum W R)
  have hD' : 0 ≤ D' := hD.trans (le_max_left _ _)
  refine ⟨D', hD', ?_⟩
  intro T hT
  have hpow₀ : 0 ≤ (1 + T) ^ p := Real.rpow_nonneg (by linarith) p
  by_cases hRT : R ≤ T
  · exact (hbound T hRT).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) hpow₀)
  · have hlevel := runningPositiveMaximum_mono hW (le_of_not_ge hRT)
    have hpow : 1 ≤ (1 + T) ^ p := Real.one_le_rpow (by linarith) hp
    have hconstant : D' ≤ D' * (1 + T) ^ p := by
      simpa only [mul_one] using mul_le_mul_of_nonneg_left hpow hD'
    exact hlevel.trans ((le_max_right _ _).trans hconstant)

end
end GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
```
