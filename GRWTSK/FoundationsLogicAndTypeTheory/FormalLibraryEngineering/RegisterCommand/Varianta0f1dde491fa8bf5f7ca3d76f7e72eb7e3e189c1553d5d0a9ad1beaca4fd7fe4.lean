-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantb639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Variantb639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/RegisterCommand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","interpolated_literals","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Attr
public import Lean.Meta.Sym.Simp.Variant
public meta import Init.Data.ToString.Name
public meta import Init.Data.String.Extra

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantb639d696e88f839d4992e428b7e34c2e8f34b3af611b513f66398042ba8ab3b9

public section
namespace Lean.Meta.Sym.Simp

macro (name := _root_.Lean.Parser.Command.registerSymSimpAttr) doc:(docComment)?
  "register_sym_simp_attr" id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote ((doc.map (·.getDocString) |>.getD s!"Sym.simp set for {id.getId.toString}").removeLeadingSpaces)
  `($[$doc:docComment]? public meta initialize ext : SymSimpExtension ← registerSymSimpAttr $(quote id.getId) $descr
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str : attr)

end Lean.Meta.Sym.Simp
