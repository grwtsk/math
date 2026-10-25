# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4989571a2556fd911f6572aeb935e5215687eaaa` · SHA-256 `997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import * as React from 'react'
import { EditorContext } from '@leanprover/infoview'
import { Range, TextDocumentEdit } from 'vscode-languageserver-protocol'

interface MakeEditLinkProps {
  edit : TextDocumentEdit
  newSelection? : Range
  title? : string
}

export default function(props: React.PropsWithChildren<MakeEditLinkProps>) {
  const ec = React.useContext(EditorContext)

  return <a className='link pointer dim ' title={props.title ?? ''}
      onClick={async () => {
        await ec.api.applyEdit({ documentChanges: [props.edit] })
        // TODO: https://github.com/leanprover/vscode-lean4/issues/225
        if (props.newSelection)
          await ec.revealLocation({ uri: props.edit.textDocument.uri, range: props.newSelection })
      }}
    >
      {props.children}
    </a>
}
```
