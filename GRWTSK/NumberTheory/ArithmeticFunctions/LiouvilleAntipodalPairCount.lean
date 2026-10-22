/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Finite character-count proof draft assistance: OpenAI.
Mathlib upstream definitions retain their respective licenses. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicSignedPairing
import GRWTSK.NumberTheory.ArithmeticFunctions.FiniteAntipodalWalshExpansion
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact antipodal source/odd-residual pair count

Owners: grwtsk/math #630 and #441. Parent head:
2a86837aefd51a55f0031d4ab12584cbf85bb008.

A source-only Lean formalization of the finite paper identity
  X(M,H) = 2^|H| * A(M,H) / M^2 - 1,
where A counts ordered source and odd-residual roots whose Liouville
signs disagree at every selected shift. All samples use positive
arguments. The finite theorem requires M>0; no arithmetic
cancellation or kernel verification is claimed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators

/-- A full antipodal pair of actual positive-index Liouville words. -/
def IsAntipodalPair (H : Finset ℕ) (m t : ℕ) : Prop :=
  ∀ h ∈ H,
    ArithmeticFunction.liouville (m + h + 1) =
      -ArithmeticFunction.liouville (2 * t + 2 * h + 3)

/-- Exact number of ordered antipodal pairs among M² root pairs. -/
noncomputable def antipodalPairCount (M : ℕ) (H : Finset ℕ) : ℕ :=
  ((Finset.range M).product (Finset.range M)).filter
    (fun p => IsAntipodalPair H p.1 p.2) |>.card

/-- The empty shift set makes every ordered root pair antipodal. -/
theorem antipodalPairCount_empty (M : ℕ) :
    antipodalPairCount M ∅ = M * M := by
  classical
  simp [antipodalPairCount, IsAntipodalPair]

/-- Coordinatewise signed character factor: 1-a*b is two exactly
when a and b are opposite unit signs, otherwise zero. -/
theorem antipodal_factor (a b : ℤ)
    (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1) :
    (1 : ℤ) - a * b = if a = -b then 2 else 0 := by
  rcases ha with ha | ha <;> rcases hb with hb | hb
  all_goals simp [ha, hb]

/-- Finite product of signed character factors detects exactly the
full antipodal condition, including H empty. -/
theorem antipodal_character_product (H : Finset ℕ) (m t : ℕ) :
    (∏ h ∈ H,
      ((1 : ℤ) -
        ArithmeticFunction.liouville (m + h + 1) *
          ArithmeticFunction.liouville (2 * t + 2 * h + 3))) =
      if IsAntipodalPair H m t then (2 : ℤ) ^ H.card else 0 := by
  classical
  induction H using Finset.induction_on with
  | empty =>
      simp [IsAntipodalPair]
  | @insert h H hh ih =>
      have ha := liouville_positive_pm_one (m + h + 1) (by omega)
      have hb := liouville_positive_pm_one (2 * t + 2 * h + 3) (by omega)
      rw [Finset.prod_insert hh, ih, antipodal_factor _ _ ha hb]
      by_cases he : ArithmeticFunction.liouville (m + h + 1) =
          -ArithmeticFunction.liouville (2 * t + 2 * h + 3)
      · by_cases hrest : IsAntipodalPair H m t
        · simp [IsAntipodalPair, Finset.forall_mem_insert, he, hrest,
            Finset.card_insert_of_not_mem hh, pow_succ, mul_comm]
        · simp [IsAntipodalPair, Finset.forall_mem_insert, he, hrest]
      · simp [IsAntipodalPair, Finset.forall_mem_insert, he]

/-- Exact pairwise antipodal detector in rational arithmetic, obtained
by casting the already source-drafted integer product identity. -/
theorem antipodal_character_product_rat (H : Finset ℕ) (m t : ℕ) :
    (∏ h ∈ H,
      ((1 : ℚ) -
        ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ) *
          ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))) =
      if IsAntipodalPair H m t then (2 : ℚ) ^ H.card else 0 := by
  have hi := antipodal_character_product H m t
  exact_mod_cast hi

