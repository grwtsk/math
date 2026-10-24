# RegularQuarticOffDiagonalCancellationSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b201cb304c1248049158e1f55f6047d9fcc6ae2c5a0abea0149d8f3b6c0b3b6",
  "kind": "def",
  "lexical_name": "RegularQuarticOffDiagonalCancellationSource",
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
  "slug": "regularquarticoffdiagonalcancellationsource--c5ed5341289e300aaaf86ff4",
  "source": {
    "blob": "bcf01bf3b1dd0d213726d9327f0d0cc24869760d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5ed5341289e300aaaf86ff454b5f17501af036a087851a8d90866e58e100551",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b201cb304c1248049158e1f55f6047d9fcc6ae2c5a0abea0149d8f3b6c0b3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularQuarticOffDiagonalCancellationSource
    (d : RegularQuarticOffDiagonalCancellationSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactCongruenceFamilyMatched ∧
    d.literalDiagonalExcluded ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveSquareModuliMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftQuarticDiagonal_eq_of_moduli
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularQuarticCancellationMustRemainCoupled_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalObstruction.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf01bf3b1dd0d213726d9327f0d0cc24869760d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
