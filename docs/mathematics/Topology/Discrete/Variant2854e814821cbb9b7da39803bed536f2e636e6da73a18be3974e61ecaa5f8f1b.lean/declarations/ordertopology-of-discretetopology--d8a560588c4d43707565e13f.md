# OrderTopology.of_discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dcbe436e4c76ab26ee7c3b646f07fa51c2108a0c5ca6aa3198c8116e1edcd26",
  "kind": "instance",
  "lexical_name": "OrderTopology.of_discreteTopology",
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
  "slug": "ordertopology-of-discretetopology--d8a560588c4d43707565e13f",
  "source": {
    "blob": "cc2ea58632e795f6e9ab23908fb3a7c864441766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 67,
    "path": "GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8a560588c4d43707565e13f3cb43587a4304c203a1ff7e30d67f2590148987a",
  "verification": {
    "reference": "docs/verification/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dcbe436e4c76ab26ee7c3b646f07fa51c2108a0c5ca6aa3198c8116e1edcd26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderTopology.of_discreteTopology [LinearOrder α] [PredOrder α] [SuccOrder α]
    [DiscreteTopology α] : OrderTopology α :=
  discreteTopology_iff_orderTopology_of_pred_succ.mp ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc2ea58632e795f6e9ab23908fb3a7c864441766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
