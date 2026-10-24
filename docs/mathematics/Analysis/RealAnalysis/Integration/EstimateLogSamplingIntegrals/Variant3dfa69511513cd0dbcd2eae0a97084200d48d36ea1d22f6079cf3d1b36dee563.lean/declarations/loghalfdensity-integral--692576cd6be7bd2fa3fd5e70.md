# logHalfDensity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b08291b5be2bd6a3622f40b779d745cb4aacb5b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6b23bf7-424b-c43c-252b-a21fbdd6a8bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c8d6717-d9c4-904e-4126-c476154a222e",
  "kind": "theorem",
  "lexical_name": "logHalfDensity_integral",
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
  "slug": "loghalfdensity-integral--692576cd6be7bd2fa3fd5e70",
  "source": {
    "blob": "b08291b5be2bd6a3622f40b779d745cb4aacb5b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692576cd6be7bd2fa3fd5e70180e078d64ccb7987a97076f732cf5af116bed17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c8d6717-d9c4-904e-4126-c476154a222e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logHalfDensity_integral :
    (∫ u in Ioi (1 : ℝ), logHalfDensity u) = 4 := by
  have hsub :=
    integral_comp_exp_Ioi logHalfDensity (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ), logHalfDensity u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  calc
    (∫ r in Ioi (0 : ℝ),
      Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ r in Ioi (0 : ℝ),
          r * Real.exp (-r / 2) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro r hr
      exact exp_mul_logHalfDensity r
    _ = 4 := exponential_half_first_moment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08291b5be2bd6a3622f40b779d745cb4aacb5b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
