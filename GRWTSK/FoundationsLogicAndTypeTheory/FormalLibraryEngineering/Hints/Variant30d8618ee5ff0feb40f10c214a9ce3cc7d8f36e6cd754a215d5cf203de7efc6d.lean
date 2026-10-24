-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantb179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactics.Variantb179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Hints.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Tactics
import Init.NotationExtra

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantb179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46

public section

/- Hint for making sure `Not p` is definitionally equal to `p → False` even when
   `TransparencyMode.reducible` -/
unif_hint (p : Prop) where
  ⊢ Not p =?= p → False

