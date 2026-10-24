# Subsemiring.isMulCommutative_topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:044ca495e0fede980bbb39cacc206a15cb8f3c10d639d230efed9a07232904f4",
  "kind": "instance",
  "lexical_name": "Subsemiring.isMulCommutative_topologicalClosure",
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
  "slug": "subsemiring-ismulcommutative-topologicalclosure--7583b0a4772300acc8f83147",
  "source": {
    "blob": "4803bf4c3e52790abb9d70c86b7f849f41363357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7583b0a4772300acc8f831474960dadd21d888f5a9ba6ab5696f61222288e578",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:044ca495e0fede980bbb39cacc206a15cb8f3c10d639d230efed9a07232904f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subsemiring.isMulCommutative_topologicalClosure [T2Space R] (s : Subsemiring R)
    [IsMulCommutative s] : IsMulCommutative s.topologicalClosure :=
  s.toSubmonoid.isMulCommutative_topologicalClosure

open scoped IsMulCommutative in
/-- If a subsemiring of a topological semiring is commutative, then so is its
topological closure.

See note [reducible non-instances]. -/
@[deprecated isMulCommutative_topologicalClosure (since := "2026-07-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4803bf4c3e52790abb9d70c86b7f849f41363357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
