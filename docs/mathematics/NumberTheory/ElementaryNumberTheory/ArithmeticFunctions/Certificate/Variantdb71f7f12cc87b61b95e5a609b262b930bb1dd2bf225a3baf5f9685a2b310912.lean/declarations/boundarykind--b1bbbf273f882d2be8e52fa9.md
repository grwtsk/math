# BoundaryKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42f57260a7a36be782d914427639db43436cf2e7a7afad987e3c105956fc6e1c",
  "kind": "inductive",
  "lexical_name": "BoundaryKind",
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
  "slug": "boundarykind--b1bbbf273f882d2be8e52fa9",
  "source": {
    "blob": "4b0487a78e6b87209cee6d9f224d4df52eef6076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantdb71f7f12cc87b61b95e5a609b262b930bb1dd2bf225a3baf5f9685a2b310912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1bbbf273f882d2be8e52fa9881d7e266b57ceb8c93126108320ff9171539dc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantdb71f7f12cc87b61b95e5a609b262b930bb1dd2bf225a3baf5f9685a2b310912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42f57260a7a36be782d914427639db43436cf2e7a7afad987e3c105956fc6e1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BoundaryKind where
  | finiteArithmetic
  | absoluteConvergence
  | analyticContinuation
  | functionalEquation
  | infiniteEulerProduct
  | zetaZeroLocation
  | fredholmDeterminant
  | connesTrace
  | prismaticComparison
  | spectralConvergence
  | completion
  | zeroFreeRegion
  | explicitFormula
  | centralValueIdentity
  | automorphy
  | cuspidality
  | unitarity
  | temperedness
  | langlandsFunctorialTransfer
  | traceFormulaComparison
  | determinantLine
  | determinantLineFunctoriality
  | zetaRegularizedDeterminant
  | fredholmDeterminantConvergence
  | traceLogExpansion
  | anomalyFormula
  | traceFormula
  | traceFormulaConvergence
  | spectralSideInterpretation
  | geometricSideInterpretation
  | positivityConsequence
  | zeroLocationConsequence
  | cohomologicalComparison
  | comparisonIsomorphism
  | crystallineComparison
  | deRhamComparison
  | etaleComparison
  | hodgeTateComparison
  | bettiComparison
  | motivicComparison
  | intervalArithmetic
  | tailBound
  | contourIntegral
  | argumentPrincipleCount
  | validatedIntegration
  | spectralEnclosure
  | operatorNormBound
  | rigorousQuadrature
  | theoremLevelInterpretation
  | custom : String → BoundaryKind
deriving Repr, DecidableEq

/--
A generic authority certificate.

The `publicHash` field is deliberately finite metadata.  The semantic payload is
the proposition `sound`, and the only way to use it is through `soundProof`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantdb71f7f12cc87b61b95e5a609b262b930bb1dd2bf225a3baf5f9685a2b310912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Certificate/Variantdb71f7f12cc87b61b95e5a609b262b930bb1dd2bf225a3baf5f9685a2b310912.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b0487a78e6b87209cee6d9f224d4df52eef6076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
