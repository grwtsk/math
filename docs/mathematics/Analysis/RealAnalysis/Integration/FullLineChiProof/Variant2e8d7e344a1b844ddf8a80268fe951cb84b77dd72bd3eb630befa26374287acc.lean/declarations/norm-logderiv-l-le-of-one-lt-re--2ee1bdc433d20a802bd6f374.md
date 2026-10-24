# norm_logDeriv_L_le_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2895869d-db38-354a-4920-e123788178e9",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_L_le_of_one_lt_re",
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
  "slug": "norm-logderiv-l-le-of-one-lt-re--2ee1bdc433d20a802bd6f374",
  "source": {
    "blob": "14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 310,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee1bdc433d20a802bd6f37481151581737537d7d3beb292970307161cbbe2ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2895869d-db38-354a-4920-e123788178e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_L_le_of_one_lt_re (hχ1 : χ ≠ 1) {c : ℝ} (hc1 : 1 < c) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, ‖logDeriv χ.LFunction ((c : ℂ) + t * I)‖ ≤ M := by
  have hre : ∀ t : ℝ, ((c : ℂ) + t * I).re = c := fun t => by simp
  -- majorant series Σ Λ(n) n^{-c}
  have hs : LSeriesSummable (fun n => (Λ n : ℂ)) (c : ℂ) :=
    ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hc1)
  have hns : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) :=
    summable_norm_iff.mpr hs
  refine ⟨∑' n : ℕ, ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖,
    tsum_nonneg fun _ => norm_nonneg _, fun t => ?_⟩
  have hre1 : 1 < ((c : ℂ) + t * I).re := by rw [hre]; exact hc1
  have h1 : logDeriv χ.LFunction ((c : ℂ) + t * I)
      = -LSeries (fun n => (χ n : ℂ) * (Λ n : ℂ)) ((c : ℂ) + t * I) := by
    rw [← neg_logDeriv_LFunction_eq hχ1 hre1]; ring
  have hle : ∀ n : ℕ, ‖LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) ((c : ℂ) + t * I) n‖
      ≤ ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖ := by
    intro n
    rcases eq_or_ne n 0 with rfl | hn
    · simp [LSeries.term_zero]
    · rw [LSeries.term_of_ne_zero hn, LSeries.term_of_ne_zero hn, norm_div, norm_div, norm_mul,
        Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn),
        Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn), hre, Complex.ofReal_re]
      have hχb := DirichletCharacter.norm_le_one χ (n : ZMod q)
      have hΛ : 0 ≤ ‖((Λ n : ℝ) : ℂ)‖ := norm_nonneg _
      have hrp : (0:ℝ) < (n:ℝ) ^ c := by positivity
      apply div_le_div_of_nonneg_right _ hrp.le
      calc ‖(χ (n : ZMod q) : ℂ)‖ * ‖((Λ n : ℝ) : ℂ)‖ ≤ 1 * ‖((Λ n : ℝ) : ℂ)‖ := by gcongr
        _ = _ := one_mul _
  have hsum' : Summable (fun n : ℕ => ‖LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) ((c : ℂ) + t * I) n‖) :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hle hns
  rw [h1, norm_neg, LSeries]
  exact (norm_tsum_le_tsum_norm hsum').trans (Summable.tsum_le_tsum hle hsum' hns)

/-- `t ↦ L'/L(χ)(c+it)` is continuous for c > 1 (χ ≠ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
