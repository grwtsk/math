# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Client.Variantf07d7dafedaf9aa3f4ea8a9bea0aa7f802ad8ab74b8d798f787810cce0e71a15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `688102ac1af62cef66ce792382d8406c5fb79583` · SHA-256 `536232c85caf2900f7fd352f0ed9b76cff2c982d401c19fbab6f6c203b99742a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Registration.Variant0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Registration.Variant0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/Client.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Joscha Mennicken. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Joscha Mennicken
-/
module

prelude
public import Lean.Data.Lsp.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Registration.Variant0bde9dab3c4201e3ebd68cb4a9fd4a23eb8d03fc22620865c21068d050fb4826

public section

namespace Lean
namespace Lsp

open Json

structure Registration where
  id : String
  method : String
  registerOptions : Option Json
  deriving ToJson, FromJson

structure RegistrationParams where
  registrations : Array Registration
  deriving ToJson, FromJson

end Lsp
end Lean
```
