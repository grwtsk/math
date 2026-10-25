# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpeedCenterJson.Variantfeb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007d464cc463a30d4e07c4cfc2633fd5ed0162b0` · SHA-256 `feb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Lean.Data.Json
open Lean

/-!
# `structure`s for the https://speed.lean-lang.org/ API
-/

namespace SpeedCenterAPI

structure CommitSource where
  repo_id : String
  hash : String
deriving ToJson, FromJson

structure Source where
  source : CommitSource
deriving ToJson, FromJson

structure Dimension where
  benchmark : String
  metric : String
  unit : String
deriving ToJson, FromJson

structure Measurement where
  dimension : Dimension
  value : Float
deriving ToJson, FromJson

structure Result where
  measurements : List Measurement
deriving ToJson, FromJson

structure Run where
  id : String
  source : Source
  result : Result
deriving ToJson, FromJson

/-- The top-level API response for `https://speed.lean-lang.org/{repo}/api/run/{guid}?hash={sha}`. -/
structure RunResponse where
  run : Run
deriving ToJson, FromJson

/-- The error response -/
structure ErrorMessage where
  repo_id : String
  message : String
  commit_hash : String
deriving ToJson, FromJson

end SpeedCenterAPI
```
