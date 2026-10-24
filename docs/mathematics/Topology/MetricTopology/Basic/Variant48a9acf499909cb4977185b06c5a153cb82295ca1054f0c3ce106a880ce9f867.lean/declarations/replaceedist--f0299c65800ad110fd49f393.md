# replaceEDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58955ae66644b1a433daf75295bc3b4b96896e0f1481cd74cc6208ed1395fd70",
  "kind": "abbrev",
  "lexical_name": "replaceEDist",
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
  "slug": "replaceedist--f0299c65800ad110fd49f393",
  "source": {
    "blob": "4aa9c5aa227b221afc78e2b75d464025a45459e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0299c65800ad110fd49f3932ff9e51fb67bb5d69e12eb32ea2f439641c61b92",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58955ae66644b1a433daf75295bc3b4b96896e0f1481cd74cc6208ed1395fd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev replaceEDist : PseudoEMetricSpace X where
  edist := d
  edist_self := by simp [hd]
  edist_comm := by simp [hd, edist_comm]
  edist_triangle := by simp [hd, edist_triangle]
  uniformity_edist := by simp [hd, uniformity_edist]
  __ := m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa9c5aa227b221afc78e2b75d464025a45459e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
