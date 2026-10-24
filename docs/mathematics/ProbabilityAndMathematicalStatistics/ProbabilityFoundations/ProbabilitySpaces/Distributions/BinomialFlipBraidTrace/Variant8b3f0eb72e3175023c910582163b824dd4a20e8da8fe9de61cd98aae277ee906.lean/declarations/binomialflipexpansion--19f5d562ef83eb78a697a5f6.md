# BinomialFlipExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f008f48983a738b8d1b350a0c116ac090b173fe551db911981f6cd8a4c7531d1",
  "kind": "structure",
  "lexical_name": "BinomialFlipExpansion",
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
  "slug": "binomialflipexpansion--19f5d562ef83eb78a697a5f6",
  "source": {
    "blob": "6b6e2cd7345d5bd1c6a4b8c055c2f509e957198a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19f5d562ef83eb78a697a5f642284350d7a042249d13f1abece038cfae21050d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f008f48983a738b8d1b350a0c116ac090b173fe551db911981f6cd8a4c7531d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinomialFlipExpansion where
  expansionId : String
  degree : Nat
  flipTerms : List BinomialFlipTerm
  monomialSpinOperators : List MonomialSpinOperator
  binomialFlipExpansionDeclared : Bool
  monomialSpinOperatorsDeclared : Bool
  orderedMonomialSupport : Bool
  plusMinusOperatorsDeclared : Bool
  allFlipTermsAccounted : Bool
  allMonomialSpinsAccounted : Bool
  finiteExpansion : Bool
  analyticTraceClaim : Bool
deriving Repr

/-- Minimal finite binomial flip expansion over monomial spin operators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6e2cd7345d5bd1c6a4b8c055c2f509e957198a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
