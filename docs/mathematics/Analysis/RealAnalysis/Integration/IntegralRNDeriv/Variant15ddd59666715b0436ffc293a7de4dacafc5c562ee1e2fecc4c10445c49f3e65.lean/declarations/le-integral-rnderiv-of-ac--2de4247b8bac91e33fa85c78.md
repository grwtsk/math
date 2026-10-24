# le_integral_rnDeriv_of_ac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "191f557131e14fa91865a816718c73e9ef8d1fa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ecaa0a3-33b3-0ee3-ceeb-01e5e75ee790",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:464db93d-91e7-1f68-ae48-ef7868d51662",
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
  "slug": "le-integral-rnderiv-of-ac--2de4247b8bac91e33fa85c78",
  "source": {
    "blob": "191f557131e14fa91865a816718c73e9ef8d1fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2de4247b8bac91e33fa85c78bae5dbef6f6623b16746c46b946f7c3bc9fc585e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464db93d-91e7-1f68-ae48-ef7868d51662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_integral_rnDeriv_of_ac [IsFiniteMeasure μ] [IsProbabilityMeasure ν]
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont : ContinuousWithinAt f (Ici 0) 0)
    (hf_int : Integrable (fun x ↦ f (μ.rnDeriv ν x).toReal) ν) (hμν : μ ≪ ν) :
    f (μ.real univ) ≤ ∫ x, f (μ.rnDeriv ν x).toReal ∂ν := by
  have hf_cont' : ContinuousOn f (Ici 0) := hf_cvx.continuousOn_Ici hf_cont
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191f557131e14fa91865a816718c73e9ef8d1fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
