# bklnw_lemma_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d73e02c-46bd-7b8b-7683-63a8cd796b3e",
  "kind": "theorem",
  "lexical_name": "bklnw_lemma_8",
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
  "slug": "bklnw-lemma-8--55d34b59afc8e0f99211cc91",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1167,
    "line": 1136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d34b59afc8e0f99211cc91dc2895077126c4a8511158d69a208e3817bfeafd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d73e02c-46bd-7b8b-7683-63a8cd796b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1136–1167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_lemma_8 (k n : ℕ) (a : ℕ → ℝ) (ε : ℝ → ℝ) (b b' x₀ : ℝ)
  (hk : 1 ≤ k ∧ k ≤ 5)
  (hbk : b ≥ 2 * k) (hbx₀ : x₀ ≤ exp b)
  (hx : ∀ x ≥ x₀, ψ x - θ x ≤ ∑ ℓ ∈ Finset.Icc 1 n, a ℓ * x ^ (1 / (ℓ + 1 : ℝ)))
  (hε : ∀ x ≥ exp b, abs (ψ x - x) ≤ ε b * x)
  :
  ∀ x ∈ Set.Icc (exp b) (exp b'), abs (θ x - x) ≤ B k n a ε b b' * x / (log x)^k := by
  intro x hx_mem
  have hx_ge_exp_b : x ≥ exp b := hx_mem.1
  have hx_le_exp_b' : x ≤ exp b' := hx_mem.2
  have hx_ge_x0 : x ≥ x₀ := hbx₀.trans hx_ge_exp_b
  have hx_pos : 0 < x := lt_of_lt_of_le (exp_pos b) hx_ge_exp_b
  have h_log_x_pos : 0 < log x := by
    have hk_real : (k : ℝ) ≥ 1 := by exact_mod_cast hk.1
    have h_log_ge : b ≤ log x := (log_exp b).symm ▸ log_le_log (exp_pos b) hx_ge_exp_b
    linarith [h_log_ge, hbk, hk_real]
  calc
    abs (θ x - x) ≤ abs (θ x - ψ x) + abs (ψ x - x) := abs_sub_le (θ x) (ψ x) x
    _ = (ψ x - θ x) + abs (ψ x - x) := by
      rw [abs_sub_comm, abs_of_nonneg (sub_nonneg.mpr (theta_le_psi x))]
    _ ≤ (∑ ℓ ∈ Finset.Icc 1 n, a ℓ * x ^ (1 / (ℓ + 1 : ℝ))) + ε b * x :=
      add_le_add (hx x hx_ge_x0) (hε x hx_ge_exp_b)
    _ = ((∑ ℓ ∈ Finset.Icc 1 n, a ℓ * (log x)^k * x ^ (-(ℓ:ℝ) / (ℓ + 1))) + ε b * (log x) ^ k) * (x / (log x)^k) := by
      rw [add_mul, Finset.sum_mul]
      congr 1
      · exact Finset.sum_congr rfl fun ℓ _ => bklnw_lemma_8_term_eq k ℓ x (a ℓ) hx_pos h_log_x_pos
      · field_simp
    _ ≤ B k n a ε b b' * (x / (log x)^k) :=
      mul_le_mul_of_nonneg_right (bklnw_lemma_8_bound_le_B k n a ε b b' x hx_mem) (by positivity)
    _ = B k n a ε b b' * x / (log x)^k := by
      field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
