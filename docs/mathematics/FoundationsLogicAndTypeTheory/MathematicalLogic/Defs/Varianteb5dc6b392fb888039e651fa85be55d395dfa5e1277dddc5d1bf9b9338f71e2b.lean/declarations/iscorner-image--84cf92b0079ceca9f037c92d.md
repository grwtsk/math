# isCorner_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a07a74c-af17-4039-817d-cdd5ee86588f",
  "kind": "lemma",
  "lexical_name": "isCorner_image",
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
  "slug": "iscorner-image--84cf92b0079ceca9f037c92d",
  "source": {
    "blob": "3a4df8c040e05e68c216985c24117f507e35c18f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84cf92b0079ceca9f037c92de986470b50728583a605470588fecd675b68b67f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a07a74c-af17-4039-817d-cdd5ee86588f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCorner_image (hf : IsAddFreimanIso 2 s t f) (hAs : A ⊆ s ×ˢ s)
    (hx₁ : x₁ ∈ s) (hy₁ : y₁ ∈ s) (hx₂ : x₂ ∈ s) (hy₂ : y₂ ∈ s) :
    IsCorner (Prod.map f f '' A) (f x₁) (f y₁) (f x₂) (f y₂) ↔ IsCorner A x₁ y₁ x₂ y₂ := by
  have hf' := hf.bijOn.injOn.prodMap hf.bijOn.injOn
  rw [isCorner_iff, isCorner_iff]
  congr!
  · exact hf'.mem_image_iff hAs (mk_mem_prod hx₁ hy₁)
  · exact hf'.mem_image_iff hAs (mk_mem_prod hx₁ hy₂)
  · exact hf'.mem_image_iff hAs (mk_mem_prod hx₂ hy₁)
  · exact hf.add_eq_add hx₁ hy₂ hx₂ hy₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4df8c040e05e68c216985c24117f507e35c18f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
