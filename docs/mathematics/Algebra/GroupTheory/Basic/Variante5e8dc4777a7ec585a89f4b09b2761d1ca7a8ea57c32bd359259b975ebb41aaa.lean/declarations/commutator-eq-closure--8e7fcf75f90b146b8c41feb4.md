# commutator_eq_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5062e28-ffb3-5c5a-93d0-8366fe79a88a",
  "kind": "lemma",
  "lexical_name": "commutator_eq_closure",
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
  "slug": "commutator-eq-closure--8e7fcf75f90b146b8c41feb4",
  "source": {
    "blob": "baa949e1fd5a74609ff23fb18b890208fd90625e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 469,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7fcf75f90b146b8c41feb41e4ae5afd337eeb424b48a21d4763f59a7a4d6f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5062e28-ffb3-5c5a-93d0-8366fe79a88a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma commutator_eq_closure : commutator G = Subgroup.closure (commutatorSet G) := by
  simp [commutator, Subgroup.commutator_def, commutatorSet]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa949e1fd5a74609ff23fb18b890208fd90625e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
