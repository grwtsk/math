# combined_factor_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c5b815c-5b46-fe59-b143-1aabff00ac35",
  "kind": "theorem",
  "lexical_name": "combined_factor_small",
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
  "slug": "combined-factor-small--f379986f7554611d956a03a2",
  "source": {
    "blob": "dbdd50d90cb187194b035c9fcc2e7e2fef873253",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f379986f7554611d956a03a26e6bb9bc03b11da0d2de5e98b0b35f5ec989dde2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c5b815c-5b46-fe59-b143-1aabff00ac35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem combined_factor_small {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2)) ^ 2 * endpointPlus ((A : ℂ) * z) *
      endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200 := by
  let L : ℂ := 1 - 1 / (4 * z ^ 2)
  let P : ℂ := endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)
  have hl := lower_factor_small z hi
  have hln := lower_factor_norm z hi
  have hp := endpoint_product_small ((A : ℂ) * z) (inverse_source_radius hA z hi)
  have hid : L ^ 2 * P - 1 = (L - 1) * (L - 1) + 2 * (L - 1) + L ^ 2 * (P - 1) := by ring
  have h1 := norm_add_le ((L - 1) * (L - 1) + 2 * (L - 1)) (L ^ 2 * (P - 1))
  have h2 := norm_add_le ((L - 1) * (L - 1)) (2 * (L - 1))
  simp only [norm_mul, norm_pow] at h1 h2
  norm_num at h1 h2
  change ‖L - 1‖ ≤ 1 / 500 at hl
  change ‖L‖ ≤ 501 / 500 at hln
  change ‖P - 1‖ ≤ 1 / 100000 at hp
  have hs : ‖L - 1‖ * ‖L - 1‖ ≤ (1 / 500 : ℝ) ^ 2 := by nlinarith [norm_nonneg (L - 1)]
  have hls : ‖L‖ ^ 2 ≤ (501 / 500 : ℝ) ^ 2 := pow_le_pow_left₀ (norm_nonneg L) hln 2
  have hps : ‖L‖ ^ 2 * ‖P - 1‖ ≤ (501 / 500 : ℝ) ^ 2 / 100000 := by
    calc
      _ ≤ (501 / 500 : ℝ) ^ 2 * ‖P - 1‖ := mul_le_mul_of_nonneg_right hls (norm_nonneg _)
      _ ≤ _ := by nlinarith only [hp]
  change ‖L ^ 2 * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200
  rw [mul_assoc]
  change ‖L ^ 2 * P - 1‖ ≤ 1 / 200
  rw [hid]
  nlinarith only [h1, h2, hs, hl, hps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbdd50d90cb187194b035c9fcc2e7e2fef873253` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
