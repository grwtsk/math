# TypeNameData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56406b218c0f03ef49c7dc841192a599d2d39d2c2ad5fabacba7f1c98268467c",
  "kind": "opaque",
  "lexical_name": "TypeNameData",
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
  "slug": "typenamedata--fbee1f146dbf9037d0a5bd29",
  "source": {
    "blob": "cf9431f817ed5dc06a01b2524a4ca952deb8dfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbee1f146dbf9037d0a5bd2913683650d18520488845442aba5ab01dde31cb95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56406b218c0f03ef49c7dc841192a599d2d39d2c2ad5fabacba7f1c98268467c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
opaque TypeNameData (α : Type u) : NonemptyType.{0} :=
  ⟨Name, inferInstance⟩

/--
Dynamic type name information.
Types with an instance of `TypeName` can be stored in an `Dynamic`.
The type class contains the declaration name of the type,
which must not have any universe parameters
and be of type `Sort ..` (i.e., monomorphic).

The preferred way to declare instances of this type is using the derive
handler, which will internally use the unsafe `TypeName.mk` function.

Morally, this is the same as:
```lean
class TypeName (α : Type) where unsafe mk ::
  typeName : Name
```
-/
@[nospecialize]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9431f817ed5dc06a01b2524a4ca952deb8dfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
