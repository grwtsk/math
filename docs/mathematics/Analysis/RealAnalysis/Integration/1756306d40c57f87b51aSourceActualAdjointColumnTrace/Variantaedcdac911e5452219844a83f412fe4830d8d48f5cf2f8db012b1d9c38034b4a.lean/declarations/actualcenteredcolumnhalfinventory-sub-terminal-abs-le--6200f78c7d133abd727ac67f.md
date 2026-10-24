# actualCenteredColumnHalfInventory_sub_terminal_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98056de9-2bff-aa31-d222-9ba052281a5b",
  "kind": "theorem",
  "lexical_name": "actualCenteredColumnHalfInventory_sub_terminal_abs_le",
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
  "slug": "actualcenteredcolumnhalfinventory-sub-terminal-abs-le--6200f78c7d133abd727ac67f",
  "source": {
    "blob": "f836426536b7865ecc7680fe29f2d9498dcad8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6200f78c7d133abd727ac67f06d9256916be662c62340dde06fe521949737112",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98056de9-2bff-aa31-d222-9ba052281a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredColumnHalfInventory_sub_terminal_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A| ≤
      ((vaughanCutoff A : ℝ) - 1) *
        (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) -
          1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) := by
  have hl := (column_orders hA).1
  have hab := (column_orders hA).2
  let C : ℝ := (vaughanCutoff A : ℝ) - 1
  have hi : IntervalIntegrable (fun s : ℝ => C * Real.exp (-s / 2)) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (by fun_prop : Continuous (fun s : ℝ => C * Real.exp (-s / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ s, s ∈ Ioc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
      (actualColumnUpper A) →
      ‖Real.exp (-s / 2) * actualLogColumnPrefix A s‖ ≤ C * Real.exp (-s / 2) := by
    filter_upwards with s hs
    simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
      using mul_le_mul_of_nonneg_left (actualLogColumnPrefix_abs_le hA (hl.trans hs.1.le))
        (Real.exp_pos (-s / 2)).le
  have hn := intervalIntegral.norm_integral_le_of_norm_le hab hb hi
  rw [intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hab,
    weighted_column_integral_eq hA, Real.norm_eq_abs, abs_mul] at hn
  have hK : 0 < ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) by
      have := actual_column_window_nonempty hA
      omega)
  rw [show actualColumnUpper A =
      Real.log ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) by rfl,
    exp_neg_log_half _ (by positivity), exp_neg_log_half _ hK] at hn
  norm_num at hn
  dsimp only [C] at hn
  simp only [Nat.cast_add, Nat.cast_one, one_div] at hn ⊢
  nlinarith

/-- The actual lower Q trace retains the finite upper-anchor decay factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f836426536b7865ecc7680fe29f2d9498dcad8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
