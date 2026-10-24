# BitCoordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c15f7d511a764a0535e1d7f3469aeef6e594b2d5247fd03355912eae69fe656e",
  "kind": "structure",
  "lexical_name": "BitCoordinate",
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
  "slug": "bitcoordinate--0ad5ca80687006e29138ce55",
  "source": {
    "blob": "c082b15d9acfaa3d822c5bdba737217a2f347d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ad5ca80687006e29138ce55165387312f6ddbde965b58fde9d1639e19983d13",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c15f7d511a764a0535e1d7f3469aeef6e594b2d5247fd03355912eae69fe656e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BitCoordinate (width : Nat) where
  coordinate : Fin width
  coordinateId : SpectralId
  sourceGraphLocus : SpectralId
  semanticInterpretation : String
  authorityClass : CoordinateAuthority
  admissibilityRuleRef : SpectralId
  weightKind : WeightKind
  positiveWeightNumerator : Nat
  positiveWeightDenominator : Nat
  numeratorPositive : 0 < positiveWeightNumerator
  denominatorPositive : 0 < positiveWeightDenominator
  sourceEventRef : SpectralId
  unresolved : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c082b15d9acfaa3d822c5bdba737217a2f347d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
