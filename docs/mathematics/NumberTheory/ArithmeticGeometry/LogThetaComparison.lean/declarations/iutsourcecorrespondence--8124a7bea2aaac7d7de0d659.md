# IUTSourceCorrespondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20bbbaff51c93412fb5d7ef4a3c601a55ce6c8e61db46c34e2147617c58299fa",
  "kind": "structure",
  "lexical_name": "IUTSourceCorrespondence",
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
  "slug": "iutsourcecorrespondence--8124a7bea2aaac7d7de0d659",
  "source": {
    "blob": "948cfff86c626c21c4766433b988faf7e18ae493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 79,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8124a7bea2aaac7d7de0d6594a49a9bd6205b11cc8cbc2f81e605d8a39ed7dba",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20bbbaff51c93412fb5d7ef4a3c601a55ce6c8e61db46c34e2147617c58299fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IUTSourceCorrespondence {J : Type*} (D : PilotDiagram J)
    (objectMeaning : SourceLocator → Line.{u} → Prop)
    (arrowMeaning : ∀ {L M : Line.{u}}, SourceLocator → PositiveScaleEquiv L M → Prop)
    (normalizationMeaning : SourceLocator → ℝ → Prop) where
  abstractThetaBinding : LocatedInterpretation objectMeaning D.abstractTheta
  abstractQBinding : LocatedInterpretation objectMeaning D.abstractQ
  concreteThetaBinding : ∀ j, LocatedInterpretation objectMeaning (D.concreteTheta j)
  concreteQBinding : LocatedInterpretation objectMeaning D.concreteQ
  thetaDegreeBinding : LocatedInterpretation objectMeaning D.thetaDegree
  qDegreeBinding : LocatedInterpretation objectMeaning D.qDegree
  thetaRealizationBinding : ∀ j, LocatedInterpretation arrowMeaning (D.thetaRealization j)
  thetaDegreeMapBinding : ∀ j, LocatedInterpretation arrowMeaning (D.thetaDegreeMap j)
  abstractComparisonBinding : LocatedInterpretation arrowMeaning D.abstractComparison
  qRealizationBinding : LocatedInterpretation arrowMeaning D.qRealization
  qDegreeMapBinding : LocatedInterpretation arrowMeaning D.qDegreeMap
  degreeComparisonBinding : LocatedInterpretation arrowMeaning D.degreeComparison
  thetaRealizationNormalization : ∀ j,
    LocatedInterpretation normalizationMeaning (D.thetaRealization j).scale
  thetaDegreeNormalization : ∀ j,
    LocatedInterpretation normalizationMeaning (D.thetaDegreeMap j).scale
  abstractComparisonNormalization :
    LocatedInterpretation normalizationMeaning D.abstractComparison.scale
  qRealizationNormalization : LocatedInterpretation normalizationMeaning D.qRealization.scale
  qDegreeNormalization : LocatedInterpretation normalizationMeaning D.qDegreeMap.scale
  degreeComparisonNormalization :
    LocatedInterpretation normalizationMeaning D.degreeComparison.scale

end GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948cfff86c626c21c4766433b988faf7e18ae493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
