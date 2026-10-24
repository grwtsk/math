# LSeries_twist_vonMangoldt_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8597d045aff4470b39553ce6cdae2695bb455b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7f59e43-cc4e-4d18-90eb-e3e948cee4a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e80c5933-afdb-ad2f-16cb-4932691100ec",
  "kind": "lemma",
  "lexical_name": "LSeries_twist_vonMangoldt_eq",
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
  "slug": "lseries-twist-vonmangoldt-eq--cd94de05edf611f614c77f18",
  "source": {
    "blob": "3d8597d045aff4470b39553ce6cdae2695bb455b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 368,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd94de05edf611f614c77f186ea32d8fb6d8ae8ffc6d8c26ce82e77775b5771a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80c5933-afdb-ad2f-16cb-4932691100ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_twist_vonMangoldt_eq {N : ℕ} (χ : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 < s.re) :
    L (↗χ * ↗Λ) s = - deriv (L ↗χ) s / L ↗χ s := by
  rcases eq_or_ne N 0 with rfl | hN
  · simp [modZero_eq_delta, delta_mul_eq_smul_delta, LSeries_delta]
  -- now `N ≠ 0`
  have hχ : LSeriesSummable ↗χ s := (LSeriesSummable_iff hN χ).mpr hs
  have hs' : abscissaOfAbsConv ↗χ < s.re := by
    rwa [absicssaOfAbsConv_eq_one hN, ← EReal.coe_one, EReal.coe_lt_coe_iff]
  have hΛ : LSeriesSummable (↗χ * ↗Λ) s := LSeriesSummable_twist_vonMangoldt χ hs
  rw [eq_div_iff <| LSeries_ne_zero_of_one_lt_re χ hs, ← LSeries_convolution' hΛ hχ,
    convolution_twist_vonMangoldt, LSeries_deriv hs', neg_neg]
  exact LSeries_congr s fun _ ↦ by simp [mul_comm, logMul]

end DirichletCharacter

namespace ArithmeticFunction

open DirichletCharacter in
/-- The L-series of the von Mangoldt function `Λ` equals the negative logarithmic derivative
of the L-series of the constant sequence `1` on its domain of convergence `re s > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8597d045aff4470b39553ce6cdae2695bb455b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
