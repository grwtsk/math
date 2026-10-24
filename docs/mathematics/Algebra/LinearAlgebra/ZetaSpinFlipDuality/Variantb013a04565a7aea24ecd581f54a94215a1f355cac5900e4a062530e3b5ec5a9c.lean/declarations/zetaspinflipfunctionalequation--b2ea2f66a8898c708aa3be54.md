# ZetaSpinFlipFunctionalEquation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1434bd821b6453707ce62685d08754917c2a6be8961484ef2dc6f07698f4bdbb",
  "kind": "structure",
  "lexical_name": "ZetaSpinFlipFunctionalEquation",
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
  "slug": "zetaspinflipfunctionalequation--b2ea2f66a8898c708aa3be54",
  "source": {
    "blob": "c9ffc8c74e06c41e2ea14c37d9ba2dded554ecd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2ea2f66a8898c708aa3be546e75f8e183ab9a64f149dedf5307acf03dfbe0d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1434bd821b6453707ce62685d08754917c2a6be8961484ef2dc6f07698f4bdbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaSpinFlipFunctionalEquation (N : Nat) where
  duality : ZetaSpinFlipDualityOperator N
  carrier : FlipGroupRingCarrier N
  eigenvalue : ℂ
  dualityEquation :
    duality.toFun carrier = fun g : FlipCarrier N => eigenvalue * carrier g
  finiteCarrierEquation : Bool
  finiteCarrierEquation_eq_true : finiteCarrierEquation = true
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

/-- Projection of the pure finite duality/eigenvector law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ffc8c74e06c41e2ea14c37d9ba2dded554ecd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
