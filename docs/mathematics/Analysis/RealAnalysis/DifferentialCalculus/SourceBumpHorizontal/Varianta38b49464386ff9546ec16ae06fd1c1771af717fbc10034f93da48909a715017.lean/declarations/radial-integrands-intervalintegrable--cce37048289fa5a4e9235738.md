# radial_integrands_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c022f07e4242f53b702156d94ad6d69ff2a51010",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d0de954-aa27-d28f-fea3-2f0e2b3e4878",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55c2540e-455c-57c0-f9cf-84ac37f51364",
  "kind": "theorem",
  "lexical_name": "radial_integrands_intervalIntegrable",
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
  "slug": "radial-integrands-intervalintegrable--cce37048289fa5a4e9235738",
  "source": {
    "blob": "c022f07e4242f53b702156d94ad6d69ff2a51010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce37048289fa5a4e9235738990680d062d3cce4d491686df129f8d3d1e16eec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c2540e-455c-57c0-f9cf-84ac37f51364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_integrands_intervalIntegrable (z : ℂ) :
    IntervalIntegrable (fun r : ℝ => r ^ 10 * ‖radialProfile z r‖ ^ 2) volume 0 1 ∧
    IntervalIntegrable (fun r : ℝ =>
      r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2) volume 0 1 := by
  constructor
  · apply Continuous.intervalIntegrable
    exact (continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2)
  · apply Continuous.intervalIntegrable
    have hm := bumpMoment_continuous 1
    fun_prop

/-- The radial energy is nonnegative, independent of whether the endpoint is a zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c022f07e4242f53b702156d94ad6d69ff2a51010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
