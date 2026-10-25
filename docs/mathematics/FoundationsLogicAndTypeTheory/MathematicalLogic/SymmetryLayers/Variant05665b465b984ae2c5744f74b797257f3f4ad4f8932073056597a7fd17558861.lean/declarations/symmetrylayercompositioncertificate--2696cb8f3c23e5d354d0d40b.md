# SymmetryLayerCompositionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a53b5c60756e8f1bc9a95d1b871df211bb026798bb4dcb018b31f92688cc8897",
  "kind": "structure",
  "lexical_name": "SymmetryLayerCompositionCertificate",
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
  "slug": "symmetrylayercompositioncertificate--2696cb8f3c23e5d354d0d40b",
  "source": {
    "blob": "030fd0b907fd4e746fd501370ab5657a40324f73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryLayers/Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2696cb8f3c23e5d354d0d40b52b7d0681b26f9bcf7637c17ed0c11b7845d848a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryLayers/Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a53b5c60756e8f1bc9a95d1b871df211bb026798bb4dcb018b31f92688cc8897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SymmetryLayerCompositionCertificate
    {system : RandomBitfieldSystem}
    (left right combined :
      FiniteCrossedProductModel system) where
  mode : SymmetryCompositionMode
  embedLeft :
    left.Automorphism →
      combined.Automorphism
  embedRight :
    right.Automorphism →
      combined.Automorphism
  embedLeftIdentity :
    embedLeft 1 = 1
  embedRightIdentity :
    embedRight 1 = 1
  embedLeftMultiplicative :
    ∀ first second,
      embedLeft (first * second) =
        embedLeft first * embedLeft second
  embedRightMultiplicative :
    ∀ first second,
      embedRight (first * second) =
        embedRight first * embedRight second
  embedLeftInjective :
    Function.Injective embedLeft
  embedRightInjective :
    Function.Injective embedRight
  leftActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedLeft automorphism) state =
        left.action.act automorphism state
  rightActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedRight automorphism) state =
        right.action.act automorphism state
  factorization :
    ∀ automorphism : combined.Automorphism,
      ∃ leftAutomorphism rightAutomorphism,
        automorphism =
          embedLeft leftAutomorphism *
            embedRight rightAutomorphism
  factorizationUnique :
    ∀ {leftFirst leftSecond
        rightFirst rightSecond},
      embedLeft leftFirst * embedRight rightFirst =
          embedLeft leftSecond *
            embedRight rightSecond →
        leftFirst = leftSecond ∧
          rightFirst = rightSecond
  rightFactorNormal :
    ∀ leftAutomorphism rightAutomorphism,
      ∃ transported : right.Automorphism,
        embedLeft leftAutomorphism *
              embedRight rightAutomorphism *
              (embedLeft leftAutomorphism)⁻¹ =
          embedRight transported
  directFactorsCommute :
    mode = SymmetryCompositionMode.directProduct →
      ∀ leftAutomorphism rightAutomorphism,
        embedLeft leftAutomorphism *
            embedRight rightAutomorphism =
          embedRight rightAutomorphism *
            embedLeft leftAutomorphism

/--
Recursive composition of two already registered layers.  The combined layer
has its own exact equivariance certificate; compatibility of the component
actions is not used as a substitute for checking the combined kernel action.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryLayers/Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SymmetryLayers/Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `030fd0b907fd4e746fd501370ab5657a40324f73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
