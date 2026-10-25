# GoToModuleLink

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d81875b8bb22cc1fec90323bc095a64c6e3818bc507a437c430d5899b5137ec0",
  "kind": "def",
  "lexical_name": "GoToModuleLink",
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
  "slug": "gotomodulelink--d7d98e16aba5ce2dcc1c687e",
  "source": {
    "blob": "9b0b04f532b898d0f1758e7e62b7a35d294b2177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindHome/Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7d98e16aba5ce2dcc1c687e1546bb324944e1c44fc00f8abaa8814e0cbecced",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindHome/Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d81875b8bb22cc1fec90323bc095a64c6e3818bc507a437c430d5899b5137ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GoToModuleLink : Widget.Module where
  javascript := "
    import * as React from 'react'
    import { EditorContext, useRpcSession } from '@leanprover/infoview'

    export default function(props) {
      const ec = React.useContext(EditorContext)
      const rs = useRpcSession()
      return React.createElement('a',
        {
          className: 'link pointer dim',
          onClick: async () => {
            try {
              const uri = await rs.call('getModuleUri', props.modName)
              ec.revealPosition({ uri, line: 0, character: 0 })
            } catch {}
          }
        },
        props.modName)
    }
  "

open Elab Command in
/--
Find locations as high as possible in the import hierarchy
where the named declaration could live.
Using `#find_home!` will forcefully remove the current file.
Note that this works best if used in a file with `import Mathlib`.

The current file could still be the only suggestion, even using `#find_home! lemma`.
The reason is that `#find_home!` scans the import graph below the current file,
selects all the files containing declarations appearing in `lemma`, excluding
the current file itself and looks for all least upper bounds of such files.

For a simple example, if `lemma` is in a file importing only `A.lean` and `B.lean` and
uses one lemma from each, then `#find_home! lemma` returns the current file.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindHome/Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindHome/Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b0b04f532b898d0f1758e7e62b7a35d294b2177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
