# mobiusReciprocalSum_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8ba45e-c503-833e-db04-7b0c470d496e",
  "kind": "theorem",
  "lexical_name": "mobiusReciprocalSum_abs_le_one",
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
  "slug": "mobiusreciprocalsum-abs-le-one--74b860affc48bad2395efa16",
  "source": {
    "blob": "b85975f3cd71f41e3230493e1280b987bb4bc37e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 40,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variant82d26837d14ca56b3e5e1d44012c6dbedb06acae172108853698e6d7e5b6fb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b860affc48bad2395efa16633926f2edb5b3a79c94c058eb877a0143d72e3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variant82d26837d14ca56b3e5e1d44012c6dbedb06acae172108853698e6d7e5b6fb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8ba45e-c503-833e-db04-7b0c470d496e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusReciprocalSum_abs_le_one (X : ℕ) : |mobiusReciprocalSum X| ≤ 1 := by
  by_cases hX0 : X = 0
  · simp [hX0, mobiusReciprocalSum]
  have hX : 1 ≤ X := by omega
  have hrX : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have hsum : |∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)| ≤ (X : ℝ) - 1 := by
    have hterm (d : ℕ) (hd : d ∈ Icc 1 X) :
        |(ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d)| ≤
          if d = 1 then 0 else 1 := by
      by_cases hd1 : d = 1
      · simp [hd1]
      · rw [if_neg hd1, abs_mul, abs_of_nonneg (Int.fract_nonneg _)]
        have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
          exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
        exact (mul_le_mul hm (Int.fract_lt_one _).le (Int.fract_nonneg _) zero_le_one).trans_eq
          (by norm_num)
    calc
      _ ≤ ∑ d ∈ Icc 1 X, |(ArithmeticFunction.moebius d : ℝ) *
          Int.fract ((X : ℝ) / d)| := abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1 := sum_le_sum hterm
      _ = _ := by
        have he : (∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1) =
            (∑ d ∈ Icc 1 X, (1 : ℝ)) - ∑ d ∈ Icc 1 X, if d = 1 then (1 : ℝ) else 0 := by
          rw [← sum_sub_distrib]
          apply sum_congr rfl
          intro d hd
          split_ifs <;> norm_num
        rw [he]
        simp [hX]
  have hb : |(X : ℝ) * mobiusReciprocalSum X| ≤ (X : ℝ) := by
    rw [reciprocal_floor_identity X hX]
    have ha := abs_add_le (1 : ℝ) (∑ d ∈ Icc 1 X,
      (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d))
    norm_num at ha
    linarith
  rw [abs_mul, abs_of_pos hrX] at hb
  nlinarith

end
end MobiusUnitBudgetScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variant82d26837d14ca56b3e5e1d44012c6dbedb06acae172108853698e6d7e5b6fb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variant82d26837d14ca56b3e5e1d44012c6dbedb06acae172108853698e6d7e5b6fb69.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b85975f3cd71f41e3230493e1280b987bb4bc37e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
