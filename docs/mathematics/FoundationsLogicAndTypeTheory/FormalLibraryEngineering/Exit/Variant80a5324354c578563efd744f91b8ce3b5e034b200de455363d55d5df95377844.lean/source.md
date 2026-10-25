# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exit.Variant80a5324354c578563efd744f91b8ce3b5e034b200de455363d55d5df95377844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3401f6f6924ce1e344ae719c85753be6cd697b3` · SHA-256 `b980bf9f8a61aa655eece1bb332e6dfe16ac5ee0187409854d640e2ce1a38877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"eff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Exit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Notation
import Init.Data.UInt.BasicAux


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a

namespace Lake

/-- A process exit / return code. -/
public abbrev ExitCode := UInt32

public class MonadExit (m : Type u → Type v) where
  exit {α : Type u} : ExitCode → m α

export MonadExit (exit)

public instance [MonadLift m n] [MonadExit m] : MonadExit n where
  exit rc := liftM (m := m) <| exit rc

/-- Exit with `ExitCode` if it is not 0. Otherwise, continue. -/
@[inline] public def exitIfErrorCode [Pure m] [MonadExit m]  (rc : ExitCode) : m Unit :=
  if rc != 0 then exit rc else pure ()
```
