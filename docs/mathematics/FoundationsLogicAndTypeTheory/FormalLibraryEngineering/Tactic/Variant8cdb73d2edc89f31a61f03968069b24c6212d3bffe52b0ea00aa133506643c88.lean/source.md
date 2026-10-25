# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant8cdb73d2edc89f31a61f03968069b24c6212d3bffe52b0ea00aa133506643c88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `080a8bbac4f6fc09904321c10b4cb5a3f48dc23e` · SHA-256 `b1cbc26e7b9ce8d72c2bf13c24c7bf6b3308bc1fb59d678153c9ee30c4b101e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variantb67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Intro.Variantb67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Intro
public import Lean.Meta.Tactic.Assumption
public import Lean.Meta.Tactic.Contradiction
public import Lean.Meta.Tactic.Apply
public import Lean.Meta.Tactic.Revert
public import Lean.Meta.Tactic.Clear
public import Lean.Meta.Tactic.Assert
public import Lean.Meta.Tactic.Rewrite
public import Lean.Meta.Tactic.Generalize
public import Lean.Meta.Tactic.Replace
public import Lean.Meta.Tactic.Lets
public import Lean.Meta.Tactic.Induction
public import Lean.Meta.Tactic.Cases
public import Lean.Meta.Tactic.ElimInfo
public import Lean.Meta.Tactic.Delta
public import Lean.Meta.Tactic.Constructor
public import Lean.Meta.Tactic.Simp
public import Lean.Meta.Tactic.AuxLemma
public import Lean.Meta.Tactic.SplitIf
public import Lean.Meta.Tactic.Split
public import Lean.Meta.Tactic.TryThis
public import Lean.Meta.Tactic.Cleanup
public import Lean.Meta.Tactic.Unfold
public import Lean.Meta.Tactic.Rename
public import Lean.Meta.Tactic.AC
public import Lean.Meta.Tactic.Refl
public import Lean.Meta.Tactic.Congr
public import Lean.Meta.Tactic.Repeat
public import Lean.Meta.Tactic.NormCast
public import Lean.Meta.Tactic.IndependentOf
public import Lean.Meta.Tactic.Symm
public import Lean.Meta.Tactic.Backtrack
public import Lean.Meta.Tactic.SolveByElim
public import Lean.Meta.Tactic.FunInd
public import Lean.Meta.Tactic.Rfl
public import Lean.Meta.Tactic.Rewrites
public import Lean.Meta.Tactic.Grind
public import Lean.Meta.Tactic.Ext
public import Lean.Meta.Tactic.Try
public import Lean.Meta.Tactic.Cbv
public import Lean.Meta.Tactic.BVDecide

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variantb67041afe43d567d9858fe24b7a5958abc946cb756a0a6cb4347cff066171c8f

```
