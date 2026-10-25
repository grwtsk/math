# FeasibilityProjectionFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44f23204429d30cc63a192c092225ce5ab13fae09123f0f43b702cd074269e17",
  "kind": "structure",
  "lexical_name": "FeasibilityProjectionFacts",
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
  "slug": "feasibilityprojectionfacts--8211ccded413fcb326cfe4a0",
  "source": {
    "blob": "0eeacd91085b184dab9cffcb354df2a121244d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8211ccded413fcb326cfe4a03d4a87f8703a6940c116d064f6d935b589b06319",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44f23204429d30cc63a192c092225ce5ab13fae09123f0f43b702cd074269e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FeasibilityProjectionFacts where
  feasibleBefore : Prop
  feasibleBeforeProof : feasibleBefore
  feasibleAfter : Prop
  feasibleAfterProof : feasibleAfter
  projectionNonexpansive : Prop
  projectionNonexpansiveProof : projectionNonexpansive
  boundaryBeforeZero : Prop
  boundaryBeforeProof : boundaryBeforeZero
  boundaryAfterZero : Prop
  boundaryAfterProof : boundaryAfterZero
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionProof : theoremResolutionPreserved
  identityPreserved : Prop
  identityProof : identityPreserved
  lossRecorded : Prop
  lossProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityProof : noAuthorityCreated

/-- Finite-to-analytic bridge metadata.  The bridge is certificate data, not an
analytic construction by itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eeacd91085b184dab9cffcb354df2a121244d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
