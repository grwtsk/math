# discreteTopology_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2f4c19fb926d9551f84515a8d85c02f4d97da86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c6c4010-f46d-44f5-dc00-56cf171320f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc2dcc76-2738-77e5-3bda-50daf7b0b30c",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff",
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
  "slug": "discretetopology-iff--a770c479762018f97c22cc5f",
  "source": {
    "blob": "d2f4c19fb926d9551f84515a8d85c02f4d97da86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a770c479762018f97c22cc5f1969aad5166da3b6250a4df0ac2e16d2c0ba3d19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2dcc76-2738-77e5-3bda-50daf7b0b30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff :
    DiscreteTopology (G ⧸ N) ↔ IsOpen (N : Set G) := by
  rw [← QuotientGroup.preimage_mk_one, MulAction.IsPretransitive.discreteTopology_iff G (mk 1),
      isOpen_coinduced]
  rfl

/-- The quotient of a topological group `G` by a closed subgroup `N` is T1.

When `G` is normal, this implies (because `G ⧸ N` is a topological group) that the quotient is T3
(see `QuotientGroup.instT3Space`).

Back to the general case, we will show later that the quotient is in fact T2
since `N` acts on `G` properly. -/
@[to_additive
/-- The quotient of a topological additive group `G` by a closed subgroup `N` is T1.

When `G` is normal, this implies (because `G ⧸ N` is a topological additive group) that the
quotient is T3 (see `QuotientAddGroup.instT3Space`).

Back to the general case, we will show later that the quotient is in fact T2
since `N` acts on `G` properly. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variantb5180e0926ca4efc8027602e5e7fb68f7a8f3a034f5b7e748193efa9944597b0.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f4c19fb926d9551f84515a8d85c02f4d97da86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
