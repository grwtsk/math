# phaseCancellation_to_sineNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0fe2272-eeb1-680f-7837-6b85d3404b10",
  "kind": "theorem",
  "lexical_name": "phaseCancellation_to_sineNorm",
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
  "slug": "phasecancellation-to-sinenorm--c96b4881c60b8c84f45434f6",
  "source": {
    "blob": "35d7af9a1011b0eaf2b40cc833024aeb6627d102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96b4881c60b8c84f45434f6af3393bce8d71d6abe2ad5cc8601889ecf7dcb70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0fe2272-eeb1-680f-7837-6b85d3404b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseCancellation_to_sineNorm
    (hphase : TriangularPhaseConjugateCancellationClaim) :
    TriangularGeometricBlockSineNormOffBoundaryClaim := by
  intro N hN t ht0 htHalf
  rw [triangularGeometricBlock_eq_phase_mul_sineRatio hN ht0 htHalf]
  rw [map_mul]
  let phase :=
    Complex.exp
      ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I)
  have hp : phase * Complex.conj phase = 1 :=
    hphase N hN t ht0 htHalf
  dsimp [phase] at hp ⊢
  rw [mul_assoc]
  rw [show
    Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I) *
        (Complex.sin (Real.pi * (N : ℝ) * t) /
          Complex.sin (Real.pi * t)) *
        (Complex.conj
          (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I)) *
          Complex.conj
            (Complex.sin (Real.pi * (N : ℝ) * t) /
              Complex.sin (Real.pi * t))) =
      (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I) *
        Complex.conj
          (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I))) *
      ((Complex.sin (Real.pi * (N : ℝ) * t) /
          Complex.sin (Real.pi * t)) *
        Complex.conj
          (Complex.sin (Real.pi * (N : ℝ) * t) /
            Complex.sin (Real.pi * t))) by ring]
  rw [hp]
  simp only [one_mul]
  simp only [← Complex.ofReal_sin, map_div, Complex.conj_ofReal]
  ring

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d7af9a1011b0eaf2b40cc833024aeb6627d102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
