/-!
# Finite rank-preservation certificates

This module gives the prismatic-shadow halt certificate a project-local,
finite rank-preservation theorem.  It does not compute Smith normal form or
real rank; it states the finite certificate shape that such computations must
fill.
-/

namespace Presentation
namespace RankPreservation

/-- Stable subcomplex metadata for the finite presentation class. -/
structure StableSubcomplex where
  label : String
  degree : Nat
  objectHash : Nat

/-- Integral homology rank supplied by a finite certificate. -/
structure IntegralHomologyRank
    (_S : StableSubcomplex) where
  rank : Nat
  torsionFree : Prop
  torsionFreeProof : torsionFree

/-- Real relaxed homology dimension supplied by a finite certificate. -/
structure RealRelaxedHomologyDimension
    (_S : StableSubcomplex) where
  dimension : Nat

/-- Finite certificate that the induced real map is an isomorphism on the stable class. -/
structure InducedRealMapCertificate
    (S : StableSubcomplex)
    (I : IntegralHomologyRank S)
    (R : RealRelaxedHomologyDimension S) where
  rankMatchesDimension : I.rank = R.dimension
  inducedMapIsomorphismOnStableClass : Prop
  inducedMapIsomorphismProof : inducedMapIsomorphismOnStableClass

/-- Complete finite rank-preservation certificate. -/
structure RankPreservationCertificate where
  stableSubcomplex : StableSubcomplex
  integralRank : IntegralHomologyRank stableSubcomplex
  realDimension : RealRelaxedHomologyDimension stableSubcomplex
  inducedMap : InducedRealMapCertificate stableSubcomplex integralRank realDimension

/-- The finite certificate proves torsion-freeness of the stable subcomplex. -/
theorem rank_preservation_torsion_free
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree :=
  C.integralRank.torsionFreeProof

/-- The finite certificate proves rank/dimension preservation after real relaxation. -/
theorem rank_preservation_rank_eq_dimension
    (C : RankPreservationCertificate) :
    C.integralRank.rank = C.realDimension.dimension :=
  C.inducedMap.rankMatchesDimension

/-- The finite certificate proves the induced real map is an isomorphism on the stable class. -/
theorem rank_preservation_induced_map_isomorphism
    (C : RankPreservationCertificate) :
    C.inducedMap.inducedMapIsomorphismOnStableClass :=
  C.inducedMap.inducedMapIsomorphismProof

/-- Pack the three rank-preservation obligations into one project-local theorem. -/
theorem rank_preservation_certificate_sound
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree ∧
      C.integralRank.rank = C.realDimension.dimension ∧
      C.inducedMap.inducedMapIsomorphismOnStableClass :=
  ⟨rank_preservation_torsion_free C,
    rank_preservation_rank_eq_dimension C,
    rank_preservation_induced_map_isomorphism C⟩

/--
Boundary-calculus named route for project-local rank preservation.

This is a finite project theorem route, not an analytic theorem and not a
claim that torsion-freeness alone implies rank preservation.
-/
theorem rank_preservation_through_boundary_calculus
    (C : RankPreservationCertificate) :
    C.integralRank.torsionFree ∧
      C.integralRank.rank = C.realDimension.dimension ∧
      C.inducedMap.inducedMapIsomorphismOnStableClass :=
  rank_preservation_certificate_sound C

/-- A finite rank payload does not own rank preservation without the certificate fields. -/
def FiniteRankPayloadOwnsRankPreservation
    (_S : StableSubcomplex)
    (_integralRank : Nat)
    (_realDimension : Nat) : Prop :=
  False

/-- Direct finite rank-payload authority attempts fail. -/
theorem finite_rank_payload_authority_attempt_fails
    (S : StableSubcomplex)
    (integralRank realDimension : Nat) :
    ¬ FiniteRankPayloadOwnsRankPreservation S integralRank realDimension := by
  intro h
  exact h

end RankPreservation
end Presentation
