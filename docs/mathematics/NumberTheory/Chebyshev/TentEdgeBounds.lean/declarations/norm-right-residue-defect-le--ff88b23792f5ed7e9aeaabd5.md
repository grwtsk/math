# norm_right_residue_defect_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d968acba-a723-aca0-d605-810300eb016e",
  "kind": "theorem",
  "lexical_name": "norm_right_residue_defect_le",
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
  "slug": "norm-right-residue-defect-le--ff88b23792f5ed7e9aeaabd5",
  "source": {
    "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff88b23792f5ed7e9aeaabd57e4e2ddae74e040cf96c8426b74fd13c8faea4ab",
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

Occurrence: `result:d968acba-a723-aca0-d605-810300eb016e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_right_residue_defect_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (hN : 1 ≤ N) (QL QH : ℝ) (hQL : 0 ≤ QL) (hQH : 0 ≤ QH)
    (hleft : ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL)
    (hhorizontal : ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge N) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH) :
    ‖vertical (integrand x h) 2 (separatedHeight J) / ((2 * Real.pi : ℝ) : ℂ) -
      ((h : ℂ) - (∑ z ∈ heightHead (separatedHeight J),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ))‖ ≤
      (2 / h) * (QL * Real.exp (-2 * (N : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH / (separatedHeight J) ^ 2) := by
  rw [right_residue_at_height x h hh ha N (separatedHeight J)
    (separatedHeight_pos J) (separatedHeight_avoids J), add_sub_cancel_left]
  exact norm_edgeRemainder_le x h hh ha N J hN QL QH hQL hQH hleft hhorizontal

/-- Conditional decay criterion with the actual log-derivative suppliers visible.
No theorem in this module supplies either growth-rate hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
