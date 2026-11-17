import GRWTSK.AlgebraicGeometry.FiniteFieldCohomology.FrobeniusPointCountDuality
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.WeilPowerSums

/-!
# Assembly of the Weil eigenvalue package for every finite extension

Source candidate split from `weil_conjecture_main.lean`, lines 52935–53004.
See the adjacent `FiniteFieldWeilConjectures.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem weil_conjectures (F : Type*) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] :
    ∃ A : ℕ → Multiset ℂ, A 0 = {1} ∧
      (∀ i ≤ 2 * d, A (2 * d - i) = (A i).map (Nat.card F ^ d / · : ℂ → ℂ) ∧
        (∀ φ : ℂ ≃+* ℂ, (A i).map φ = A i) ∧
        ∀ α ∈ A i, IsIntegral ℤ α ∧ ‖α‖ = √(Nat.card F ^ i)) ∧
      ∀ (E : Type _) [Field E] [Algebra F E] [FiniteDimensional F E],
        Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) =
        ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((A i).map (· ^ Module.finrank F E)).sum :=
by
  classical

  have hq : 2 ≤ Nat.card F := Finite.one_lt_card

  have hext : ∀ n : ℕ, 1 ≤ n → ∃ (E : Type u_1) (_ : Field E) (_ : Algebra F E),
      FiniteDimensional F E ∧ Module.finrank F E = n := by
    intro n hn
    haveI : Fact (Nat.Prime (ringChar F)) := ⟨CharP.char_is_prime F (ringChar F)⟩
    haveI : NeZero n := ⟨by omega⟩
    refine ⟨ULift.{u_1} (FiniteField.Extension F (ringChar F) n), inferInstance, inferInstance,
      ?_, ?_⟩
    · exact Module.Finite.equiv (ULift.moduleEquiv (R := F)).symm
    · rw [LinearEquiv.finrank_eq (ULift.moduleEquiv (R := F))]
      exact FiniteField.finrank_extension F (ringChar F) n

  obtain ⟨m, hm0, hmE⟩ := point_count_virtual_eigenvalues F X d

  have hint : ∀ n : ℕ, 1 ≤ n → ∃ k : ℤ, ∑ α ∈ m.support, (m α : ℂ) * α ^ n = k := by
    intro n hn
    obtain ⟨E, _, _, _, hE⟩ := hext n hn
    refine ⟨(Nat.card (Over.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℤ), ?_⟩
    rw [Int.cast_natCast, hmE E, hE]
  have hintegral := isIntegral_of_int_power_sums m hm0 hint
  have hgal := galois_invariant_of_int_power_sums m hm0 hint

  have hpure := point_count_purity F X d m hm0 hmE
  have hdual := point_count_functional_equation F X d m hm0 hmE

  have htend : Filter.Tendsto
      (fun n : ℕ => (∑ α ∈ m.support, (m α : ℂ) * α ^ n) / (Nat.card F : ℂ) ^ (d * n))
      Filter.atTop (nhds 1) := by
    rw [Metric.tendsto_atTop]
    intro ε hε
    obtain ⟨n₀, hn₀⟩ := lang_weil_asymptotic F X d ε hε
    refine ⟨max n₀ 1, fun n hn => ?_⟩
    obtain ⟨E, _, _, _, hE⟩ := hext n (le_trans (le_max_right _ _) hn)
    have h1 := hn₀ E (by rw [hE]; exact le_trans (le_max_left _ _) hn)
    rw [← hE, ← hmE E, Complex.dist_eq]
    generalize Nat.card (Over.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) = N
      at h1 ⊢
    generalize Module.finrank F E = k at h1 ⊢
    have key : ((N : ℂ) / (Nat.card F : ℂ) ^ (d * k) - 1)
        = (((N : ℝ) / (Nat.card F : ℝ) ^ (d * k) - 1 : ℝ) : ℂ) := by
      push_cast; ring
    rw [key, Complex.norm_real, Real.norm_eq_abs]
    exact h1

  have hnorm : ∀ α ∈ m.support, ∃ i ≤ 2 * d, ‖α‖ = √((Nat.card F : ℝ) ^ i) := by
    intro α hα
    obtain ⟨i, hi, _, hφ⟩ := hpure α hα
    exact ⟨i, hi, by simpa using hφ (RingEquiv.refl ℂ)⟩
  have hw0 := weight_zero_of_asymptotic (Nat.card F) d m hq hm0 hnorm hdual htend

  obtain ⟨A, hA0, hA, htr⟩ :=
    assemble_weil_multisets (Nat.card F) d m hq hm0 hpure hw0 hdual hintegral hgal
  refine ⟨A, hA0, hA, ?_⟩
  intro E _ _ _
  rw [hmE E, htr]

end GRWTSK.FiniteFieldWeil

#print axioms GRWTSK.FiniteFieldWeil.weil_conjectures
