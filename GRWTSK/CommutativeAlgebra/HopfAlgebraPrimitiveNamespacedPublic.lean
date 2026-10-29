-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Antipode.Variant01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Antipode.Variant01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/HopfAlgebra/Primitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Robert Hawkins. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Hawkins
-/
module

public import Mathlib.RingTheory.Bialgebra.Primitive
public import Mathlib.RingTheory.HopfAlgebra.Basic

/-!
# Primitive elements in a Hopf algebra

Facts about primitive elements in a Hopf algebra.

## Main declarations

* `Bialgebra.IsPrimitiveElem.antipode_eq_neg`: the antipode sends primitive elements to their
  negation.
* `Bialgebra.IsPrimitiveElem.antipode`: the antipode preserves primitivity.

## References

* [D. Grinberg, V. Reiner, *Hopf algebras in combinatorics*][GrinbergReiner2020]
-/


namespace GRWTSK.Algebra.Antipode.Variant01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66

public section

open Bialgebra HopfAlgebra

variable {R A : Type*} [CommSemiring R] [Ring A] [HopfAlgebra R A] {a : A}

namespace Bialgebra.IsPrimitiveElem

/-- See Proposition 1.4.17 in [GrinbergReiner2020]. -/
@[simp] theorem antipode_eq_neg (ha : IsPrimitiveElem R a) : antipode R a = -a :=
  eq_neg_of_add_eq_zero_right <| by
    simpa [ha.comul_eq_tmul_add_tmul, ha.counit_eq_zero]
      using mul_antipode_rTensor_comul_apply (R := R) a

protected lemma antipode (ha : IsPrimitiveElem R a) : IsPrimitiveElem R (antipode R a) :=
  ha.antipode_eq_neg ▸ ha.neg

lemma antipode_antipode (ha : IsPrimitiveElem R a) : antipode R (antipode R a) = a := by
  simp [ha]

end Bialgebra.IsPrimitiveElem
