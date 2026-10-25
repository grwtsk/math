# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularReconstructionFixtures.Variantae4c43973848d1b520c55b29e176b9dac3832df97c3e314c8a36169cdad4c6db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41feca88b76f2db2b140e3ff5ec374b25cf33659` · SHA-256 `e9f7a6b3320c2c5cbff6fb6f98cca38a9babb1677ee3f1b7d1b3cb49cf967581`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BethTarget.Variantae7010fd6a604d16117a835702ca065e52a579525ecd8e8a35b3d130187202c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae7010fd6a604d16117a835702ca065e52a579525ecd8e8a35b3d130187202c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.BethTarget.Variantae7010fd6a604d16117a835702ca065e52a579525ecd8e8a35b3d130187202c4","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"ae7010fd6a604d16117a835702ca065e52a579525ecd8e8a35b3d130187202c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/SingularReconstructionFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.SingularReconstruction
import FormalResearch.MathematicalTooling.Coverage.BethCatalogue

/-!
# Constructed singular reconstruction consumer

The target is the actual dependent sum of the beth_n carriers. One consumer
uses all smaller subsets with singleton local covers, without a catalogue-size
bound. The stronger consumer uses the actual countable nested prefix family,
with small source blocks and constructed covering witnesses. These concrete
instances do not produce the revised-GCH families for arbitrary lam.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BethTarget.Variantae7010fd6a604d16117a835702ca065e52a579525ecd8e8a35b3d130187202c4

namespace FormalResearch.MathematicalTooling.Coverage

open Cardinal Set

/-- The dependent-sum carrier from the singular support counterexample. -/
abbrev BethTarget := Σ n : ℕ, bethFiber n

def bethSmallFamily : Set (Set BethTarget) :=
  {B | #B < Cardinal.beth Ordinal.omega0}

theorem beth_omega_singular : (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})).IsSingular :=
  Cardinal.IsSingular.of_not_isRegular (Cardinal.aleph0_le_beth _) beth_omega_not_regular

/-- These small-cover witnesses are actual singleton families, not assumed fields. -/
theorem bethSmallFamily_covers_small (B : Set BethTarget)
    (hB : #B < Cardinal.beth Ordinal.omega0) :
    ∃ Q : Set (Set BethTarget), Q ⊆ bethSmallFamily ∧ #Q < ℵ₀ ∧ B ⊆ ⋃₀ Q := by
  refine ⟨{B}, ?_, ?_, ?_⟩
  · intro C hC
    have hCB : C = B := mem_singleton_iff.mp hC
    subst C
    exact hB
  · rw [Cardinal.mk_singleton]
    exact Cardinal.one_lt_aleph0
  · exact subset_sUnion_of_mem (mem_singleton B)

/-- The size-beth_omega target is reconstructed by fewer than the explicitly
enlarged threshold, which remains strictly below beth_omega. -/
theorem beth_target_exact_reconstruction :
    singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ <
        Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∃ (I : Type) (C : I → Set BethTarget),
        #I < singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ ∧
        (∀ i, C i ∈ downwardClosure bethSmallFamily) ∧ (univ : Set BethTarget) = ⋃ i, C i := by
  apply singular_exact_reconstruction bethSmallFamily (Cardinal.beth Ordinal.omega0) ℵ₀
    beth_omega_strongLimit beth_omega_uncountable beth_omega_singular beth_omega_uncountable
    bethSmallFamily_covers_small
  rw [Cardinal.mk_univ, bethFiber_sigma_card]

/-- The constructed nested family is already countable, hence bounded by the
ambient singular cardinal; every one of its blocks is strictly smaller. -/
theorem bethPrefix_family_properties :
    #(Set.range bethPrefix) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∀ C ∈ Set.range bethPrefix, #C < Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
  constructor
  · exact Cardinal.mk_range_le.trans
      (by rw [Cardinal.mk_nat]; exact beth_omega_uncountable.le)
  · rintro C ⟨n, rfl⟩
    rw [bethPrefix_card]
    exact Cardinal.beth_lt_beth.mpr (Ordinal.natCast_lt_omega0 n)

/-- The full countable family supplies a covering witness even for a target
of size beth_omega. The strict threshold is succ aleph_0. -/
theorem bethPrefix_family_covers (A : Set BethAmbient) :
    ∃ Q : Set (Set BethAmbient), Q ⊆ Set.range bethPrefix ∧
      #Q < Order.succ (ℵ₀ : Cardinal.{0}) ∧ A ⊆ ⋃₀ Q := by
  refine ⟨Set.range bethPrefix, Set.Subset.rfl, ?_, ?_⟩
  · exact Cardinal.mk_range_le.trans_lt
      (by rw [Cardinal.mk_nat]; exact Order.lt_succ ℵ₀)
  · intro x _
    exact mem_sUnion.mpr ⟨bethPrefix x.1, Set.mem_range_self x.1,
      by change x.1 ≤ x.1; exact le_rfl⟩

/-- A singular reconstruction with a supplied small catalogue, constructed
local covers, actual source-block restrictions, and proven small fragments. -/
theorem beth_prefix_singular_reconstruction :
    singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0}))
        (Order.succ ℵ₀) < Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      #(Set.range bethPrefix) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∃ (I : Type) (C : I → Set BethAmbient),
        #I < singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0}))
          (Order.succ ℵ₀) ∧
        (∀ i, C i ∈ bethNestedCatalogue) ∧
        (∀ i, #(C i) < Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ∧
        (univ : Set BethAmbient) = ⋃ i, C i := by
  have hκ : Order.succ (ℵ₀ : Cardinal.{0}) < Cardinal.beth Ordinal.omega0 :=
    beth_omega_strongLimit.isSuccLimit.succ_lt beth_omega_uncountable
  have htarget : #(univ : Set BethAmbient) ≤ Cardinal.beth Ordinal.omega0 := by
    rw [Cardinal.mk_univ, bethFiber_sigma_card]
  obtain ⟨hthreshold, I, C, hI, hC, hrecover⟩ :=
    singular_exact_reconstruction (Set.range bethPrefix) (Cardinal.beth Ordinal.omega0)
      (Order.succ ℵ₀) beth_omega_strongLimit beth_omega_uncountable beth_omega_singular hκ
      (fun B _ ↦ bethPrefix_family_covers B) univ htarget
  refine ⟨hthreshold, bethPrefix_family_properties.1, I, C, hI, hC, ?_, hrecover⟩
  intro i
  exact downward_member_small (Set.range bethPrefix) (Cardinal.beth Ordinal.omega0)
    bethPrefix_family_properties.2 (C i) (hC i)

end FormalResearch.MathematicalTooling.Coverage
```
