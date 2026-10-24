# completeSpace_lp_of_cauchy_complete_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc5dce49-97f0-25e6-4509-a7d4cd2fa191",
  "kind": "theorem",
  "lexical_name": "completeSpace_lp_of_cauchy_complete_eLpNorm",
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
  "slug": "completespace-lp-of-cauchy-complete-elpnorm--31da74f28e0107648d195788",
  "source": {
    "blob": "df15e6c16bee2c1e7d25800d677338ed9caf0605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31da74f28e0107648d195788bbd677d95d630467dd0403335c7a0a4551bb1869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc5dce49-97f0-25e6-4509-a7d4cd2fa191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeSpace_lp_of_cauchy_complete_eLpNorm [hp : Fact (1 ≤ p)]
    (H :
      ∀ (f : ℕ → α → E) (_ : ∀ n, MemLp (f n) p μ) (B : ℕ → ℝ≥0∞) (_ : ∑' i, B i < ∞)
        (_ : ∀ N n m : ℕ, N ≤ n → N ≤ m → eLpNorm (f n - f m) p μ < B N),
        ∃ (f_lim : α → E), MemLp f_lim p μ ∧
          atTop.Tendsto (fun n => eLpNorm (f n - f_lim) p μ) (𝓝 0)) :
    CompleteSpace (Lp E p μ) := by
  let B := fun n : ℕ => ((1 : ℝ) / 2) ^ n
  have hB_pos : ∀ n, 0 < B n := fun n => pow_pos (div_pos zero_lt_one zero_lt_two) n
  refine Metric.complete_of_convergent_controlled_sequences B hB_pos fun f hf => ?_
  rsuffices ⟨f_lim, hf_lim_meas, h_tendsto⟩ :
    ∃ (f_lim : α → E), MemLp f_lim p μ ∧
      atTop.Tendsto (fun n => eLpNorm (⇑(f n) - f_lim) p μ) (𝓝 0)
  · exact ⟨hf_lim_meas.toLp f_lim, tendsto_Lp_of_tendsto_eLpNorm f_lim hf_lim_meas h_tendsto⟩
  obtain ⟨M, hB⟩ : Summable B := summable_geometric_two
  let B1 n := ENNReal.ofReal (B n)
  have hB1_has : HasSum B1 (ENNReal.ofReal M) := by
    have h_tsum_B1 : ∑' i, B1 i = ENNReal.ofReal M := by
      change (∑' n : ℕ, ENNReal.ofReal (B n)) = ENNReal.ofReal M
      rw [← hB.tsum_eq]
      exact (ENNReal.ofReal_tsum_of_nonneg (fun n => le_of_lt (hB_pos n)) hB.summable).symm
    have h_sum := (@ENNReal.summable _ B1).hasSum
    rwa [h_tsum_B1] at h_sum
  have hB1 : ∑' i, B1 i < ∞ := by
    rw [hB1_has.tsum_eq]
    exact ENNReal.ofReal_lt_top
  let f1 : ℕ → α → E := fun n => f n
  refine H f1 (fun n => Lp.memLp (f n)) B1 hB1 fun N n m hn hm => ?_
  specialize hf N n m hn hm
  rw [dist_def] at hf
  dsimp only [f1]
  rwa [ENNReal.lt_ofReal_iff_toReal_lt]
  rw [eLpNorm_congr_ae (Lp.coeFn_sub _ _).symm]
  exact Lp.eLpNorm_ne_top _

/-! ### Prove that controlled Cauchy sequences of `ℒp` have limits in `ℒp` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df15e6c16bee2c1e7d25800d677338ed9caf0605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
