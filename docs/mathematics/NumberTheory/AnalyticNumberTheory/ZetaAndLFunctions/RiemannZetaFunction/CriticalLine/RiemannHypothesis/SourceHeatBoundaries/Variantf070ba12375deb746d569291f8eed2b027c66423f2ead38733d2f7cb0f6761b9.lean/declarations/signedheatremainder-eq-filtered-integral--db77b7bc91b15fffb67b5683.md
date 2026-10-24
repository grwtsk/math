# signedHeatRemainder_eq_filtered_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16e9983b-34d9-683e-9e7c-b32e6e59c36a",
  "kind": "theorem",
  "lexical_name": "signedHeatRemainder_eq_filtered_integral",
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
  "slug": "signedheatremainder-eq-filtered-integral--db77b7bc91b15fffb67b5683",
  "source": {
    "blob": "81c9118aa4eacdfdbb69db2274d7fc8d2608e0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variantf070ba12375deb746d569291f8eed2b027c66423f2ead38733d2f7cb0f6761b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db77b7bc91b15fffb67b5683e026896435514cd650c59586a332325e55dcbc18",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variantf070ba12375deb746d569291f8eed2b027c66423f2ead38733d2f7cb0f6761b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16e9983b-34d9-683e-9e7c-b32e6e59c36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeatRemainder_eq_filtered_integral (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    signedHeatRemainder μ k τ =
      ∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ := by
  have hi : Integrable k μ := by
    simpa using signedHeat_integrable (μ := μ) hk hM hb 0
  have ht := signedHeat_integrable (μ := μ) hk hM hb τ
  have he := signedHeat_decomposition (μ := μ) hk hM hb hτ
  have hf : (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) =
      fun x => k x - k x * Real.exp (-τ * k x ^ 2) := by
    funext x
    ring
  rw [hf, integral_sub hi ht]
  unfold signedHeat at he
  linarith

/-- This absolute envelope is finite at each scale; its coefficient mass is not unit mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variantf070ba12375deb746d569291f8eed2b027c66423f2ead38733d2f7cb0f6761b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variantf070ba12375deb746d569291f8eed2b027c66423f2ead38733d2f7cb0f6761b9.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81c9118aa4eacdfdbb69db2274d7fc8d2608e0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
