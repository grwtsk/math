# ClassEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b022b68dd69d3989b5068a083971925dfbc139b0e3ee05db1b011c87d07a4a8",
  "kind": "structure",
  "lexical_name": "ClassEntry",
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
  "slug": "classentry--b620d8cd8a051caa6086a0f9",
  "source": {
    "blob": "79b457a08230d2950514ef8d83f53b5c8f837baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b620d8cd8a051caa6086a0f9f8ca9dc9161eddc916d1ec1979692fe9ae1b9131",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b022b68dd69d3989b5068a083971925dfbc139b0e3ee05db1b011c87d07a4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure ClassEntry where
  /-- Class name. -/
  name      : Name
  /--
  Position of the class `outParams`.
  For example, for class
  ```
  class GetElem (cont : Type u) (idx : Type v) (elem : outParam (Type w)) (dom : outParam (cont → idx → Prop)) where
  ```
  `outParams := #[2, 3]`
  -/
  outParams : Array Nat
  /--
  Positions of universe level parameters that only appear in output parameter types.
  For example, for `HAdd (α : Type u) (β : Type v) (γ : outParam (Type w))`,
  `outLevelParams := #[2]` since universe `w` only appears in the output parameter `γ`.
  This is used to normalize TC resolution cache keys.
  -/
  outLevelParams : Array Nat

namespace ClassEntry

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b457a08230d2950514ef8d83f53b5c8f837baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
