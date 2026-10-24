# thetaSevenEighths_twoQuadraticSteps_to_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e2acecf-b700-a58b-f345-774e4654459b",
  "kind": "theorem",
  "lexical_name": "thetaSevenEighths_twoQuadraticSteps_to_half",
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
  "slug": "thetaseveneighths-twoquadraticsteps-to-half--e9d291353c46909cbe0cbbb4",
  "source": {
    "blob": "5fc2870529fabda8b556755c2f6dcf8f694660d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 157,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d291353c46909cbe0cbbb4a62f3b0c775e87924bcf59bfb892558ae9bf55e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2acecf-b700-a58b-f345-774e4654459b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaSevenEighths_twoQuadraticSteps_to_half
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (hcontract : QuadraticThetaDescentSevenEighthsToHalf) :
    AllDyadicThetaAtThreshold ((1 : ℝ) / 2) := by
  have h78 :
      QuadraticThetaDescentAt ((7 : ℝ) / 8) :=
    hcontract ((7 : ℝ) / 8) (by norm_num) (by norm_num)
  have h34 :
      AllDyadicThetaAtThreshold ((3 : ℝ) / 4) := by
    simpa using h78 hθ
  have h34step :
      QuadraticThetaDescentAt ((3 : ℝ) / 4) :=
    hcontract ((3 : ℝ) / 4) (by norm_num) (by norm_num)
  simpa using h34step h34

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc2870529fabda8b556755c2f6dcf8f694660d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
