# UniformRecursiveCompressionSmoothing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b1a81d11049522b2879ceed90ecbbebd9307f499c42f7eef77047bf82969204",
  "kind": "structure",
  "lexical_name": "UniformRecursiveCompressionSmoothing",
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
  "slug": "uniformrecursivecompressionsmoothing--e3a5d1338fbeae23394f0cdf",
  "source": {
    "blob": "bdd364eb6ea9ba1d50960c5b57ab30ef0f41bb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant6d6567a0be722abb5a9d6794a742f467b6d644121b645214d3bff59a50cff275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3a5d1338fbeae23394f0cdf2544c50fb774889a5abbdb73d62b48291ffc6771",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant6d6567a0be722abb5a9d6794a742f467b6d644121b645214d3bff59a50cff275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b1a81d11049522b2879ceed90ecbbebd9307f499c42f7eef77047bf82969204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformRecursiveCompressionSmoothing where
  closure : Nat → RecursiveRuleClosure
  allFramesCompressToPolynomialWord : Prop
  allFramesCompressToPolynomialWord_certified :
    allFramesCompressToPolynomialWord
  allRuleGrowthPolynomial : Prop
  allRuleGrowthPolynomial_certified : allRuleGrowthPolynomial
  allWorkspacesNonSticky : Prop
  allWorkspacesNonSticky_certified : allWorkspacesNonSticky
  everyMoveTrackedByRuleLog : Prop
  everyMoveTrackedByRuleLog_certified : everyMoveTrackedByRuleLog
  everyGlitchSmoothableOrClassified : Prop
  everyGlitchSmoothableOrClassified_certified :
    everyGlitchSmoothableOrClassified
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant6d6567a0be722abb5a9d6794a742f467b6d644121b645214d3bff59a50cff275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RecursiveRuleClosure/Variant6d6567a0be722abb5a9d6794a742f467b6d644121b645214d3bff59a50cff275.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd364eb6ea9ba1d50960c5b57ab30ef0f41bb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
