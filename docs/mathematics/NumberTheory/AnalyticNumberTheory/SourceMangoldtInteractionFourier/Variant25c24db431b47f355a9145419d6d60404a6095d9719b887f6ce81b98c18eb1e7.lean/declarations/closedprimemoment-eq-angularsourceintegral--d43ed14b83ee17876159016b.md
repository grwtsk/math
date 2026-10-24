# closedPrimeMoment_eq_angularSourceIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ddb7b60-c306-422f-17a8-0a47d7db8922",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62722cc9-bb24-0113-93a4-485ffa293692",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_angularSourceIntegral",
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
  "slug": "closedprimemoment-eq-angularsourceintegral--d43ed14b83ee17876159016b",
  "source": {
    "blob": "1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 278,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43ed14b83ee17876159016b60ccb2da259ecdf99e0e0f6047aaa039fee94422",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62722cc9-bb24-0113-93a4-485ffa293692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_angularSourceIntegral {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = (1 / (2 * Real.pi)) * ∫ ω : ℝ,
      mangoldtAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) := by
  rw [closedPrimeMoment_eq_standardSourceIntegral hA]
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    mangoldtFourierSymbol_eq_angular]
  rw [Measure.integral_comp_mul_left
    (fun ω => mangoldtAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)]
  simp only [one_div]

/-- The residual's angular formula retains the existing `A≥1` contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtInteractionFourier/Variant25c24db431b47f355a9145419d6d60404a6095d9719b887f6ce81b98c18eb1e7.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2f6d4a5c841c52a8ed590e4a4d15b868f0550a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
