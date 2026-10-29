-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunPut.Variant421561fece7c770a03df8e3c0dcb1471447366c714116f2befd0881bd18d0772","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"421561fece7c770a03df8e3c0dcb1471447366c714116f2befd0881bd18d0772","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RunPut.Variant421561fece7c770a03df8e3c0dcb1471447366c714116f2befd0881bd18d0772","mathematical_subject":"Computation.DataStructures","original_sha256":"421561fece7c770a03df8e3c0dcb1471447366c714116f2befd0881bd18d0772","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Cache/Upload.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Marcelo Lynch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marcelo Lynch
-/

import Cache.Upload.Defs

/-!
# The upload operation

`runPut` implements the complete `put` from the command inputs. The routing
is the backend: the shared arbitration resolves the destination
(`stagedUploadDest`), and the selected backend resolves its credentials and
transfer tool and runs the transfer (`azurePutStaged` in
`Cache/Upload/Azure.lean`, `s3PutStaged` in `Cache/Upload/S3.lean`).

The whole upload path is internal to mathlib CI: the commands, the backends,
and their credential and destination variables follow the CI storage layout.
An external cache should not build on it: its operator publishes a staged
artifact set (`stage`) with any storage client and serves readers through
`MATHLIB_CACHE_GET_URL`, one flat location.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunPut.Variant421561fece7c770a03df8e3c0dcb1471447366c714116f2befd0881bd18d0772

namespace Cache.Requests

open System (FilePath)

/--
The complete `put` operation, from the command inputs: resolve the
destination and the backend's credentials, then upload the `.ltar` files
`getFileNames` produces under `srcDir` on the selected backend. The
resolutions run before `getFileNames`, so a misconfiguration fails before
`put`'s expensive packing pass. The per-SHA marker is written when the upload
has a scope, from `--scope` or `MATHLIB_CACHE_REPO_SCOPE`: it lets
`cache query` discover cached commits with a cheap HEAD probe.
-/
def runPut [Monad m] [MonadLiftT IO m] (container? : Option Container)
    (repo? : Option String) (backend : UploadBackend) (srcDir : FilePath)
    (getFileNames : m (Array String)) (overwrite : Bool) : m Unit := do
  let scope? ← getRepoScope
  let dest ← stagedUploadDest backend container? (repo?.getD MATHLIBREPO) scope?
  match backend with
  | .azure =>
    let token ← getAzureAuth
    let fileNames ← getFileNames
    azurePutStaged dest token srcDir fileNames overwrite scope?
  | .s3 =>
    let creds ← getS3Auth
    let region ← getS3Region
    let fileNames ← getFileNames
    s3PutStaged dest creds region srcDir fileNames overwrite scope?

end Cache.Requests
