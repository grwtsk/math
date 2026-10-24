# anchored_matrix_shell_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c77f8fef-564d-46b4-1176-f6fe142b068a",
  "kind": "theorem",
  "lexical_name": "anchored_matrix_shell_bound",
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
  "slug": "anchored-matrix-shell-bound--1b92bcea5d22875a4e3db706",
  "source": {
    "blob": "fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b92bcea5d22875a4e3db706bcb0e3253e002b186b158dbe30e189fa35154644",
  "verification": {
    "reference": "docs/verification/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77f8fef-564d-46b4-1176-f6fe142b068a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchored_matrix_shell_bound (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
    shellForm s b K ≤ operatorNorm (anchoredMatrix s b₀ b K anchor) * shellMass s b := by
  let v : Option ↥s → ℝ := fun i ↦ match i with | none => 0 | some n => b n.val
  have h := quadraticForm_le_operatorNorm (anchoredMatrix s b₀ b K anchor) v
  have hq : quadraticForm (anchoredMatrix s b₀ b K anchor) v = shellForm s b K := by
    unfold quadraticForm shellForm
    simp only [Fintype.sum_option, v, anchoredMatrix, zero_mul, mul_zero,
      Finset.sum_const_zero, zero_add]
    rw [Finset.sum_coe_sort s (fun n : ℕ ↦ ∑ m : s, b n * weightedGram b K n m * b m)]
    apply Finset.sum_congr rfl
    intro n hn
    exact Finset.sum_coe_sort s (fun m : ℕ ↦ b n * weightedGram b K n m * b m)
  have hv : (∑ i, v i ^ 2) = shellMass s b := by
    simp only [Fintype.sum_option, v, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    exact Finset.sum_coe_sort s (fun n : ℕ ↦ b n ^ 2)
  rw [hq, hv] at h
  exact h

end
end GRWTSK.RiemannHypothesis.Conversation.MatrixNormPricing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
