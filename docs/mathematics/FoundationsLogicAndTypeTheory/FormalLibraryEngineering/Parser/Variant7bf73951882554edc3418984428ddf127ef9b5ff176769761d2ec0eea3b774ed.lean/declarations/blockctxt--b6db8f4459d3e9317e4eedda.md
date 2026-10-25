# BlockCtxt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add05521a58fca6d09ee9f9818cc0b1107f7bbecc27871b0de7790d153e14f8d",
  "kind": "structure",
  "lexical_name": "BlockCtxt",
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
  "slug": "blockctxt--b6db8f4459d3e9317e4eedda",
  "source": {
    "blob": "e96aa080a442e3fe1fcd2ab25984f971a52f1574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 930,
    "line": 899,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6db8f4459d3e9317e4eedda7292dd7e57f51b4410a7252403642f01a90e3bfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add05521a58fca6d09ee9f9818cc0b1107f7bbecc27871b0de7790d153e14f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure BlockCtxt where
  /--
  The block's minimum indentation.
  -/
  minIndent : Nat := 0
  /--
  The block's maximal directive size (that is, the greatest number of allowed colons).
  -/
  maxDirective : Option Nat := none
  /--
  The nested list context, innermost first.
  -/
  inLists : List InList := []
  /--
  The position at which the document content starts, used to allow headers on the first line of a
  docstring (e.g. `/-! # Header -/`). With the default value `⟨1, 0⟩`, the beginning-of-line check
  is unaffected for normal documents.
  -/
  docStartPosition : Position := ⟨1, 0⟩
  /--
  The base column of the docstring, which is the least indentation of any non-empty line in it,
  including the opening and closing delimiters. For indented docstrings (e.g. inside `where`
  blocks), beginning-of-line checks use this column instead of requiring column 0. With the default
  value 0, the check is equivalent to `column == 0`.
  -/
  baseColumn : Nat := 0
deriving Inhabited, Repr

/--
Finds the minimum column of the first non-whitespace character on each non-empty content line
between `startPos` and `endPos`, returning `init` if no such line exists.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96aa080a442e3fe1fcd2ab25984f971a52f1574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
