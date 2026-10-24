# diagonal_tendsto_psiHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5605f33-05b1-19f8-b5e5-7516f3cc4527",
  "kind": "theorem",
  "lexical_name": "diagonal_tendsto_psiHalf",
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
  "slug": "diagonal-tendsto-psihalf--7992b09e04d369cf0f231acd",
  "source": {
    "blob": "607e6774caa9e0a89dd64f884ab7d59eea3e2a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7992b09e04d369cf0f231acde136f3b6e8214369d1aa0f6badaace084c0462ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5605f33-05b1-19f8-b5e5-7516f3cc4527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_tendsto_psiHalf (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => finiteNormalizedPointwise M (radius n) (T n)) atTop
        (𝓝 (psiHalf (M:ℝ) : ℂ)) ∧
      (∀ n, ‖(psiHalf (M:ℝ):ℂ) - finiteNormalizedPointwise M (radius n) (T n)‖ < radius n) := by
  obtain ⟨T,hT⟩ := exists_diagonal_height M
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  have herr (n : ℕ) : ‖(psiHalf (M:ℝ):ℂ) - finiteNormalizedPointwise M (radius n) (T n)‖ < radius n := by
    apply (norm_pointwise_sub_finite_le M hM (radius n) (T n) (radius_pos n)
      (by have := radius_le_half n; linarith) (by have := radius_le_half n; linarith)
      (by have := (hT n).1; have := Nat.cast_nonneg (α := ℝ) n; linarith)).trans_lt (hT n).2
  refine ⟨T, ?_, ?_, herr⟩
  · apply tendsto_atTop_mono (fun n => (hT n).1)
    exact tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop
  · rw [Metric.tendsto_nhds]
    intro ε hε
    filter_upwards [radius_tendsto_zero.eventually (gt_mem_nhds hε)] with n hn
    rw [dist_eq_norm, norm_sub_rev]
    exact (herr n).trans hn
end GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `607e6774caa9e0a89dd64f884ab7d59eea3e2a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
