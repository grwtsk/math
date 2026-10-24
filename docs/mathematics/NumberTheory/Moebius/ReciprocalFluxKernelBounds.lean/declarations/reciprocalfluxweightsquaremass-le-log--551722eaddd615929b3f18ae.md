# reciprocalFluxWeightSquareMass_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:952e5f0c-7b6d-298e-f900-f04da8e6ebba",
  "kind": "theorem",
  "lexical_name": "reciprocalFluxWeightSquareMass_le_log",
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
  "slug": "reciprocalfluxweightsquaremass-le-log--551722eaddd615929b3f18ae",
  "source": {
    "blob": "846c5cf5f51498a60713fa2394b89dce2361d0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551722eaddd615929b3f18aecac46264665f02fd114eedab61c1496cac9202d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952e5f0c-7b6d-298e-f900-f04da8e6ebba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalFluxWeightSquareMass_le_log {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) ≤ u) :
    reciprocalFluxWeightSquareMass u n ≤ 4 + 2 * Real.log n := by
  have hx : (0 : ℝ) < n := by exact_mod_cast hn
  have hexp : Real.exp (-u) ≤ 1 / (n : ℝ) := by
    calc
      Real.exp (-u) ≤ Real.exp (-Real.log (n : ℝ)) :=
        Real.exp_le_exp.mpr (neg_le_neg hlo)
      _ = 1 / (n : ℝ) := by rw [Real.exp_neg, Real.exp_log hx, one_div]
  have hhalf : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  unfold reciprocalFluxWeightSquareMass reciprocalFluxWeight
  calc
    (∑ k ∈ Finset.range n,
      (Real.exp (-u / 2) -
        (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))) ^ 2) ≤
        ∑ k ∈ Finset.range n,
          (2 * Real.exp (-u) + 2 / ((k + 1 : ℕ) : ℝ)) := by
      apply Finset.sum_le_sum
      intro k _hk
      calc
        _ ≤ 2 * Real.exp (-u / 2) ^ 2 +
            2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 := by
          nlinarith [sq_nonneg (Real.exp (-u / 2) +
            (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)))]
        _ ≤ 2 * Real.exp (-u) + 2 / ((k + 1 : ℕ) : ℝ) := by
          rw [hhalf]
          calc
            2 * Real.exp (-u) +
                2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 ≤
              2 * Real.exp (-u) + 2 * (1 / ((k + 1 : ℕ) : ℝ)) :=
                add_le_add (le_refl _)
                  (mul_le_mul_of_nonneg_left
                    (sqrt_increment_sq_le_reciprocal k) (by norm_num))
            _ = _ := by ring
    _ = 2 * (n : ℝ) * Real.exp (-u) + 2 * (harmonic n : ℝ) := by
      rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_range,
        harmonic, Rat.cast_sum]
      simp_rw [Rat.cast_inv, Rat.cast_natCast, nsmul_eq_mul, Finset.mul_sum,
        div_eq_mul_inv]
      ring
    _ ≤ 2 + 2 * (1 + Real.log n) := by
      have hnexp : (n : ℝ) * Real.exp (-u) ≤ 1 := by
        calc
          _ ≤ (n : ℝ) * (1 / (n : ℝ)) :=
            mul_le_mul_of_nonneg_left hexp hx.le
          _ = 1 := by field_simp
      have hharm : (harmonic n : ℝ) ≤ 1 + Real.log n :=
        harmonic_le_one_add_log n
      linarith
    _ = 4 + 2 * Real.log n := by ring

end GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds.sqrt_increment_sq_le_reciprocal
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds.reciprocalFluxWeightSquareMass_le_log
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846c5cf5f51498a60713fa2394b89dce2361d0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
