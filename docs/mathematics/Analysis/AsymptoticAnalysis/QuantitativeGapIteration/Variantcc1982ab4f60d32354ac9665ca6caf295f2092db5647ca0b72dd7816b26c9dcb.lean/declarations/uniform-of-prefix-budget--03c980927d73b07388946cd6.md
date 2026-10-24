# uniform_of_prefix_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3c0690-2ebb-adf2-63f8-aafc666e66ab",
  "kind": "theorem",
  "lexical_name": "uniform_of_prefix_budget",
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
  "slug": "uniform-of-prefix-budget--03c980927d73b07388946cd6",
  "source": {
    "blob": "c6415ce2a2d53996a197cb1779d5657ac2c40d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03c980927d73b07388946cd66090debec52b9dbba074ce6a8eadb8f497341510",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3c0690-2ebb-adf2-63f8-aafc666e66ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_of_prefix_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hbudget : ∀ n, ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  have hb : δ ≤ Δ 0 - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) := by
    linarith [hbudget n]
  exact (mul_le_mul_of_nonneg_right (hproduct n) hδ).trans
    ((mul_le_mul_of_nonneg_left hb (le_of_lt (lossProduct_pos c hc n))).trans
      (refinement_iteration Δ c ε hc hstep n))

/-- The summable nonnegative defect criterion implies all finite-prefix budgets.
The series includes the zero atom of the error budget: no tail is silently dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6415ce2a2d53996a197cb1779d5657ac2c40d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
