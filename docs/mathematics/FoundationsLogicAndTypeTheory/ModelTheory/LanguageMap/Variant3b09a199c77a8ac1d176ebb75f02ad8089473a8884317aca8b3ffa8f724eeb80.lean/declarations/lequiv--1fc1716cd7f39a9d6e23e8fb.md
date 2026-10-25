# LEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c74ab0b3bd6c2f9015c5ac615976e190dd237b938e816753df622bf9d1c47d16",
  "kind": "structure",
  "lexical_name": "LEquiv",
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
  "slug": "lequiv--1fc1716cd7f39a9d6e23e8fb",
  "source": {
    "blob": "055246139aa8e6d862bde76e4e4578893fbb4bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fc1716cd7f39a9d6e23e8fbedb26f29c6221294c27964a8b5be22e38a50c244",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c74ab0b3bd6c2f9015c5ac615976e190dd237b938e816753df622bf9d1c47d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LEquiv (L L' : Language) where
  /-- The forward language homomorphism -/
  toLHom : L →ᴸ L'
  /-- The inverse language homomorphism -/
  invLHom : L' →ᴸ L
  left_inv : invLHom.comp toLHom = LHom.id L
  right_inv : toLHom.comp invLHom = LHom.id L'

@[inherit_doc] infixl:10 " ≃ᴸ " => LEquiv

-- \^L
namespace LEquiv

variable (L) in
/-- The identity equivalence from a first-order language to itself. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `055246139aa8e6d862bde76e4e4578893fbb4bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
