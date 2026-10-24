# hasSum_pow_div_log_of_abs_lt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebb5b0bf-5dae-750a-b658-ec602672710b",
  "kind": "theorem",
  "lexical_name": "hasSum_pow_div_log_of_abs_lt_1",
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
  "slug": "hassum-pow-div-log-of-abs-lt-1--8676368f30daf09c3018080a",
  "source": {
    "blob": "4b9d1d853c50decf22a0c77c635e9c8352483f89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8676368f30daf09c3018080afbf2495ed6be47c0ce9696fbb093a7cc0d4534f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebb5b0bf-5dae-750a-b658-ec602672710b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_pow_div_log_of_abs_lt_1 {x : ℝ} (h : |x| < 1) :
    HasSum (fun n : ℕ => x ^ (n + 1) / (n + 1)) (-log (1 - x)) := by
  rw [Summable.hasSum_iff_tendsto_nat]
  show Tendsto (fun n : ℕ => ∑ i : ℕ in range n, x ^ (i + 1) / (i + 1)) atTop (𝓝 (-log (1 - x)))
  · rw [tendsto_iff_norm_tendsto_zero]
    simp only [norm_eq_abs, sub_neg_eq_add]
    refine' squeeze_zero (fun n => abs_nonneg _) (abs_log_sub_add_sum_range_le h) _
    suffices Tendsto (fun t : ℕ => |x| ^ (t + 1) / (1 - |x|)) atTop (𝓝 (|x| * 0 / (1 - |x|))) by
      simpa
    simp only [pow_succ]
    refine' (tendsto_const_nhds.mul _).div_const _
    exact tendsto_pow_atTop_nhds_0_of_lt_1 (abs_nonneg _) h
  show Summable fun n : ℕ => x ^ (n + 1) / (n + 1)
  · refine' summable_of_norm_bounded _ (summable_geometric_of_lt_1 (abs_nonneg _) h) fun i => _
    calc
      ‖x ^ (i + 1) / (i + 1)‖ = |x| ^ (i + 1) / (i + 1) := by
        have : (0 : ℝ) ≤ i + 1 := le_of_lt (Nat.cast_add_one_pos i)
        rw [norm_eq_abs, abs_div, ← pow_abs, abs_of_nonneg this]
      _ ≤ |x| ^ (i + 1) / (0 + 1) := by
        gcongr
        exact i.cast_nonneg
      _ ≤ |x| ^ i := by
        simpa [pow_succ'] using mul_le_of_le_one_right (pow_nonneg (abs_nonneg x) i) (le_of_lt h)
#align real.has_sum_pow_div_log_of_abs_lt_1 Real.hasSum_pow_div_log_of_abs_lt_1

/-- Power series expansion of `log(1 + x) - log(1 - x)` for `|x| < 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9d1d853c50decf22a0c77c635e9c8352483f89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
