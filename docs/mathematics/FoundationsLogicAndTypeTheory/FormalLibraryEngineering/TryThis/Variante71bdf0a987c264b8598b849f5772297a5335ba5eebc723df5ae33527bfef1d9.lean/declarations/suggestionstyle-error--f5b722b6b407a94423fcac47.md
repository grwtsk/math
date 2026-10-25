# SuggestionStyle.error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:630d7efc786b3276f69ed0724e6fc12c87da196c9add28499b942ed2bcf8fd71",
  "kind": "def",
  "lexical_name": "SuggestionStyle.error",
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
  "slug": "suggestionstyle-error--f5b722b6b407a94423fcac47",
  "source": {
    "blob": "b54e1160df2aa69c282941fbc673d99e5eef708d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5b722b6b407a94423fcac47d67eb3033e5c1c6e9ded2893a77ecc78a6b5a255",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:630d7efc786b3276f69ed0724e6fc12c87da196c9add28499b942ed2bcf8fd71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SuggestionStyle.error (decorated := true) : SuggestionStyle :=
  let style := if decorated then
    json% {
      -- The VS code error foreground theme color (`--vscode-errorForeground`).
      color: "var(--vscode-errorForeground)",
      textDecoration: "underline wavy var(--vscode-editorError-foreground) 1pt"
    }
  else json% { color: "var(--vscode-errorForeground)" }
  json% { className: "pointer dim", style: $style }

/-- Style as a warning. By default, decorates the text with an undersquiggle; providing the
argument `decorated := false` turns this off. -/
@[deprecated "`SuggestionStyle` is not used anymore." (since := "2025-08-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54e1160df2aa69c282941fbc673d99e5eef708d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
