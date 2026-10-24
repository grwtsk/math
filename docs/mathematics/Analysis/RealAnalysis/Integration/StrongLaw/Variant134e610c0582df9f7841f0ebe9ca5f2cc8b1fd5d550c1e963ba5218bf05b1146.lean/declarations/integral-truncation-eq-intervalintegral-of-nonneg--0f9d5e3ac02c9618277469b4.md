# integral_truncation_eq_intervalIntegral_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50edf3a3-2b25-498a-661b-0d97be5f4d4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ada67aa-b3c1-230d-7d39-82449b44f711",
  "kind": "theorem",
  "lexical_name": "integral_truncation_eq_intervalIntegral_of_nonneg",
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
  "slug": "integral-truncation-eq-intervalintegral-of-nonneg--0f9d5e3ac02c9618277469b4",
  "source": {
    "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9d5e3ac02c9618277469b475c94dceecde166b4077159de94b29998c40a39e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ada67aa-b3c1-230d-7d39-82449b44f711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_truncation_eq_intervalIntegral_of_nonneg (hf : AEStronglyMeasurable f μ) {A : ℝ}
    (h'f : 0 ≤ f) : ∫ x, truncation f A x ∂μ = ∫ y in (0)..A, y ∂Measure.map f μ := by
  simpa using moment_truncation_eq_intervalIntegral_of_nonneg hf one_ne_zero h'f
#align probability_theory.integral_truncation_eq_interval_integral_of_nonneg ProbabilityTheory.integral_truncation_eq_intervalIntegral_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ddcf1107b0499008db6ae482ac58dbc3c446b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
