# eq_of_derivative_mul_one_add_X_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5886eeeb-7821-c562-8129-91a10ecefeaf",
  "kind": "theorem",
  "lexical_name": "eq_of_derivative_mul_one_add_X_eq_self",
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
  "slug": "eq-of-derivative-mul-one-add-x-eq-self--722d6bed24e9cfe39f5d1f2a",
  "source": {
    "blob": "8ee568ff86c5f98b8614f356c07032ac3e339509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 124,
    "path": "GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:722d6bed24e9cfe39f5d1f2a6189870a4524a84ea8941da1491d4519988519ed",
  "verification": {
    "reference": "docs/verification/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5886eeeb-7821-c562-8129-91a10ecefeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_derivative_mul_one_add_X_eq_self [IsAddTorsionFree A]
    {g : A⟦X⟧} (hderiv : d⁄dX g * (1 + X) = g) :
    g = constantCoeff g • (1 + X) := by
  have : Invertible (1 + X : A⟦X⟧) := (isUnit_iff_constantCoeff.mpr (by simp)).invertible
  have hcu : constantCoeff (⅟(1 + X) : A⟦X⟧) = 1 := by
    have h := congrArg (constantCoeff (R := A)) (mul_invOf_self (1 + X : A⟦X⟧))
    rw [map_mul] at h
    simpa using h
  have hg : g * ⅟(1 + X) = d⁄dX g := by
    conv_lhs => rw [← hderiv]
    rw [mul_assoc, mul_invOf_self, mul_one]
  have key : g * ⅟(1 + X) = C (constantCoeff g) := by
    refine derivative.ext ?_ ?_
    · simp only [Derivation.leibniz, derivative_invOf, map_add, derivative_one, derivative_X,
        zero_add, derivative_C, mul_one, smul_eq_mul, ← hg]
      ring
    · simp [hcu]
  rw [smul_eq_C_mul, ← key, mul_assoc, invOf_mul_self, mul_one]

variable (A) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee568ff86c5f98b8614f356c07032ac3e339509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
