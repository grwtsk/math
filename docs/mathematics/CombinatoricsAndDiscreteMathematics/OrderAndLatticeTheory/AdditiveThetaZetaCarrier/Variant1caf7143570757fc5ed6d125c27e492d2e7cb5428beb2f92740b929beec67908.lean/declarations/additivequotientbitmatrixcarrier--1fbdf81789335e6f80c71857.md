# AdditiveQuotientBitMatrixCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3361ff5a25a409e36731846e163aa96d90fa0996fd69f497eddff5fa28816bc6",
  "kind": "structure",
  "lexical_name": "AdditiveQuotientBitMatrixCarrier",
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
  "slug": "additivequotientbitmatrixcarrier--1fbdf81789335e6f80c71857",
  "source": {
    "blob": "a87100c5d6e1476f9fc90e63e5605b31ff58c553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variant1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbdf81789335e6f80c718575350c7d03f3d845f5f868c54d16cf4db72ceef91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variant1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3361ff5a25a409e36731846e163aa96d90fa0996fd69f497eddff5fa28816bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdditiveQuotientBitMatrixCarrier
    (L : Type u) (Q : Type v) (n : Nat) where
  quotient : FiniteLatticeQuotient L Q
  quotientBit : Q → Bool
  certificateBits : Nat
  certificateBits_eq : certificateBits = certificateBitCountAllOverlaps n
  paddingBits : Nat
  paddingBits_eq : paddingBits = carrierPaddingDelta n
  squareSide : Nat
  squareSide_eq : squareSide = squareCarrierSide n
  squareBits : Nat
  squareBits_eq : squareBits = squareCarrierBitCount n
  carrierCoverage : certificateBits + paddingBits = squareBits

/-- Constructor for the additive quotient bitmatrix carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variant1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variant1caf7143570757fc5ed6d125c27e492d2e7cb5428beb2f92740b929beec67908.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a87100c5d6e1476f9fc90e63e5605b31ff58c553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
