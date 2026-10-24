# sourceCorrelation_laplace_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1361e9ea0f7b9a62f9383a7738b93f37ea9a1c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b453fcf11d917fe5c32970228288086ad1fb44f306106efe6e5bf62a2d2a866.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d017c805-660a-17b1-1ad1-769f405bcc9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ff61aae-8f16-4554-c469-3ad747a2d02e",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_laplace_filter",
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
  "slug": "sourcecorrelation-laplace-filter--6edb5f7b5d8831aed3fe7bcd",
  "source": {
    "blob": "1361e9ea0f7b9a62f9383a7738b93f37ea9a1c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant0b453fcf11d917fe5c32970228288086ad1fb44f306106efe6e5bf62a2d2a866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6edb5f7b5d8831aed3fe7bcd05f6d78bb56f5632d5ed3a7544c98957c24eeca4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant0b453fcf11d917fe5c32970228288086ad1fb44f306106efe6e5bf62a2d2a866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff61aae-8f16-4554-c469-3ad747a2d02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_laplace_filter {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * sourceCorrelation explicitSecondDerivative A s) =
      (σ ^ 2 - 1 / 4) ^ 2 *
        ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hi := primitive_correlations_weighted_integrable hA σ
  have he : (fun s : ℝ => Real.exp (σ * s) * sourceCorrelation explicitSecondDerivative A s) =
      fun s => Real.exp (σ * s) * primitiveCorrelationTwo A s +
        (Real.exp (σ * s) * primitiveCorrelationOne A s) / 2 +
        (Real.exp (σ * s) * primitiveCorrelationZero A s) / 16 := by
    funext s
    rw [sourceCorrelation_eq_primitive_filter hA]
    ring
  have ha := integral_add (hi.2.2.add (hi.2.1.div_const 2)) (hi.1.div_const 16)
  have hb := integral_add hi.2.2 (hi.2.1.div_const 2)
  simp only [Pi.add_apply] at ha hb
  rw [he, ha, hb, integral_div, integral_div,
    primitiveCorrelationTwo_laplace hA σ, primitiveCorrelationOne_laplace hA σ]
  ring

/-- Both critical poles cancel on the full line, without a discrete arithmetic conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant0b453fcf11d917fe5c32970228288086ad1fb44f306106efe6e5bf62a2d2a866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant0b453fcf11d917fe5c32970228288086ad1fb44f306106efe6e5bf62a2d2a866.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1361e9ea0f7b9a62f9383a7738b93f37ea9a1c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
