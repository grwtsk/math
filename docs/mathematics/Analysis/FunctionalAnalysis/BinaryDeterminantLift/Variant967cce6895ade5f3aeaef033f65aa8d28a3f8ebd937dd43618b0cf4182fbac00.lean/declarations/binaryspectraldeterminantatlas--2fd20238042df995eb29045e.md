# BinarySpectralDeterminantAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cd269aa03c9d03ae6e530d0a3310d83d4dddb343a6a6e2571e78d8752b9bd1a",
  "kind": "structure",
  "lexical_name": "BinarySpectralDeterminantAtlas",
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
  "slug": "binaryspectraldeterminantatlas--2fd20238042df995eb29045e",
  "source": {
    "blob": "40703d9f7fa9270374227c7c16e82c49fa9935de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BinaryDeterminantLift/Variant967cce6895ade5f3aeaef033f65aa8d28a3f8ebd937dd43618b0cf4182fbac00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fd20238042df995eb29045e48fc34cf40799953ff5aaf3c72df70f007e12d76",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BinaryDeterminantLift/Variant967cce6895ade5f3aeaef033f65aa8d28a3f8ebd937dd43618b0cf4182fbac00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cd269aa03c9d03ae6e530d0a3310d83d4dddb343a6a6e2571e78d8752b9bd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinarySpectralDeterminantAtlas where
  frame : LeanProjectFiniteFrame
  determinantAtlasLabel : String
  precomputedLocalData : Prop
  precomputedLocalData_certified : precomputedLocalData
  moveLogCompatible : Prop
  moveLogCompatible_certified : moveLogCompatible
  pivotPathIndependent : Prop
  pivotPathIndependent_certified : pivotPathIndependent
  regularizationCompatible : Prop
  regularizationCompatible_certified : regularizationCompatible
  sourceLabel : String

/--
Binary determinant quasi-isomorphism lift.

The agreement field states that the finite precomputed atlas and the
determinant-preserving quasi-isomorphism presentation compute the same lifted
determinant invariant, when supplied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BinaryDeterminantLift/Variant967cce6895ade5f3aeaef033f65aa8d28a3f8ebd937dd43618b0cf4182fbac00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BinaryDeterminantLift/Variant967cce6895ade5f3aeaef033f65aa8d28a3f8ebd937dd43618b0cf4182fbac00.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40703d9f7fa9270374227c7c16e82c49fa9935de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
