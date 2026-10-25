# MultiCuspPartialCosmeticExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562589b9364365cafec85875abae082d391af33698f63eac76fa76f2551c5b9b",
  "kind": "structure",
  "lexical_name": "MultiCuspPartialCosmeticExample",
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
  "slug": "multicusppartialcosmeticexample--1e201c90c3601d695878299e",
  "source": {
    "blob": "246248e1ab6bd2c8d6beb156a8fd0b449e4dc30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolution/Variant823f9e5c1b5c37c18b43bf08831e0298e60ebad25d987faa85128f284be37075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e201c90c3601d695878299e229f401f350a31310fe217c9e0a3a786bc0d6963",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolution/Variant823f9e5c1b5c37c18b43bf08831e0298e60ebad25d987faa85128f284be37075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562589b9364365cafec85875abae082d391af33698f63eac76fa76f2551c5b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MultiCuspPartialCosmeticExample where
  Parent : Type u
  PartialSlopeTuple : Type u
  FilledManifold : Type u
  fill : Parent → PartialSlopeTuple → FilledManifold
  OrientedHomeomorphism : FilledManifold → FilledManifold → Type u
  parent : Parent
  cuspCount : Nat
  cuspCount_atLeastThree : 3 ≤ cuspCount
  unfilledCuspCount : Nat
  leaves_cusp_unfilled : 0 < unfilledCuspCount
  cosmeticPair :
    Σ firstSlope : PartialSlopeTuple,
      Σ secondSlope : PartialSlopeTuple,
        PLift (firstSlope ≠ secondSlope) ×
          OrientedHomeomorphism
            (fill parent firstSlope)
            (fill parent secondSlope)

/--
The scope distinction is visible in the type: a multi-cusp witness exposes a
positive number of unfilled cusps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolution/Variant823f9e5c1b5c37c18b43bf08831e0298e60ebad25d987faa85128f284be37075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolution/Variant823f9e5c1b5c37c18b43bf08831e0298e60ebad25d987faa85128f284be37075.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246248e1ab6bd2c8d6beb156a8fd0b449e4dc30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
