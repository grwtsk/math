# minnaert_log_volume_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5a0c50d-6736-cfd4-b4b1-e08f5d44a6e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47cce6ae-c30f-43d0-5cb5-adaf3bd7ad45",
  "kind": "theorem",
  "lexical_name": "minnaert_log_volume_ratio",
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
  "slug": "minnaert-log-volume-ratio--4ab985d9c3a4582bb237a553",
  "source": {
    "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab985d9c3a4582bb237a553a595c571069a9d8734ac124687d5ed6187e19d93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47cce6ae-c30f-43d0-5cb5-adaf3bd7ad45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minnaert_log_volume_ratio (parameters : Parameters) (reference frequency : ℝ)
    (referencePositive : 0 < reference) (frequencyPositive : 0 < frequency) :
    Real.log (minnaertVolumeFromHertz parameters frequency /
      minnaertVolumeFromHertz parameters reference) = -3 * logFrequency reference frequency := by
  have coefficient := (minnaertHertzCoefficient_pos parameters).ne'
  have volumeCoefficient : (4 / 3 : ℝ) * Real.pi ≠ 0 := by positivity
  rw [Real.log_div (minnaertVolumeFromHertz_pos parameters frequency frequencyPositive).ne'
    (minnaertVolumeFromHertz_pos parameters reference referencePositive).ne']
  unfold minnaertVolumeFromHertz
  rw [Real.log_mul volumeCoefficient
      (pow_ne_zero 3 (div_ne_zero coefficient frequencyPositive.ne')),
    Real.log_mul volumeCoefficient (pow_ne_zero 3 (div_ne_zero coefficient referencePositive.ne')),
    Real.log_pow, Real.log_pow, Real.log_div coefficient frequencyPositive.ne',
    Real.log_div coefficient referencePositive.ne', logFrequency,
    Real.log_div frequencyPositive.ne' referencePositive.ne']
  norm_num
  ring

/-- The log-volume identity holds at every existing zero-tension spherical source state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20be53100f54bd8393ee62620d428f458a5e1bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
