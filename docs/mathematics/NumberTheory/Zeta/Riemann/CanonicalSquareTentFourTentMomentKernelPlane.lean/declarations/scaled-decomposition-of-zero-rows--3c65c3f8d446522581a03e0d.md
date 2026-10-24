# scaled_decomposition_of_zero_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67cb2ca3-c428-fff3-797c-9f673a9b824a",
  "kind": "theorem",
  "lexical_name": "scaled_decomposition_of_zero_rows",
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
  "slug": "scaled-decomposition-of-zero-rows--3c65c3f8d446522581a03e0d",
  "source": {
    "blob": "3fc41b00fb882d2dc93f46e9d2bb79bafec780d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c65c3f8d446522581a03e0d95f8cc4fc6f82e13859f0b9ee7ca248644d49a76",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67cb2ca3-c428-fff3-797c-9f673a9b824a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_decomposition_of_zero_rows
    (u : Combination 3)
    (hOrd : fourTentOrdinaryRow u = 0)
    (hRec : fourTentReciprocalRow u = 0) :
    ∀ i : Fin 4,
      cofactorTwo * u i =
        u (2 : Fin 4) * stageFourKernelVector i +
          u (3 : Fin 4) * stageFiveKernelVector i := by
  change (u (0 : Fin 4) * ordinaryAt 0 + u (1 : Fin 4) * ordinaryAt 1) +
      u (2 : Fin 4) * ordinaryAt 2 +
      u (3 : Fin 4) * ordinaryAt 3 = 0 at hOrd
  change (u (0 : Fin 4) * reciprocalAt 0 + u (1 : Fin 4) * reciprocalAt 1) +
      u (2 : Fin 4) * reciprocalAt 2 +
      u (3 : Fin 4) * reciprocalAt 3 = 0 at hRec
  have h0 :
      cofactorTwo * u (0 : Fin 4) =
        u (2 : Fin 4) * extraCofactorZero 2 +
          u (3 : Fin 4) * extraCofactorZero 3 := by
    unfold cofactorTwo extraCofactorZero
    dsimp [ordinaryAt, reciprocalAt] at *
    linear_combination
      (realOrdinaryMoment 1 : ℂ) * hRec -
        (realMultiplicativeMoment 1 : ℂ) * hOrd
  have h1 :
      cofactorTwo * u (1 : Fin 4) =
        u (2 : Fin 4) * extraCofactorOne 2 +
          u (3 : Fin 4) * extraCofactorOne 3 := by
    unfold cofactorTwo extraCofactorOne
    dsimp [ordinaryAt, reciprocalAt] at *
    linear_combination
      (realMultiplicativeMoment 0 : ℂ) * hOrd -
        (realOrdinaryMoment 0 : ℂ) * hRec
  intro i
  fin_cases i
  · simpa [stageFourKernelVector, stageFiveKernelVector] using h0
  · simpa [stageFourKernelVector, stageFiveKernelVector] using h1
  · simp [stageFourKernelVector, stageFiveKernelVector, mul_comm]
  · simp [stageFourKernelVector, stageFiveKernelVector, mul_comm]

/-- The exact four-tent two-moment kernel is the two-dimensional
cofactor span, with no structural assumptions on an analytic test space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc41b00fb882d2dc93f46e9d2bb79bafec780d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
