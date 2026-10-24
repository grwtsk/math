# instSemilatticeInfClosedSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6501fa0352e672568cd751873ff8de8f15b0419d8ad0ef7033ef93433ccff961",
  "kind": "instance",
  "lexical_name": "instSemilatticeInfClosedSubgroup",
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
  "slug": "instsemilatticeinfclosedsubgroup--a3c6c69954f4be7f9350594c",
  "source": {
    "blob": "9c2ee3fbc4c58dea8dfc8791e98bfe153abfbdf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3c6c69954f4be7f9350594c84c8b16e0dc84d4e90a2b88a10e6ae2035f4d002",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6501fa0352e672568cd751873ff8de8f15b0419d8ad0ef7033ef93433ccff961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemilatticeInfClosedSubgroup : SemilatticeInf (ClosedSubgroup G) :=
  SetLike.coe_injective.semilatticeInf ((↑) : ClosedSubgroup G → Set G) fun _ _ ↦ rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c2ee3fbc4c58dea8dfc8791e98bfe153abfbdf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
