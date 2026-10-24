# tendsto_exp_div_pow_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e1b5866-77e8-485c-4d97-2adbe46ccbaf",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_div_pow_atTop",
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
  "slug": "tendsto-exp-div-pow-attop--52b0cb010a789e95d4791eda",
  "source": {
    "blob": "6292e48b94f7cf07b3bfcfcf263bcadc31717e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 258,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52b0cb010a789e95d4791eda83e2cf1d1c731a51f1ef1a3e8d86f7f9db7f3493",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1b5866-77e8-485c-4d97-2adbe46ccbaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_div_pow_atTop (n : ℕ) : Tendsto (fun x => exp x / x ^ n) atTop atTop := by
  refine (atTop_basis_Ioi.tendsto_iff (atTop_basis' 1)).2 fun C hC₁ => ?_
  have hC₀ : 0 < C := zero_lt_one.trans_le hC₁
  have : 0 < (exp 1 * C)⁻¹ := inv_pos.2 (mul_pos (exp_pos _) hC₀)
  obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ k ≥ N, (↑k : ℝ) ^ n / exp 1 ^ k < (exp 1 * C)⁻¹ :=
    eventually_atTop.1
      ((tendsto_pow_const_div_const_pow_of_one_lt n (one_lt_exp_iff.2 zero_lt_one)).eventually
        (gt_mem_nhds this))
  simp only [← exp_nat_mul, mul_one, div_lt_iff₀, exp_pos, ← div_eq_inv_mul] at hN
  refine ⟨N, trivial, fun x hx => ?_⟩
  rw [Set.mem_Ioi] at hx
  have hx₀ : 0 < x := (Nat.cast_nonneg N).trans_lt hx
  rw [Set.mem_Ici, le_div_iff₀ (pow_pos hx₀ _), ← le_div_iff₀' hC₀]
  calc
    x ^ n ≤ ⌈x⌉₊ ^ n := by gcongr; exact Nat.le_ceil _
    _ ≤ exp ⌈x⌉₊ / (exp 1 * C) := mod_cast (hN _ (Nat.lt_ceil.2 hx).le).le
    _ ≤ exp (x + 1) / (exp 1 * C) := by gcongr; exact (Nat.ceil_lt_add_one hx₀.le).le
    _ = exp x / C := by rw [add_comm, exp_add, mul_div_mul_left _ _ (exp_pos _).ne']

/-- The function `x^n * exp(-x)` tends to `0` at `+∞`, for any natural number `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6292e48b94f7cf07b3bfcfcf263bcadc31717e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
