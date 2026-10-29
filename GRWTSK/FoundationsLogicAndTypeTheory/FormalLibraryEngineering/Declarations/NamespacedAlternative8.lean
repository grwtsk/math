-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.As.Variant997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.As.Variant997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09","mathematical_subject":"Foundations.Unclassified","original_sha256":"997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","malformed_import","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.As.Variant997debd694c9acee861fa7a880d881896369e10380ffa7e36427df2cc7508b09

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
