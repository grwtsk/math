# TryThisInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89cf4b59ef0c700e68c0607e81573c3b8d8589cb43cc87018f1a2367840d89cd",
  "kind": "structure",
  "lexical_name": "TryThisInfo",
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
  "slug": "trythisinfo--a655ebb367a481dea69edc30",
  "source": {
    "blob": "b54e1160df2aa69c282941fbc673d99e5eef708d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a655ebb367a481dea69edc30158200309e7538b624d8941d925e00dfd0db015c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89cf4b59ef0c700e68c0607e81573c3b8d8589cb43cc87018f1a2367840d89cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TryThisInfo : Type where
  /-- Suggestion edit as it will be applied to the editor document. -/
  edit : Lsp.TextEdit
  /-- Title of the code action that is displayed in the code action selection dialog. -/
  codeActionTitle : String
  /--
  Original suggestion that this `TryThisInfo` was derived from.
  Stored so that meta-code downstream can extract the suggestions
  produced by a tactic from the `InfoTree`.
  -/
  suggestion : Suggestion
  deriving TypeName

/-! # Formatting -/

/-- Yields `(indent, column)` given a `FileMap` and a `Lean.Syntax.Range`, where `indent` is the number
of spaces by which the line that first includes `range` is initially indented, and `column` is the
column `range` starts at in that line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54e1160df2aa69c282941fbc673d99e5eef708d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
