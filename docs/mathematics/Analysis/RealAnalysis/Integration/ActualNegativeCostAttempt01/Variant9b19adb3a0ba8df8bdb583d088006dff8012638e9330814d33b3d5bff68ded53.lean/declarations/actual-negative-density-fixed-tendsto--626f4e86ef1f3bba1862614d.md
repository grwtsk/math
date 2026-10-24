# actual_negative_density_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd397ffc-fa7a-1edc-ddf0-c1f0c8bae918",
  "kind": "theorem",
  "lexical_name": "actual_negative_density_fixed_tendsto",
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
  "slug": "actual-negative-density-fixed-tendsto--626f4e86ef1f3bba1862614d",
  "source": {
    "blob": "508154e67c0786f7de4aeabc3ab7ac043e6887fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:626f4e86ef1f3bba1862614d910f18a7bc0ca437e7b60ac9447252f2c8a40635",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd397ffc-fa7a-1edc-ddf0-c1f0c8bae918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_density_fixed_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => actualNegativeDensity A u) atTop (𝓝 (actualNegativeLimit u)) := by
  by_cases hu : 0 < u
  · have he : (fun A : ℝ => actualNegativeDensity A u) =ᶠ[atTop]
        (fun A => max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0) := by
      filter_upwards [eventually_ge_atTop (u/2)] with A hA
      exact indicator_of_mem ⟨hu,by linarith⟩ _
    have h := (((actual_bridge_fixed_coordinate_tendsto hI u).mul
      (paired_curvature_fixed_tendsto u)).neg).max (tendsto_const_nhds (x:=(0:ℝ)))
    unfold actualNegativeLimit
    rw [indicator_of_mem hu]
    convert h.congr' he.symm using 1
    simp only [pairedTailCurvature,mul_neg,neg_neg]
  · have he : (fun A : ℝ => actualNegativeDensity A u) = fun _ => (0:ℝ) := by
      funext A
      exact indicator_of_notMem (fun h => hu h.1) _
    rw [he,actualNegativeLimit,indicator_of_notMem hu]
    exact tendsto_const_nhds

/-- Its independent actual intercept is strictly positive under the same sole actual L1 premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508154e67c0786f7de4aeabc3ab7ac043e6887fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
