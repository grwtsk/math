# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvExtension.Variantf1417972845893ab17ac95b4e68c6421700379b0a80a859ecb144a28bd94f9a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2d0bd6c00b53d63857e25c61ad8b98301c40491` · SHA-256 `456206542e6f8f838dd665d255c6f3e50cdb9c916859649ef7bdbd0ddc7a72d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyEntries.Variantac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ModifyEntries.Variantac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraph/Lean/EnvExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.EnvExtension

/-! # Extra utilities for environment extensions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyEntries.Variantac12fcfde655ac7e379a7669632a0211646de0c68dfa13077912e68d89f66707

public section

open Lean

namespace Lean.SimplePersistentEnvExtension

/-- Modifies the `List α` of entries of a `SimplePersistentEnvExtension`. -/
def modifyEntries {α σ} (env : Environment)
    (ext : SimplePersistentEnvExtension α σ) (f : List α → List α)
    (asyncMode : EnvExtension.AsyncMode := ext.toEnvExtension.asyncMode)
    (asyncDecl : Name := Name.anonymous) : Environment :=
  PersistentEnvExtension.modifyState ext env (fun (entries, s) => (f entries, s))
    asyncMode asyncDecl

/-- Sets the `List α` of entries of a `SimplePersistentEnvExtension`. -/
def setEntries {α σ} (env : Environment)
    (ext : SimplePersistentEnvExtension α σ) (entries : List α)
    (asyncMode : EnvExtension.AsyncMode := ext.toEnvExtension.asyncMode)
    (asyncDecl : Name := Name.anonymous) : Environment :=
  PersistentEnvExtension.modifyState ext env (fun (_, s) => (entries, s))
    asyncMode asyncDecl

end Lean.SimplePersistentEnvExtension
```
