# unitSecondEnergyProfile_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd4d91fa-3ef3-7a5d-3d82-c08963754b23",
  "kind": "theorem",
  "lexical_name": "unitSecondEnergyProfile_square_integral",
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
  "slug": "unitsecondenergyprofile-square-integral--d11fdc5a35f2469c98992ab9",
  "source": {
    "blob": "1d1d9ddf4417a2fe0686237fc901224d77a8d769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variant5bf5f4a83c6452847d57e6dcb31a3fd98109ec2864f011fa8452b6a647f4a52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d11fdc5a35f2469c98992ab9b8b345c49f6dca6fbf5b4aab94dc21e0420bf8a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variant5bf5f4a83c6452847d57e6dcb31a3fd98109ec2864f011fa8452b6a647f4a52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd4d91fa-3ef3-7a5d-3d82-c08963754b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitSecondEnergyProfile_square_integral (theta : ℝ) :
    (∫ x : ℝ, unitSecondEnergyProfile theta x ^ 2) =
      fourthDisplacementEnergyPolynomial theta := by
  have he : (fun x => unitSecondEnergyProfile theta x ^ 2) =
      (Icc (-1 : ℝ) 1).indicator (fun x => (theta * unitFourth x - unitSecond x / 4) ^ 2) := by
    funext x
    simp only [unitSecondEnergyProfile, indicator_apply]
    split_ifs <;> simp
  rw [he, zeroExtension_integral _ (-1) 1 (by norm_num)]
  have hh : (fun x : ℝ => (theta * unitFourth x - unitSecond x / 4) ^ 2) =
      fun x => theta ^ 2 * (unitFourth x ^ 2) -
        (theta / 2) * (unitFourth x * unitSecond x) + unitSecond x ^ 2 / 16 := by
    funext x
    ring
  rw [hh]
  simp (disch := (apply Continuous.intervalIntegrable; dsimp [unitFourth, unitSecond]; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_div,
      unitFourth_square_integral, unitFourth_mul_second_integral, unitSecond_square_integral]
  unfold fourthDisplacementEnergyPolynomial
  ring

/-- Integrability is a conclusion from the actual AE representation, not a premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variant5bf5f4a83c6452847d57e6dcb31a3fd98109ec2864f011fa8452b6a647f4a52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variant5bf5f4a83c6452847d57e6dcb31a3fd98109ec2864f011fa8452b6a647f4a52a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1d9ddf4417a2fe0686237fc901224d77a8d769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
