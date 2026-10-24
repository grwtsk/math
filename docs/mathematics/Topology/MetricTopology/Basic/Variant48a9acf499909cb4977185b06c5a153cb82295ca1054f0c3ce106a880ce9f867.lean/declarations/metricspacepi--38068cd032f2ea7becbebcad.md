# metricSpacePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccea2dbe30e56567af465193f7ee4b02680bb1660b4029cccc7d6714ab5890b9",
  "kind": "instance",
  "lexical_name": "metricSpacePi",
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
  "slug": "metricspacepi--38068cd032f2ea7becbebcad",
  "source": {
    "blob": "4aa9c5aa227b221afc78e2b75d464025a45459e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38068cd032f2ea7becbebcad348bbf5bc7a77f7826d2850a83b43de71b6d2364",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccea2dbe30e56567af465193f7ee4b02680bb1660b4029cccc7d6714ab5890b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance metricSpacePi : MetricSpace (∀ b, X b) := .ofT0PseudoMetricSpace _

end Pi

namespace Metric

section SecondCountable

-- TODO: use `Countable` instead of `Encodable`
/-- A metric space is second countable if one can reconstruct up to any `ε>0` any element of the
space from countably many data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa9c5aa227b221afc78e2b75d464025a45459e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