/-- The unnormalized full character expansion at one ordered root pair.
This is the finite Walsh identity with the exact Liouville inputs. -/
theorem antipodal_character_powerset (H : Finset ℕ) (m t : ℕ) :
    (∏ h ∈ H,
      ((1 : ℚ) -
        ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ) *
          ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))) =
      ∑ S ∈ H.powerset, (-1 : ℚ) ^ S.card *
        ∏ h ∈ S,
          (((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ) *
            ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) := by
  exact GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion.product_one_sub_eq_powerset_sum
    H (fun h =>
      ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ) *
        ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))

/-- The rational antipodal detector summed over the ordered root
pairs is exactly the corresponding finite-filter cardinality. This
uses no asymptotic cancellation assumption. -/
theorem antipodal_product_pair_sum (M : ℕ) (H : Finset ℕ) :
    (∑ p ∈ (Finset.range M).product (Finset.range M),
      ∏ h ∈ H,
        ((1 : ℚ) -
          ((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
            ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) =
      (2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ) := by
  classical
  simp_rw [antipodal_character_product_rat]
  unfold antipodalPairCount
  rw [← Finset.sum_filter]
  simp only [Finset.sum_ite, Finset.sum_const_zero, add_zero,
    Finset.sum_const, nsmul_eq_mul]
  ring

/-- Pure finite rearrangement of a complete character sum and an
ordered pair sum. This isolates the interchange needed by the
normalized antipodal-count theorem, without any arithmetic premise. -/
theorem sum_powerset_product_commute
    (M : ℕ) (H : Finset ℕ)
    (g : Finset ℕ → ℕ → ℕ → ℚ) :
    (∑ p ∈ (Finset.range M).product (Finset.range M),
       ∑ S ∈ H.powerset, g S p.1 p.2) =
      ∑ S ∈ H.powerset,
        ∑ p ∈ (Finset.range M).product (Finset.range M),
          g S p.1 p.2 := by
  rw [Finset.sum_comm]

/-- The complete finite powerset splits into its empty character and
all nonempty characters. No factor 2^|H| is lost. -/
theorem sum_powerset_empty_and_nonempty
    (H : Finset ℕ) (f : Finset ℕ → ℚ) :
    (∑ S ∈ H.powerset, f S) =
      f ∅ + ∑ S ∈ H.powerset.erase ∅, f S := by
  classical
  have he : (∅ : Finset ℕ) ∈ H.powerset := Finset.empty_mem_powerset H
  rw [← Finset.sum_erase_add he]
  ring

/-- A finite double sum of separated source/residual functions factors
into the product of the two individual sums. This is pure finite
commutative-ring algebra, before any division by the sample size. -/
theorem sum_root_pair_factor
    (M : ℕ) (a b : ℕ → ℚ) :
    (∑ p ∈ (Finset.range M).product (Finset.range M),
       a p.1 * b p.2) =
      (∑ m ∈ Finset.range M, a m) *
        (∑ t ∈ Finset.range M, b t) := by
  rw [Finset.sum_product]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]

/-- Normalization of a separated pair mean is the product of the
two normalized means. The positive-sample hypothesis prevents
interpreting the zero denominator as a probability. -/
theorem normalized_root_pair_factor
    (M : ℕ) (a b : ℕ → ℚ) (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
       a p.1 * b p.2) / (M : ℚ) ^ 2) =
      ((∑ m ∈ Finset.range M, a m) / (M : ℚ)) *
        ((∑ t ∈ Finset.range M, b t) / (M : ℚ)) := by
  rw [sum_root_pair_factor]
  have hM0 : (M : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hM
  field_simp [hM0]

/-- A full powerset character coefficient factors into the
ordinary source and odd-affine residual products. -/
theorem antipodal_subset_product_factor
    (H : Finset ℕ) (S : Finset ℕ) (m t : ℕ) :
    (∏ h ∈ S,
      (((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ) *
        ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))) =
      (∏ h ∈ S,
        ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ)) *
      (∏ h ∈ S,
        ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) := by
  exact Finset.prod_mul_distrib

/-- The exact normalized character coefficient of one ordinary
subset is the product of its two separately averaged means.
This helper deliberately uses Finset ℕ rather than the subtype
of H; a later subtype reindexing must bridge those two forms. -/
theorem antipodal_subset_normalized_factor
    (M : ℕ) (S : Finset ℕ) (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
       (∏ h ∈ S,
          ((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ)) *
       (∏ h ∈ S,
          ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
       (M : ℚ) ^ 2) =
      ((∑ m ∈ Finset.range M,
        ∏ h ∈ S,
          ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ)) / (M : ℚ)) *
      ((∑ t ∈ Finset.range M,
        ∏ h ∈ S,
          ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) / (M : ℚ)) := by
  exact normalized_root_pair_factor M
    (fun m => ∏ h ∈ S,
      ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ))
    (fun t => ∏ h ∈ S,
      ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))
    hM

