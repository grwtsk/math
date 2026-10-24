# twoStepQuadraticRecurrence_to_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72278c95-a752-1196-b3e4-a32f50aa4672",
  "kind": "theorem",
  "lexical_name": "twoStepQuadraticRecurrence_to_rh",
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
  "slug": "twostepquadraticrecurrence-to-rh--686682f151aec68a9f9c0d2f",
  "source": {
    "blob": "b268ab0d5c87ab2dd308da2bbc174ac3fccefede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:686682f151aec68a9f9c0d2f558b00e19141016ffe874605e26d6850f32bb395",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72278c95-a752-1196-b3e4-a32f50aa4672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoStepQuadraticRecurrence_to_rh
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (h78 :
      QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8))
    (h34 :
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4)) :
    _root_.RiemannHypothesis := by
  have hdesc78 :
      QuadraticThetaDescentAt ((7 : ℝ) / 8) :=
    quadraticThetaSourceRecurrence_to_descent
      (by norm_num) h78
  have htheta34 :
      AllDyadicThetaAtThreshold ((3 : ℝ) / 4) := by
    simpa using hdesc78 hθ
  have hdesc34 :
      QuadraticThetaDescentAt ((3 : ℝ) / 4) :=
    quadraticThetaSourceRecurrence_to_descent
      (by norm_num) h34
  have hthetaHalf :
      AllDyadicThetaAtThreshold ((1 : ℝ) / 2) := by
    simpa using hdesc34 htheta34
  have hfree :
      RiemannZetaZeroFreeRightHalfPlane ((1 : ℝ) / 2) :=
    thetaAtThreshold_to_sameZeroFree
      (by norm_num) (by norm_num) hthetaHalf
  exact
    riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.mp
      hfree

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b268ab0d5c87ab2dd308da2bbc174ac3fccefede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
