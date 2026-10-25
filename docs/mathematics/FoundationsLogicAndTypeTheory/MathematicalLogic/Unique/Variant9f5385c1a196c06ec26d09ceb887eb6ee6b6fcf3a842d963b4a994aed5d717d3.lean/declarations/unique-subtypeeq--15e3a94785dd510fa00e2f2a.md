# Unique.subtypeEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:231c0d9e0de57b89b6e8758307cecd24ef2dd1fa9f3628739c17a077d6c5202e",
  "kind": "instance",
  "lexical_name": "Unique.subtypeEq",
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
  "slug": "unique-subtypeeq--15e3a94785dd510fa00e2f2a",
  "source": {
    "blob": "1fe5d1aa63e76ba98a5ffd542067bc48244ab2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15e3a94785dd510fa00e2f2a72247f9b56d93f281b113ef993dda37dbf8ef145",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:231c0d9e0de57b89b6e8758307cecd24ef2dd1fa9f3628739c17a077d6c5202e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Unique.subtypeEq (y : α) : Unique { x // x = y } where
  default := ⟨y, rfl⟩
  uniq := fun ⟨x, hx⟩ ↦ by congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe5d1aa63e76ba98a5ffd542067bc48244ab2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
