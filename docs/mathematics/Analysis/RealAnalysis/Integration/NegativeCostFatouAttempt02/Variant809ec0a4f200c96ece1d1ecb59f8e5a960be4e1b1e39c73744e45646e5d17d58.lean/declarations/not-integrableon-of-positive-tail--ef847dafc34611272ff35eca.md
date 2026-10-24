# not_integrableOn_of_positive_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22050f27-0bf5-31de-af05-61eb12d833ae",
  "kind": "theorem",
  "lexical_name": "not_integrableOn_of_positive_tail",
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
  "slug": "not-integrableon-of-positive-tail--ef847dafc34611272ff35eca",
  "source": {
    "blob": "c80602b7fda86f5e52c5f6026e11e732b2e0d646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef847dafc34611272ff35eca717e3dd78523f10a9162a77cd40204fc1e7c0f1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22050f27-0bf5-31de-af05-61eb12d833ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_integrableOn_of_positive_tail {f : ℝ → ℝ} {d R : ℝ}
    (hd : 0 < d) (hR : 0 ≤ R) (hb : ∀ x ∈ Set.Ioi R, d ≤ f x) :
    ¬ IntegrableOn f (Set.Ioi (0 : ℝ)) := by
  intro hi
  have htail := hi.mono_set (Set.Ioi_subset_Ioi hR)
  have hc : Integrable (fun _ : ℝ => d) (volume.restrict (Set.Ioi R)) := by
    apply htail.mono' aestronglyMeasurable_const
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [Real.norm_of_nonneg hd.le]
    exact (hb x hx).trans (le_abs_self _)
  have hfinite := (integrable_const_iff_isFiniteMeasure hd.ne').mp hc
  have hm := hfinite.measure_univ_lt_top
  simpa only [Measure.restrict_apply_univ, Real.volume_Ioi] using hm

end ContinuousResearch.NegativeCostFatou
#print ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print axioms ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
#print axioms ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit

#print ContinuousResearch.NegativeCostFatou.not_integrableOn_of_positive_tail
#print axioms ContinuousResearch.NegativeCostFatou.not_integrableOn_of_positive_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80602b7fda86f5e52c5f6026e11e732b2e0d646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
