-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variant369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InfoTree.Variant369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Widget/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/
module

prelude
public import Lean.Elab.InfoTree
public import Lean.Server.InfoUtils


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variant369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e

public section

namespace Lean.Widget

open Elab Server

deriving instance TypeName for InfoWithCtx
deriving instance TypeName for LocalContext
deriving instance TypeName for Elab.ContextInfo
deriving instance TypeName for Elab.TermInfo

end Lean.Widget
