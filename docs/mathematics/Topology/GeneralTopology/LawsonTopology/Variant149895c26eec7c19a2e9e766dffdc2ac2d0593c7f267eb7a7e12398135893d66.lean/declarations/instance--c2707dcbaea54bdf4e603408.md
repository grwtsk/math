# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7565e1bf8edf9a1e41d4e0d7fa28087611ad7a7cd89a8ec76b3a264d0a6844b1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c2707dcbaea54bdf4e603408",
  "source": {
    "blob": "cb872cafaefeac6a580716df9922a7d5d895a3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2707dcbaea54bdf4e603408601464511c2e3742cba715ff1ccb0c097a9d11cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7565e1bf8edf9a1e41d4e0d7fa28087611ad7a7cd89a8ec76b3a264d0a6844b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 90) toT1Space : T1Space α where
  t1 a := by
    simp +instances only [IsLawson.topology_eq_lawson]
    rw [← (Set.OrdConnected.upperClosure_inter_lowerClosure ordConnected_singleton),
      ← WithLawson.isClosed_preimage_ofLawson]
    apply IsClosed.inter
      (lawsonClosed_of_lowerClosed _ (IsLower.isClosed_upperClosure (finite_singleton a)))
    rw [lowerClosure_singleton, LowerSet.coe_Iic, ← WithLawson.isClosed_preimage_ofLawson]
    exact lawsonClosed_of_scottClosed _ isClosed_Iic

end IsLawson

end Topology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb872cafaefeac6a580716df9922a7d5d895a3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
