# exterior_one_tail_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deea811b-c009-2a59-9ac9-6c0ca949c776",
  "kind": "theorem",
  "lexical_name": "exterior_one_tail_norm",
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
  "slug": "exterior-one-tail-norm--0c7410643b9c43dc706adff5",
  "source": {
    "blob": "5eef67adede891c7960520ebfeaf53c801e89eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 262,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c7410643b9c43dc706adff56d80583cc7d7f4c71bf1e33a9e667a993faa6be5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deea811b-c009-2a59-9ac9-6c0ca949c776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exterior_one_tail_norm (A c d T : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (hT : 1 ≤ T) :
    ‖∫ t in Ioi T, exteriorDensity A c t‖ ≤ exteriorTailNumerator A c d/(5*T^5) ∧
    ‖∫ t in Ioi T, exteriorDensity A c (-t)‖ ≤ exteriorTailNumerator A c d/(5*T^5) := by
  have hi : Integrable (exteriorDensity A c) :=
    actualExteriorPrimeDensity_integrable A c hA (by linarith)
  have hn : Integrable (fun t => exteriorDensity A c (-t)) := hi.comp_neg
  have hm := sixth_integrable T (exteriorTailNumerator A c d) hT
  constructor
  · calc
      _ ≤ ∫ t in Ioi T, ‖exteriorDensity A c t‖ := norm_integral_le_integral_norm _
      _ ≤ ∫ t in Ioi T, exteriorTailNumerator A c d/t^6 := by
        apply integral_mono_ae hi.integrableOn.norm hm
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        have ht0 : 0 ≤ t := by linarith [ht]
        have ht1 : 1 ≤ |t| := by rw [abs_of_nonneg ht0]; linarith [ht]
        simpa only [abs_of_nonneg ht0] using exterior_norm_le A c d t hA hd hdc ht1
      _ = _ := sixth_integral T _ hT
  · calc
      _ ≤ ∫ t in Ioi T, ‖exteriorDensity A c (-t)‖ := norm_integral_le_integral_norm _
      _ ≤ ∫ t in Ioi T, exteriorTailNumerator A c d/t^6 := by
        apply integral_mono_ae hn.integrableOn.norm hm
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        have ht0 : 0 ≤ t := by linarith [ht]
        have ht1 : 1 ≤ |-t| := by rw [abs_neg, abs_of_nonneg ht0]; linarith [ht]
        simpa only [abs_neg, abs_of_nonneg ht0] using exterior_norm_le A c d (-t) hA hd hdc ht1
      _ = _ := sixth_integral T _ hT

/-- Above-support actual Euler atoms have a controlled finite-head error, not a pointwise zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eef67adede891c7960520ebfeaf53c801e89eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
