# zeta_local_zero_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f4373e3-0a34-b530-9f76-355638690b27",
  "kind": "theorem",
  "lexical_name": "zeta_local_zero_count",
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
  "slug": "zeta-local-zero-count--7c14d927cfe3fafb7810e060",
  "source": {
    "blob": "561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 274,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c14d927cfe3fafb7810e060c9e0524361610d1614aafd7611d2fea0919c1eb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f4373e3-0a34-b530-9f76-355638690b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_local_zero_count : ∃ A₀ : ℝ, 1 ≤ A₀ ∧ ∀ t : ℝ,
    (Ncount t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3) := by
  obtain ⟨A₁, hA₁⟩ := half_count_large
  set K : ℝ := (Ncount (-4) 5 : ℝ) with hK
  have hK0 : 0 ≤ K := by positivity
  refine ⟨max 1 (max (2 * A₁) K), le_max_left _ _, fun t => ?_⟩
  have hlog3 : 1 ≤ Real.log (|t| + 3) := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith [abs_nonneg t]
  have hhalf : (Ncount t (t + 1) : ℝ) ≤ 2 * NhalfR t := by
    have := zetaZeroConfig.N_le_two_mul_half t (t + 1)
    simpa [NhalfR, zetaZeroConfig_N] using this
  rcases le_or_gt 4 |t| with ht | ht
  · calc (Ncount t (t + 1) : ℝ) ≤ 2 * NhalfR t := hhalf
      _ ≤ 2 * (A₁ * Real.log (|t| + 3)) := by
          have := hA₁ t ht; nlinarith
      _ = (2 * A₁) * Real.log (|t| + 3) := by ring
      _ ≤ max 1 (max (2 * A₁) K) * Real.log (|t| + 3) := by
          apply mul_le_mul_of_nonneg_right _ (by linarith)
          exact le_trans (le_max_left _ _) (le_max_right _ _)
  · calc (Ncount t (t + 1) : ℝ) ≤ K := count_small t ht.le
      _ ≤ K * Real.log (|t| + 3) := le_mul_of_one_le_right hK0 hlog3
      _ ≤ max 1 (max (2 * A₁) K) * Real.log (|t| + 3) := by
          apply mul_le_mul_of_nonneg_right _ (by linarith)
          exact le_trans (le_max_right _ _) (le_max_right _ _)

/-- The same, in H-RvM's vocabulary (Z.N at Z := zetaZeroConfig). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
