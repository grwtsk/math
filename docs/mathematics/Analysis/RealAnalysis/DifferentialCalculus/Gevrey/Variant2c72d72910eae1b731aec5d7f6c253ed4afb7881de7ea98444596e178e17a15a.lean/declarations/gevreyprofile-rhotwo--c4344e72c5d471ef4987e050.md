# gevreyProfile_rhoTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fff182de-e6be-81d7-0439-ad3ae43b7bb7",
  "kind": "theorem",
  "lexical_name": "gevreyProfile_rhoTwo",
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
  "slug": "gevreyprofile-rhotwo--c4344e72c5d471ef4987e050",
  "source": {
    "blob": "b42c6d3993eb756afcffbde22bacb5f0e057649a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 409,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4344e72c5d471ef4987e0501a331ad9c161c630a122d6ba133f20f87e2ba798",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fff182de-e6be-81d7-0439-ad3ae43b7bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gevreyProfile_rhoTwo : GevreyProfile 2 (36 / Real.exp 1) (2 * Real.exp 8) rhoTwo where
  taper := rhoTwo_taper
  smooth := rhoTwo_contDiff
  one_lt := by norm_num
  A_pos := by positivity
  B_pos := by positivity
  bound k hk x := by
    obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
    rw [iteratedDeriv_rhoTwo, abs_mul, abs_inv, abs_of_pos Theta_one_pos]
    have hZ : (Theta 1)⁻¹ ≤ 2 * Real.exp 8 := by
      rw [inv_le_comm₀ Theta_one_pos (by positivity)]
      have := Theta_one_ge
      rw [show (2 * Real.exp 8)⁻¹ = Real.exp (-8) / 2 by rw [Real.exp_neg]; field_simp]
      exact this
    have hθ := abs_iteratedDeriv_theta_le j x
    have hA : (1:ℝ) ≤ 36 / Real.exp 1 := by
      rw [le_div_iff₀ (Real.exp_pos 1)]; have := Real.exp_one_lt_d9; linarith
    -- (36/e)^j j^{2j} ≤ (36/e)^{j+1} (j+1)^{2(j+1)}  and rpow form
    have hrpow : ((j + 1 : ℕ) : ℝ) ^ ((2:ℝ) * ((j + 1 : ℕ) : ℝ)) = ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1)) := by
      rw [show (2:ℝ) * ((j+1 : ℕ) : ℝ) = ((2 * (j+1) : ℕ) : ℝ) by push_cast; ring, Real.rpow_natCast]
    rw [hrpow]
    have hmono : (36 / Real.exp 1) ^ j * (j : ℝ) ^ (2 * j) ≤ (36 / Real.exp 1) ^ (j + 1) * ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1)) := by
      have h1 : (36 / Real.exp 1) ^ j ≤ (36 / Real.exp 1) ^ (j + 1) := pow_le_pow_right₀ hA (Nat.le_succ j)
      have h2 : (j : ℝ) ^ (2 * j) ≤ ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1)) := by
        calc (j : ℝ) ^ (2 * j) ≤ ((j + 1 : ℕ) : ℝ) ^ (2 * j) :=
              pow_le_pow_left₀ (Nat.cast_nonneg _) (by push_cast; linarith) _
          _ ≤ ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1)) :=
              pow_le_pow_right₀ (by push_cast; linarith) (by omega)
      exact mul_le_mul h1 h2 (by positivity) (by positivity)
    calc (Theta 1)⁻¹ * |iteratedDeriv j theta x| ≤ (2 * Real.exp 8) * ((36 / Real.exp 1) ^ j * (j : ℝ) ^ (2 * j)) :=
          mul_le_mul hZ hθ (abs_nonneg _) (by positivity)
      _ ≤ (2 * Real.exp 8) * ((36 / Real.exp 1) ^ (j + 1) * ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1))) :=
          mul_le_mul_of_nonneg_left hmono (by positivity)
      _ = 2 * Real.exp 8 * (36 / Real.exp 1) ^ (j + 1) * ((j + 1 : ℕ) : ℝ) ^ (2 * (j + 1)) := by ring


end Taper
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42c6d3993eb756afcffbde22bacb5f0e057649a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
