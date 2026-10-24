# xiCoeff_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90a4ffe8-4aea-ba85-84e2-3cbb045690a8",
  "kind": "theorem",
  "lexical_name": "xiCoeff_squarefree",
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
  "slug": "xicoeff-squarefree--a4375cb120e6a3ee2773bfba",
  "source": {
    "blob": "76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4375cb120e6a3ee2773bfba670005f4937671224f7cfcac1c947022ec084fe8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90a4ffe8-4aea-ba85-84e2-3cbb045690a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiCoeff_squarefree {N : ℕ} (hN : Squarefree N) (hk : 2 ≤ ω N) (Λs : ℂ) :
    xiCoeff Λs N = ((ω N - 1).factorial : ℂ) * (Λs⁻¹) ^ (ω N) * (Real.log N : ℂ)
                     * ((∏ p ∈ N.primeFactors, Real.log p : ℝ) : ℂ) := by
  have hΩ : Ω N = ω N := cardFactors_eq_cardDistinctFactors_of_squarefree hN
  have hΛ0 : Λ N = 0 := vonMangoldt_eq_zero_of_cardDistinctFactors_ne_one (by omega)
  unfold xiCoeff
  rw [hΛ0, hΩ, Complex.ofReal_zero, neg_zero, zero_add]
  rw [sum_eq_single_of_mem (ω N - 1) (mem_range.mpr (by omega))]
  · rw [lamLogConv_apply_squarefree hN, if_pos (by omega),
      show ω N - 1 + 1 = ω N by omega]
    push_cast
    ring
  · intro j _ hj
    rw [lamLogConv_apply_squarefree hN, if_neg (by omega), Complex.ofReal_zero, mul_zero]

/-- C(p;Λ⋆) = −log p + Λ⋆^{−1} log²p. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
