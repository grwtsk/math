# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variantf2797fe0efc531c28442256c1ecfdb9dbc93dd74ee82d9a6c0f14f41294be601

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1fb6b29252677c24ee994b700dfa2d172b9fcb9` · SHA-256 `face9d50d02f1ad531b1e59433f98d50acccbd36492b8a5291fd71cc0585357f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.App.Variantbe5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.App.Variantbe5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"be5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.App
public import Lean.Meta.Sym.Simp.CongrInfo
public import Lean.Meta.Sym.Simp.DiscrTree
public import Lean.Meta.Sym.Simp.Main
public import Lean.Meta.Sym.Simp.Result
public import Lean.Meta.Sym.Simp.Rewrite
public import Lean.Meta.Sym.Simp.SimpM
public import Lean.Meta.Sym.Simp.Simproc
public import Lean.Meta.Sym.Simp.Theorems
public import Lean.Meta.Sym.Simp.Have
public import Lean.Meta.Sym.Simp.Lambda
public import Lean.Meta.Sym.Simp.Forall
public import Lean.Meta.Sym.Simp.Debug
public import Lean.Meta.Sym.Simp.EvalGround
public import Lean.Meta.Sym.Simp.Discharger
public import Lean.Meta.Sym.Simp.ControlFlow
public import Lean.Meta.Sym.Simp.Goal
public import Lean.Meta.Sym.Simp.Telescope
public import Lean.Meta.Sym.Simp.Attr
public import Lean.Meta.Sym.Simp.Variant
public import Lean.Meta.Sym.Simp.RegisterCommand

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.App.Variantbe5d3de13e1b8b1198b342797e3fbd65f951639ed92017e901c4f1a5a2625bda

```
