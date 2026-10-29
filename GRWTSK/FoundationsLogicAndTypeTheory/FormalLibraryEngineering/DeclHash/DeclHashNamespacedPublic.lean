-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashParams.Variantb91bd09cd5fbf9f0def82b12c7ef5d2c5c5465f55edfeec8ad59a640f0b5d1d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b91bd09cd5fbf9f0def82b12c7ef5d2c5c5465f55edfeec8ad59a640f0b5d1d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HashParams.Variantb91bd09cd5fbf9f0def82b12c7ef5d2c5c5465f55edfeec8ad59a640f0b5d1d0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b91bd09cd5fbf9f0def82b12c7ef5d2c5c5465f55edfeec8ad59a640f0b5d1d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/DeclHash.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashParams.Variantb91bd09cd5fbf9f0def82b12c7ef5d2c5c5465f55edfeec8ad59a640f0b5d1d0

public section

namespace Lean.Compiler.LCNF

instance : Hashable (Param pu) where
  hash p := mixHash (hash p.fvarId) (hash p.type)

def hashParams (ps : Array (Param pu)) : UInt64 :=
  hash ps

mutual
partial def hashAlt (alt : Alt pu) : UInt64 :=
  match alt with
  | .alt ctorName ps k _ => mixHash (mixHash (hash ctorName) (hash ps)) (hashCode k)
  | .default k => hashCode k
  | .ctorAlt info k _ => mixHash (hash info) (hashCode k)

partial def hashAlts (alts : Array (Alt pu)) : UInt64 :=
  alts.foldl (fun r a => mixHash r (hashAlt a)) 7

partial def hashCode (code : Code pu) : UInt64 :=
  match code with
  | .let decl k => mixHash (mixHash (hash decl.fvarId) (hash decl.type)) (mixHash (hash decl.value) (hashCode k))
  | .fun decl k _ | .jp decl k =>
    mixHash (mixHash (mixHash (hash decl.fvarId) (hash decl.type)) (mixHash (hashCode decl.value) (hashCode k))) (hash decl.params)
  | .return fvarId => hash fvarId
  | .unreach type => hash type
  | .jmp fvarId args => mixHash (hash fvarId) (hash args)
  | .cases c => mixHash (mixHash (hash c.discr) (hash c.resultType)) (hashAlts c.alts)
  | .sset fvarId i offset y ty k _ =>
    mixHash (mixHash (hash fvarId) (hash i)) (mixHash (mixHash (hash offset) (hash y)) (mixHash (hash ty) (hashCode k)))
  | .oset fvarId offset y k _ =>
    mixHash (mixHash (hash fvarId) (hash offset)) (mixHash (hash y) (hashCode k))
  | .uset fvarId offset y k _ =>
    mixHash (mixHash (hash fvarId) (hash offset)) (mixHash (hash y) (hashCode k))
  | .setTag fvarId cidx k _ =>
    mixHash (hash fvarId) (mixHash (hash cidx) (hashCode k))
  | .inc fvarId n check persistent k _ =>
    mixHash (mixHash (hash fvarId) (hash n)) (mixHash (mixHash (hash persistent) (hash check)) (hashCode k))
  | .dec fvarId n check persistent objs? k _ =>
    mixHash (mixHash (hash fvarId) (hash n)) (mixHash (mixHash (hash persistent) (hash check)) (mixHash (hash objs?) (hashCode k)))
  | .del fvarId k _ =>
    mixHash (hash fvarId) (hashCode k)

end

instance : Hashable (Code pu) where
  hash c := hashCode c

deriving instance Hashable for DeclValue
deriving instance Hashable for Signature
deriving instance Hashable for Decl

end Lean.Compiler.LCNF
