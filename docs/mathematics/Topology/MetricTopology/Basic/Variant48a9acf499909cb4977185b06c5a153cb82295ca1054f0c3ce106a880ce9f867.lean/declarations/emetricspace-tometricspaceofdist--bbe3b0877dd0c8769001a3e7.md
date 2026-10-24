# EMetricSpace.toMetricSpaceOfDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63bdcea77bbaf1851db4a0e87656b7e66fa7508ef9dd55b5b66ca6b0b1113044",
  "kind": "abbrev",
  "lexical_name": "EMetricSpace.toMetricSpaceOfDist",
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
  "slug": "emetricspace-tometricspaceofdist--bbe3b0877dd0c8769001a3e7",
  "source": {
    "blob": "4aa9c5aa227b221afc78e2b75d464025a45459e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe3b0877dd0c8769001a3e7d90b62d1de41bde25b443316e6114a31e7c69049",
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

Occurrence: `declaration:63bdcea77bbaf1851db4a0e87656b7e66fa7508ef9dd55b5b66ca6b0b1113044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev EMetricSpace.toMetricSpaceOfDist {α : Type u} [EMetricSpace α] (dist : α → α → ℝ)
    (dist_nonneg : ∀ x y, 0 ≤ dist x y) (h : ∀ x y, edist x y = .ofReal (dist x y)) :
    MetricSpace α :=
  letI := PseudoEMetricSpace.toPseudoMetricSpaceOfDist dist dist_nonneg h
  MetricSpace.ofT0PseudoMetricSpace _

/-- One gets a metric space from an emetric space if the edistance
is everywhere finite, by pushing the edistance to reals. We set it up so that the edist and the
uniformity are defeq in the metric space and the emetric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa9c5aa227b221afc78e2b75d464025a45459e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
