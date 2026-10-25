# commentBody.formatter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:032bea3d4ea300c7e163d4f4ee53fe1dd1f2aaba71e93d3a9cdccbbc09a94210",
  "kind": "def",
  "lexical_name": "commentBody.formatter",
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
  "slug": "commentbody-formatter--ad53a0c98769107fc3772deb",
  "source": {
    "blob": "6bf76f5420ecedae63d0f95d05acb553146f1b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad53a0c98769107fc3772deb2dd97c2787dac169d00c1f73cc4858ca5b5377f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:032bea3d4ea300c7e163d4f4ee53fe1dd1f2aaba71e93d3a9cdccbbc09a94210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commentBody.formatter := PrettyPrinter.Formatter.visitAtom Name.anonymous

/--
A `docComment` parses a "documentation comment" like `/-- foo -/`. This is not treated like
a regular comment (that is, as whitespace); it is parsed and forms part of the syntax tree structure.

At parse time, `docComment` checks the value of the `doc.verso` option. If it is true, the contents
are parsed as Verso markup. If not, the contents are treated as plain text or Markdown. Use
`plainDocComment` to always treat the contents as plain text.

A plain text doc comment node contains a `/--` atom and then the remainder of the comment, `foo -/`
in this example. Use `TSyntax.getDocString` to extract the body text from a doc string syntax node.
A Verso comment node contains the `/--` atom, the document's syntax tree, and a closing `-/` atom.
-/
-- @[builtin_doc] -- FIXME: suppress the hover
@[run_builtin_parser_attribute_hooks]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf76f5420ecedae63d0f95d05acb553146f1b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
