# surjective_of_dual_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eea038e8-fe2e-fa15-fe11-1c57b9033457",
  "kind": "lemma",
  "lexical_name": "surjective_of_dual_injective",
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
  "slug": "surjective-of-dual-injective--d0b3ab9a4df467f2bbb3a22f",
  "source": {
    "blob": "82cd0054df8d1ca85be58fab8aabe5edc300b5ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0b3ab9a4df467f2bbb3a22ff154ee4b6d8b8a166e4f7f073926cc6453bb0314",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eea038e8-fe2e-fa15-fe11-1c57b9033457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_of_dual_injective (f : A →ₗ[R] A') (hf : Function.Injective (dual f)) :
    Function.Surjective f := by
  rw [← LinearMap.range_eq_top, ← Submodule.unique_quotient_iff_eq_top]
  refine ⟨Unique.mk inferInstance fun a ↦ eq_zero_of_character_apply fun c ↦ ?_⟩
  obtain ⟨b, rfl⟩ := QuotientAddGroup.mk'_surjective _ a
  suffices eq : dual (Submodule.mkQ _) c = 0 from congr($eq b)
  refine hf ?_
  rw [← LinearMap.comp_apply, ← dual_comp, LinearMap.range_mkQ_comp, dual_zero,
    LinearMap.zero_apply, dual_apply, AddMonoidHom.zero_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cd0054df8d1ca85be58fab8aabe5edc300b5ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
