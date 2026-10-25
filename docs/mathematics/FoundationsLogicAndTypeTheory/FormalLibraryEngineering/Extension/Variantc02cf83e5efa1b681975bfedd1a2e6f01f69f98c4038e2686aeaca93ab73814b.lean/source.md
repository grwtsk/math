# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extension.Variantc02cf83e5efa1b681975bfedd1a2e6f01f69f98c4038e2686aeaca93ab73814b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `039ac05fb231ca1428c2f81566913c3563c6ff5e` · SHA-256 `325fc976509ec6a95a0bab25c100558632c5bba583a15910bbb93e6967ff2722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatsExtensionEntry.Varianta135bd78e2f504f1774db72c9c3b4f1bc6a25bafcecee4af5ef7a0286c45575f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a135bd78e2f504f1774db72c9c3b4f1bc6a25bafcecee4af5ef7a0286c45575f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.StatsExtensionEntry.Varianta135bd78e2f504f1774db72c9c3b4f1bc6a25bafcecee4af5ef7a0286c45575f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a135bd78e2f504f1774db72c9c3b4f1bc6a25bafcecee4af5ef7a0286c45575f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Stats/Extension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Stats.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatsExtensionEntry.Varianta135bd78e2f504f1774db72c9c3b4f1bc6a25bafcecee4af5ef7a0286c45575f

public section

open Lean

namespace Aesop

structure StatsExtensionEntry where
  /--
  The Aesop call for which stats were collected.
  -/
  aesopStx : Syntax
  /-
  The file in which Aesop was called.
  -/
  fileName : String
  /-
  The position in the file where Aesop was called.
  -/
  position? : Option Position
  /--
  The collected stats.
  -/
  stats : Stats

namespace StatsExtensionEntry

def forCurrentFile [Monad m] [MonadLog m] (stx : Syntax) (stats : Stats) :
    m StatsExtensionEntry := do
  let fileName ← getFileName
  let fileMap ← getFileMap
  let position? := stx.getPos?.map fileMap.toPosition
  return { aesopStx := stx, stats, fileName, position? }

end StatsExtensionEntry

abbrev StatsExtension := SimplePersistentEnvExtension StatsExtensionEntry Unit

def StatsExtension.importedEntries (env : Environment) (ext : StatsExtension) :
    Array (Array StatsExtensionEntry) :=
  ext.toEnvExtension.getState env |>.importedEntries

initialize statsExtension : StatsExtension ←
  registerSimplePersistentEnvExtension {
    addEntryFn := λ _ _ => ()
    addImportedFn := λ _ => ()
    asyncMode := .sync -- Maybe we could use a less restrictive mode, but (a) it's not clear to me and (b) this extension is unused by default.
  }

def recordStatsIfEnabled [Monad m] [MonadEnv m] [MonadOptions m]
    (s : StatsExtensionEntry) : m Unit := do
  if ← enableStatsCollection then
    modifyEnv λ env => statsExtension.addEntry env s

def recordStatsForCurrentFileIfEnabled [Monad m] [MonadEnv m] [MonadOptions m]
    [MonadLog m] (aesopStx : Syntax) (stats : Stats) : m Unit := do
  if ← enableStatsCollection then
    let entry ← StatsExtensionEntry.forCurrentFile aesopStx stats
    modifyEnv λ env => statsExtension.addEntry env entry

abbrev StatsArray := Array StatsExtensionEntry

def mkStatsArray (localEntries : List StatsExtensionEntry)
    (importedEntries : Array (Array StatsExtensionEntry)) :
    StatsArray := Id.run do
  let mut result := #[]
  for entry in localEntries do
    result := result.push entry
  for entries in importedEntries do
    result := result ++ entries
  return result

def getStatsArray [Monad m] [MonadEnv m] : m StatsArray := do
  let env ← getEnv
  let current := statsExtension.getEntries env
  let imported := statsExtension.importedEntries env
  return mkStatsArray current imported

end Aesop
```
