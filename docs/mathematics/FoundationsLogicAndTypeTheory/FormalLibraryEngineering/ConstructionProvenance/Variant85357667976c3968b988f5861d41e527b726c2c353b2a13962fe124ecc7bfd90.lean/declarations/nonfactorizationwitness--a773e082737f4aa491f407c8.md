# NonfactorizationWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0bcb0368c98c497674c317e32e0ec2c0ae8c31cc6f221969bc25f5a063d81bd",
  "kind": "structure",
  "lexical_name": "NonfactorizationWitness",
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
  "slug": "nonfactorizationwitness--a773e082737f4aa491f407c8",
  "source": {
    "blob": "8f9118a8495caac3358c66f8138412614c05cacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructionProvenance/Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a773e082737f4aa491f407c89a16fc5470cb19fb077d3fe7bdcc3e3a5067e865",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructionProvenance/Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0bcb0368c98c497674c317e32e0ec2c0ae8c31cc6f221969bc25f5a063d81bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonfactorizationWitness
    (Source : Type u) (Erased : Type v)
    (Realization : Type w) (Invariant : Type x) where
  erase : Source → Erased
  realize : Source → Realization
  detector : Realization → Invariant
  left : Source
  right : Source
  sameErasure : erase left = erase right
  distinguished :
    detector (realize left) ≠ detector (realize right)

namespace NonfactorizationWitness

variable {Source : Type u} {Erased : Type v}
  {Realization : Type w} {Invariant : Type x}

/-- The realization cannot be reconstructed from the arithmetic-erased input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructionProvenance/Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructionProvenance/Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9118a8495caac3358c66f8138412614c05cacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
