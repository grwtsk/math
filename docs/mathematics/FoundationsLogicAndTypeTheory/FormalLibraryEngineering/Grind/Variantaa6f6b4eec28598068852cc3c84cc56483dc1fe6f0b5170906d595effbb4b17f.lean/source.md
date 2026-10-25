# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variantaa6f6b4eec28598068852cc3c84cc56483dc1fe6f0b5170906d595effbb4b17f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f540fe59efeb03b054d1182c410de37f246f3aed` · SHA-256 `7c94c20477c0ab87013ae60ffd629b97cd900d7fc8eae16d6e86b73216fa327e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variantd56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Grind.Variantd56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Main
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Elab.Tactic.Grind.BuiltinTactic
public import Lean.Elab.Tactic.Grind.ShowState
public import Lean.Elab.Tactic.Grind.Have
public import Lean.Elab.Tactic.Grind.Trace
public import Lean.Elab.Tactic.Grind.Config
public import Lean.Elab.Tactic.Grind.Lint
public import Lean.Elab.Tactic.Grind.LintExceptions
public import Lean.Elab.Tactic.Grind.Annotated
public import Lean.Elab.Tactic.Grind.Sym
public import Lean.Elab.Tactic.Grind.Rewrite
public import Lean.Elab.Tactic.Grind.DSimp
public import Lean.Elab.Tactic.Grind.Cbv
public import Lean.Elab.Tactic.Grind.SimprocDSL
public import Lean.Elab.Tactic.Grind.SimprocDSLBuiltin
public import Lean.Elab.Tactic.Grind.RegisterSymSimp
public import Lean.Elab.Tactic.Grind.DSimprocDSL
public import Lean.Elab.Tactic.Grind.DSimprocDSLBuiltin
public import Lean.Elab.Tactic.Grind.RegisterSymDSimp

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variantd56361b6c0f633576b4d457221cb6c4ab5a689701aee0f7d44dca76ab46cc58f

```
