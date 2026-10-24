# isSelfInv_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32fa108b-d148-fa65-7fbe-09aa4f1a21af",
  "kind": "lemma",
  "lexical_name": "isSelfInv_singleton_iff",
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
  "slug": "isselfinv-singleton-iff--d11673257c3d0fa2da7d456a",
  "source": {
    "blob": "1bbefa2b00ed0253d154bfdee21f906c5254fefc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 96,
    "path": "GRWTSK/Algebra/GroupTheory/SelfInv/Variant721e50e28afd4b19a6d6772f69991720586f4ce02cb2fc181c6e443e97f68de5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d11673257c3d0fa2da7d456a9cb11af5b6d976d28e3495ec64524a801ef8acb0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfInv/Variant721e50e28afd4b19a6d6772f69991720586f4ce02cb2fc181c6e443e97f68de5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32fa108b-d148-fa65-7fbe-09aa4f1a21af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSelfInv_singleton_iff {a : α} : IsSelfInv ({a} : Set α) ↔ IsSelfInv a := by
  rw [isSelfInv_iff, inv_singleton, isSelfInv_iff, singleton_eq_singleton_iff]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfInv/Variant721e50e28afd4b19a6d6772f69991720586f4ce02cb2fc181c6e443e97f68de5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfInv/Variant721e50e28afd4b19a6d6772f69991720586f4ce02cb2fc181c6e443e97f68de5.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bbefa2b00ed0253d154bfdee21f906c5254fefc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
