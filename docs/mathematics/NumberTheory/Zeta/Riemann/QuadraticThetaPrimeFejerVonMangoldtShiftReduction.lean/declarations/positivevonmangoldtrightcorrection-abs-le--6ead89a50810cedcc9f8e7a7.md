# positiveVonMangoldtRightCorrection_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eddbda73-31f7-3cd1-f745-db385a6b9609",
  "kind": "theorem",
  "lexical_name": "positiveVonMangoldtRightCorrection_abs_le",
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
  "slug": "positivevonmangoldtrightcorrection-abs-le--6ead89a50810cedcc9f8e7a7",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 659,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ead89a50810cedcc9f8e7a7d066392b4f2799c916b86d991f490fb9664fe96c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eddbda73-31f7-3cd1-f745-db385a6b9609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveVonMangoldtRightCorrection_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m|
      ≤
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hB0 :=
    one_add_log_four_mul_nonnegative hreg.1
  unfold nonAliasingFejerPositiveVonMangoldtRightCorrection
  calc
    |∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2|
      ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      |nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2| :=
          abs_sum_le_sum_abs _ _
    _ =
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      |nonAliasingFejerWeightedVonMangoldtAtom X N m p.1| *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 := by
          apply Finset.sum_congr rfl
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          rw [abs_mul,
            abs_of_nonneg
              (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
                hreg hm0 hm1 hpI.2.1)]
    _ ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 := by
          apply Finset.sum_le_sum
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          exact mul_le_mul_of_nonneg_right
            (nonAliasingFejerWeightedVonMangoldtAtom_abs_le
              hreg hm0 hm1 hpI.1)
            (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
              hreg hm0 hm1 hpI.2.1)
    _ =
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      (∑ p ∈ fejerPositiveOffDiagonalPairs X,
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2) := by
          rw [Finset.mul_sum]
    _ ≤
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      ((2 * X : ℝ) *
        fejerHigherPrimePowerCorrectionMass X) := by
          exact mul_le_mul_of_nonneg_left
            (positivePairs_snd_weightedCorrection_sum_le
              hreg hm0 hm1)
            hB0
    _ =
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by ring

/-- The second mixed correction channel has the same bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
