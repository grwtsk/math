# liftCover_restrict'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f05cf98-a677-546e-ed43-867981d04ec9",
  "kind": "theorem",
  "lexical_name": "liftCover_restrict'",
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
  "slug": "liftcover-restrict--6ce6545f7314f8f66e404b62",
  "source": {
    "blob": "a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce6545f7314f8f66e404b621a15ad53ce01b872b754b0ba219df6a705ab0b5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f05cf98-a677-546e-ed43-867981d04ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftCover_restrict' {s : Set α} {hs : s ∈ A} :
    (liftCover' A F hF hA).restrict s = F s hs := ext <| liftCover_coe' (hF := hF) (hA := hA)

end Gluing

/-- `Set.inclusion` as a bundled continuous map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
