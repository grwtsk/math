# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d9833f4b3b9b321529f05f94ce6f58737e153b7c426acd983e3884148e06be1",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--e0de97add2d8ffe6517aab45",
  "source": {
    "blob": "3c84475a7ba23397bbcd808749716d113268710b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant9a2fb6d9223ab732873df76127bed50ab5fcb738ab5065f84654f92630cf5b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0de97add2d8ffe6517aab459ed281c3d767d9b4115f2f30a2e658e1294677cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant9a2fb6d9223ab732873df76127bed50ab5fcb738ab5065f84654f92630cf5b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d9833f4b3b9b321529f05f94ce6f58737e153b7c426acd983e3884148e06be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab_rules : command | `(#help cats $(id)?) => elabHelpCats id

/--
The command `#help cat C` shows all syntaxes that have been defined in syntax category `C` in the
current environment.
Each syntax has a format like:
```
syntax "first"... [Parser.tactic.first]
  `first | tac | ...` runs each `tac` until one succeeds, or else fails.
```
The quoted string is the leading token of the syntax, if applicable. It is followed by the full
name of the syntax (which you can also click to go to the definition), and the documentation.

* The form `#help cat C id` will show only attributes that begin with `id`.
* The form `#help cat+ C` will also show information about any `macro`s and `elab`s
  associated to the listed syntaxes.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant9a2fb6d9223ab732873df76127bed50ab5fcb738ab5065f84654f92630cf5b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant9a2fb6d9223ab732873df76127bed50ab5fcb738ab5065f84654f92630cf5b50.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c84475a7ba23397bbcd808749716d113268710b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
