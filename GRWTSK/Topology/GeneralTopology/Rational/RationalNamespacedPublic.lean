-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RationalSegment.Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RationalSegment.Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634","mathematical_subject":"Topology.GeneralTopology","original_sha256":"218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Bezier/Rational.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Bezier.Basic

/-!
# Rational Bézier segments

The public evaluator is defined on the closed unit interval, where strictly
positive control weights force the rational denominator to remain positive.
No global nonvanishing claim is made outside that interval.
-/


namespace GRWTSK.Topology.GeneralTopology.RationalSegment.Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634

public section

namespace Surface.Core.Bezier

noncomputable section

open scoped BigOperators

/-- A rational Bézier segment with strictly positive real weights. -/
@[surface_novel]
structure RationalSegment (V : Type*) [AddCommMonoid V] [Module ℝ V]
    (degree : ℕ) where
  control : Fin (degree + 1) → V
  weight : Fin (degree + 1) → ℝ
  weight_pos : ∀ i, 0 < weight i

namespace RationalSegment

variable {V : Type*} [AddCommMonoid V] [Module ℝ V] {degree : ℕ}

/-- The scalar denominator in homogeneous Bernstein coordinates. -/
@[surface_novel, expose]
def denominator (C : RationalSegment V degree) (t : ℝ) : ℝ :=
  ∑ i : Fin (degree + 1), bernstein degree i t * C.weight i

/-- The vector numerator in homogeneous Bernstein coordinates. -/
@[surface_novel, expose]
def numerator (C : RationalSegment V degree) (t : ℝ) : V :=
  ∑ i : Fin (degree + 1),
    (bernstein degree i t * C.weight i) • C.control i

/-- Positive control weights make the denominator strictly positive throughout
the checked parameter interval. -/
@[surface_novel, surface_published]
theorem denominator_pos (C : RationalSegment V degree) (t : UnitInterval) :
    0 < C.denominator t.1 := by
  have hnonneg : ∀ i : Fin (degree + 1),
      0 ≤ bernstein degree i t.1 :=
    fun i => bernstein_nonneg degree i t
  have hex : ∃ i : Fin (degree + 1), 0 < bernstein degree i t.1 := by
    by_contra h
    push Not at h
    have hz : ∀ i : Fin (degree + 1), bernstein degree i t.1 = 0 :=
      fun i => le_antisymm (h i) (hnonneg i)
    have hsum : (∑ i : Fin (degree + 1), bernstein degree i t.1) = 0 := by
      simp [hz]
    rw [sum_bernstein degree t] at hsum
    norm_num at hsum
  obtain ⟨i, hi⟩ := hex
  apply Finset.sum_pos'
  · intro j _
    exact mul_nonneg (hnonneg j) (C.weight_pos j).le
  · exact ⟨i, Finset.mem_univ i, mul_pos hi (C.weight_pos i)⟩

/-- Rational evaluation, total on the checked interval because its denominator
is positive there. -/
@[surface_novel, expose]
def eval (C : RationalSegment V degree) (t : UnitInterval) : V :=
  (C.denominator t.1)⁻¹ • C.numerator t.1

@[surface_novel, surface_published, simp]
theorem eval_zero (C : RationalSegment V degree) :
    C.eval (0 : UnitInterval) = C.control 0 := by
  simp [eval, numerator, denominator, C.weight_pos 0 |>.ne']

@[surface_novel, surface_published, simp]
theorem eval_one (C : RationalSegment V degree) :
    C.eval (1 : UnitInterval) = C.control (Fin.last degree) := by
  simp [eval, numerator, denominator,
    C.weight_pos (Fin.last degree) |>.ne']

theorem continuous_denominator (C : RationalSegment V degree) :
    Continuous C.denominator := by
  unfold denominator bernstein
  fun_prop

section Topology

variable [TopologicalSpace V] [ContinuousAdd V] [ContinuousSMul ℝ V]

theorem continuous_numerator (C : RationalSegment V degree) :
    Continuous C.numerator := by
  unfold numerator bernstein
  fun_prop

/-- The rational evaluator is continuous on its intrinsic unit-interval
domain. -/
@[surface_novel, surface_published]
theorem continuous_eval (C : RationalSegment V degree) :
    Continuous C.eval := by
  unfold eval
  apply Continuous.smul
  · exact (C.continuous_denominator.comp continuous_subtype_val).inv₀
      fun t => (C.denominator_pos t).ne'
  · exact C.continuous_numerator.comp continuous_subtype_val

end Topology

/-- Reverse the ordered control net and its weights. -/
@[surface_novel, expose]
def reverse (C : RationalSegment V degree) : RationalSegment V degree where
  control i := C.control i.rev
  weight i := C.weight i.rev
  weight_pos i := C.weight_pos i.rev

@[simp]
theorem reverse_control (C : RationalSegment V degree)
    (i : Fin (degree + 1)) :
    C.reverse.control i = C.control i.rev :=
  rfl

@[simp]
theorem reverse_weight (C : RationalSegment V degree)
    (i : Fin (degree + 1)) :
    C.reverse.weight i = C.weight i.rev :=
  rfl

@[surface_novel, surface_published, simp]
theorem reverse_reverse (C : RationalSegment V degree) :
    C.reverse.reverse = C := by
  cases C
  simp [reverse, Fin.rev_rev]

@[surface_novel, surface_published]
theorem denominator_reverse (C : RationalSegment V degree) (t : ℝ) :
    C.reverse.denominator t = C.denominator (1 - t) := by
  unfold denominator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (degree + 1)))
    (fun i => bernstein degree i t * C.reverse.weight i)
    (fun i => bernstein degree i (1 - t) * C.weight i)
  intro i
  simp only [reverse_weight, Fin.revPerm_apply]
  congr 1
  simpa using bernstein_rev degree i.rev t

@[surface_novel, surface_published]
theorem numerator_reverse (C : RationalSegment V degree) (t : ℝ) :
    C.reverse.numerator t = C.numerator (1 - t) := by
  unfold numerator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (degree + 1)))
    (fun i =>
      (bernstein degree i t * C.reverse.weight i) • C.reverse.control i)
    (fun i =>
      (bernstein degree i (1 - t) * C.weight i) • C.control i)
  intro i
  simp only [reverse_weight, reverse_control, Fin.revPerm_apply]
  congr 2
  simpa using bernstein_rev degree i.rev t

/-- Reversing the control net exactly reflects the unit parameter. -/
@[surface_novel, surface_published]
theorem eval_reverse (C : RationalSegment V degree) (t : UnitInterval) :
    C.reverse.eval t = C.eval (reverseParameter t) := by
  simp only [eval, denominator_reverse, numerator_reverse,
    reverseParameter_val]

end RationalSegment

end

end Surface.Core.Bezier

end
