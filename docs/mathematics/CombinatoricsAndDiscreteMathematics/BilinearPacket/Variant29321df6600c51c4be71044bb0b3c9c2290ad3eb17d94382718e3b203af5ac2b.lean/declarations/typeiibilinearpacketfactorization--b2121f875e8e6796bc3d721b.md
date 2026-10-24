# TypeIIBilinearPacketFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c23f0875ce5ed44665e9bb0f5aa588a1527477985ec39b77bc874cbdeea11b3",
  "kind": "structure",
  "lexical_name": "TypeIIBilinearPacketFactorization",
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
  "slug": "typeiibilinearpacketfactorization--b2121f875e8e6796bc3d721b",
  "source": {
    "blob": "da2288df812fac8b0c35c47d0d63ae4788fef9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2121f875e8e6796bc3d721b0e677264654e7e5617074a658d48373e87d066cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c23f0875ce5ed44665e9bb0f5aa588a1527477985ec39b77bc874cbdeea11b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIBilinearPacketFactorization
    (N : ℕ) (Left Right LeftPacketSpace RightPacketSpace : Type*)
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace] where
  leftIndex : Left ≃ VaughanScaleIndex N
  rightIndex : Right ≃ VaughanScaleIndex N

  leftCoefficient : EuclideanSpace ℂ Left
  rightCoefficient : EuclideanSpace ℂ Right

  leftCoefficient_identification : ∀ left,
    leftCoefficient left = conductorThreeVaughanLeft N (leftIndex left)
  rightCoefficient_identification : ∀ right,
    rightCoefficient right = conductorThreeVaughanRight N (rightIndex right)

  leftSynthesis :
    EuclideanSpace ℂ Left →L[ℂ] LeftPacketSpace
  rightSynthesis :
    EuclideanSpace ℂ Right →L[ℂ] RightPacketSpace

  incidence : ℕ → RightPacketSpace →L[ℂ] LeftPacketSpace
  residualMatrix : ℕ → Matrix Left Right ℂ

  exactFactorization : ∀ x left right,
    typeIICutoffMatrix
        (fun l ↦ (leftIndex l).1) (fun r ↦ (rightIndex r).1) x
        left right =
      ⟪leftSynthesis (EuclideanSpace.single left 1),
        incidence x (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ +
      residualMatrix x left right

  typeII_eq_cutoffPairing : ∀ x, x ≤ 2 * N →
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -typeIIMatrixPairing leftCoefficient
        (typeIICutoffMatrix
          (fun l ↦ (leftIndex l).1) (fun r ↦ (rightIndex r).1) x)
        rightCoefficient

/-- Matrix of the factorized packet incidence operator in the canonical
single-coordinate bases. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2288df812fac8b0c35c47d0d63ae4788fef9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
