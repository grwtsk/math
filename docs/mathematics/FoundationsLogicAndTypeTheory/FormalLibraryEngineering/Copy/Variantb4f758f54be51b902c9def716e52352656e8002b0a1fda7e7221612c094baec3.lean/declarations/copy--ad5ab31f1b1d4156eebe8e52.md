# Copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a67a49337d757a276a2582ac04162e12b2e0833a6eab7402d428c7af17ee459",
  "kind": "def",
  "lexical_name": "Copy",
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
  "slug": "copy--ad5ab31f1b1d4156eebe8e52",
  "source": {
    "blob": "bff02f3daf4f2589bb96292f98acb5eb10e90aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb4f758f54be51b902c9def716e52352656e8002b0a1fda7e7221612c094baec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad5ab31f1b1d4156eebe8e5272c0b83850e0b63f4f328549a9e09e50413a0cbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb4f758f54be51b902c9def716e52352656e8002b0a1fda7e7221612c094baec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a67a49337d757a276a2582ac04162e12b2e0833a6eab7402d428c7af17ee459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Copy : Widget.Module where javascript := r#"
import * as React from 'react'
const h = React.createElement

const states = {
  idle:   { iconName: 'copy',  title: 'Copy to clipboard' },
  copied: { iconName: 'check', title: 'Copied!',    linger: 1000 },
  failed: { iconName: 'error', title: 'Copy failed; see console', linger: 3000,
    color: 'var(--vscode-errorForeground)' },
}

export default function ({ display, copyText, hasIcon }) {
  const [status, setStatus] = React.useState('idle')
  const timer = React.useRef(null)

  // Flash the state for 'copied' or 'failed' briefly, then fall back to 'idle'.
  const flash = action => {
    setStatus(action)
    clearTimeout(timer.current)
    timer.current = setTimeout(() => setStatus('idle'), states[action].linger ?? 1000)
  }

  const onClick = async () => {
    try {
      // Called synchronously in the click handler, so it still counts as a
      // user gesture; awaiting afterwards is fine. The catch covers both a
      // rejected write (permission denied, document not focused) and a
      // synchronous throw when navigator.clipboard is undefined.
      await navigator.clipboard.writeText(copyText)
      flash('copied')
    } catch (e) {
      console.warn('Lean widget ImportGraph.Widget.copyToClipboard failed to copy to clipboard:', e)
      flash('failed')
    }
  }

  React.useEffect(() => () => clearTimeout(timer.current), [])

  const { iconName, title, color } = states[status]

  const icon = 'codicon codicon-' + iconName
  const style = color ? { color } : undefined

  // Icon-only: the codicon is the button.
  if (display == null)
    return h('a', { onClick, title, style, className: 'link pointer dim ' + icon })

  // Show the (x) to grab attention if we failed.
  const showIcon = hasIcon || status === 'failed'

  // Link text, optionally preceded by the codicon.
  return h('a', { onClick, title, style, className: 'link pointer dim' },
    showIcon && h('span', { className: 'font-codicon ' + icon }),
    showIcon && ' ',
    display)
}
"#

/--
How `copyToClipboard` is displayed in the infoview. May be:

* `.iconOnly` to just display the "copy" codicon
* `.text s (hasIcon := true)` to display `s : String` (with or without a preceding codicon)
* `.copiedText (hasIcon := true)` to display the copied text (with or without a preceding codicon)

Everything displayed is clickable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb4f758f54be51b902c9def716e52352656e8002b0a1fda7e7221612c094baec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb4f758f54be51b902c9def716e52352656e8002b0a1fda7e7221612c094baec3.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bff02f3daf4f2589bb96292f98acb5eb10e90aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
