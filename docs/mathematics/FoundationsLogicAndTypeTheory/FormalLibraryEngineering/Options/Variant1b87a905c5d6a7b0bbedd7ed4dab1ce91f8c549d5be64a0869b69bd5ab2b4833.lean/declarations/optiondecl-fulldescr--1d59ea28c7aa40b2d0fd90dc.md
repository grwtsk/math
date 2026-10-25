# OptionDecl.fullDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:388a329de4c4d92a2b75fbca9d46aeb6bf4bfc58dd75e2548d0cac203fbc11b4",
  "kind": "def",
  "lexical_name": "OptionDecl.fullDescr",
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
  "slug": "optiondecl-fulldescr--1d59ea28c7aa40b2d0fd90dc",
  "source": {
    "blob": "b7550463a5fde7b20cc0b7a187d94cedebb1b089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Options/Variant1b87a905c5d6a7b0bbedd7ed4dab1ce91f8c549d5be64a0869b69bd5ab2b4833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d59ea28c7aa40b2d0fd90dc6dd05d64b2ba2553c95ea9947344d7219daedf8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Options/Variant1b87a905c5d6a7b0bbedd7ed4dab1ce91f8c549d5be64a0869b69bd5ab2b4833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:388a329de4c4d92a2b75fbca9d46aeb6bf4bfc58dd75e2548d0cac203fbc11b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OptionDecl.fullDescr (self : OptionDecl) : String := Id.run do
  let mut descr := self.descr
  if (`backward).isPrefixOf self.name then
    unless descr.isEmpty do
      descr := descr ++ "\n\n"
    descr := descr ++ "\
      This is a backwards compatibility option, intended to help migrating to new Lean releases. \
      It may be removed without further notice 6 months after their introduction. \
      Please report an issue if you rely on this option."
  pure descr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Options/Variant1b87a905c5d6a7b0bbedd7ed4dab1ce91f8c549d5be64a0869b69bd5ab2b4833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Options/Variant1b87a905c5d6a7b0bbedd7ed4dab1ce91f8c549d5be64a0869b69bd5ab2b4833.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7550463a5fde7b20cc0b7a187d94cedebb1b089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
