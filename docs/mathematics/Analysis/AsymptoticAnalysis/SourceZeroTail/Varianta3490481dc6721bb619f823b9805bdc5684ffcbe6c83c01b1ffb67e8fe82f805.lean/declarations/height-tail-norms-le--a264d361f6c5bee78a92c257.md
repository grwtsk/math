# height_tail_norms_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caef8761-3ae5-9ca7-6cb4-46c56d3ecd67",
  "kind": "theorem",
  "lexical_name": "height_tail_norms_le",
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
  "slug": "height-tail-norms-le--a264d361f6c5bee78a92c257",
  "source": {
    "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 339,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a264d361f6c5bee78a92c257c61c80c3149475f46d77224ad65adc6f953bb071",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caef8761-3ae5-9ca7-6cb4-46c56d3ecd67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem height_tail_norms_le (C A T : ℝ) (hC : 0 < C)
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val) ^ 2‖) ≤
      64 * C * (decayConstant A ^ 2 / Z0) / T := by
  have hZ := Z0_pos
  have hN : 1 ≤ ⌊T⌋₊ := (Nat.one_le_floor_iff T).mpr (by linarith)
  have hNpos : 0 < (⌊T⌋₊ : ℝ) := by exact_mod_cast (show 0 < ⌊T⌋₊ by omega)
  have hs := (normalized_square_norms_summable A hA).subtype
    {o : ZeroOccurrence | T < |(shiftedValue o).im|}
  have hpart : HasSum
      (fun j : ℕ ↦ ∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖)
      (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val) ^ 2‖) := by
    convert hs.hasSum.tsum_fiberwise (fun o : HeightTail T ↦ shellIndex o.val - ⌊T⌋₊) using 1 <;> rfl
  have hm : Summable
      (fun j : ℕ ↦ (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ)) := by
    have hh : Summable (fun j : ℕ ↦ (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ)) := by
      simpa only [Nat.cast_add] using (summable_nat_add_iff ⌊T⌋₊).mpr
        (Real.summable_nat_rpow.mpr (by norm_num : (-2 : ℝ) < -1))
    exact hh.mul_left _
  calc
    _ = ∑' j : ℕ, ∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖ :=
      hpart.tsum_eq.symm
    _ ≤ ∑' j : ℕ, (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) :=
      Summable.tsum_le_tsum (heightShell_norm_sum_le C A T hC hc hA hT) hpart.summable hm
    _ = (16 * C * (decayConstant A ^ 2 / Z0)) * ∑' j : ℕ, (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) :=
      tsum_mul_left
    _ ≤ (16 * C * (decayConstant A ^ 2 / Z0)) * (2 / (⌊T⌋₊ : ℝ)) :=
      mul_le_mul_of_nonneg_left (pseries_tail_le ⌊T⌋₊ hN) (by positivity)
    _ = 32 * C * (decayConstant A ^ 2 / Z0) / (⌊T⌋₊ : ℝ) := by ring
    _ ≤ 32 * C * (decayConstant A ^ 2 / Z0) / (T / 2) :=
      div_le_div_of_nonneg_left (by positivity) (by linarith) (floor_half_le T hT)
    _ = _ := by ring

/-- Norms majorize only the omitted ordinary-complex-square readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
