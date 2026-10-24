# sublemma_1_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d13c17aa-6dcc-ef49-e4de-83909e2ab113",
  "kind": "theorem",
  "lexical_name": "sublemma_1_1",
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
  "slug": "sublemma-1-1--7b4fecda5b28918fcb1c1ac2",
  "source": {
    "blob": "db0b0a618f107a58f1285f605631a4cf012a1ab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 38,
    "path": "GRWTSK/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b4fecda5b28918fcb1c1ac25778f1529aeaba586d89c2eb49467aa4baef8358",
  "verification": {
    "reference": "docs/verification/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d13c17aa-6dcc-ef49-e4de-83909e2ab113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublemma_1_1 {x : ℝ} (hx : 0 < x) :
    ψ x = ∑' (k : ℕ), θ (x ^ (1 / ((k.succ : ℕ) : ℝ))) := by
  have theta_zero_large_k :
      ∀ k : ℕ, ⌊log x / Real.log 2⌋₊ ≤ k →
        θ (x ^ (1 / ((k.succ : ℕ) : ℝ))) = 0 := by
    refine fun k hk ↦ theta_eq_zero_of_lt_two ?_
    by_cases hx1 : x < 1
    · linarith [rpow_le_one hx.le hx1.le (one_div_cast_nonneg k.succ)]
    have : log x / Real.log 2 < k.succ := by
      calc log x / Real.log 2
          < ⌊log x / Real.log 2⌋₊ + 1 := lt_floor_add_one _
        _ ≤ k + 1 := by exact_mod_cast Nat.add_le_add_right hk 1
        _ = (k.succ : ℝ) := by simp [succ_eq_add_one]
    have : Real.log x < k.succ * Real.log 2 := by
      linarith [(div_lt_iff₀ (log_pos one_lt_two)).mp this]
    have : Real.log x < Real.log (2 ^ (k.succ : ℕ)) := by
      rw [Real.log_pow]
      exact this
    have : x < 2 ^ (k.succ : ℕ) := (log_lt_log_iff hx (by positivity)).mp this
    calc x ^ (1 / ((k.succ : ℕ) : ℝ))
        = x ^ (((k.succ : ℕ) : ℝ)⁻¹) := by rw [one_div]
      _ < (2 ^ (k.succ : ℕ)) ^ (((k.succ : ℕ) : ℝ)⁻¹) :=
          rpow_lt_rpow hx.le this <| inv_pos.mpr <| cast_pos.mpr k.succ_pos
      _ = 2 := by
        rw [← rpow_natCast, ← rpow_mul zero_le_two, mul_inv_cancel₀, rpow_one]
        positivity
  rw [tsum_eq_sum (s := Iio ⌊log x / Real.log 2⌋₊)
    (fun k hk ↦ theta_zero_large_k k (not_lt.mp (mem_Iio.not.mp hk)))]
  by_cases hx1 : x < 1
  · have : ψ x = 0 := psi_eq_zero_of_lt_two <| by linarith
    refine this ▸ (sum_eq_zero fun k _ ↦ theta_eq_zero_of_lt_two ?_).symm
    linarith [rpow_le_one hx.le hx1.le (one_div_cast_nonneg k.succ)]
  have h_eq :
      ∑ k ∈ Iio ⌊log x / Real.log 2⌋₊,
          θ (x ^ (1 / (↑k.succ : ℝ))) =
        ∑ k ∈ Icc 1 ⌊log x / Real.log 2⌋₊,
          θ (x ^ (1 / (↑k : ℝ))) := by
    refine sum_bij' (fun k _ ↦ k.succ) (fun k _ ↦ k.pred)
      (fun k hk ↦ mem_Icc.mpr ⟨k.succ_pos, mem_Iio.mp hk⟩)
      (fun k hk ↦ by
        have ⟨hk1, hk2⟩ := mem_Icc.mp hk
        exact mem_Iio.mpr (pred_lt_pred (one_le_iff_ne_zero.mp hk1) (lt_succ_of_le hk2)))
      (fun k _ ↦ Nat.pred_succ k)
      (fun k hk ↦ succ_pred_eq_of_pos (mem_Icc.mp hk).1)
      (fun _ _ ↦ rfl)
  rw [h_eq]
  simpa using psi_eq_sum_theta hx.le

@[blueprint
  "costa-pereira-sublemma-1-2"
  (title := "Costa-Pereira Sublemma 1.2")
  (statement :=
    /-- For every $x > 0$ and $n$ we have
    $\psi(x^{1/n})
      = \sum_{k \geqslant 1} \theta(x^{1/nk})$. -/)
  (proof :=
    /-- Follows from Sublemma
    \ref{costa-pereira-sublemma-1-1}
    and substitution.-/)
  (latexEnv := "sublemma")
  (discussion := 677)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CostaPereira/Variant6186215d9bafd7a3b274560bfa975562a8306fb5ad85bdb42ee4731596300e3c.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db0b0a618f107a58f1285f605631a4cf012a1ab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
