import FormalResearch.PositiveAtlas.Grassmannian.PFClosure

/-!
# Bounded minor order, unrestricted positions

`PFOrder R a` bounds the order of a minor, NOT its row or column positions or
its containing matrix size. All orders together recover the existing PFInfinity.
This file uses the existing signed Toeplitz definitions without changing them.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

open Filter
open scoped Topology

noncomputable section

/-- All ordered minors through order R, at arbitrary natural positions. -/
def PFOrder (R : ℕ) (a : ℕ → ℝ) : Prop :=
  ∀ k : ℕ, k ≤ R → ∀ r c : Fin k ↪o ℕ, 0 ≤ minor a r c

/-- The finite-matrix version has the same order bound. -/
def NonnegativeThrough (R : ℕ) {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : Prop :=
  ∀ k : ℕ, k ≤ R → ∀ r c : Fin k ↪o Fin N,
    0 ≤ Matrix.det (fun i j => M (r i) (c j))

/-- Lowering the order bound does not alter the sequence or its positions. -/
theorem PFOrder.mono {a : ℕ → ℝ} {R S : ℕ} (h : PFOrder R a) (hSR : S ≤ R) :
    PFOrder S a := fun k hk r c => h k (hk.trans hSR) r c

/-- Infinite-order nonnegativity supplies each bounded-order statement. -/
theorem PFInfinity.pfOrder {a : ℕ → ℝ} (h : PFInfinity a) (R : ℕ) : PFOrder R a :=
  fun k _ r c => h k r c

/-- The missing all-orders quantifier cannot be replaced by one fixed large R. -/
theorem pfInfinity_iff_forall_order (a : ℕ → ℝ) :
    PFInfinity a ↔ ∀ R : ℕ, PFOrder R a := by
  constructor
  · exact fun h R => h.pfOrder R
  · exact fun h k r c => h k k le_rfl r c

/-- Empty determinants make order zero valid without a coefficient hypothesis. -/
theorem pfOrder_zero (a : ℕ → ℝ) : PFOrder 0 a := by
  intro k hk r c
  have : k = 0 := by omega
  subst k
  change 0 ≤ (Matrix.of (fun i j : Fin 0 => entry a (r i) (c j))).det
  simp

/-- Every finite selection fits in a leading block; no position bound is introduced. -/
theorem pfOrder_iff_blocks (R : ℕ) (a : ℕ → ℝ) :
    PFOrder R a ↔ ∀ N, NonnegativeThrough R (block a N) := by
  constructor
  · intro h N k hk r c
    let rn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (r i).val) (fun _ _ hij => r.strictMono hij)
    let cn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (c i).val) (fun _ _ hij => c.strictMono hij)
    exact h k hk rn cn
  · intro h k hk r c
    let N := (∑ i, r i) + (∑ i, c i) + 1
    have hr : ∀ i, r i < N := by
      intro i
      have hi : r i ≤ ∑ j, r j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (r j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    have hc : ∀ i, c i < N := by
      intro i
      have hi : c i ≤ ∑ j, c j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (c j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    let rf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨r i, hr i⟩) (fun _ _ hij => r.strictMono hij)
    let cf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨c i, hc i⟩) (fun _ _ hij => c.strictMono hij)
    exact h N k hk rf cf

/-- A block no larger than the proved order bound is totally nonnegative. -/
theorem PFOrder.block_nonnegative {R N : ℕ} {a : ℕ → ℝ}
    (ha : PFOrder R a) (hN : N ≤ R) : FiniteNonnegative (block a N) := by
  intro k r c
  have hk : k ≤ N := by
    simpa using Fintype.card_le_of_injective r r.injective
  exact (pfOrder_iff_blocks R a).mp ha N k (hk.trans hN) r c

/-- Positive amplitude changes preserve and reflect bounded-order nonnegativity. -/
theorem pfOrder_amplitude_iff (R : ℕ) (a : ℕ → ℝ) (t : ℝ) (ht : 0 < t) :
    PFOrder R (fun n => t * a n) ↔ PFOrder R a := by
  constructor
  · intro h k hk r c
    have hh := h k hk r c
    rw [minor_amplitude] at hh
    exact (mul_nonneg_iff_of_pos_left (pow_pos ht k)).mp hh
  · intro h k hk r c
    rw [minor_amplitude]
    exact mul_nonneg (pow_pos ht k).le (h k hk r c)

/-- Eventual positivity is required separately for every selected signed minor. -/
theorem pfOrder_of_eventually_minor_nonnegative
    (R : ℕ) (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (hlim : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    (hpos : ∀ k, k ≤ R → ∀ r c : Fin k ↪o ℕ,
      ∀ᶠ j in atTop, 0 ≤ minor (a j) r c) : PFOrder R b := by
  intro k hk r c
  exact ge_of_tendsto (minor_tendsto a b hlim r c) (hpos k hk r c)

/-- Coefficientwise limits preserve a fixed bounded-order statement. -/
theorem pfOrder_of_coefficientwise_limit
    (R : ℕ) (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (hlim : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    (hpos : ∀ j, PFOrder R (a j)) : PFOrder R b := by
  apply pfOrder_of_eventually_minor_nonnegative R a b hlim
  intro k hk r c
  exact Filter.Eventually.of_forall (fun j => hpos j k hk r c)

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
