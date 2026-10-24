# heightShell_norm_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a97a023-d0cf-997c-c92b-0906a34855ba",
  "kind": "theorem",
  "lexical_name": "heightShell_norm_sum_le",
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
  "slug": "heightshell-norm-sum-le--4c3ccf0070ca47a552e0a526",
  "source": {
    "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 289,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3ccf0070ca47a552e0a52603f65466e84f168e264923a80fec40130f351daa",
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

Occurrence: `result:7a97a023-d0cf-997c-c92b-0906a34855ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heightShell_norm_sum_le (C A T : ℝ) (hC : 0 < C)
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4)
    (hA : 1 ≤ A) (hT : 2 ≤ T) (j : ℕ) :
    (∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖) ≤
      (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) := by
  have hZ := Z0_pos
  have hN : 1 ≤ ⌊T⌋₊ := (Nat.one_le_floor_iff T).mpr (by linarith)
  have hn : (1 : ℝ) ≤ (j + ⌊T⌋₊ : ℝ) := by exact_mod_cast (show 1 ≤ j + ⌊T⌋₊ by omega)
  have hnpos : (0 : ℝ) < (j + ⌊T⌋₊ : ℝ) := by linarith
  have hpoint (o : HeightShell T j) :
      ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖ ≤
        (decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6 := by
    have hb := Nat.floor_le (norm_nonneg (shiftedValue o.val.val))
    change (shellIndex o.val.val : ℝ) ≤ ‖shiftedValue o.val.val‖ at hb
    have ho : shellIndex o.val.val = j + ⌊T⌋₊ := (heightShellToShell T j o).property
    rw [ho, Nat.cast_add] at hb
    calc
      _ ≤ (decayConstant A ^ 2 / Z0) / ‖shiftedValue o.val.val‖ ^ 6 :=
        normalized_square_norm_le A hA _
          ⟨(shiftedValue_strip o.val.val).1.le, (shiftedValue_strip o.val.val).2.le⟩ (hn.trans hb)
      _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (pow_pos hnpos _)
        (pow_le_pow_left₀ (by positivity) hb 6)
  have hcard : (Nat.card (HeightShell T j) : ℝ) ≤ C * (j + ⌊T⌋₊ + 1 : ℝ) ^ 4 :=
    (show (Nat.card (HeightShell T j) : ℝ) ≤ Nat.card (ZeroShell (j + ⌊T⌋₊)) by
      exact_mod_cast heightShell_card_le T j).trans (by simpa only [Nat.cast_add] using hc (j + ⌊T⌋₊))
  have hp : (j + ⌊T⌋₊ + 1 : ℝ) ^ 4 ≤ 16 * (j + ⌊T⌋₊ : ℝ) ^ 4 := by
    calc
      _ ≤ (2 * (j + ⌊T⌋₊ : ℝ)) ^ 4 := pow_le_pow_left₀ (by positivity) (by linarith) 4
      _ = _ := by ring
  have := heightShell_finite T j
  let := Fintype.ofFinite (HeightShell T j)
  calc
    _ ≤ ∑' _o : HeightShell T j, (decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6 :=
      Summable.tsum_le_tsum hpoint Summable.of_finite Summable.of_finite
    _ = (Nat.card (HeightShell T j) : ℝ) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (C * (j + ⌊T⌋₊ + 1 : ℝ) ^ 4) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) :=
      mul_le_mul_of_nonneg_right hcard (by positivity)
    _ ≤ (C * (16 * (j + ⌊T⌋₊ : ℝ) ^ 4)) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp hC.le) (by positivity)
    _ = _ := by
      rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg hnpos.le, Real.rpow_natCast]
      field_simp

/-- The exact strict-height ordinary-square family is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
