# squarefreeWeightSum_subtract_four_nine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:642c64f4-86c9-cee4-628c-db0327193e28",
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
  "slug": "squarefreeweightsum-subtract-four-nine--430a3788d13fb319c90f882a",
  "source": {
    "blob": "fc2dbd532d3735536d198f95d7f5b6753e839dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:430a3788d13fb319c90f882a453f2fee2e9e6bf1852242b1c102dd7bf42b11d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:642c64f4-86c9-cee4-628c-db0327193e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–94.

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
      obtain ⟨j, rfl⟩ := h4
      rw [mobius_four_mul_zero]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_pos h9, if_pos h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      obtain ⟨j, rfl⟩ := h4
      rw [mobius_four_mul_zero]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_neg h9, if_neg h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      obtain ⟨j, rfl⟩ := h9
      rw [mobius_nine_mul_zero]
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
  norm_num only [Real.sqrt_natCast_ofNat] at hs
  exact hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2dbd532d3735536d198f95d7f5b6753e839dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
