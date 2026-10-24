# op_toSubsemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20d442a1-a039-8f03-fc8e-7b765a024490",
  "kind": "lemma",
  "lexical_name": "op_toSubsemigroup",
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
  "slug": "op-tosubsemigroup--b95eaf00be12b72602974d85",
  "source": {
    "blob": "68057bea87aa141213778825766983724c54f407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variant526fd4086ff927dcfc6d7f65d0406724dbbd68c81ab3f2acdf16c5bd13a1e649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b95eaf00be12b72602974d85fa032429c58737ce49890873e5fd5d78f1e95ed2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MulOpposite/Variant526fd4086ff927dcfc6d7f65d0406724dbbd68c81ab3f2acdf16c5bd13a1e649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d442a1-a039-8f03-fc8e-7b765a024490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma op_toSubsemigroup (H : Subgroup G) :
    H.op.toSubsemigroup = H.toSubsemigroup.op := by
  dsimp

/-- Pull an opposite subgroup back to a subgroup along `MulOpposite.op` -/
@[to_additive (attr := simps)
/-- Pull an opposite additive subgroup back to an additive subgroup along `AddOpposite.op` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MulOpposite/Variant526fd4086ff927dcfc6d7f65d0406724dbbd68c81ab3f2acdf16c5bd13a1e649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MulOpposite/Variant526fd4086ff927dcfc6d7f65d0406724dbbd68c81ab3f2acdf16c5bd13a1e649.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68057bea87aa141213778825766983724c54f407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
