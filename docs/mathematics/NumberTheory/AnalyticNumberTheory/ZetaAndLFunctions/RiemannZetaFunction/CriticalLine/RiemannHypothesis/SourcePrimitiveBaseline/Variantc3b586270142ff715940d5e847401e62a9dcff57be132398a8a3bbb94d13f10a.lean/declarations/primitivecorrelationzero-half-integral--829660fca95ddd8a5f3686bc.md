# primitiveCorrelationZero_half_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5e4eaf6982065de98b6a60d149cdc73ca49e765",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43059807-fc92-60c0-7be4-b1a899ab95b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c79272fd-76ca-b0ec-e817-e6134f37a4e7",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_half_integral",
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
  "slug": "primitivecorrelationzero-half-integral--829660fca95ddd8a5f3686bc",
  "source": {
    "blob": "d5e4eaf6982065de98b6a60d149cdc73ca49e765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:829660fca95ddd8a5f3686bc5092e4752b56c13120ac92634681ccd8f5c8179f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79272fd-76ca-b0ec-e817-e6134f37a4e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_half_integral {A : ℝ} (hA : 0 < A) :
    (∫ s in 0..2 * A, primitiveCorrelationZero A s) =
      (1 / 2 : ℝ) * (∫ x : ℝ, normalizedPrimitiveBump A x) ^ 2 := by
  have hb := normalizedPrimitiveBump_integrable hA
  have hf := weighted_correlation_integral (normalizedPrimitiveBump A) 0
    (by simpa using hb) (by simpa using hb)
  have hfull : (∫ s : ℝ, primitiveCorrelationZero A s) =
      (∫ x : ℝ, normalizedPrimitiveBump A x) ^ 2 := by
    simpa [correlation, primitiveCorrelationZero, pow_two] using hf
  have hs : Function.support (primitiveCorrelationZero A) ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro s hmem
    have hn : |s| < 2 * A := by
      by_contra hn
      exact hmem (primitiveCorrelationZero_zero hA (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le s], (le_abs_self s).trans hn.le⟩
  have hsupport := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have heven : (∫ s in -(2 * A)..0, primitiveCorrelationZero A s) =
      ∫ s in 0..2 * A, primitiveCorrelationZero A s := by
    have he : (fun s : ℝ => primitiveCorrelationZero A (-s)) = primitiveCorrelationZero A :=
      funext (primitiveCorrelationZero_even A)
    have hn := intervalIntegral.integral_comp_neg (primitiveCorrelationZero A)
      (a := -(2 * A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hi := primitiveCorrelationZero_integrable hA
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [heven, hsupport, hfull] at hadd
  linarith

/-- The factor 1/32 gives kappa_A times A, not kappa_A alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e4eaf6982065de98b6a60d149cdc73ca49e765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
