# ExpandDeclIdResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9225f89c07785597eb14edcb97e95d80ade5195d37b64367dd824439d5bf248",
  "kind": "structure",
  "lexical_name": "ExpandDeclIdResult",
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
  "slug": "expanddeclidresult--c4ec6ea0070f6b49e9186b99",
  "source": {
    "blob": "21c664badcd7d886d2be79349e3f3c21476d3a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant9665a12a50dfb92b42f87759941bad09e9f7357f6042cd660c3795859c804749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4ec6ea0070f6b49e9186b995b23a393b24060768ba5b6c8b43c335c544a335f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant9665a12a50dfb92b42f87759941bad09e9f7357f6042cd660c3795859c804749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9225f89c07785597eb14edcb97e95d80ade5195d37b64367dd824439d5bf248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExpandDeclIdResult where
  /-- Short name for recursively referring to the declaration. -/
  shortName  : Name
  /-- Fully qualified name that will be used to name the declaration in the kernel. -/
  declName   : Name
  /-- Universe parameter names provided using the `universe` command and `.{...}` notation. -/
  levelNames : List Name
  /-- The docstring. -/
  docString? : Option (TSyntax ``Parser.Command.docComment)

open Lean.Elab.Term (TermElabM)

/--
Given a declaration identifier (e.g., `ident (".{" ident,+ "}")?`) that may contain explicit universe parameters
- Ensure the new universe parameters do not shadow universe parameters declared using `universe` command.
- Create the fully qualified named for the declaration using the current namespace, and given `modifiers`
- Create a short version for recursively referring to the declaration. Recall that the `protected` modifier affects the generation of the short name.

The result also contains the universe parameters provided using `universe` command, and the `.{...}` notation.

This commands also stores the doc string stored in `modifiers`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant9665a12a50dfb92b42f87759941bad09e9f7357f6042cd660c3795859c804749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant9665a12a50dfb92b42f87759941bad09e9f7357f6042cd660c3795859c804749.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21c664badcd7d886d2be79349e3f3c21476d3a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
