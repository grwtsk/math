-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObjectFactory.Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ObjectFactory.Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/ShareCommon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.ShareCommon
public import Std.Data.HashSet.Basic
public import Lean.Data.PersistentHashSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObjectFactory.Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8

public section

open ShareCommon
namespace Lean.ShareCommon

def objectFactory :=
  StateFactory.mk {
    Map := Std.HashMap, mkMap := (Std.HashMap.emptyWithCapacity ·), mapFind? := (·.get?), mapInsert := (·.insert)
    Set := Std.HashSet, mkSet := (Std.HashSet.emptyWithCapacity ·), setFind? := (·.get?), setInsert := (·.insert)
  }

def persistentObjectFactory :=
  StateFactory.mk {
    Map := PersistentHashMap, mkMap := fun _ => .empty, mapFind? := (·.find?), mapInsert := (·.insert)
    Set := PersistentHashSet, mkSet := fun _ => .empty, setFind? := (·.find?), setInsert := (·.insert)
  }

abbrev ShareCommonT := _root_.ShareCommonT objectFactory
abbrev PShareCommonT := _root_.ShareCommonT persistentObjectFactory
abbrev ShareCommonM := ShareCommonT Id
abbrev PShareCommonM := PShareCommonT Id

@[specialize] def ShareCommonT.withShareCommon [Monad m] (a : α) : ShareCommonT m α :=
  modifyGet fun s => s.shareCommon a

@[specialize] def PShareCommonT.withShareCommon [Monad m] (a : α) : PShareCommonT m α :=
  modifyGet fun s => s.shareCommon a

instance ShareCommonT.monadShareCommon [Monad m] : MonadShareCommon (ShareCommonT m) where
  withShareCommon := ShareCommonT.withShareCommon

instance PShareCommonT.monadShareCommon [Monad m] : MonadShareCommon (PShareCommonT m) where
  withShareCommon := PShareCommonT.withShareCommon

@[inline] def ShareCommonT.run [Monad m] : ShareCommonT m α → m α := _root_.ShareCommonT.run
@[inline] def PShareCommonT.run [Monad m] : PShareCommonT m α → m α := _root_.ShareCommonT.run
@[inline] def ShareCommonM.run : ShareCommonM α → α := ShareCommonT.run
@[inline] def PShareCommonM.run : PShareCommonM α → α := PShareCommonT.run

def shareCommon (a : α) : α := (withShareCommon a : ShareCommonM α).run
