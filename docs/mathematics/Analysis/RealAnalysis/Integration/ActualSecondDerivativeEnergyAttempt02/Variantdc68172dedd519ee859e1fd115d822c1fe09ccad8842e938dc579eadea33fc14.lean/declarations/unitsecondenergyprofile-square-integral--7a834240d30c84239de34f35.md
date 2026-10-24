# unitSecondEnergyProfile_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8a821bea8a5fbe471067e46dc9df309e1a5361b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3220869-8007-c622-0a25-249f2ae9a441",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a4ceb88-dbca-91f7-b054-756c01fdf66f",
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
  "slug": "unitsecondenergyprofile-square-integral--7a834240d30c84239de34f35",
  "source": {
    "blob": "f8a821bea8a5fbe471067e46dc9df309e1a5361b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a834240d30c84239de34f351070dd4c72ed04437b686820a8c1daeecbd2605e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4ceb88-dbca-91f7-b054-756c01fdf66f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–167.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a821bea8a5fbe471067e46dc9df309e1a5361b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
