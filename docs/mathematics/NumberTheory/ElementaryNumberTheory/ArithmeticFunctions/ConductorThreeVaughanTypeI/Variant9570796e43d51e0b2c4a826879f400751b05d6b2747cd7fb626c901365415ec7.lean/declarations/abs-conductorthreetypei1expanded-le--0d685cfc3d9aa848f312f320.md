# abs_conductorThreeTypeI1Expanded_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4ae0a7f-5083-131b-527c-3cc965108b82",
  "kind": "theorem",
  "lexical_name": "abs_conductorThreeTypeI1Expanded_le",
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
  "slug": "abs-conductorthreetypei1expanded-le--0d685cfc3d9aa848f312f320",
  "source": {
    "blob": "1d88b210a2df9e2904154f96a351297f9c87221b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 303,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d685cfc3d9aa848f312f320d9cac7528ebad39306a9f40ca208e136ffadbe60",
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

Occurrence: `result:f4ae0a7f-5083-131b-527c-3cc965108b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_conductorThreeTypeI1Expanded_le (U V x : ℕ) :
    |conductorThreeTypeI1Expanded U V x| ≤
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) := by
  rw [conductorThreeTypeI1Expanded, abs_neg]
  calc
    |∑ m ∈ Finset.range (U + 1),
        ∑ d ∈ Finset.range (V + 1),
          ((conductorThreeIntegerValue m : ℝ) *
              ArithmeticFunction.vonMangoldt m) *
            ((conductorThreeIntegerValue d : ℝ) *
              (ArithmeticFunction.moebius d : ℝ)) *
            conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
        ∑ m ∈ Finset.range (U + 1),
          |∑ d ∈ Finset.range (V + 1),
            ((conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m) *
              ((conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)) *
              conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _m ∈ Finset.range (U + 1),
          ∑ _d ∈ Finset.range (V + 1),
            Real.log ((max 1 U : ℕ) : ℝ) := by
      apply Finset.sum_le_sum
      intro m hm
      calc
        |∑ d ∈ Finset.range (V + 1),
            ((conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m) *
              ((conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)) *
              conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
            ∑ d ∈ Finset.range (V + 1),
              |((conductorThreeIntegerValue m : ℝ) *
                  ArithmeticFunction.vonMangoldt m) *
                ((conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)) *
                conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _d ∈ Finset.range (V + 1),
              Real.log ((max 1 U : ℕ) : ℝ) := by
          apply Finset.sum_le_sum
          intro d hd
          rw [abs_mul, abs_mul]
          have hmBound := abs_character_mul_vonMangoldt_le_log_max
            (by have := Finset.mem_range.1 hm; omega : m ≤ U)
          have hdBound := abs_character_mul_moebius_le_one d
          have hpBound := abs_conductorThreeCharacterPartialSum_le_one
            (x / (m * d) + 1)
          have hlog0 := log_max_one_nonneg U
          have hd0 : 0 ≤
              |(conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)| := abs_nonneg _
          have hp0 : 0 ≤
              |conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
            abs_nonneg _
          calc
            |(conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m| *
                |(conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)| *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
              Real.log ((max 1 U : ℕ) : ℝ) *
                |(conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)| *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
              mul_le_mul_of_nonneg_right
                (mul_le_mul_of_nonneg_right hmBound hd0) hp0
            _ ≤ Real.log ((max 1 U : ℕ) : ℝ) *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| := by
              have hmid : Real.log ((max 1 U : ℕ) : ℝ) *
                    |(conductorThreeIntegerValue d : ℝ) *
                      (ArithmeticFunction.moebius d : ℝ)| ≤
                  Real.log ((max 1 U : ℕ) : ℝ) := by
                simpa using mul_le_mul_of_nonneg_left hdBound hlog0
              exact mul_le_mul_of_nonneg_right hmid hp0
            _ ≤ Real.log ((max 1 U : ℕ) : ℝ) := by
              simpa using mul_le_of_le_one_right hlog0 hpBound
    _ = (U + 1 : ℕ) * (V + 1 : ℕ) *
          Real.log ((max 1 U : ℕ) : ℝ) := by
      simp [mul_assoc]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d88b210a2df9e2904154f96a351297f9c87221b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
