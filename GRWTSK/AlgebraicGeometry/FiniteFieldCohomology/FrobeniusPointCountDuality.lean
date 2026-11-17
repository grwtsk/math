import GRWTSK.AlgebraicGeometry.FiniteFieldCohomology.FrobeniusPoincareDuality
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.ReciprocalCharacteristicRoots

/-!
# Reciprocal symmetry of the signed spectrum from point counts

Source candidate split from `weil_conjecture_main.lean`, lines 52252–52432.
See the adjacent `FrobeniusPointCountDuality.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem point_count_functional_equation (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] (m : ℂ →₀ ℤ) (hm0 : (0 : ℂ) ∉ m.support)
    (hmE : ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E],
        (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℂ) =
        ∑ α ∈ m.support, (m α : ℂ) * α ^ Module.finrank F E) :
    ∀ α : ℂ, α ≠ 0 → m ((Nat.card F : ℂ) ^ d / α) = m α :=
by
  classical
  intro α _
  have hq : 2 ≤ Nat.card F := Finite.one_lt_card
  set c : ℂ := (Nat.card F : ℂ) ^ d with hc_def
  have hc : c ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr (by omega))

  obtain ⟨r, M, P, hpair, htr⟩ := frobenius_duality_matrices F X d
  set R : ℕ → Multiset ℂ := fun i => (M i).charpoly.roots with hR

  have hRi : ∀ i ≤ 2 * d, R (2 * d - i) = (R i).map (c / ·) ∧ (0 : ℂ) ∉ R i := by
    intro i hi
    obtain ⟨h1, h2, h3⟩ := hpair i hi
    obtain ⟨hu, hch⟩ :=
      charpoly_eq_of_compatible_pairing (M i) (M (2 * d - i)) (P i) c hc h2 h3 h1
    obtain ⟨hr, h0⟩ := roots_charpoly_smul_inv (M i) c hc hu
    refine ⟨?_, h0⟩
    simp only [hR]
    rw [hch, hr]

  have hext : ∀ n : ℕ, 1 ≤ n → ∃ (E : Type u) (_ : Field E) (_ : Algebra F E),
      FiniteDimensional F E ∧ Module.finrank F E = n := by
    intro n hn
    haveI : Fact (Nat.Prime (ringChar F)) := ⟨CharP.char_is_prime F (ringChar F)⟩
    haveI : NeZero n := ⟨by omega⟩
    refine ⟨ULift.{u} (FiniteField.Extension F (ringChar F) n), inferInstance, inferInstance,
      ?_, ?_⟩
    · exact Module.Finite.equiv (ULift.moduleEquiv (R := F)).symm
    · rw [LinearEquiv.finrank_eq (ULift.moduleEquiv (R := F))]
      exact FiniteField.finrank_extension F (ringChar F) n

  have hpow : ∀ n : ℕ, 1 ≤ n → ∑ β ∈ m.support, (m β : ℂ) * β ^ n =
      ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((R i).map (· ^ n)).sum := by
    intro n hn
    obtain ⟨E, _, _, _, hE⟩ := hext n hn
    rw [← hE, ← hmE E, htr E]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [matrix_trace_pow_eq_sum_roots_pow]

  have key : ∀ (T : Finset ℂ), (0 : ℂ) ∉ T → ∀ g : ℂ → ℂ,
      (∀ n : ℕ, 1 ≤ n → ∑ β ∈ T, g β * β ^ n = 0) → ∀ β ∈ T, g β = 0 := by
    intro T
    induction T using Finset.induction_on with
    | empty => intro _ g _ β hβ; simp at hβ
    | insert a T' haT' ih =>
      intro h0 g hg
      have ha0 : a ≠ 0 := fun h => h0 (h ▸ Finset.mem_insert_self _ _)
      have h0' : (0 : ℂ) ∉ T' := fun h => h0 (Finset.mem_insert_of_mem h)
      have hg' : ∀ n : ℕ, 1 ≤ n → ∑ β ∈ T', (g β * (β - a)) * β ^ n = 0 := by
        intro n hn
        have h1 := hg (n+1) (by omega)
        have h2 := hg n hn
        rw [Finset.sum_insert haT'] at h1 h2
        have e : ∑ β ∈ T', (g β * (β - a)) * β ^ n
            = (g a * a ^ (n+1) + ∑ β ∈ T', g β * β ^ (n+1))
              - a * (g a * a ^ n + ∑ β ∈ T', g β * β ^ n) := by
          rw [mul_add, Finset.mul_sum]
          have e2 : ∑ β ∈ T', (g β * (β - a)) * β ^ n
              = ∑ β ∈ T', g β * β ^ (n+1) - ∑ β ∈ T', a * (g β * β ^ n) := by
            rw [← Finset.sum_sub_distrib]
            exact Finset.sum_congr rfl (fun β _ => by ring)
          rw [e2]; ring
        rw [e, h1, h2]; ring
      have hT' := ih h0' _ hg'
      have hT'0 : ∀ β ∈ T', g β = 0 := by
        intro β hβ
        have hne : β - a ≠ 0 := sub_ne_zero.mpr (fun h => haT' (h ▸ hβ))
        exact (mul_eq_zero.mp (hT' β hβ)).resolve_right hne
      have h1 := hg 1 le_rfl
      rw [Finset.sum_insert haT',
        Finset.sum_eq_zero (fun β hβ => by rw [hT'0 β hβ, zero_mul])] at h1
      have hga : g a = 0 := by
        simp only [pow_one, add_zero] at h1
        exact (mul_eq_zero.mp h1).resolve_right ha0
      intro β hβ
      rcases Finset.mem_insert.mp hβ with rfl | hβ
      · exact hga
      · exact hT'0 β hβ
  have hmcount : ∀ β : ℂ,
      m β = ∑ i ∈ Finset.Iic (2 * d), (-1 : ℤ) ^ i * ((R i).count β : ℤ) := by
    set T := m.support ∪ (Finset.Iic (2 * d)).biUnion (fun i => (R i).toFinset) with hT
    have hT0 : (0 : ℂ) ∉ T := by
      intro h
      rcases Finset.mem_union.mp h with h | h
      · exact hm0 h
      · obtain ⟨i, hi, h0⟩ := Finset.mem_biUnion.mp h
        exact (hRi i (Finset.mem_Iic.mp hi)).2 (Multiset.mem_toFinset.mp h0)
    have hA : ∀ n : ℕ, ∑ β ∈ T, (m β : ℂ) * β ^ n = ∑ β ∈ m.support, (m β : ℂ) * β ^ n := by
      intro n
      symm
      apply Finset.sum_subset Finset.subset_union_left
      intro β _ hβ
      rw [Finsupp.notMem_support_iff.mp hβ]; simp
    have hB : ∀ n : ℕ, ∀ i ∈ Finset.Iic (2 * d),
        ((R i).map (· ^ n)).sum = ∑ β ∈ T, ((R i).count β : ℂ) * β ^ n := by
      intro n i hi
      rw [Finset.sum_multiset_map_count]
      simp only [nsmul_eq_mul]
      apply Finset.sum_subset
      · intro β hβ
        exact Finset.mem_union_right _ (Finset.mem_biUnion.mpr ⟨i, hi, hβ⟩)
      · intro β _ hβ
        rw [Multiset.count_eq_zero.mpr (fun h => hβ (Multiset.mem_toFinset.mpr h))]
        simp
    have hg := key T hT0
      (fun β => (m β : ℂ) - ∑ i ∈ Finset.Iic (2 * d), (-1 : ℂ) ^ i * ((R i).count β : ℂ))
      (by
        intro n hn
        have e : ∑ β ∈ T, ((m β : ℂ) -
              ∑ i ∈ Finset.Iic (2 * d), (-1 : ℂ) ^ i * ((R i).count β : ℂ)) * β ^ n
            = ∑ β ∈ T, (m β : ℂ) * β ^ n -
              ∑ i ∈ Finset.Iic (2 * d), (-1 : ℂ) ^ i *
                ∑ β ∈ T, ((R i).count β : ℂ) * β ^ n := by
          simp only [sub_mul, Finset.sum_sub_distrib, Finset.sum_mul, Finset.mul_sum]
          congr 1
          rw [Finset.sum_comm]
          refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun β _ => by ring))
        rw [e, hA, hpow n hn, sub_eq_zero]
        refine Finset.sum_congr rfl (fun i hi => ?_)
        rw [hB n i hi])
    intro β
    by_cases hβ : β ∈ T
    · have h := hg β hβ
      simp only [sub_eq_zero] at h
      exact_mod_cast h
    · have hm : m β = 0 :=
        Finsupp.notMem_support_iff.mp (fun h => hβ (Finset.mem_union_left _ h))
      rw [hm]
      symm
      apply Finset.sum_eq_zero
      intro i hi
      rw [Multiset.count_eq_zero.mpr (fun h => hβ (Finset.mem_union_right _
        (Finset.mem_biUnion.mpr ⟨i, hi, Multiset.mem_toFinset.mpr h⟩)))]
      simp

  have hinv : ∀ β : ℂ, c / (c / β) = β := by
    intro β
    by_cases hβ : β = 0
    · simp [hβ]
    · field_simp
  have hinj : Function.Injective (fun x : ℂ => c / x) := by
    intro x y h
    have h' := congrArg (fun z => c / z) h
    simp only [hinv] at h'
    exact h'
  have hcnt : ∀ i ≤ 2 * d, ∀ β, (R (2 * d - i)).count β = (R i).count (c / β) := by
    intro i hi β
    rw [(hRi i hi).1]
    conv_lhs => rw [← hinv β]
    exact Multiset.count_map_eq_count' _ _ hinj _
  have hsign : ∀ i ≤ 2 * d, (-1 : ℤ) ^ (2 * d - i) = (-1) ^ i := by
    intro i hi
    rw [neg_one_pow_eq_pow_mod_two, neg_one_pow_eq_pow_mod_two (n := i)]
    congr 1
    omega
  rw [hmcount, hmcount]
  apply Finset.sum_nbij' (fun i => 2 * d - i) (fun i => 2 * d - i)
  · intro i hi
    simp only [Finset.mem_Iic, Finset.coe_Iic, Set.mem_Iic] at hi ⊢
    omega
  · intro i hi
    simp only [Finset.mem_Iic, Finset.coe_Iic, Set.mem_Iic] at hi ⊢
    omega
  · intro i hi
    simp only [Finset.mem_Iic, Finset.coe_Iic, Set.mem_Iic] at hi
    omega
  · intro i hi
    simp only [Finset.mem_Iic, Finset.coe_Iic, Set.mem_Iic] at hi
    omega
  · intro i hi
    have hi' : i ≤ 2 * d := by
      simpa only [Finset.mem_Iic, Finset.coe_Iic, Set.mem_Iic] using hi
    rw [hsign i hi', hcnt i hi']

end GRWTSK.FiniteFieldWeil
