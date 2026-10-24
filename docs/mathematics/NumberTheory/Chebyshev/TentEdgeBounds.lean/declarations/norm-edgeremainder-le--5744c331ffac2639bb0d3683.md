# norm_edgeRemainder_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20172367-6ce6-f1bd-7428-0b39f23ea797",
  "kind": "theorem",
  "lexical_name": "norm_edgeRemainder_le",
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
  "slug": "norm-edgeremainder-le--5744c331ffac2639bb0d3683",
  "source": {
    "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5744c331ffac2639bb0d3683959536be6a031889d716262cdd020085f6dce42f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20172367-6ce6-f1bd-7428-0b39f23ea797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_edgeRemainder_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (hN : 1 ≤ N) (QL QH : ℝ) (hQL : 0 ≤ QL) (hQH : 0 ≤ QH)
    (hleft : ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL)
    (hhorizontal : ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge N) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH) :
    ‖edgeRemainder x h N (separatedHeight J)‖ ≤
      (2 / h) * (QL * Real.exp (-2 * (N : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH / (separatedHeight J) ^ 2) := by
  have hp : 0 < 2 * Real.pi := by positivity
  have hpn : 2 * Real.pi ≠ 0 := ne_of_gt hp
  have hq : ‖((2 * Real.pi : ℝ) : ℂ)‖ = 2 * Real.pi := Complex.norm_of_nonneg hp.le
  have hqi : ‖(((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ = 2 * Real.pi := by
    rw [norm_mul, hq, Complex.norm_I, mul_one]
  have hL := norm_left_vertical_le x h hh ha N hN (separatedHeight J) QL
    (separatedHeight_pos J).le hQL hleft
  have hU := norm_selected_horizontal_le x h hh ha N J (separatedHeight J) QH
    (abs_of_pos (separatedHeight_pos J)) hQH
    (hhorizontal _ (abs_of_pos (separatedHeight_pos J)))
  have hB := norm_selected_horizontal_le x h hh ha N J (-separatedHeight J) QH
    (by rw [abs_neg, abs_of_pos (separatedHeight_pos J)]) hQH
    (hhorizontal _ (by rw [abs_neg, abs_of_pos (separatedHeight_pos J)]))
  have hUD := (norm_sub_le
    (horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J))
    (horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J))).trans
      (add_le_add hU hB)
  unfold edgeRemainder
  calc
    _ ≤ ‖vertical (integrand x h) (leftEdge N) (separatedHeight J) /
          ((2 * Real.pi : ℝ) : ℂ)‖ +
        ‖(horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J) -
          horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ := norm_add_le _ _
    _ = ‖vertical (integrand x h) (leftEdge N) (separatedHeight J)‖ / (2 * Real.pi) +
        ‖horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J) -
          horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J)‖ / (2 * Real.pi) := by
      rw [norm_div, norm_div, hq, hqi]
    _ ≤ (QL * (4 * Real.exp (-2 * (N : ℝ) * Real.log (x - h)) / h) * Real.pi) /
          (2 * Real.pi) +
        (QH * horizontalBudget x h / (separatedHeight J) ^ 2 +
          QH * horizontalBudget x h / (separatedHeight J) ^ 2) / (2 * Real.pi) :=
      add_le_add (div_le_div_of_nonneg_right hL hp.le) (div_le_div_of_nonneg_right hUD hp.le)
    _ = _ := by
      field_simp [Real.pi_ne_zero, ne_of_gt hh, ne_of_gt (separatedHeight_pos J)]
      ; ring

/-- The finite source comparison inherits the same explicit edge budget, not an unassigned residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
