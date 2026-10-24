# triangular_average_centered_tail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:096cec10-73d2-b9fd-683c-a74f19b81838",
  "kind": "theorem",
  "lexical_name": "triangular_average_centered_tail_tendsto_zero",
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
  "slug": "triangular-average-centered-tail-tendsto-zero--ce90395af2dab37e76fabefb",
  "source": {
    "blob": "09b94bc3dd37ee394ad07dcf427859c6c4b3481f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 14,
    "path": "GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce90395af2dab37e76fabefbed6e4e396f7dd08ac5468a7a3b3fadd50a1002f3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/TriangularCovarianceWeakLaw.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:096cec10-73d2-b9fd-683c-a74f19b81838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangular_average_centered_tail_tendsto_zero
    (X : (n : ℕ) → Fin (n + 1) → Ω → ℝ) (C : ℝ) (δ : ℕ → ℝ)
    (hX : ∀ n i, MemLp (X n i) 2 μ)
    (hdiag : ∀ n i, Var[X n i; μ] ≤ C)
    (hoff : ∀ n i j, i ≠ j → cov[X n i, X n j; μ] ≤ δ n)
    (hδ : Tendsto δ atTop (𝓝 0)) (ε : ℝ) (hε : 0 < ε) :
    let Y := fun (n : ℕ) ω => ((n : ℝ) + 1)⁻¹ * ∑ i, X n i ω
    Tendsto (fun n => μ {ω | ε ≤ |Y n ω - μ[Y n]|}) atTop (𝓝 0) := by
  let Y := fun (n : ℕ) ω => ((n : ℝ) + 1)⁻¹ * ∑ i, X n i ω
  let budget := fun (n : ℕ) => C / ((n : ℝ) + 1) + (1 - ((n : ℝ) + 1)⁻¹) * δ n
  have hY : ∀ n, MemLp (Y n) 2 μ := by
    intro n
    have hs : MemLp (fun ω => ∑ i, X n i ω) 2 μ := by
      simpa using memLp_finsetSum Finset.univ (fun i _ => hX n i)
    exact hs.const_mul _
  have hb : ∀ n, Var[Y n; μ] ≤ budget n := by
    intro n
    simpa [Y, budget] using variance_average_le_covariance_budget
      (X n) C (δ n) (hX n) (hdiag n) (hoff n) (by simp)
  have hinv : Tendsto (fun n : ℕ => ((n : ℝ) + 1)⁻¹) atTop (𝓝 0) := by
    simpa [one_div] using (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ))
  have hbzero : Tendsto budget atTop (𝓝 0) := by
    have h1 := hinv.const_mul C
    have hc : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
    have h2 := (hc.sub hinv).mul hδ
    simpa [budget, div_eq_mul_inv] using h1.add h2
  exact centered_tail_tendsto_zero Y budget hY hb hbzero ε hε
end GRWTSK.Probability.Moments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/TriangularCovarianceWeakLaw.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b94bc3dd37ee394ad07dcf427859c6c4b3481f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
