# testAgainstNN_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9c5622a-90ef-5162-f728-e71d7d50804c",
  "kind": "theorem",
  "lexical_name": "testAgainstNN_lipschitz",
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
  "slug": "testagainstnn-lipschitz--7701d0ab825ced751c06f63b",
  "source": {
    "blob": "8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7701d0ab825ced751c06f63bd690b6b1066c4530e2e3bd3254ea04bc3fe1a186",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9c5622a-90ef-5162-f728-e71d7d50804c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testAgainstNN_lipschitz (μ : ProbabilityMeasure Ω) :
    LipschitzWith 1 fun f : Ω →ᵇ ℝ≥0 => μ.toFiniteMeasure.testAgainstNN f :=
  μ.mass_toFiniteMeasure ▸ μ.toFiniteMeasure.testAgainstNN_lipschitz
#align measure_theory.probability_measure.test_against_nn_lipschitz MeasureTheory.ProbabilityMeasure.testAgainstNN_lipschitz

/-- The topology of weak convergence on `MeasureTheory.ProbabilityMeasure Ω`. This is inherited
(induced) from the topology of weak convergence of finite measures via the inclusion
`MeasureTheory.ProbabilityMeasure.toFiniteMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
