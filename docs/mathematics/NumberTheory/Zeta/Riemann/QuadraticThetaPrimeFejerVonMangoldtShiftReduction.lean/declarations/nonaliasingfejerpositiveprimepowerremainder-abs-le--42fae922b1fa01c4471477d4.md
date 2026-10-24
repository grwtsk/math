# nonAliasingFejerPositivePrimePowerRemainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6794f0f-070f-32b4-de31-c30527d807cb",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerPositivePrimePowerRemainder_abs_le",
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
  "slug": "nonaliasingfejerpositiveprimepowerremainder-abs-le--42fae922b1fa01c4471477d4",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 855,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42fae922b1fa01c4471477d4c2f504ee84a245d010ad94c61c51ebf66e469936",
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

Occurrence: `result:c6794f0f-070f-32b4-de31-c30527d807cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerPositivePrimePowerRemainder_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositivePrimePowerRemainder X N m|
      ≤
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hR :=
    positiveVonMangoldtRightCorrection_abs_le
      hreg hm0 hm1
  have hL :=
    positiveCorrectionLeftVonMangoldt_abs_le
      hreg hm0 hm1
  have hQ :=
    positiveCorrectionPairCorrelation_abs_le
      hreg hm0 hm1
  unfold nonAliasingFejerPositivePrimePowerRemainder
  calc
    |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
        nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m +
        nonAliasingFejerPositiveCorrectionPairCorrelation X N m|
      ≤
    |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
      |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
      |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
        calc
          |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
              nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m +
              nonAliasingFejerPositiveCorrectionPairCorrelation X N m|
            ≤
          |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
              nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| :=
              abs_add _ _
          _ ≤
          (|- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
              |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m|) +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
              exact add_le_add_right
                (abs_sub
                  (- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m)
                  (nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m))
                _
          _ =
          |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
            |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
              rw [abs_neg]
    _ ≤
    3 * ((2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X) := by
        linarith
    _ =
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
        push_cast
        ring

/-- Exact target-scale statement for the higher-prime-power remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
