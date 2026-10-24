# headline_of_strict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:befa470f-5e83-a0af-9f72-501200830b83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da099b7e-c718-3bfb-4815-a47b1c2ecf19",
  "kind": "theorem",
  "lexical_name": "headline_of_strict",
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
  "slug": "headline-of-strict--233b676ed4f02336153e827e",
  "source": {
    "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 467,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:233b676ed4f02336153e827ef8acd41470af063a5d41be8d6d1990f6455ced9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da099b7e-c718-3bfb-4815-a47b1c2ecf19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem headline_of_strict {κ c cd : ℝ} {N lowS lowD : ℝ → ℝ} (hN : ∀ T, 0 ≤ N T)
    (hc : c < 2 - κ) (hcd : cd < 3 / 2 - κ / 2)
    (h : ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - κ - ε) * N T ≤ lowS T ∧ (3 / 2 - κ / 2 - ε) * N T ≤ lowD T) :
    ∃ T₀ : ℝ, ∀ T ≥ T₀, c * N T ≤ lowS T ∧ cd * N T ≤ lowD T := by
  set ε := min (2 - κ - c) (3 / 2 - κ / 2 - cd) with hε
  have hε0 : 0 < ε := lt_min (by linarith) (by linarith)
  obtain ⟨T₀, hT₀⟩ := h ε hε0
  refine ⟨T₀, fun T hT => ?_⟩
  obtain ⟨h1, h2⟩ := hT₀ T hT
  have hNT := hN T
  have e1 : c ≤ 2 - κ - ε := by have := min_le_left (2 - κ - c) (3 / 2 - κ / 2 - cd); linarith
  have e2 : cd ≤ 3 / 2 - κ / 2 - ε := by have := min_le_right (2 - κ - c) (3 / 2 - κ / 2 - cd); linarith
  exact ⟨(mul_le_mul_of_nonneg_right e1 hNT).trans h1, (mul_le_mul_of_nonneg_right e2 hNT).trans h2⟩

/-! ## §A2″. Interval additivity and the cumulative (0,T] form for the ξ′ configuration
(pattern: Zeta23/Main.lean cumulative_of_dyadic; Zeta23.Assembly.dyadic is generic). -/

section Cumulative
variable (hF2 : XiDerivZerosInStrip) (hs : XiDerivSeam)

include hF2 hs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f192ac51d33c4dd49f21a3ece15426538bd026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
