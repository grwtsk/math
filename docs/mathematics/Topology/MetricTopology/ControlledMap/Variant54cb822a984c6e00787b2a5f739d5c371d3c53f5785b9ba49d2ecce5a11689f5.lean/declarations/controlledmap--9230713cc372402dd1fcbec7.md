# ControlledMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ade9534bcc31fd3677d59ef07a042a9fd96613c1de65916541d6be7d28e398ca",
  "kind": "abbrev",
  "lexical_name": "ControlledMap",
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
  "slug": "controlledmap--9230713cc372402dd1fcbec7",
  "source": {
    "blob": "f0fa727e5a861f2e98ff061b0e76d288bf6c0792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9230713cc372402dd1fcbec758f9518b9a5206e333b01a4190c07b9849f49540",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ade9534bcc31fd3677d59ef07a042a9fd96613c1de65916541d6be7d28e398ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ControlledMap
    (X : Type u) (Y : Type v)
    [PseudoMetricSpace X] [PseudoMetricSpace Y] :=
  Mathematics.Attention.ControlledApproximation X Y

namespace ControlledMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0fa727e5a861f2e98ff061b0e76d288bf6c0792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
