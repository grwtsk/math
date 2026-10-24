-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FgBotToSubmodule.Varianta4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FgBotToSubmodule.Varianta4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Finiteness/Subalgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.RingTheory.Finiteness.Basic
public import Mathlib.RingTheory.Finiteness.Bilinear

/-!
# Subalgebras that are finitely generated as submodules
-/


namespace GRWTSK.Algebra.FgBotToSubmodule.Varianta4bf2a8572cdbf2aafb4eceaf55ca06ca8e28b9811b35fafd5b50b858d23bb21

public section

open Function (Surjective)

namespace Subalgebra

open Submodule

variable {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]

theorem fg_bot_toSubmodule : (⊥ : Subalgebra R A).toSubmodule.FG :=
  ⟨{1}, by simp [Algebra.toSubmodule_bot, one_eq_span]⟩

instance finite_bot : Module.Finite R (⊥ : Subalgebra R A) :=
  Module.Finite.range (Algebra.linearMap R A)

end Subalgebra

namespace Submodule

theorem fg_unit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] (I : (Submodule R A)ˣ) :
    (I : Submodule R A).FG := by
  obtain ⟨T, T', hT, hT', one_mem⟩ := mem_span_mul_finite_of_mem_mul (I.mul_inv ▸ one_le.mp le_rfl)
  refine ⟨T, span_eq_of_le _ hT ?_⟩
  rw [← one_mul I, ← mul_one (span R (T : Set A))]
  conv_rhs => rw [← I.inv_mul, ← mul_assoc]
  grw [← span_le.mpr hT', Units.val_mul, Units.val_one, span_mul_span, one_le.2 one_mem]

theorem fg_of_isUnit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] {I : Submodule R A}
    (hI : IsUnit I) : I.FG :=
  fg_unit hI.unit

section Mul

variable {R : Type*} {A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
variable {M N : Submodule R A}

theorem FG.mul (hm : M.FG) (hn : N.FG) : (M * N).FG := by
  rw [mul_eq_map₂]; exact hm.map₂ _ hn

theorem FG.pow (h : M.FG) (n : ℕ) : (M ^ n).FG :=
  Nat.recOn n ⟨{1}, by simp [one_eq_span]⟩ fun n ih => by simpa [pow_succ] using ih.mul h

end Mul

end Submodule
