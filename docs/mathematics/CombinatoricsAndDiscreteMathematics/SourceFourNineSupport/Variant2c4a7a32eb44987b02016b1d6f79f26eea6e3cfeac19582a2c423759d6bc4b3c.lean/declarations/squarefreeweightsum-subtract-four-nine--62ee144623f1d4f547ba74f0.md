# squarefreeWeightSum_subtract_four_nine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3796d4ed-85bb-9718-c2d6-d8c0ec07f606",
  "kind": "theorem",
  "lexical_name": "squarefreeWeightSum_subtract_four_nine",
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
  "slug": "squarefreeweightsum-subtract-four-nine--62ee144623f1d4f547ba74f0",
  "source": {
    "blob": "e7ba4541f5440261e2b61e2bfa4be885778b6d25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant2c4a7a32eb44987b02016b1d6f79f26eea6e3cfeac19582a2c423759d6bc4b3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ee144623f1d4f547ba74f0880befabbbb8750c2419ff4bb8037fe72d2632a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant2c4a7a32eb44987b02016b1d6f79f26eea6e3cfeac19582a2c423759d6bc4b3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3796d4ed-85bb-9718-c2d6-d8c0ec07f606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeWeightSum_subtract_four_nine (N : Nat) :
    squarefreeWeightSum N <= reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 -
      reciprocalSqrtSum (N / 9) / 3 + reciprocalSqrtSum (N / 36) / 6 := by
  classical
  have hpt (d : Nat) :
      abs ((ArithmeticFunction.moebius d : Int) : Real) / Real.sqrt (d : Real) <=
        1 / Real.sqrt (d : Real) - (if 4 ∣ d then 1 / Real.sqrt (d : Real) else 0) -
          (if 9 ∣ d then 1 / Real.sqrt (d : Real) else 0) +
          (if 36 ∣ d then 1 / Real.sqrt (d : Real) else 0) := by
    by_cases h4 : 4 ∣ d <;> by_cases h9 : 9 ∣ d
    · have h36 : 36 ∣ d := by omega
      have hz : ArithmeticFunction.moebius d = 0 := by
        obtain ⟨j, rfl⟩ := h4
        exact mobius_four_mul_zero j
      rw [hz]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_pos h9, if_pos h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      have hz : ArithmeticFunction.moebius d = 0 := by
        obtain ⟨j, rfl⟩ := h4
        exact mobius_four_mul_zero j
      rw [hz]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_neg h9, if_neg h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      have hz : ArithmeticFunction.moebius d = 0 := by
        obtain ⟨j, rfl⟩ := h9
        exact mobius_nine_mul_zero j
      rw [hz]
      simp only [Int.cast_zero, abs_zero, zero_div, if_neg h4, if_pos h9, if_neg h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      simp only [if_neg h4, if_neg h9, if_neg h36, sub_zero, add_zero]
      have hab : abs ((ArithmeticFunction.moebius d : Int) : Real) <= 1 := by
        exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
      exact div_le_div_of_nonneg_right hab (Real.sqrt_nonneg _)
  have hs := Finset.sum_le_sum (fun d (_ : d ∈ Finset.Icc 1 N) => hpt d)
  unfold squarefreeWeightSum reciprocalSqrtSum
  simp_rw [Finset.sum_add_distrib, Finset.sum_sub_distrib] at hs
  rw [reciprocal_multiples_sum 4 N (by norm_num),
    reciprocal_multiples_sum 9 N (by norm_num),
    reciprocal_multiples_sum 36 N (by norm_num)] at hs
  norm_num at hs
  exact hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant2c4a7a32eb44987b02016b1d6f79f26eea6e3cfeac19582a2c423759d6bc4b3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant2c4a7a32eb44987b02016b1d6f79f26eea6e3cfeac19582a2c423759d6bc4b3c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7ba4541f5440261e2b61e2bfa4be885778b6d25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
