-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Commands.Variantf07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Commands.Variantf07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/ConfigEval/MetaInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.ConfigEval.Commands
public import Lean.Elab.ConfigEval.Instances
import Lean.Elab.ConfigEval.DeriveEvalTerm
import Lean.Elab.ConfigEval.DeriveEvalExpr

/-!
# Derived evaluator instances for built-in Meta types

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Commands.Variantf07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6

public section

namespace Lean.Elab.ConfigEval

open Meta Term

ensure_eval_term_expr_instances ApplyNewGoals
ensure_eval_term_expr_instances EtaStructMode
ensure_eval_term_expr_instances TransparencyMode
ensure_eval_term_expr_instances Occurrences

end Lean.Elab.ConfigEval
