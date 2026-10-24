# classify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29c31c63a9f3db8e3157af78bc6ee8b632c0af39e9f63c33405004783dcaec0b",
  "kind": "def",
  "lexical_name": "classify",
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
  "slug": "classify--b4db09198e82ca43d2811bb0",
  "source": {
    "blob": "9267351b480dbe210a6c6307e41125fde808b2eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/BoundedCoordinatePresentations/Variant871b94db78850767/SquareAndClassification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4db09198e82ca43d2811bb0d05d225a63418e4831b1b6c7c6069ce5a3290939",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/BoundedCoordinatePresentations/Variant871b94db78850767/SquareAndClassification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29c31c63a9f3db8e3157af78bc6ee8b632c0af39e9f63c33405004783dcaec0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def classify
    (reference point : RhetoricalCoordinate) : RhetoricalRegion :=
  let horizontal := point.structuralHierarchy - reference.structuralHierarchy
  let vertical := point.interpreterPrecision - reference.interpreterPrecision
  if horizontal = 0 ∧ vertical = 0 then .equilibrium
  else if horizontal = 0 ∧ 0 < vertical then .positivePrecisionAxis
  else if horizontal = 0 then .negativePrecisionAxis
  else if vertical = 0 ∧ 0 < horizontal then .positiveStructuralAxis
  else if vertical = 0 then .negativeStructuralAxis
  else if 0 < horizontal ∧ 0 < vertical then .formalHypotaxis
  else if horizontal < 0 ∧ 0 < vertical then .formalParataxis
  else if horizontal < 0 ∧ vertical < 0 then .pragmaticParataxis
  else .pragmaticHypotaxis

end GRWTSK.Analysis.RealAnalysis.RealFunctions.BoundedCoordinatePresentations.Variant871b94db78850767
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/BoundedCoordinatePresentations/Variant871b94db78850767/SquareAndClassification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/BoundedCoordinatePresentations/Variant871b94db78850767/SquareAndClassification.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9267351b480dbe210a6c6307e41125fde808b2eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
