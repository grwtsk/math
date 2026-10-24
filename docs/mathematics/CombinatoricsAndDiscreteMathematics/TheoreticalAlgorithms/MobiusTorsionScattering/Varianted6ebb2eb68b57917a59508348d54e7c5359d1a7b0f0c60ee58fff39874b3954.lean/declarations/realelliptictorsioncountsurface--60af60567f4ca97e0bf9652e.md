# RealEllipticTorsionCountSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cd5fd4783ce16cf8718e587b61b24df2e0a9dd31d39d179a5fdd0b87b0ae571",
  "kind": "structure",
  "lexical_name": "RealEllipticTorsionCountSurface",
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
  "slug": "realelliptictorsioncountsurface--60af60567f4ca97e0bf9652e",
  "source": {
    "blob": "8262d7ed220ba0aa1a2cab36b61e4fe244783f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60af60567f4ca97e0bf9652e900c10d4f6e98dbe5f9cd73d69b70eb2122b733f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cd5fd4783ce16cf8718e587b61b24df2e0a9dd31d39d179a5fdd0b87b0ae571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RealEllipticTorsionCountSurface where
  componentType : RealEllipticComponentType
  allTorsionCount : Nat → Nat
  exactTorsionCount : Nat → Nat
  affineXCount : Nat → Nat
  mobiusInversionLaw : Bool
  characterScatteringLaw : Bool
  affineQuotientBySignLaw : Bool
  connectedCountLaw : componentType = RealEllipticComponentType.connected →
    ∀ n : Nat, allTorsionCount n = n
  twoComponentCountLaw : componentType = RealEllipticComponentType.twoComponent →
    ∀ n : Nat, allTorsionCount n = n * Nat.gcd n 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8262d7ed220ba0aa1a2cab36b61e4fe244783f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
