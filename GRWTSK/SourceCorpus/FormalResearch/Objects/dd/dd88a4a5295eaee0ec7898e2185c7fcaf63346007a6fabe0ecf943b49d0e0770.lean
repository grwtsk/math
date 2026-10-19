-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ArithMult/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Init
import Aesop

/-!
# arith_mult Rule Set

This module defines the `IsMultiplicative` Aesop rule set which is used by the
`arith_mult` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86

declare_aesop_rule_sets [IsMultiplicative]
