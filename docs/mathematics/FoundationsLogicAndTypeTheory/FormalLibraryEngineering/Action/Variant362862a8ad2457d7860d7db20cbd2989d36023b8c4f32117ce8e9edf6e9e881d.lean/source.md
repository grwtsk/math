# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variant362862a8ad2457d7860d7db20cbd2989d36023b8c4f32117ce8e9edf6e9e881d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5bcc84bd41a09188c71a1c1e1d5d851395249bc` · SHA-256 `77e9123539f8f6d3796936b44e2dfebc61ecf8342ec51290339c11105ee300d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ac.Variantab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ac.Variantab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.AC.Eq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ac.Variantab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231

namespace Lean.Meta.Grind.Action

/-- Associative-Commutative solver action. -/
public def ac : Action :=
  solverAction AC.check `(grind| ac)

end Lean.Meta.Grind.Action
```
