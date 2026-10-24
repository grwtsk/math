# archimedean_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92436a9c12f0d8cd894938b3e4caa575e272ee87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f86b3ea-b423-c272-fea9-4628edb64c32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d1525cd-5adc-951d-ac4b-0e6b68cf1501",
  "kind": "theorem",
  "lexical_name": "archimedean_integral_tendsto",
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
  "slug": "archimedean-integral-tendsto--b3734d2c1148f7fcfb246129",
  "source": {
    "blob": "92436a9c12f0d8cd894938b3e4caa575e272ee87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3734d2c1148f7fcfb246129b2f1b7f486195dd6ac1a9a8ad4b9113dfaf5ab2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1525cd-5adc-951d-ac4b-0e6b68cf1501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem archimedean_integral_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ ξ, archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A (ε i) (hε i)) ξ)) l
      (𝓝 (∫ ξ, archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ))) := by
  apply tendsto_integral_filter_of_dominated_convergence
    (fun ξ ↦ ‖archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)‖)
    (Eventually.of_forall fun i ↦
      smoothed_archimedean_measurable A (ε i) hA (hε i))
    (Eventually.of_forall fun i ↦ Eventually.of_forall
      (smoothed_archimedean_norm_le A (ε i) hA (hε i)))
    (actual_archimedean_integrable A hA).norm
  exact Eventually.of_forall fun ξ ↦
    (Complex.continuous_normSq.continuousAt.tendsto.comp
      (smoothed_transform_tendsto A hA ε hε hlim
        (Complex.I * (ξ : ℂ)))).const_mul (archimedeanMultiplier ξ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92436a9c12f0d8cd894938b3e4caa575e272ee87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
