# half_plane_absolute_amplitude_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e757633d-b219-1587-41de-67414da6df3d",
  "kind": "theorem",
  "lexical_name": "half_plane_absolute_amplitude_rate",
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
  "slug": "half-plane-absolute-amplitude-rate--881fad3cfdfabc1833e56a9b",
  "source": {
    "blob": "85eb9e8177e794ad5719d97fa2e5947fab858580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881fad3cfdfabc1833e56a9b151bd3b97335284424147aca16a513e7eb71e884",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e757633d-b219-1587-41de-67414da6df3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_plane_absolute_amplitude_rate {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      leadingEnvelope delta*rateConstant delta/A := by
  have hK := rateConstant_nonneg hdelta
  calc
    _ ≤ ‖leadingCoefficient z‖*rateConstant delta/A :=
      uniform_source_amplitude_rate_all hA hdelta hz
    _ ≤ _ := by
      gcongr
      exact leadingCoefficient_half_plane_bound hdelta hz

end ContinuousResearch.ComplexBoundaryPaths
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85eb9e8177e794ad5719d97fa2e5947fab858580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
