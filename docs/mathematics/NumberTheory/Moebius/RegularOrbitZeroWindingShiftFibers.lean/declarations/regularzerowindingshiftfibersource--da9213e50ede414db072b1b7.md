# RegularZeroWindingShiftFiberSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa2121538c9284db15d82db4c6d8fea4f6413d2ed66595800378341baea93781",
  "kind": "def",
  "lexical_name": "RegularZeroWindingShiftFiberSource",
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
  "slug": "regularzerowindingshiftfibersource--da9213e50ede414db072b1b7",
  "source": {
    "blob": "3105c3c2e1215d1e3b6b0be4dfba188a3b43055b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 190,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da9213e50ede414db072b1b7ea984b92c92927c4720d885f49f54570c9c68a22",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa2121538c9284db15d82db4c6d8fea4f6413d2ed66595800378341baea93781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularZeroWindingShiftFiberSource
    (d : RegularZeroWindingShiftFiberSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactAdmissibleShiftSetMatched ∧
    d.solvedHalfIndexMatched ∧
    d.signedBinaryMobiusCoefficientMatched ∧
    d.commonCoordinateFamilyMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingHalfIndexFromCoordinate_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_halfIndex_eq_coordinate_single
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexZeroWindingFiber_eq_shiftCorrelation
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3105c3c2e1215d1e3b6b0be4dfba188a3b43055b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
