# positivePairs_fst_weightedCorrection_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c65c2678-44dc-1705-65ed-b342197019ff",
  "kind": "theorem",
  "lexical_name": "positivePairs_fst_weightedCorrection_sum_le",
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
  "slug": "positivepairs-fst-weightedcorrection-sum-le--8cc0876fa3d0a1517bac1b48",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 449,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc0876fa3d0a1517bac1b485ba90b1c163608e73d6828906e0a342ac2db898a",
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

Occurrence: `result:c65c2678-44dc-1705-65ed-b342197019ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePairs_fst_weightedCorrection_sum_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1)
      ≤
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hsubset :=
    fejerPositiveOffDiagonalPairs_subset_product X
  have hcard :
      (fejerOctaveIndexSet X).card = 2 * X := by
    unfold fejerOctaveIndexSet
    rw [Nat.card_Ioc]
    omega
  calc
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1)
      ≤
    ∑ p ∈ fejerOctaveIndexSet X ×ˢ fejerOctaveIndexSet X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1 := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro p hp hnot
        have hpI := Finset.mem_product.mp hp
        exact
          nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
            hreg hm0 hm1 hpI.1
    _ =
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerWeightedPrimePowerCorrectionMass X N m := by
        exact sum_product_fst_eq_card_mul_sum
          (fejerOctaveIndexSet X)
          (nonAliasingFejerWeightedPrimePowerCorrection X N m)
    _ ≤
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        exact mul_le_mul_of_nonneg_left
          (fejerWeightedPrimePowerCorrectionMass_le_raw
            hreg hm0 hm1)
          (by positivity)
    _ =
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        rw [hcard]
        push_cast

/-- Positive-pair correlation for centered von Mangoldt atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
