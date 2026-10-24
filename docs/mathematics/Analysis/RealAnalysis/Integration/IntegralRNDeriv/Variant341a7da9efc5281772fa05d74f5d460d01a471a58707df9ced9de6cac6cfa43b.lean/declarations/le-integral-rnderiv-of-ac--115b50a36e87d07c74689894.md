# le_integral_rnDeriv_of_ac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b701e60d-d4e0-5b88-df5a-754bd8240b2b",
  "kind": "lemma",
  "lexical_name": "le_integral_rnDeriv_of_ac",
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
  "slug": "le-integral-rnderiv-of-ac--115b50a36e87d07c74689894",
  "source": {
    "blob": "131e600f7e05362788c0b3ef5637fb75efc62bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115b50a36e87d07c746898946b4389163becad00ecc94e5f1a08f92cb31145d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b701e60d-d4e0-5b88-df5a-754bd8240b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_integral_rnDeriv_of_ac [IsFiniteMeasure μ] [IsProbabilityMeasure ν]
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont : ContinuousWithinAt f (Ici 0) 0)
    (hf_int : Integrable (fun x ↦ f (μ.rnDeriv ν x).toReal) ν) (hμν : μ ≪ ν) :
    f (μ.real univ) ≤ ∫ x, f (μ.rnDeriv ν x).toReal ∂ν := by
  have hf_cont' : ContinuousOn f (Ici 0) := by
    intro x hx
    rcases eq_or_lt_of_le (α := ℝ) (hx : 0 ≤ x) with rfl | hx_pos
    · exact hf_cont
    · have h := hf_cvx.continuousOn_interior x
      simp only [nonempty_Iio, interior_Ici', mem_Ioi] at h
      rw [continuousWithinAt_iff_continuousAt (Ioi_mem_nhds hx_pos)] at h
      exact (h hx_pos).continuousWithinAt
  calc f (μ.real univ)
    = f (∫ x, (μ.rnDeriv ν x).toReal ∂ν) := by rw [Measure.integral_toReal_rnDeriv hμν]
  _ ≤ ∫ x, f (μ.rnDeriv ν x).toReal ∂ν := by
    rw [← average_eq_integral, ← average_eq_integral]
    exact ConvexOn.map_average_le hf_cvx hf_cont' isClosed_Ici (by simp)
      Measure.integrable_toReal_rnDeriv hf_int

/-- For a convex continuous function `f` on `[0, ∞)`, if `μ` is absolutely continuous
with respect to `ν`, then
`ν.real univ * f (μ.real univ / ν.real univ) ≤ ∫ x, f (μ.rnDeriv ν x).toReal ∂ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131e600f7e05362788c0b3ef5637fb75efc62bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
