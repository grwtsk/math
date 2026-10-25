# textInsertionWidget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6656948557b6d1d9a03b8903d3067ebf8b21918d7fda736b782643cb90d7f887",
  "kind": "def",
  "lexical_name": "textInsertionWidget",
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
  "slug": "textinsertionwidget--259d665f6c05857b7fb30ff9",
  "source": {
    "blob": "8fe0fbebf4a902bb3d591e85c15de04aa87d2df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:259d665f6c05857b7fb30ff98b9f050f16648f6c71ad8a48cf63f5d355cc2253",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6656948557b6d1d9a03b8903d3067ebf8b21918d7fda736b782643cb90d7f887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def textInsertionWidget : Widget.Module where
  javascript := "
import * as React from 'react';
import { EditorContext, EnvPosContext } from '@leanprover/infoview';

const e = React.createElement;
export default function ({ range, suggestion, acceptSuggestionProps }) {
  const pos = React.useContext(EnvPosContext)
  const editorConnection = React.useContext(EditorContext)
  function onClick() {
    editorConnection.api.applyEdit({
      changes: { [pos.uri]: [{ range, newText: suggestion }] }
    })
  }

  if (acceptSuggestionProps.kind === 'text') {
    return e('span', {
        onClick,
        title: acceptSuggestionProps.hoverText,
        className: 'link pointer dim font-code',
        style: { color: 'var(--vscode-textLink-foreground)' }
      },
      acceptSuggestionProps.linkText)
  } else if (acceptSuggestionProps.kind === 'icon') {
    if (acceptSuggestionProps.gaps) {
      const icon = e('span', {
        className: `codicon codicon-${acceptSuggestionProps.codiconName}`,
        style: {
          verticalAlign: 'sub',
          fontSize: 'var(--vscode-editor-font-size)'
        }
      })
      return e('span', {
        onClick,
        title: acceptSuggestionProps.hoverText,
        className: `link pointer dim font-code`,
        style: { color: 'var(--vscode-textLink-foreground)' }
      }, ' ', icon, ' ')
    } else {
      return e('span', {
        onClick,
        title: acceptSuggestionProps.hoverText,
        className: `link pointer dim font-code codicon codicon-${acceptSuggestionProps.codiconName}`,
        style: {
          color: 'var(--vscode-textLink-foreground)',
          verticalAlign: 'sub',
          fontSize: 'var(--vscode-editor-font-size)'
        }
      })
    }

  }
  throw new Error('Unexpected `acceptSuggestionProps` kind: ' + acceptSuggestionProps.kind)
}"

/--
A widget for rendering code action suggestions in error messages. Generally, this widget should not
be used directly; instead, use `MessageData.hint`. Note that this widget is intended only for use
within message data; it may not display line breaks properly if rendered as a panel widget.

The props to this widget are of the following form:
```json
{
  "diff": [
    {"type": "unchanged", "text": "h"},
    {"type": "deletion", "text": "ello"},
    {"type": "insertion", "text": "i"}
  ],
  "suggestion": "hi",
  "range": {
    "start": {"line": 100, "character": 0},
    "end":   {"line": 100, "character": 5}
  }
}
```

Note: we cannot add the `builtin_widget_module` attribute here because that would require importing
`Lean.Widget.UserWidget`, which in turn imports much of `Lean.Elab` -- the module where we want to
be able to use this widget. Instead, we register the attribute post-hoc when we declare the regular
"Try This" widget in `Lean.Meta.Tactic.TryThis`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe0fbebf4a902bb3d591e85c15de04aa87d2df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
