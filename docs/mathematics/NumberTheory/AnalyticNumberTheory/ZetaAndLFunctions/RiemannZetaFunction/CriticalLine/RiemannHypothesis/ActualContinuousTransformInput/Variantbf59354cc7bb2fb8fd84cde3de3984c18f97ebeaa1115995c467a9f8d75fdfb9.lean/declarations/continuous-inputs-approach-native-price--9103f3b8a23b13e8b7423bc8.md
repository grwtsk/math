# continuous_inputs_approach_native_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30570ff6-13eb-685e-76aa-642bc1cec4a4",
  "kind": "theorem",
  "lexical_name": "continuous_inputs_approach_native_price",
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
  "slug": "continuous-inputs-approach-native-price--9103f3b8a23b13e8b7423bc8",
  "source": {
    "blob": "51c2d45428463fa0def7d68fb4de13efa677e80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9103f3b8a23b13e8b7423bc84c9ae5f02fe2233803f15e0c337e37eb723f7f8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30570ff6-13eb-685e-76aa-642bc1cec4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_inputs_approach_native_price {A a : ℝ} (hA : 1 ≤ A)
    {δ : ℝ} (hδ : 0 < δ) :
    ∃ J : ℝ → ℝ, ContinuousOn J (Ioi 0) ∧
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) ∧
      normPrice A (a + 3 / 16) - transform A J < δ := by
  let K := exponentialWindowMass A (a + 3 / 16)
  have hK : 0 ≤ K := exponential_window_mass_nonnegative hA _
  let ε := δ / (K + 1)
  have hε : 0 < ε := div_pos hδ (by linarith)
  refine ⟨continuousInput A a ε, actual_comparison_input_continuousOn hA hε,
    fun x hx ↦ continuous_input_retains_magnitude_class A a hε hx, ?_⟩
  have hp := continuous_input_complete_error_payment (a := a) hA hε
  have hcost : ε * K < δ := by
    dsimp only [ε]
    rw [div_mul_eq_mul_div]
    apply (div_lt_iff₀ (by linarith : 0 < K + 1)).mpr
    nlinarith
  exact hp.trans_lt hcost

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c2d45428463fa0def7d68fb4de13efa677e80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
