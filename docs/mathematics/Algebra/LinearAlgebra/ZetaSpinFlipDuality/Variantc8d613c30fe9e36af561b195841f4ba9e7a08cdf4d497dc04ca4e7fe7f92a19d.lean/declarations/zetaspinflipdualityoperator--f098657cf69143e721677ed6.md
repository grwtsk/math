# ZetaSpinFlipDualityOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:367297befa0b7ee9a0f1bd5a17793d0d99cd1fa99667e6ff21c06b390f090810",
  "kind": "structure",
  "lexical_name": "ZetaSpinFlipDualityOperator",
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
  "slug": "zetaspinflipdualityoperator--f098657cf69143e721677ed6",
  "source": {
    "blob": "4b2a48861daa22293522f5120c57ca94c652a875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f098657cf69143e721677ed6e046de949a48cafc192b29198ad54d466fe604c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:367297befa0b7ee9a0f1bd5a17793d0d99cd1fa99667e6ff21c06b390f090810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaSpinFlipDualityOperator (N : Nat) where
  toFun : FlipGroupRingCarrier N → FlipGroupRingCarrier N
  involutive : ∀ A : FlipGroupRingCarrier N, toFun (toFun A) = A
  fixesControlSector : Bool
  fixesControlSector_eq_true : fixesControlSector = true
  harmonicPairingSurface : Bool
  harmonicPairingSurface_eq_true : harmonicPairingSurface = true
  externalFunctionFieldEquationClaim : Bool
  externalFunctionFieldEquationClaim_eq_false :
    externalFunctionFieldEquationClaim = false
  externalRiemannZetaFunctionalEquationClaim : Bool
  externalRiemannZetaFunctionalEquationClaim_eq_false :
    externalRiemannZetaFunctionalEquationClaim = false
  analyticContinuationClaim : Bool
  analyticContinuationClaim_eq_false : analyticContinuationClaim = false
  rhClaim : Bool
  rhClaim_eq_false : rhClaim = false
  theoremPromotionClaim : Bool
  theoremPromotionClaim_eq_false : theoremPromotionClaim = false

/-- Apply a pure finite spin/flip duality operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2a48861daa22293522f5120c57ca94c652a875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
