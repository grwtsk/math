-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleOfMinimalAxioms.Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleOfMinimalAxioms.Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/MinimalAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Nathaniel Thomas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro, Martin C. Martin
-/
import Mathlib.Algebra.Module.Defs

/-!
# Minimal Axioms for a Module

This file defines a constructor to define a `Module` structure on a Type with an
`AddCommGroup`, while proving a minimum number of equalities.

## Main Definitions

* `Module.ofMinimalAxioms`: Define a `Module` structure on a Type with an
  AddCommGroup by proving a minimized set of axioms

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleOfMinimalAxioms.Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52

universe u v

/-- Define a `Module` structure on a Type by proving a minimized set of axioms. -/
abbrev Module.ofMinimalAxioms {R : Type u} {M : Type v} [Semiring R] [AddCommGroup M] [SMul R M]
    -- Scalar multiplication distributes over addition from the left.
    (smul_add : ∀ (r : R) (x y : M), r • (x + y) = r • x + r • y)
    -- Scalar multiplication distributes over addition from the right.
    (add_smul : ∀ (r s : R) (x : M), (r + s) • x = r • x + s • x)
    -- Scalar multiplication distributes over multiplication from the right.
    (mul_smul : ∀ (r s : R) (x : M), (r * s) • x = r • s • x)
    -- Scalar multiplication by one is the identity.
    (one_smul : ∀ x : M, (1 : R) • x = x) : Module R M :=
  { smul_add := smul_add,
    add_smul := add_smul,
    mul_smul := mul_smul,
    one_smul := one_smul,
    zero_smul := fun x =>
      (AddMonoidHom.mk' (· • x) fun r s => add_smul r s x).map_zero
    smul_zero := fun r => (AddMonoidHom.mk' (r • ·) (smul_add r)).map_zero }
