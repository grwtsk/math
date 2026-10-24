# actualXiLogStep_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6a9b1d1-7441-a7dc-7ea6-3a409f5b3cc8",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_error_abs_le",
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
  "slug": "actualxilogstep-error-abs-le--13f73dfa087d6aa5aa731263",
  "source": {
    "blob": "57076c84c1d43790b33578f7b3ef9223e98cf962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant7d76e5949d4b927cb6b4bac4459aa461b2ee00ab49f844351d4a4f8f6b96f757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f73dfa087d6aa5aa731263f7c3d84345c6f4f731730dce4da525eb4a2db7d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant7d76e5949d4b927cb6b4bac4459aa461b2ee00ab49f844351d4a4f8f6b96f757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6a9b1d1-7441-a7dc-7ea6-3a409f5b3cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_error_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤
      Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-t / 2) := by
  obtain ⟨hn, hh⟩ := actualXiLogStep_floor_guards ht
  have hnp : 0 < (Nat.floor (Real.exp t) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp t) by omega)
  have hsp : 0 < Real.sqrt (Nat.floor (Real.exp t) : ℝ) := Real.sqrt_pos.2 hnp
  have h2p : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hb := actualAnchoredXiTailPrimitive_cell_abs_le hn
    (Nat.floor_le (Real.exp_pos t).le)
    (by simpa only [Nat.cast_add, Nat.cast_one] using
      (Nat.lt_floor_add_one (Real.exp t)).le)
  rw [Real.log_exp] at hb
  change |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤
    actualXiCellOscillationConstant / Real.sqrt (Nat.floor (Real.exp t) : ℝ) at hb
  have hs := Real.sqrt_le_sqrt hh
  rw [Real.sqrt_div (Real.exp_pos t).le, sqrt_exp_half] at hs
  have hlo : Real.exp (t / 2) ≤ Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp t) : ℝ) := by
    simpa only [mul_comm] using (div_le_iff₀ h2p).1 hs
  apply hb.trans
  calc
    _ = (Real.sqrt 2 * actualXiCellOscillationConstant) /
        (Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp t) : ℝ)) := by field_simp
    _ ≤ (Real.sqrt 2 * actualXiCellOscillationConstant) / Real.exp (t / 2) :=
      div_le_div_of_nonneg_left (mul_nonneg h2p.le cell_constant_nonneg)
        (Real.exp_pos _) hlo
    _ = _ := by
      rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
      ring

/-- Genuine finite primitive L1 follows from its proved absolute continuity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant7d76e5949d4b927cb6b4bac4459aa461b2ee00ab49f844351d4a4f8f6b96f757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant7d76e5949d4b927cb6b4bac4459aa461b2ee00ab49f844351d4a4f8f6b96f757.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57076c84c1d43790b33578f7b3ef9223e98cf962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
