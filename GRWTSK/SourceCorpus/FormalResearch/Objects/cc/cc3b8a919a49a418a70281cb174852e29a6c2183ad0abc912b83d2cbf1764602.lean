import Think.Pipeline.Center.KakeyaMedoid

set_option autoImplicit false

namespace Think.Validation.KakeyaMedoidOrderCorrect

abbrev Phase := Think.PhaseId

theorem preceqK_total_over_finite_phases
    (graphDistance : Phase -> Phase -> Nat)
    (m p q : Phase) :
    Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m p q ∨
      Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m q p :=
  Think.Pipeline.Center.KakeyaMedoid.preceqK_total graphDistance m p q

theorem medoid_order_preserves_61_phase_spine :
    Think.centerSpine.length = 61 :=
  Think.Pipeline.Center.KakeyaMedoid.centerSpine_preserved

theorem medoid_order_marks_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues :=
  Think.Pipeline.Center.KakeyaMedoid.medoidResidues_contains_nonTheorem

end Think.Validation.KakeyaMedoidOrderCorrect
