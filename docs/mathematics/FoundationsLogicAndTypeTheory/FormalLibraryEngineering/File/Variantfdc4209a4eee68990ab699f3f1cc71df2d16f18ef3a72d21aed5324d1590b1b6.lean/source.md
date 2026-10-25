# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.File.Variantfdc4209a4eee68990ab699f3f1cc71df2d16f18ef3a72d21aed5324d1590b1b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63c68478c74c0ff39a66583fa67775e4f76a80f3` · SHA-256 `4ba0eecbc66179ecd8d03b139cb74c8a275e5b8c44f7653201ac8907650c21c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatsFileRecord.Variant86a5ae9d2ae2953177c0158a9f27f4b9df4b6e61be0bb53bfabee44ec7d3aeac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86a5ae9d2ae2953177c0158a9f27f4b9df4b6e61be0bb53bfabee44ec7d3aeac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.StatsFileRecord.Variant86a5ae9d2ae2953177c0158a9f27f4b9df4b6e61be0bb53bfabee44ec7d3aeac","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"86a5ae9d2ae2953177c0158a9f27f4b9df4b6e61be0bb53bfabee44ec7d3aeac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Stats/File.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Stats.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatsFileRecord.Variant86a5ae9d2ae2953177c0158a9f27f4b9df4b6e61be0bb53bfabee44ec7d3aeac

open Lean Lean.Elab

namespace Aesop

public structure StatsFileRecord extends Stats where
  «syntax» : String
  file : String
  position : Option Position
  declaration : Option Name
  goalSolved : Bool
  deriving ToJson

namespace StatsFileRecord

variable [Monad m] [MonadLog m] [MonadParentDecl m] [MonadLiftT CoreM m] in
public protected def ofStats (aesopStx : Syntax) (goalSolved : Bool) (stats : Stats) :
    m StatsFileRecord := do
  let file ← getFileName
  let fileMap ← getFileMap
  let position := aesopStx.getPos?.map fileMap.toPosition
  let declaration ← getParentDeclName?
  let «syntax» := (← PrettyPrinter.ppCategory `tactic aesopStx).pretty (width := 100000000000)
  return { stats with file, position, declaration, goalSolved, «syntax» }

end StatsFileRecord

variable [Monad m] [MonadLog m] [MonadOptions m] [MonadParentDecl m] [MonadLiftT IO m] [MonadLiftT CoreM m] in
public def appendStatsToStatsFileIfEnabled (aesopStx : Syntax) (stats : Stats)
    (allGoalsSolved : Bool) : m Unit := do
  let file := aesop.stats.file.get (← getOptions)
  if file == "" then
    return
  let record ← StatsFileRecord.ofStats aesopStx allGoalsSolved stats
  IO.FS.withFile file .append fun hdl => do
    -- Append mode atomically moves the cursor to EOF on write, so there is no
    -- race condition between locking the file and moving to EOF.
    hdl.lock (exclusive := true)
    try
      hdl.putStrLn <| toJson record |>.compress
    finally
      hdl.unlock

end Aesop
```
