-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BethAmbient.Variantc78f2556dee1178aa03a5ed83b964566d7f42693a0635db4651593e1f05c23d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c78f2556dee1178aa03a5ed83b964566d7f42693a0635db4651593e1f05c23d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.BethAmbient.Variantc78f2556dee1178aa03a5ed83b964566d7f42693a0635db4651593e1f05c23d9","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"c78f2556dee1178aa03a5ed83b964566d7f42693a0635db4651593e1f05c23d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/BethCatalogue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples
import FormalResearch.MathematicalTooling.Coverage.Cardinal
import FormalResearch.MathematicalTooling.Coverage.UniverseBounds

/-!
# A nested beth catalogue with exact recovery

The ambient dependent sum has cardinal beth_omega. Its nested finite prefixes
have cardinal beth_n, so their downward catalogue has cardinal beth_omega.
Every ambient subset is exactly recovered from its countably many restrictions,
while the complete subset space has strictly larger cardinality.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BethAmbient.Variantc78f2556dee1178aa03a5ed83b964566d7f42693a0635db4651593e1f05c23d9

namespace FormalResearch.MathematicalTooling.Coverage

open Cardinal

/-- Disjoint union of the finite-indexed beth fibers. -/
abbrev BethAmbient := Σ n : ℕ, bethFiber n

/-- Nested blocks retain every occurrence in the first n+1 fibers. -/
def bethPrefix (n : ℕ) : Set BethAmbient := {x | x.1 ≤ n}

/-- Identify a nested beth prefix with its finitely indexed dependent sum. -/
def bethPrefixEquiv (n : ℕ) : bethPrefix n ≃ (Σ i : Fin (n + 1), bethFiber i.val) where
  toFun x := ⟨⟨x.val.1, Nat.lt_succ_of_le x.property⟩, x.val.2⟩
  invFun x := ⟨⟨x.1.val, x.2⟩, Nat.le_of_lt_succ x.1.isLt⟩
  left_inv := by rintro ⟨⟨i, x⟩, h⟩; rfl
  right_inv := by rintro ⟨i, x⟩; rfl

theorem bethPrefix_monotone : Monotone bethPrefix := fun _ _ h _ hx ↦ hx.trans h

theorem bethPrefix_card (n : ℕ) : #(bethPrefix n) = Cardinal.beth (n : Ordinal) := by
  apply le_antisymm
  · rw [Cardinal.mk_congr (bethPrefixEquiv n)]
    have hFib (i : Fin (n + 1)) : #(bethFiber i.val) ≤ Cardinal.beth (n : Ordinal) := by
      rw [bethFiber_card]
      exact Cardinal.beth_mono (by exact_mod_cast Nat.le_of_lt_succ i.isLt)
    exact (sigma_uniform_bound (fun i : Fin (n + 1) ↦ bethFiber i.val)
      (Cardinal.beth (n : Ordinal)) hFib).trans
      (Cardinal.mul_le_of_le (Cardinal.aleph0_le_beth _)
        (Cardinal.mk_le_aleph0.trans (Cardinal.aleph0_le_beth _)) le_rfl
      )
  · rw [← bethFiber_card n]
    exact Cardinal.mk_le_of_injective (f := fun x : bethFiber n ↦
      (⟨⟨n, x⟩, by change n ≤ n; exact le_rfl⟩ : bethPrefix n)) (by
        intro x y h
        simpa only [Subtype.mk.injEq, Sigma.mk.inj_iff, heq_eq_eq, true_and] using h)

/-- Exact nested reconstruction includes empty and infinite target subsets. -/
theorem bethPrefix_reconstruct (A : Set BethAmbient) : A = ⋃ n, A ∩ bethPrefix n := by
  apply reconstruct_of_cover
  intro x _
  exact Set.mem_iUnion.mpr ⟨x.1, by change x.1 ≤ x.1; exact le_rfl⟩

/-- This is literally the union of the powersets of the nested beth_n blocks. -/
def bethNestedCatalogue : Set (Set BethAmbient) := downwardClosure (Set.range bethPrefix)

theorem bethNestedCatalogue_eq : bethNestedCatalogue = ⋃ n, 𝒫 (bethPrefix n) := by
  ext B
  simp only [bethNestedCatalogue, mem_downwardClosure, Set.mem_range, Set.mem_iUnion,
    Set.mem_powerset_iff]
  constructor
  · rintro ⟨C, ⟨n, rfl⟩, h⟩
    exact ⟨n, h⟩
  · rintro ⟨n, h⟩
    exact ⟨bethPrefix n, ⟨n, rfl⟩, h⟩

theorem bethPrefix_restriction_mem (A : Set BethAmbient) (n : ℕ) :
    A ∩ bethPrefix n ∈ bethNestedCatalogue :=
  ⟨bethPrefix n, ⟨n, rfl⟩, Set.inter_subset_right⟩

/-- The bound counts catalogue fragments rather than complete recovery data. -/
theorem bethNestedCatalogue_card :
    #bethNestedCatalogue = Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
  apply le_antisymm
  · apply mk_downwardClosure_le (Set.range bethPrefix)
      (Cardinal.beth Ordinal.omega0) (Cardinal.beth Ordinal.omega0)
      beth_omega_strongLimit le_rfl
    · have hNat : #(ℕ) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
        rw [Cardinal.mk_nat]
        exact beth_omega_uncountable.le
      exact Cardinal.mk_range_le.trans hNat
    · rintro C ⟨n, rfl⟩
      rw [bethPrefix_card]
      exact Cardinal.beth_lt_beth.mpr (Ordinal.natCast_lt_omega0 n)
  · rw [← bethFiber_sigma_card]
    exact Cardinal.mk_le_of_injective (f := fun x : BethAmbient ↦
      (⟨{x}, bethPrefix x.1, ⟨x.1, rfl⟩, by
        intro y hy
        rw [Set.mem_singleton_iff] at hy
        subst y
        change x.1 ≤ x.1
        exact le_rfl⟩ : bethNestedCatalogue)) (by
          intro x y h
          exact Set.singleton_injective (congrArg Subtype.val h))

theorem bethNested_subsets_exceed_catalogue :
    #bethNestedCatalogue < #(Set BethAmbient) := by
  rw [bethNestedCatalogue_card, Cardinal.mk_set, bethFiber_sigma_card]
  exact Cardinal.cantor _

end FormalResearch.MathematicalTooling.Coverage
