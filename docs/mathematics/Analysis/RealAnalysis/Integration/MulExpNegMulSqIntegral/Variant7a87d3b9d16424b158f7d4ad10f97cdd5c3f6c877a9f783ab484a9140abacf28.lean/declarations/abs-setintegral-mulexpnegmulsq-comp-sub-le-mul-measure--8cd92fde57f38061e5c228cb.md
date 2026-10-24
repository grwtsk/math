# abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:555e914e-087f-d6e9-fbbd-ed0d9abd6e9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:057850bc-913c-5253-cd78-f944dc3e66e8",
  "kind": "theorem",
  "lexical_name": "abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure",
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
  "slug": "abs-setintegral-mulexpnegmulsq-comp-sub-le-mul-measure--8cd92fde57f38061e5c228cb",
  "source": {
    "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd92fde57f38061e5c228cb75aeaec7b83b20cf813186174971e1f40b0ee02f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:057850bc-913c-5253-cd78-f944dc3e66e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure {K : Set E} (hK : IsCompact K)
    (hKmeas : MeasurableSet K) (f g : C(E, ℝ)) {δ : ℝ} (hε : 0 < ε)
    (hfg : ∀ x ∈ K, |g x - f x| < δ) :
    |∫ x in K, mulExpNegMulSq ε (g x) ∂P - ∫ x in K, mulExpNegMulSq ε (f x) ∂P|
      ≤ δ * (P K).toReal := by
  rw [← (integral_sub (integrable_mulExpNegMulSq_comp_restrict_of_isCompact hK hKmeas g)
      (integrable_mulExpNegMulSq_comp_restrict_of_isCompact hK hKmeas f)), ← norm_eq_abs]
  exact norm_setIntegral_le_of_norm_le_const hK.measure_lt_top
    (fun x hxK => le_trans (dist_mulExpNegMulSq_le_dist hε) (hfg x hxK).le)

variable {E : Type*} [MeasurableSpace E] [PseudoEMetricSpace E] [BorelSpace E] [CompleteSpace E]
    [SecondCountableTopology E]
    {P P' : Measure E} [IsFiniteMeasure P] [IsFiniteMeasure P']

/-- If for any `g ∈ A` the integrals with respect to two finite measures `P, P'` coincide, then the
difference of the integrals of `mulExpNegMulSq ε ∘ g` with respect to `P, P'` is bounded by
`6 * √ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9710a5608d8e461dce2e62bdc919b68a4dc9b10f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
