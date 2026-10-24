# unit_second_derivative_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d94cb29f507722480ad82437f9823c35503bae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c96773d3-c2ac-b681-3691-2f4a98a576d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5729eca1-668b-9982-e5a2-2834f05a8d15",
  "kind": "theorem",
  "lexical_name": "unit_second_derivative_square_integral",
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
  "slug": "unit-second-derivative-square-integral--3bea5bd18170ee24945567ac",
  "source": {
    "blob": "6d94cb29f507722480ad82437f9823c35503bae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bea5bd18170ee24945567ac62a1188c90cdc5befc7ec5cba3c7816a45ec3731",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5729eca1-668b-9982-e5a2-2834f05a8d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unit_second_derivative_square_integral (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      (32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4) := by
  have expand : (fun x : ℝ ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      fun x ↦ unitFourth x ^ 2 / A ^ 8 -
        (unitFourth x * unitSecond x) / (2 * A ^ 6) + unitSecond x ^ 2 / (16 * A ^ 4) := by
    funext x
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; dsimp [unitSecond, unitFourth]; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub, intervalIntegral.integral_div,
      unitFourth_square_integral, unitFourth_mul_second_integral, unitSecond_square_integral]
  ring

/-- Exact second-derivative energy retains the original normalization and every scale power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d94cb29f507722480ad82437f9823c35503bae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
