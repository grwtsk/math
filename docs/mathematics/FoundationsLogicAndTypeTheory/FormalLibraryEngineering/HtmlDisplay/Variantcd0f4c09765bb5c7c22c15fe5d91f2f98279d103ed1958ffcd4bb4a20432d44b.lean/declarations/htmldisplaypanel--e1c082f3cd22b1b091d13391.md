# HtmlDisplayPanel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66d0c9256e4c75f64dba0145137594524dec8904c886158fe580087a51765e50",
  "kind": "def",
  "lexical_name": "HtmlDisplayPanel",
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
  "slug": "htmldisplaypanel--e1c082f3cd22b1b091d13391",
  "source": {
    "blob": "5ecefd1b41d8ffd10ed29b001118299ee199c343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variantcd0f4c09765bb5c7c22c15fe5d91f2f98279d103ed1958ffcd4bb4a20432d44b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1c082f3cd22b1b091d1339135e748220709347bf42ca401a90ee1070835131a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variantcd0f4c09765bb5c7c22c15fe5d91f2f98279d103ed1958ffcd4bb4a20432d44b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66d0c9256e4c75f64dba0145137594524dec8904c886158fe580087a51765e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HtmlDisplayPanel : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "htmlDisplayPanel.js"

open Lean Server Elab Command

/-- Any term `t : α` with a `HtmlEval α` instance
can be evaluated in a `#html t` command.

This is analogous to how `Lean.MetaEval` supports `#eval`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variantcd0f4c09765bb5c7c22c15fe5d91f2f98279d103ed1958ffcd4bb4a20432d44b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variantcd0f4c09765bb5c7c22c15fe5d91f2f98279d103ed1958ffcd4bb4a20432d44b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecefd1b41d8ffd10ed29b001118299ee199c343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
