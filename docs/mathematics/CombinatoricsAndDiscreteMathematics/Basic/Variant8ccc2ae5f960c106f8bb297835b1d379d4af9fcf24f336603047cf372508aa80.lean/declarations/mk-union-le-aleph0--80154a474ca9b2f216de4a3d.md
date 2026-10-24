# mk_union_le_aleph0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6fa23e49439950c75f678ade0d18a4e2ade6e8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3052c940-235e-28de-8b59-b9b8f0f9c468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd3b0f9e-f70d-08e1-da94-0136387c044b",
  "kind": "theorem",
  "lexical_name": "mk_union_le_aleph0",
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
  "slug": "mk-union-le-aleph0--80154a474ca9b2f216de4a3d",
  "source": {
    "blob": "a6fa23e49439950c75f678ade0d18a4e2ade6e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 896,
    "line": 892,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80154a474ca9b2f216de4a3d79ffa92cece331cd6dcbf5efafe336e39d5026da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd3b0f9e-f70d-08e1-da94-0136387c044b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–896.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_union_le_aleph0 {α} {P Q : Set α} :
    #(P ∪ Q : Set α) ≤ ℵ₀ ↔ #P ≤ ℵ₀ ∧ #Q ≤ ℵ₀ := by
  simp only [le_aleph0_iff_subtype_countable, ofPred_mem_eq, Set.union_def,
    ← countable_union]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6fa23e49439950c75f678ade0d18a4e2ade6e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
