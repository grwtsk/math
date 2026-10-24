# SimplyConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74de295d8abb061a680c4eded798f8037407ac30888b5b6eb75c403cfee4cd1e",
  "kind": "class",
  "lexical_name": "SimplyConnectedSpace",
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
  "slug": "simplyconnectedspace--8832e8a4605be163cc611108",
  "source": {
    "blob": "cf529573655ca9f189d9119c8546cc5b2cc96119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 48,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8832e8a4605be163cc611108dd0df93cd517ef3821a7a279d13c6a24c42f42fc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74de295d8abb061a680c4eded798f8037407ac30888b5b6eb75c403cfee4cd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SimplyConnectedSpace (X : Type*) [TopologicalSpace X] : Prop where
  equiv_unit : Nonempty (FundamentalGroupoid X ≌ Discrete Unit)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf529573655ca9f189d9119c8546cc5b2cc96119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
