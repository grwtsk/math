# seed_error_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6756c41d-ca92-dc8e-b072-b156c0fb3d6f",
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
  "slug": "seed-error-identity--cae18ab1b3ef92a9c3f07b88",
  "source": {
    "blob": "b0f536ec4d8db80e5fbae4e62270e033d501b02c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae18ab1b3ef92a9c3f07b88b7c14d5d157f5f68bfd3f3113acd49cd6ead36ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6756c41d-ca92-dc8e-b072-b156c0fb3d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seed_error_identity : RationalPowerEvaluation.seedError 2
    (sourceExponent center) (schedule 2) = (errorNum : ℚ) / errorDen := by
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

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0f536ec4d8db80e5fbae4e62270e033d501b02c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
