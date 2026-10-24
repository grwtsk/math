# halfDensity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:594695c6-b104-6939-85d2-b0408c359678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e6d7e68-40fd-736d-67ce-06f083467418",
  "kind": "theorem",
  "lexical_name": "halfDensity_integral",
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
  "slug": "halfdensity-integral--e0fe2dfe99cd915c45dd0563",
  "source": {
    "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0fe2dfe99cd915c45dd05637d1307aab25a9601442b7ec34b0df6d800c8b549",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e6d7e68-40fd-736d-67ce-06f083467418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfDensity_integral :
    (∫ u in Ioi (1 : ℝ), halfDensity u) = 2 := by
  have hsub :=
    integral_comp_exp_Ioi halfDensity (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r * halfDensity (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ), halfDensity u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  calc
    (∫ r in Ioi (0 : ℝ),
      Real.exp r * halfDensity (Real.exp r)) =
        ∫ r in Ioi (0 : ℝ),
          Real.exp (-r / 2) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro r hr
      exact exp_mul_halfDensity r
    _ = 2 := exponential_half_mass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7b4cd04c51b8e46062599a379f6c6613880cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
