# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExposeNames.Variantc32647342296231fc7ba43e6ccb694e87c530c4f2b34460ef7010217aa9e10e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b34d539262eed81421d3ebe8b768a435c732382` · SHA-256 `8168f8607a485df20792328c927bce42d88fb89007426e0593752a17549df6c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExposeNames.Varianted698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExposeNames.Varianted698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ed698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/ExposeNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.ExposeNames
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExposeNames.Varianted698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0

public section

namespace Lean.Elab.Tactic

@[builtin_tactic Lean.Parser.Tactic.exposeNames] def evalExposeNames : Tactic := fun _ =>
  liftMetaTactic1 fun mvarId => mvarId.exposeNames

end Lean.Elab.Tactic
```
