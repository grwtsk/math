# PrimitiveDirichletCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d1a6097dc1a90a38ef14b1925ccd4f9955e459770e1818bf0840a38c32b530",
  "kind": "structure",
  "lexical_name": "PrimitiveDirichletCharacter",
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
  "slug": "primitivedirichletcharacter--fe7916ccec8929631ef6e2ac",
  "source": {
    "blob": "9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7916ccec8929631ef6e2aca8bbd53a861d66edbd78445a93ec0c8e166c7c65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d1a6097dc1a90a38ef14b1925ccd4f9955e459770e1818bf0840a38c32b530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimitiveDirichletCharacter where
  conductor : Nat
  conductor_pos : 0 < conductor
  character : DirichletCharacter ℂ conductor
  primitive : character.IsPrimitive
  parity : Fin 2
  parityLaw : character (-1) = (-1 : ℂ) ^ parity.val

namespace PrimitiveDirichletCharacter

/-- The parity exponent, viewed as a natural number known to be zero or one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
