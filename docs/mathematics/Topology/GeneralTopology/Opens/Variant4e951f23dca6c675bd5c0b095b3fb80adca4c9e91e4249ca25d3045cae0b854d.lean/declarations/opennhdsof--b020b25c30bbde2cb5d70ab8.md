# OpenNhdsOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8744e769af5a83904c2e6eb7f2e801de299e9b778281046a01cadce850ccd66",
  "kind": "structure",
  "lexical_name": "OpenNhdsOf",
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
  "slug": "opennhdsof--b020b25c30bbde2cb5d70ab8",
  "source": {
    "blob": "f198fa1363e7f01505610a612929bc47299969ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b020b25c30bbde2cb5d70ab8779365a80df2453a06bb1d7c4aee7aa4760267d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8744e769af5a83904c2e6eb7f2e801de299e9b778281046a01cadce850ccd66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OpenNhdsOf (x : α) extends Opens α where
  /-- The point `x` belongs to every `U : TopologicalSpace.OpenNhdsOf x`. -/
  mem' : x ∈ carrier

namespace OpenNhdsOf

variable {x : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant4e951f23dca6c675bd5c0b095b3fb80adca4c9e91e4249ca25d3045cae0b854d.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f198fa1363e7f01505610a612929bc47299969ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
