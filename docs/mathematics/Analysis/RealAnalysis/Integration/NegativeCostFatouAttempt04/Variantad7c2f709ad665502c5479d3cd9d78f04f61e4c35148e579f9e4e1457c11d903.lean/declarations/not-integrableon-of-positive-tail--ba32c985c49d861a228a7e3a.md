# not_integrableOn_of_positive_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4101c435-808d-5828-e01c-1e7745a474c8",
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
  "slug": "not-integrableon-of-positive-tail--ba32c985c49d861a228a7e3a",
  "source": {
    "blob": "7d5743fa385cc9c1db29bd19c8f9d9efd1c896ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba32c985c49d861a228a7e3afa638f6cb5c815e645aa36daecd93f10094f6ddb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4101c435-808d-5828-e01c-1e7745a474c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

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
    exact hb x hx
  have hfinite := (integrable_const_iff_isFiniteMeasure hd.ne').mp hc
  have hm := hfinite.measure_univ_lt_top
  simpa [Measure.restrict_apply_univ, Real.volume_Ioi] using hm

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5743fa385cc9c1db29bd19c8f9d9efd1c896ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
