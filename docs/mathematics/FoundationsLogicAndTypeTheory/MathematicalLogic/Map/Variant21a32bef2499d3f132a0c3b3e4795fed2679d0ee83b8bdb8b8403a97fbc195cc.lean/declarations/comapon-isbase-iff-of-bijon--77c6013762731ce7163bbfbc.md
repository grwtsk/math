# comapOn_isBase_iff_of_bijOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "349ef7d3b73d86fdb671f842296a4c3f7fb9135e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e66ff58-984c-fdf5-d595-de2c35209d62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18c4593c-9f92-b41f-542e-5d70f978a707",
  "kind": "lemma",
  "lexical_name": "comapOn_isBase_iff_of_bijOn",
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
  "slug": "comapon-isbase-iff-of-bijon--77c6013762731ce7163bbfbc",
  "source": {
    "blob": "349ef7d3b73d86fdb671f842296a4c3f7fb9135e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c6013762731ce7163bbfbcc560c355af8502faec3f7bc6019d096527473e72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c4593c-9f92-b41f-542e-5d70f978a707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comapOn_isBase_iff_of_bijOn (h : BijOn f E N.E) :
    (N.comapOn E f).IsBase B ↔ N.IsBase (f '' B) ∧ B ⊆ E := by
  rw [← and_iff_left_of_imp (IsBase.subset_ground (M := N.comapOn E f) (B := B)),
    comapOn_ground_eq, and_congr_left_iff]
  suffices h' : B ⊆ E → InjOn f B from fun hB ↦
    by simp [hB, comapOn_isBase_iff_of_surjOn h.surjOn, h']
  exact fun hBE ↦ h.injOn.mono hBE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349ef7d3b73d86fdb671f842296a4c3f7fb9135e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
