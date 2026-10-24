# abs_conductorThreeLogWeightedSum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b00cbae-211e-7a60-a6be-cb3e8c11549f",
  "kind": "theorem",
  "lexical_name": "abs_conductorThreeLogWeightedSum_le",
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
  "slug": "abs-conductorthreelogweightedsum-le--6e1ab7e47f14f15c587e981c",
  "source": {
    "blob": "1d88b210a2df9e2904154f96a351297f9c87221b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 123,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e1ab7e47f14f15c587e981ceae5f67059a35e8f60dee6ef509f05c0bc590e47",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b00cbae-211e-7a60-a6be-cb3e8c11549f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_conductorThreeLogWeightedSum_le (y : ℕ) :
    |conductorThreeLogWeightedSum y| ≤
      2 * Real.log ((max 1 y : ℕ) : ℝ) := by
  cases y with
  | zero => simp [conductorThreeLogWeightedSum]
  | succ y =>
      have hypos : 0 < y + 1 := by omega
      have hlog0 : 0 ≤ Real.log (y + 1 : ℕ) :=
        Real.log_nonneg (by exact_mod_cast (show 1 ≤ y + 1 by omega))
      rw [conductorThreeLogWeightedSum_eq_abel]
      calc
        |Real.log ((y + 1 : ℕ) : ℝ) *
              conductorThreeCharacterPartialSum (y + 1 + 1) -
            ∑ n ∈ Finset.range (y + 1),
              (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                conductorThreeCharacterPartialSum (n + 1)| ≤
            |Real.log ((y + 1 : ℕ) : ℝ) *
              conductorThreeCharacterPartialSum (y + 1 + 1)| +
              |∑ n ∈ Finset.range (y + 1),
                (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                  conductorThreeCharacterPartialSum (n + 1)| := abs_sub _ _
        _ ≤ Real.log ((y + 1 : ℕ) : ℝ) +
              Real.log ((y + 1 : ℕ) : ℝ) := by
          gcongr
          · rw [abs_mul, abs_of_nonneg hlog0]
            exact mul_le_of_le_one_right hlog0
              (abs_conductorThreeCharacterPartialSum_le_one (y + 1 + 1))
          · calc
              |∑ n ∈ Finset.range (y + 1),
                  (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                    conductorThreeCharacterPartialSum (n + 1)| ≤
                  ∑ n ∈ Finset.range (y + 1),
                    |(Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                      conductorThreeCharacterPartialSum (n + 1)| :=
                Finset.abs_sum_le_sum_abs _ _
              _ ≤ ∑ n ∈ Finset.range (y + 1),
                    (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) := by
                apply Finset.sum_le_sum
                intro n hn
                have hinc := log_increment_nonneg n
                rw [abs_mul, abs_of_nonneg hinc]
                exact mul_le_of_le_one_right hinc
                  (abs_conductorThreeCharacterPartialSum_le_one (n + 1))
              _ = Real.log ((y + 1 : ℕ) : ℝ) :=
                sum_log_increment (y + 1)
        _ = 2 * Real.log ((max 1 (y + 1) : ℕ) : ℝ) := by
          rw [max_eq_right (show 1 ≤ y + 1 by omega)]
          ring

/-! ## Expanded elementary Vaughan components

The definitions below are the finite sums obtained after factoring `chi_3`
through the Type I variables and carrying out the innermost character sum.
They deliberately remain separate from the convolution-form prefixes in
`ConductorThreeTwistedVaughan`: identifying the two presentations is a
finite convolution-reindexing theorem, not an estimate.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d88b210a2df9e2904154f96a351297f9c87221b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
