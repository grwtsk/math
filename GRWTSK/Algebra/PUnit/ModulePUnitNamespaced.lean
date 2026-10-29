-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SmulEq.Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SmulEq.Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.Algebra.Ring.PUnit

/-!
# Instances on PUnit

This file collects facts about module structures on the one-element type
-/


namespace GRWTSK.Algebra.SmulEq.Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c

namespace PUnit

variable {R S : Type*}

@[to_additive]
instance smul : SMul R PUnit :=
  ⟨fun _ _ => unit⟩

@[to_additive (attr := simp)]
theorem smul_eq {R : Type*} (y : PUnit) (r : R) : r • y = unit :=
  rfl

@[to_additive]
instance : IsCentralScalar R PUnit :=
  ⟨fun _ _ => rfl⟩

@[to_additive]
instance : SMulCommClass R S PUnit :=
  ⟨fun _ _ _ => rfl⟩

@[to_additive]
instance instIsScalarTowerOfSMul [SMul R S] : IsScalarTower R S PUnit :=
  ⟨fun _ _ _ => rfl⟩

instance smulWithZero [Zero R] : SMulWithZero R PUnit where
  __ := PUnit.smul
  smul_zero := by subsingleton
  zero_smul := by subsingleton

instance mulAction [Monoid R] : MulAction R PUnit where
  __ := PUnit.smul
  one_smul := by subsingleton
  mul_smul := by subsingleton

instance distribMulAction [Monoid R] : DistribMulAction R PUnit where
  __ := PUnit.mulAction
  smul_zero := by subsingleton
  smul_add := by subsingleton

instance mulDistribMulAction [Monoid R] : MulDistribMulAction R PUnit where
  __ := PUnit.mulAction
  smul_mul := by subsingleton
  smul_one := by subsingleton

instance mulSemiringAction [Semiring R] : MulSemiringAction R PUnit :=
  { PUnit.distribMulAction, PUnit.mulDistribMulAction with }

instance mulActionWithZero [MonoidWithZero R] : MulActionWithZero R PUnit :=
  { PUnit.mulAction, PUnit.smulWithZero with }

instance module [Semiring R] : Module R PUnit where
  __ := PUnit.distribMulAction
  add_smul := by subsingleton
  zero_smul := by subsingleton

@[to_additive]
instance : SMul PUnit R where smul _ x := x

/-- The one-element type acts trivially on every element. -/
@[to_additive (attr := simp)]
lemma smul_eq' (r : PUnit) (a : R) : r • a = a := rfl

@[to_additive] instance [SMul R S] : SMulCommClass PUnit R S := ⟨by simp⟩
instance [SMul R S] : IsScalarTower PUnit R S := ⟨by simp⟩

instance : MulAction PUnit R where
  __ := inferInstanceAs (SMul PUnit R)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

instance [Zero R] : SMulZeroClass PUnit R where
  __ := inferInstanceAs (SMul PUnit R)
  smul_zero _ := rfl

instance [AddMonoid R] : DistribMulAction PUnit R where
  __ := inferInstanceAs (MulAction PUnit R)
  __ := inferInstanceAs (SMulZeroClass PUnit R)
  smul_add _ _ _ := rfl

end PUnit
