# spanIntNorm_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "899507ca1ea1d129e8b781410b077f8e95d9caa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d08e09d-be22-bab4-59a4-1ee82a752918",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efd8646c-dc6d-6918-8809-72a82625f68c",
  "kind": "theorem",
  "lexical_name": "spanIntNorm_localization",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "spanintnorm-localization--04ddd66842acc2c828634981",
  "source": {
    "blob": "899507ca1ea1d129e8b781410b077f8e95d9caa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 97,
    "path": "GRWTSK/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04ddd66842acc2c8286349812218eb23d4fb4cd1d4889a03296d38f56ffa40e1",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efd8646c-dc6d-6918-8809-72a82625f68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanIntNorm_localization (I : Ideal S) (M : Submonoid R) (hM : M ≤ R⁰)
    {Rₘ : Type*} (Sₘ : Type*) [CommRing Rₘ] [Algebra R Rₘ] [CommRing Sₘ] [Algebra S Sₘ]
    [Algebra Rₘ Sₘ] [Algebra R Sₘ] [IsScalarTower R Rₘ Sₘ] [IsScalarTower R S Sₘ]
    [IsLocalization M Rₘ] [IsLocalization (Algebra.algebraMapSubmonoid S M) Sₘ]
    [IsIntegrallyClosed Rₘ] [IsDomain Rₘ] [IsDomain Sₘ] [NoZeroSMulDivisors Rₘ Sₘ]
    [Module.Finite Rₘ Sₘ] [IsIntegrallyClosed Sₘ]
    [Algebra.IsSeparable (FractionRing Rₘ) (FractionRing Sₘ)] :
    spanNorm Rₘ (I.map (algebraMap S Sₘ)) = (spanNorm R I).map (algebraMap R Rₘ) := by
  let K := FractionRing R
  let f : Rₘ →+* K := IsLocalization.map _ (T := R⁰) (RingHom.id R) hM
  let L := FractionRing S
  let g : Sₘ →+* L := IsLocalization.map _ (M := Algebra.algebraMapSubmonoid S M) (T := S⁰)
      (RingHom.id S) (Submonoid.map_le_of_le_comap _ <| hM.trans
      (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _
        (FaithfulSMul.algebraMap_injective _ _)))
  algebraize [f, g, (algebraMap K L).comp f]
  have : IsScalarTower R Rₘ K := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, RingHomCompTriple.comp_eq])
  let _ := IsFractionRing.isFractionRing_of_isDomain_of_isLocalization M Rₘ K
  have : IsScalarTower S Sₘ L := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, RingHomCompTriple.comp_eq])
  have : IsScalarTower Rₘ Sₘ L := by
    apply IsScalarTower.of_algebraMap_eq'
    apply IsLocalization.ringHom_ext M
    rw [RingHom.algebraMap_toAlgebra, RingHom.algebraMap_toAlgebra (R := Sₘ), RingHom.comp_assoc,
      RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq R S Sₘ,
      IsLocalization.map_comp, RingHom.comp_id, ← RingHom.comp_assoc, IsLocalization.map_comp,
      RingHom.comp_id, ← IsScalarTower.algebraMap_eq, ← IsScalarTower.algebraMap_eq]
  let _ := IsFractionRing.isFractionRing_of_isDomain_of_isLocalization
    (Algebra.algebraMapSubmonoid S M) Sₘ L
  have : IsIntegralClosure Sₘ Rₘ L :=
    IsIntegralClosure.of_isIntegrallyClosed _ _ _
  rw [map_spanIntNorm]
  refine span_eq_span (Set.image_subset_iff.mpr ?_) (Set.image_subset_iff.mpr ?_)
  · intro a' ha'
    simp only [Set.mem_preimage, submodule_span_eq, ← map_spanIntNorm, SetLike.mem_coe,
      IsLocalization.mem_map_algebraMap_iff (Algebra.algebraMapSubmonoid S M) Sₘ,
      IsLocalization.mem_map_algebraMap_iff M Rₘ, Prod.exists] at ha' ⊢
    obtain ⟨⟨a, ha⟩, ⟨_, ⟨s, hs, rfl⟩⟩, has⟩ := ha'
    refine ⟨⟨Algebra.intNorm R S a, intNorm_mem_spanNorm _ ha⟩,
      ⟨s ^ Module.finrank K L, pow_mem hs _⟩, ?_⟩
    simp only [Submodule.coe_mk, Subtype.coe_mk, map_pow] at has ⊢
    apply_fun algebraMap _ L at has
    apply_fun Algebra.norm K at has
    simp only [map_mul, IsScalarTower.algebraMap_apply R Rₘ Sₘ] at has
    rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply,
      ← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply R K L,
      Algebra.norm_algebraMap] at has
    apply IsFractionRing.injective Rₘ K
    simp only [map_mul, map_pow]
    have : FiniteDimensional K L := Module.Finite_of_isLocalization R S _ _ R⁰
    rwa [Algebra.algebraMap_intNorm (L := L), ← IsScalarTower.algebraMap_apply,
      ← IsScalarTower.algebraMap_apply, Algebra.algebraMap_intNorm (L := L)]
  · intro a ha
    rw [Set.mem_preimage, Function.comp_apply, Algebra.intNorm_eq_of_isLocalization
      (A := R) (B := S) M (Aₘ := Rₘ) (Bₘ := Sₘ)]
    exact subset_span (Set.mem_image_of_mem _ (mem_map_of_mem _ ha))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `899507ca1ea1d129e8b781410b077f8e95d9caa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
