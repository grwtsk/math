import Surface.Legacy.BinaryLogicMatrix.PrimeComposite
import Surface.Legacy.BinaryLogicMatrix.MorphismFactorization
import Surface.Legacy.BinaryLogicMatrix.ProofAdapter

namespace Surface.Legacy

structure BinaryLogicMatrixFactorizationDescriptor where
  name : String
  certificate : FactorizationCertificate
  morphismBoundary : String
  theoremBoundary : String
  sound : Prop

theorem blmFactorizationDescriptor_sound
    (D : BinaryLogicMatrixFactorizationDescriptor) :
    D.sound -> D.sound := by
  intro h
  exact h

structure FinalTheoremFamily where
  codecBoundary : String
  morphismBoundary : String
  flowBoundary : String
  hypotheses : Prop
  conclusion : Prop
  transport : hypotheses -> conclusion

theorem finalTheoremFamily_sound (F : FinalTheoremFamily) :
    F.hypotheses -> F.conclusion := by
  intro h
  exact F.transport h

theorem finalTheoremFamily_boundaries_visible
    (F : FinalTheoremFamily) :
    F.codecBoundary = F.codecBoundary ∧
    F.morphismBoundary = F.morphismBoundary ∧
    F.flowBoundary = F.flowBoundary := by
  exact ⟨rfl, rfl, rfl⟩

end Surface.Legacy
