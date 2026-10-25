# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finish.Variant863753af4d1f59630f3566271c79f259c16826a347171dc68223b2d76e5b70e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8415cbd0cd50d03f3631feae5a77f0b856f35d1` · SHA-256 `fff365f31eaa0f0600015d08aca32afc4813b5c25a2d21a4f944ebf9e81d0bc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaxIterationsDefault.Variant1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MaxIterationsDefault.Variant1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Finish.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.EMatchAction
import Lean.Meta.Tactic.Grind.Split

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaxIterationsDefault.Variant1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542

namespace Lean.Meta.Grind.Action

public abbrev maxIterationsDefault := 10000 -- **TODO**: Add option

public def mkFinish (maxIterations : Nat := maxIterationsDefault) : IO Action := do
  let solvers ← Solvers.mkAction
  let step : Action := solvers <|> instantiate <|> splitNext <|> mbtc
  return checkTactic (warnOnly := true) >> intros 0 >> assertAll >> step.loop maxIterations

end Lean.Meta.Grind.Action
```