/-- The subtype coordinates of a finite shift set project bijectively
onto the original shifts, retaining exact membership. -/
def shiftSubtypeEquiv (H : Finset ℕ) :
    {h : ℕ // h ∈ H} ≃ {h : ℕ // h ∈ H} :=
  Equiv.refl _

/-- Convert a selected subtype-character into its ordinary finite
set of shift values. This is injective on selected subsets because
subtype values uniquely determine subtype coordinates. -/
def shiftSubsetValues (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) : Finset ℕ :=
  S.image Subtype.val

/-- Every selected shift value belongs to its ambient shift set. -/
theorem shiftSubsetValues_subset (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    shiftSubsetValues H S ⊆ H := by
  intro h hh
  obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hh
  exact x.property

/-- The original subset is recovered by restricting its values
back to the ambient finite shift subtype. -/
theorem shiftSubsetValues_mem_iff (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H})
    (h : {h : ℕ // h ∈ H}) :
    h.val ∈ shiftSubsetValues H S ↔ h ∈ S := by
  constructor
  · intro hh
    obtain ⟨x, hx, heq⟩ := Finset.mem_image.mp hh
    have hident : x = h := Subtype.ext heq
    simpa [hident] using hx
  · intro hh
    exact Finset.mem_image.mpr ⟨h, hh, rfl⟩

/-- Character cardinality is unchanged when passing from subtype
coordinates to their distinct natural-number shift values. -/
theorem shiftSubsetValues_card (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    (shiftSubsetValues H S).card = S.card := by
  unfold shiftSubsetValues
  exact Finset.card_image_of_injective S Subtype.val_injective

/-- Every ordinary subset of H is represented by the corresponding
finite subset of the ambient shift subtype. -/
def shiftSubsetOfValues (H : Finset ℕ) (T : Finset ℕ) :
    Finset {h : ℕ // h ∈ H} :=
  (Finset.univ : Finset {h : ℕ // h ∈ H}).filter
    (fun h => h.val ∈ T)

/-- The two subset transports are inverse on selected subtype sets. -/
theorem shiftSubsetOfValues_values (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    shiftSubsetOfValues H (shiftSubsetValues H S) = S := by
  ext h
  simp [shiftSubsetOfValues, shiftSubsetValues_mem_iff]

/-- On subsets contained in H, projecting the restricted subtype
subset back to values returns exactly the original finite subset. -/
theorem shiftSubsetValues_ofValues (H T : Finset ℕ)
    (hT : T ⊆ H) :
    shiftSubsetValues H (shiftSubsetOfValues H T) = T := by
  ext h
  constructor
  · intro hh
    obtain ⟨x, hx, heq⟩ := Finset.mem_image.mp hh
    subst h
    simpa [shiftSubsetOfValues] using hx
  · intro hh
    have hH : h ∈ H := hT hh
    exact Finset.mem_image.mpr
      ⟨⟨h, hH⟩, by simp [shiftSubsetOfValues, hh], rfl⟩

/-- A genuine equivalence of the full powerset of H with the
finite subsets of its subtype coordinate type. -/
def shiftPowersetEquiv (H : Finset ℕ) :
    Finset {h : ℕ // h ∈ H} ≃ {T : Finset ℕ // T ⊆ H} := by
  classical
  refine
    { toFun := fun S => ⟨shiftSubsetValues H S, shiftSubsetValues_subset H S⟩
      invFun := fun T => shiftSubsetOfValues H T.val
      left_inv := ?_
      right_inv := ?_ }
  · intro S
    exact shiftSubsetOfValues_values H S
  · rintro ⟨T, hT⟩
    apply Subtype.ext
    exact shiftSubsetValues_ofValues H T hT

/-- Subtype-character products and their natural-number value sets
have exactly the same factors. This is the missing coefficient-level
compatibility for the full powerset equivalence. -/
theorem shiftSubsetValues_prod
    (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H})
    (f : ℕ → ℚ) :
    (∏ h ∈ S, f h.val) =
      ∏ h ∈ shiftSubsetValues H S, f h := by
  classical
  unfold shiftSubsetValues
  rw [Finset.prod_image]
  · rfl
  · intro a ha b hb hab
    exact Subtype.ext hab

/-- A character sum over ALL ordinary subsets of H is exactly a
character sum over the complete subtype powerset. -/
theorem sum_powerset_eq_subtype_sum
    (H : Finset ℕ) (f : Finset ℕ → ℚ) :
    (∑ T ∈ H.powerset, f T) =
      ∑ S : Finset {h : ℕ // h ∈ H}, f (shiftSubsetValues H S) := by
  classical
  let e := shiftPowersetEquiv H
  have hsum :
      (∑ T : {T : Finset ℕ // T ⊆ H}, f T.val) =
        ∑ S : Finset {h : ℕ // h ∈ H}, f (shiftSubsetValues H S) := by
    exact Equiv.sum_comp e (fun T => f T.val)
  calc
    (∑ T ∈ H.powerset, f T) =
        ∑ T : {T : Finset ℕ // T ⊆ H}, f T.val := by
      exact Finset.sum_attach H.powerset (fun T => f T)
    _ = _ := hsum

/-- The antipodal collision count is bounded by the number of
ordered root pairs. This does not assume cancellation. -/
theorem antipodalPairCount_le_square (M : ℕ) (H : Finset ℕ) :
    antipodalPairCount M H ≤ M * M := by
  classical
  unfold antipodalPairCount
  calc
    (((Finset.range M).product (Finset.range M)).filter
      (fun p => IsAntipodalPair H p.1 p.2)).card ≤
        ((Finset.range M).product (Finset.range M)).card :=
      Finset.card_filter_le _ _
    _ = M * M := by simp

/-- At an empty root sample there are no antipodal ordered pairs,
regardless of the finite shift set. -/
theorem antipodalPairCount_zero (H : Finset ℕ) :
    antipodalPairCount 0 H = 0 := by
  classical
  simp [antipodalPairCount]

/-- Exact normalized bounds for the finite antipodal-pair frequency.
The M>0 guard prevents treating the zero sample as a probability. -/
theorem antipodalPairFrequency_bounds (M : ℕ) (H : Finset ℕ)
    (hM : 0 < M) :
    (0 : ℚ) ≤ (antipodalPairCount M H : ℚ) / (M : ℚ) ^ 2 ∧
      (antipodalPairCount M H : ℚ) / (M : ℚ) ^ 2 ≤ 1 := by
  have hMpos : (0 : ℚ) < (M : ℚ) := by exact_mod_cast hM
  have hbound : (antipodalPairCount M H : ℚ) ≤ (M : ℚ) ^ 2 := by
    exact_mod_cast (antipodalPairCount_le_square M H)
  constructor
  · positivity
  · exact (div_le_iff₀ (sq_pos_of_pos hMpos)).2 (by simpa using hbound)

/-- A purely finite separation of the empty character in a complete
subtype-indexed character sum. This is the normalization identity
needed after the powerset/subtype bijection. -/
theorem subtype_character_sum_empty_split
    (H : Finset ℕ)
    (f : Finset {h : ℕ // h ∈ H} → ℚ) :
    (∑ S : Finset {h : ℕ // h ∈ H}, f S) =
      f ∅ +
        ∑ S ∈ (Finset.univ :
          Finset (Finset {h : ℕ // h ∈ H})).erase ∅, f S := by
  classical
  have he : (∅ : Finset {h : ℕ // h ∈ H}) ∈
      (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})) := Finset.mem_univ _
  rw [← Finset.sum_erase_add he]
  ring

/-- The complete empty character contributes exactly one after
normalizing its M² ordered-root pairs, provided M>0. -/
theorem empty_character_root_pair_normalization (M : ℕ)
    (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
        (1 : ℚ)) / (M : ℚ) ^ 2) = 1 := by
  have hM0 : (M : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hM
  simp only [Finset.sum_const, Finset.card_product, Finset.card_range,
    nsmul_eq_mul]
  field_simp [hM0]
  ring

/-- The exact antipodal product detector, normalized by M²,
equals the normalized collision count. This isolates the count
normalization from the remaining Walsh-character expansion. -/
theorem normalized_antipodal_product_eq_frequency
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
      ∏ h ∈ H,
        ((1 : ℚ) -
          ((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
            ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
      (M : ℚ) ^ 2) =
      ((2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ)) /
        (M : ℚ) ^ 2 := by
  rw [antipodal_product_pair_sum]

/-- The normalized full powerset sum can be exchanged with the
ordered-root sum, without changing its M² denominator. -/
theorem normalized_powerset_pair_sum_commute
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M)
    (g : Finset ℕ → ℕ → ℕ → ℚ) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
       ∑ S ∈ H.powerset, g S p.1 p.2) / (M : ℚ) ^ 2) =
      ((∑ S ∈ H.powerset,
        ∑ p ∈ (Finset.range M).product (Finset.range M),
          g S p.1 p.2) / (M : ℚ) ^ 2) := by
  rw [sum_powerset_product_commute]

/-- Characterwise signed factorization, retaining the cardinality
parity and using the two separately averaged arithmetic words. -/
theorem normalized_antipodal_character_term
    (M : ℕ) (S : Finset ℕ) (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
        (-1 : ℚ) ^ S.card *
          ∏ h ∈ S,
            (((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
              ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
        (M : ℚ) ^ 2) =
      (-1 : ℚ) ^ S.card *
        ((∑ m ∈ Finset.range M,
          ∏ h ∈ S,
            ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ)) / (M : ℚ)) *
        ((∑ t ∈ Finset.range M,
          ∏ h ∈ S,
            ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) / (M : ℚ)) := by
  classical
  simp_rw [antipodal_subset_product_factor]
  rw [← Finset.mul_sum]
  rw [normalized_root_pair_factor M
    (fun m => ∏ h ∈ S,
      ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ))
    (fun t => ∏ h ∈ S,
      ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) hM]
  ring

/-- The normalized complete powerset character sum is the sum of
its separately normalized signed coefficients. The denominator
M² is distributed only after the finite sum is reindexed. -/
theorem normalized_powerset_character_sum
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M)
    (g : Finset ℕ → ℕ → ℕ → ℚ) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
        ∑ S ∈ H.powerset, g S p.1 p.2) / (M : ℚ) ^ 2) =
      ∑ S ∈ H.powerset,
        ((∑ p ∈ (Finset.range M).product (Finset.range M),
          g S p.1 p.2) / (M : ℚ) ^ 2) := by
  rw [sum_powerset_product_commute]
  rw [Finset.sum_div]

/-- Transport a normalized ordinary Liouville character coefficient
from a finite subtype subset to its natural-number shift values. -/
theorem shiftSubsetValues_sourceMean
    (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    liouvilleSubsetMean M H S =
      (∑ m ∈ Finset.range M,
        ∏ h ∈ shiftSubsetValues H S,
          ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ)) /
        (M : ℚ) := by
  unfold liouvilleSubsetMean
  congr 1
  apply Finset.sum_congr rfl
  intro m _
  exact shiftSubsetValues_prod H S
    (fun h => ((ArithmeticFunction.liouville (m + h + 1) : ℤ) : ℚ))

/-- The odd-affine residual coefficient has the same exact subtype
to shift-value transport, without changing its odd affine argument. -/
theorem shiftSubsetValues_residualMean
    (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    oddResidualMean M H S =
      (∑ t ∈ Finset.range M,
        ∏ h ∈ shiftSubsetValues H S,
          ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ)) /
        (M : ℚ) := by
  unfold oddResidualMean oddResidualProductTerm
  congr 1
  apply Finset.sum_congr rfl
  intro t _
  exact shiftSubsetValues_prod H S
    (fun h => ((ArithmeticFunction.liouville (2 * t + 2 * h + 3) : ℤ) : ℚ))

/-- The full normalized character contribution indexed by a subtype
subset agrees exactly with its signed arithmetic mixed coefficient. -/
theorem normalized_subtype_character_term
    (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (hM : 0 < M) :
    ((∑ p ∈ (Finset.range M).product (Finset.range M),
        (-1 : ℚ) ^ (shiftSubsetValues H S).card *
          ∏ h ∈ shiftSubsetValues H S,
            (((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
              ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
        (M : ℚ) ^ 2) =
      (-1 : ℚ) ^ S.card *
        liouvilleSubsetMean M H S * oddResidualMean M H S := by
  rw [normalized_antipodal_character_term M
    (shiftSubsetValues H S) hM]
  rw [shiftSubsetValues_card, shiftSubsetValues_sourceMean,
    shiftSubsetValues_residualMean]

/-- All nonempty normalized characters sum to the existing signed
mixed-energy definition. The empty character is excluded exactly once. -/
theorem normalized_nonempty_subtype_characters_eq_mixed
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    (∑ S ∈ (Finset.univ :
        Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
      ((∑ p ∈ (Finset.range M).product (Finset.range M),
          (-1 : ℚ) ^ (shiftSubsetValues H S).card *
            ∏ h ∈ shiftSubsetValues H S,
              (((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
                ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
          (M : ℚ) ^ 2)) =
      dyadicSignedMixedEnergy M H := by
  unfold dyadicSignedMixedEnergy
  apply Finset.sum_congr rfl
  intro S _
  exact normalized_subtype_character_term M H S hM

/-- The finite signed interaction equals the normalized count of
antipodal root pairs. This theorem uses the complete Walsh character
expansion, including the empty character, before subtracting one.
No asymptotic estimate is asserted. -/
theorem dyadicSignedMixedEnergy_eq_antipodal_count
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    dyadicSignedMixedEnergy M H =
      (((2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ)) /
        ((M : ℚ) ^ 2)) - 1 := by
  classical
  have hM0 : (M : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hM
  -- The generic finite Walsh expansion is available as a separate
  -- proof-draft supplier; the remaining obligation is to commute the
  -- normalized double sum with the complete character sum.
  have hWalsh (f : ℕ → ℚ) :
      (∏ h ∈ H, (1 - f h)) =
        ∑ S ∈ H.powerset, (-1 : ℚ) ^ S.card * ∏ h ∈ S, f h :=
    GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion.product_one_sub_eq_powerset_sum H f
  -- Reassociate the two finite root sums and expand the full powerset
  -- via the finite product-of-sums identity. The nonempty sum is the
  -- complete expansion minus its empty-character contribution.
  simp only [dyadicSignedMixedEnergy, antipodalPairCount]
  sorry

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
