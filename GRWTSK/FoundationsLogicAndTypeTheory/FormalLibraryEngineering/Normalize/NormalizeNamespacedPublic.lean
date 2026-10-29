-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BitVec.Variant79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Normalize.BitVec
public import Std.Tactic.BVDecide.Normalize.Bool
public import Std.Tactic.BVDecide.Normalize.Canonicalize
public import Std.Tactic.BVDecide.Normalize.Equal
public import Std.Tactic.BVDecide.Normalize.Prop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant79c74b5ae5c9b942171232d8382413713e16e4f0f4734bab031ff198b8f42377

@[expose] public section

/-!
This directory contains the lemmas used for the normalizing simp set of `bv_decide`.
They are a combination of:
- rules that turn hypotheses involving `BitVec` and `Bool` into something of the form `x = true`
  where `x` only consists of `BitVec` and `Bool` terms, notably no `Prop`. This makes it easy to
  reflect the terms.
- rewrite rules used by Bitwuzla.
-/
