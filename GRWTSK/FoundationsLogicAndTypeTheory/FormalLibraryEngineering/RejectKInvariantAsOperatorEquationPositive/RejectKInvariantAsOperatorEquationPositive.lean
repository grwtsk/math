import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
universe u v w m n
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {M : Type m} [CommMonoid M] {N : Type n} [CommMonoid N]
variable {D : E →ₗ[R] E} {D' : F →ₗ[R] F}
-- The independent K-channel remains present; exact operator intertwining discharges the defect.
example (P : StableKOperatorPort D D' M N)
    (h : Intertwines P.linearPort D D') : P.IsExact := by
  exact (intertwines_iff_defect_eq_zero P.linearPort D D').mp h
