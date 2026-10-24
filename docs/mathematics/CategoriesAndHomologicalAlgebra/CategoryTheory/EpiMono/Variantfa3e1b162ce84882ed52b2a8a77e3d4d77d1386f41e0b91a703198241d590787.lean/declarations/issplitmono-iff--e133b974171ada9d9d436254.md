# isSplitMono_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a50d1e9-1675-b9ce-992f-dfea65cb284f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa641c14-86e1-5ac2-4a74-46637c8f893f",
  "kind": "theorem",
  "lexical_name": "isSplitMono_iff",
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
  "slug": "issplitmono-iff--e133b974171ada9d9d436254",
  "source": {
    "blob": "55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e133b974171ada9d9d4362542bc5c398199901fba9082250277793b14cfe1e97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa641c14-86e1-5ac2-4a74-46637c8f893f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSplitMono_iff [Full F] [Faithful F] : IsSplitMono (F.map f) ↔ IsSplitMono f := by
  constructor
  · intro h
    exact IsSplitMono.mk' ((splitMonoEquiv F f).invFun h.exists_splitMono.some)
  · intro h
    exact IsSplitMono.mk' ((splitMonoEquiv F f).toFun h.exists_splitMono.some)
#align category_theory.functor.is_split_mono_iff CategoryTheory.Functor.isSplitMono_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
