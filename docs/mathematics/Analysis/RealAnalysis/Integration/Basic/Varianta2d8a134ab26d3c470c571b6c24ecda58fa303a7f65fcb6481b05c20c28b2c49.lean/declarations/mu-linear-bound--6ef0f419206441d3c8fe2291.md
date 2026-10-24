# mu_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f553df-c67f-1cba-52d8-b5908aeb211d",
  "kind": "lemma",
  "lexical_name": "mu_linear_bound",
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
  "slug": "mu-linear-bound--6ef0f419206441d3c8fe2291",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 1000,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef0f419206441d3c8fe229155f33c4ffb0ab95674f2f1d93c9d7549e839d8ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f553df-c67f-1cba-52d8-b5908aeb211d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_linear_bound (hΓ : Zeta23.GammaFacts) : ∃ M : ℝ, 0 ≤ M ∧ ∀ τ, |Zeta23.mu τ| ≤ M + |τ| := by
  obtain ⟨C, hC⟩ := hΓ.stirling
  obtain ⟨M₁, hM₁⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hΓ.smooth.continuous.continuousOn (s := Set.Icc (-1 : ℝ) 1))
  refine ⟨max M₁ (1 + |C|), le_max_of_le_right (by positivity), fun τ => ?_⟩
  rcases le_or_gt 1 |τ| with h1 | h1
  · -- |τ| ≥ 1: Stirling
    have hst := hC τ h1
    have hx : 0 < |τ| / (2 * π) := by positivity
    have hlog : |Real.log (|τ| / (2 * π))| ≤ |τ| / (2 * π) + 2 * π := by
      rw [abs_le]; constructor
      · have := Real.log_le_sub_one_of_pos (inv_pos.2 hx)
        rw [Real.log_inv] at this
        have : (|τ| / (2 * π))⁻¹ ≤ 2 * π := by
          rw [inv_div, div_le_iff₀ (by linarith : (0:ℝ) < |τ|)]; nlinarith [Real.pi_pos]
        linarith
      · linarith [Real.log_le_sub_one_of_pos hx, Real.pi_pos]
    have hCτ : C / τ ^ 2 ≤ |C| := by
      calc C / τ ^ 2 ≤ |C| / τ ^ 2 := by gcongr; exact le_abs_self _
        _ ≤ |C| / 1 := by
            apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos; nlinarith [sq_abs τ]
        _ = |C| := div_one _
    have h2 : |1 / (2 * π) * Real.log (|τ| / (2 * π))| ≤ 1 + |τ| := by
      rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1 / (2 * π))]
      calc 1 / (2 * π) * |Real.log (|τ| / (2 * π))| ≤ 1 / (2 * π) * (|τ| / (2 * π) + 2 * π) := by
            gcongr
        _ = |τ| / (2 * π) ^ 2 + 1 := by field_simp
        _ ≤ |τ| / 1 + 1 := by
            gcongr; nlinarith [Real.pi_gt_three]
        _ = 1 + |τ| := by ring
    calc |Zeta23.mu τ| = |(Zeta23.mu τ - 1 / (2 * π) * Real.log (|τ| / (2 * π)))
          + 1 / (2 * π) * Real.log (|τ| / (2 * π))| := by ring_nf
      _ ≤ |Zeta23.mu τ - 1 / (2 * π) * Real.log (|τ| / (2 * π))|
          + |1 / (2 * π) * Real.log (|τ| / (2 * π))| := abs_add_le _ _
      _ ≤ |C| + (1 + |τ|) := add_le_add (hst.trans hCτ) h2
      _ ≤ max M₁ (1 + |C|) + |τ| := by linarith [le_max_right M₁ (1 + |C|)]
  · have := hM₁ τ ⟨by linarith [neg_abs_le τ], by linarith [le_abs_self τ]⟩
    simp only [Real.norm_eq_abs] at this
    linarith [le_max_left M₁ (1 + |C|), abs_nonneg τ]

/-- From H-Γ [eq:mufacts] `μ' ≪ |τ|⁻¹` + the crude bound: for `t ≥ 2` and all `r`,
`|μ(t+r) − μ(t)| ≤ (K|r| + 10r²)/t`.  (§5.2: `≪ |r|/T` for `|r| ≤ τ_k/2` by the mean value
theorem; for `|r| > τ_k/2` we use `2|r|/t > 1` to absorb the crude bound into the `r²/t` term.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
