# derivMetricTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e68b412c9bf8d14c043b23e6ad90ea69bc42d88f6a874ad00494fb6a22bf887",
  "kind": "def",
  "lexical_name": "derivMetricTensor",
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
  "slug": "derivmetrictensor--213de4b22f1459abc9c11285",
  "source": {
    "blob": "b96bb749bd6ff2a216c1bae452b0d055c331ee8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:213de4b22f1459abc9c11285b1d79905ff704593c821399a81e7e190a02fd1f5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e68b412c9bf8d14c043b23e6ad90ea69bc42d88f6a874ad00494fb6a22bf887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public noncomputable def derivMetricTensor [FiniteDimensional ℝ F] (x : M) :
    V x →L[ℝ] V x →L[ℝ] (TangentSpace I x →L[ℝ] ℝ) :=
  TensorialAt.mkHom₂ (derivMetricTensorAux I cov · · x) _
    (tensorial_derivMetricTensorAux₁ I cov) (tensorial_derivMetricTensorAux₂ I cov)

variable {X : Π x : M, TangentSpace I x}

variable {I} [ContMDiffVectorBundle 1 F V I] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b96bb749bd6ff2a216c1bae452b0d055c331ee8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
