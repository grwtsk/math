# actual_complete_correlation_absolute_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28ea2b6b-2d9f-816a-a18a-ad7adf99155e",
  "kind": "theorem",
  "lexical_name": "actual_complete_correlation_absolute_upper",
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
  "slug": "actual-complete-correlation-absolute-upper--a88b7cea71cc26a108c0a596",
  "source": {
    "blob": "146ccf4f814ec93551f1e24a8116d55a18fd54b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant34b769be86638589cc96679a11b49ed869773459addf427467b3c17648e45fd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a88b7cea71cc26a108c0a596e1e8b783a2b42ffe9e60b0d23661ba5befbaaa6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant34b769be86638589cc96679a11b49ed869773459addf427467b3c17648e45fd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ea2b6b-2d9f-816a-a18a-ad7adf99155e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_correlation_absolute_upper {A y : ℝ} (hA : 1 ≤ A)
    (hy : 0 ≤ y) :
    |C A (2 * A - y)| ≤ 576 * y ^ 5 * (64 + y ^ 2) ^ 2 / A ^ 9 := by
  have hpos : 0 < A := by linarith
  let f := fun x ↦ v A x * v A (x - (2 * A - y))
  let S := Icc (A - y) A
  let g := S.indicator (fun _ : ℝ ↦ overlapCap A y)
  have hf : Integrable f volume := correlation_product_integrable A _ hpos
  have hg : Integrable g volume := (integrable_indicator_iff measurableSet_Icc).mpr
    (continuous_const.integrableOn_Icc : IntegrableOn (fun _ : ℝ ↦ overlapCap A y) S volume)
  have hpoint (x : ℝ) : |f x| ≤ g x := by
    by_cases hx : x ∈ S
    · rw [show g x = overlapCap A y from indicator_of_mem hx _]
      exact full_overlap_product_absolute_upper hA hy x
    · have hz := complete_product_zero_outside_overlap hpos y x hx
      rw [show g x = 0 from indicator_of_notMem hx _, show f x = 0 from hz, abs_zero]
  have hnorm : |C A (2 * A - y)| ≤ ∫ x, |f x| := by
    simpa only [Real.norm_eq_abs, sourceCorrelation, f] using norm_integral_le_integral_norm f
  have hmono : (∫ x, |f x|) ≤ ∫ x, g x :=
    integral_mono hf.abs hg hpoint
  have hvalue : (∫ x, g x) = 576 * y ^ 5 * (64 + y ^ 2) ^ 2 / A ^ 9 := by
    rw [integral_indicator measurableSet_Icc, setIntegral_const]
    rw [Real.volume_real_Icc_of_le (by linarith : A - y ≤ A)]
    simp only [smul_eq_mul]
    unfold overlapCap
    ring
  rw [hvalue] at hmono
  exact hnorm.trans hmono

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationOverlapUpper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant34b769be86638589cc96679a11b49ed869773459addf427467b3c17648e45fd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOverlapUpper/Variant34b769be86638589cc96679a11b49ed869773459addf427467b3c17648e45fd5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `146ccf4f814ec93551f1e24a8116d55a18fd54b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
