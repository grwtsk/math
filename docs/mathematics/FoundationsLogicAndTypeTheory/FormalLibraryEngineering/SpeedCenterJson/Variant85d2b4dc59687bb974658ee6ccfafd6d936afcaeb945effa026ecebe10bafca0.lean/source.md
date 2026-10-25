# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpeedCenterJson.Variant85d2b4dc59687bb974658ee6ccfafd6d936afcaeb945effa026ecebe10bafca0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b12f9149be4ef774b1941f04e3f01f61b7ef81aa` · SHA-256 `6a4c5b38aaf8a6d214ef64e3b9866036d35554e7e4ffdccce64336063c120408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommitSource.Variantfeb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CommitSource.Variantfeb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"feb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/LongestPole/SpeedCenterJson.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Lean.Data.Json

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommitSource.Variantfeb9c80637eadd003e53b7a597dbd6f7cc9c628a6e66a74a1cda3ff5b8aff651

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
