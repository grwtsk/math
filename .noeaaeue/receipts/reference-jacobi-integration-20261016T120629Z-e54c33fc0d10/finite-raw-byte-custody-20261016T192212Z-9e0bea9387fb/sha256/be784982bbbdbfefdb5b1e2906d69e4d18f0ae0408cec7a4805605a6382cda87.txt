/-
Actual third cyclotomic number ring, ideal norms and compact support.
The literal K/O aliases are adapted from OpenAI math, project author OpenAI,
Apache-2.0, commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean, lines 487-491,
SHA256 0e8e4184de91161a75802e3a26abfd19a322dffa6441968bf9caeb25800b5d7c.
No surrounding GaussSum/IdealMobius arithmetic objects are imported.
Mathlib NumberTheory/NumberField/Basic.lean:
Copyright (c) 2021 Ashvni Narayanan. All rights reserved.
Authors: Ashvni Narayanan, Anne Baanen.
Mathlib NumberTheory/Cyclotomic/Basic.lean:
Copyright (c) 2021 Riccardo Brasca. All rights reserved. Author: Riccardo Brasca.
Mathlib NumberTheory/NumberField/Cyclotomic/Basic.lean:
Copyright (c) 2022 Riccardo Brasca. All rights reserved. Author: Riccardo Brasca.
Mathlib RingTheory/Ideal/Norm/AbsNorm.lean:
Copyright (c) 2022 Anne Baanen. All rights reserved. Authors: Anne Baanen, Alex J. Best.
Released under Apache-2.0 as described in LICENSE; imported individual credit retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
CompletedExpansion, original weights and common all-frequency support remain open.
-/
import GRWTSK.NumberTheory.Ideal.CompactNormSupport
import Mathlib.NumberTheory.NumberField.Cyclotomic.Basic

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
noncomputable section

/-- The actual third cyclotomic field, exactly the pinned source alias. -/
abbrev K := CyclotomicField 3 ℚ
/-- Its actual full ring of integers, not an integer-ideal substitute. -/
abbrev O := NumberField.RingOfIntegers K

private instance : IsCyclotomicExtension {3} ℚ K :=
  CyclotomicField.isCyclotomicExtension 3 ℚ

lemma field_identity : K=CyclotomicField 3 ℚ := rfl
lemma ring_identity : O=NumberField.RingOfIntegers (CyclotomicField 3 ℚ) := rfl

lemma actual_number_field : NumberField K := inferInstance
lemma actual_cyclotomic_extension : IsCyclotomicExtension {3} ℚ K := inferInstance
lemma actual_ring_instances : IsDedekindDomain O ∧ Module.Free ℤ O ∧ Module.Finite ℤ O ∧ CharZero O :=
  ⟨inferInstance,inferInstance,inferInstance,inferInstance⟩

/-- The cyclotomic degree is phi(3)=2, using the actual cyclotomic extension. -/
lemma field_finrank : Module.finrank ℚ K=2 := by
  rw [IsCyclotomicExtension.Rat.finrank 3 K]
  decide

lemma integer_finrank : Module.finrank ℤ O=2 := by
  rw [NumberField.RingOfIntegers.rank,field_finrank]

/-- Actual ideal norm of a natural principal generator in this degree-two number ring. -/
theorem principal_nat_absNorm (n : ℕ) : Ideal.absNorm (Ideal.span ({(n:O)} : Set O))=n^2 := by
  rw [Ideal.absNorm_span_natCast,integer_finrank]

lemma principal_two_absNorm : Ideal.absNorm (Ideal.span ({(2:O)} : Set O))=4 := by
  simpa using principal_nat_absNorm 2

/-- Actual specialization: all algebraic instances are supplied by this number ring. -/
theorem finite_support_norm_triple (W : ℝ→ℂ) (hW : HasCompactSupport W)
    (X : ℝ) (hX : 0<X) (F : Ideal O×Ideal O×Ideal O→ℂ)
    (hzero : ∀I J H,I=0 ∨ J=0 ∨ H=0→F (I,J,H)=0)
    (hwindow : ∀I J H,W ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*
      (Ideal.absNorm H:ℝ)^3/X)=0→F (I,J,H)=0) : (Function.support F).Finite :=
  GRWTSK.NumberTheory.Ideal.CompactNormSupport.finite_support_norm_triple W hW X hX F hzero hwindow

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
