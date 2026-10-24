# RegularCenteredAffineFourMobiusSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7240cab79a0a52acf1727bf5a1b87298accccdfec392928a8e63875e9047b0e1",
  "kind": "def",
  "lexical_name": "RegularCenteredAffineFourMobiusSource",
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
  "slug": "regularcenteredaffinefourmobiussource--30ad96dcd0a5d53c3a75cb9f",
  "source": {
    "blob": "13aa9c8cf64916dbfca516e4126ca636dceffaa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30ad96dcd0a5d53c3a75cb9fd33a0452713b4f77f4b1a91feb8d849da7d6ae08",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7240cab79a0a52acf1727bf5a1b87298accccdfec392928a8e63875e9047b0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularCenteredAffineFourMobiusSource
    (d : RegularCenteredAffineFourMobiusSourceData) : Prop :=
  d.theoremStatement ∧
  d.symmetricFirstPairMatched ∧
  d.symmetricSecondPairMatched ∧
  d.centerLagMatched ∧
  d.fourMobiusCoefficientMatched ∧
  d.admissibleShiftFibersMatched ∧
  d.centerAmplitudeProductMatched ∧
  d.positiveLagCovarianceMatched ∧
  d.squareModulusWindingLagMatched ∧
  d.bothOrientationsMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.analyticEnvelopeExplicit ∧
  d.binaryChowlaNotAssertedSufficient

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13aa9c8cf64916dbfca516e4126ca636dceffaa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
