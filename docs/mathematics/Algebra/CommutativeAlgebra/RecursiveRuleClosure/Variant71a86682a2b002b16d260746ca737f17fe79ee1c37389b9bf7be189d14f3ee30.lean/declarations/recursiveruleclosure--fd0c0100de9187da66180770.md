# RecursiveRuleClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:343da198ab9297aac13d9886a1fea13e4b8e723c5a2eb743fa1eb5fe958e7f37",
  "kind": "structure",
  "lexical_name": "RecursiveRuleClosure",
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
  "slug": "recursiveruleclosure--fd0c0100de9187da66180770",
  "source": {
    "blob": "e0c7de877ce882750f8c45bf9c37f0bbda1f87ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant71a86682a2b002b16d260746ca737f17fe79ee1c37389b9bf7be189d14f3ee30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd0c0100de9187da6618077040bb8b2913c721ef82fb4da9cd1d2c4c2ebbd6ee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant71a86682a2b002b16d260746ca737f17fe79ee1c37389b9bf7be189d14f3ee30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:343da198ab9297aac13d9886a1fea13e4b8e723c5a2eb743fa1eb5fe958e7f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RecursiveRuleClosure where
  inputFrame : LeanProjectFiniteFrame
  inputRules : RecursiveRuleset
  outputFrame : LeanProjectFiniteFrame
  outputRules : RecursiveRuleset
  compressedWord : CompressedWord
  workspace : WorkspaceDensityCertificate
  moveLog : SurgeryMoveLog
  closureGraph : TheoremTraversalGraph
  verifier : DecompressionVerifier closureGraph
  preservesVerifier : Prop
  preservesVerifier_certified : preservesVerifier
  preservesDecompressionCorrectness : Prop
  preservesDecompressionCorrectness_certified :
    preservesDecompressionCorrectness
  ruleGrowthPolynomial : Prop
  ruleGrowthPolynomial_certified : ruleGrowthPolynomial
  sourceLabel : String

/-- The input BinaryMatrixStream of a recursive closure step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant71a86682a2b002b16d260746ca737f17fe79ee1c37389b9bf7be189d14f3ee30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant71a86682a2b002b16d260746ca737f17fe79ee1c37389b9bf7be189d14f3ee30.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c7de877ce882750f8c45bf9c37f0bbda1f87ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
