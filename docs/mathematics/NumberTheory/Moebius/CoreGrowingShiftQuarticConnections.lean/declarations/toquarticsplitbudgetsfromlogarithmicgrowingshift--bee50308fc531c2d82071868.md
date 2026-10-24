# ToQuarticSplitBudgetsFromLogarithmicGrowingShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d5742b9a6e614d353094a90995ea44681d6b4f3905894be997142d566980a7",
  "kind": "structure",
  "lexical_name": "ToQuarticSplitBudgetsFromLogarithmicGrowingShift",
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
  "slug": "toquarticsplitbudgetsfromlogarithmicgrowingshift--bee50308fc531c2d82071868",
  "source": {
    "blob": "cc617f674d7eed25359a3ede099d4978da6d86b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 435,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bee50308fc531c2d82071868860b32c8420025d3eaa7a9947fb0836ccf0529cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d5742b9a6e614d353094a90995ea44681d6b4f3905894be997142d566980a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ToQuarticSplitBudgetsFromLogarithmicGrowingShift
    (d : LogarithmicGrowingShiftCollisionSource) : Type where
  toCollisionLine :
    d.sourceStatement →
      d.logarithmicBaseAverageControl →
      d.ordinaryAverageTransport →
      d.averagingVariableTransport →
      d.dyadicShiftRangeUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation
  toCollisionFree :
    d.sourceStatement →
      d.logarithmicBaseAverageControl →
      d.ordinaryAverageTransport →
      d.averagingVariableTransport →
      d.dyadicShiftRangeUniformity →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc617f674d7eed25359a3ede099d4978da6d86b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
