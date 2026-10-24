# seed_error_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652a48ca-9a4e-36f4-b1c3-9b289de2f448",
  "kind": "theorem",
  "lexical_name": "seed_error_identity",
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
  "slug": "seed-error-identity--c2ed9528a4e6fddff3913331",
  "source": {
    "blob": "b90ac2c3a8eab147d460e3e35c555d3432e35b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ed9528a4e6fddff3913331d1b3a0625729420fe45c4fabc5754dec0ed46302",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:652a48ca-9a4e-36f4-b1c3-9b289de2f448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seed_error_identity : RationalPowerEvaluation.seedError 3
    (sourceExponent center) (schedule 3) = (errorNum : ℚ) / errorDen := by
  have hS : (seedDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt denominators_pos.2.1)
  have hD : (displacementDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt denominators_pos.2.2.2.1)
  have hR : (radiusDen : ℚ) ≠ 0 := by norm_num [radiusDen]
  have hF : (Nat.factorial 22 : ℚ) ≠ 0 := by norm_num
  simp only [RationalPowerEvaluation.seedError, radius_identity,
    displacement_identity, seed_identity]
  rw [rect_decode seedDen denominators_pos.2.1]
  change 2 * ((radiusNum : ℚ) / radiusDen) ^ 22 / (Nat.factorial 22 : ℚ) +
    2 * (((|seedNum.1| + |seedNum.2| : ℤ) : ℚ) / seedDen +
      2 * ((radiusNum : ℚ) / radiusDen) ^ 22 / (Nat.factorial 22 : ℚ)) *
        ((displacementNum : ℚ) / displacementDen) = (errorNum : ℚ) / errorDen
  simp only [errorNum, errorDen, taylorNum, taylorDen, Int.cast_add,
    Int.cast_mul, Int.cast_pow, Int.cast_ofNat, Int.cast_natCast]
  field_simp [hS, hD, hR, hF] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90ac2c3a8eab147d460e3e35c555d3432e35b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
