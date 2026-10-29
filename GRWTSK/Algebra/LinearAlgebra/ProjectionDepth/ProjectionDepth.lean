import Boolean.Matrix
import Boolean.Cube.EdgeRelaxation.Continuous

namespace Boolean.Cube

/-!
# Certified projection depth

This module treats `kappa` as a finite Boolean/dyadic projection depth.  It is
not a universal halting constant and it is not a numerical operator model by
itself.  Boolean matrices record exact finite support, incidence, reachability,
and dependency data.  Dyadic and analytic claims enter through explicit error
and margin certificates.
-/

/--
Certified error numerators for lowering an external object to a finite
Boolean/dyadic witness at depth `kappa`.
-/
structure ProjectionErrors where
  mesh : Nat → Nat
  dyadic : Nat → Nat
  spectral : Nat → Nat
  commutator : Nat → Nat
  trace : Nat → Nat
  total : Nat → Nat
  total_eq :
    ∀ kappa,
      total kappa =
        mesh kappa + dyadic kappa + spectral kappa + commutator kappa +
          trace kappa

/-- Positive margins separating the invariants that must survive projection. -/
structure InvariantMargins where
  persistence : Nat
  spectralGap : Nat
  determinant : Nat
  trace : Nat
  torsion : Nat
  positive :
    persistence > 0 ∧ spectralGap > 0 ∧ determinant > 0 ∧ trace > 0 ∧
      torsion > 0

/-- The controlling stability margin: the smallest active invariant margin. -/
def stabilityMargin (M : InvariantMargins) : Nat :=
  Nat.min M.persistence
    (Nat.min M.spectralGap
      (Nat.min M.determinant
        (Nat.min M.trace M.torsion)))

/--
Cross-multiplied dyadic quantization certificate.

`Err.dyadic kappa * 2 ^ kappa <= constant` represents the usual
`C * 2^{-kappa}` bound without introducing rational arithmetic.
-/
structure DyadicErrorBound (Err : ProjectionErrors) where
  constant : Nat
  bound : ∀ kappa, Err.dyadic kappa * 2 ^ kappa ≤ constant

/--
Finite Boolean support witness.

The matrix is exact Boolean data.  Numerical dyadic or spectral values are kept
in separate certificates rather than as entries of this matrix.
-/
structure BooleanSupportWitness where
  rows : Nat
  cols : Nat
  matrix : Boolean.Matrix rows cols
  supportHash : Nat
  reachabilityOK : Prop
  dependencyOK : Prop

/-- A dyadic observation at a public projection depth. -/
structure DyadicObservation where
  kappa : Nat
  values : List EdgeRelaxation.UnitInterval
  denominatorOK :
    ∀ x ∈ values, x.exponent = kappa

/-- A finite determinant-surrogate certificate checked outside the Boolean matrix. -/
structure DeterminantSurrogate where
  finiteClaim : Nat
  acceptanceMargin : Nat
  surrogateWithinMargin : Prop
  bridgeErrorOK : Prop

/-- A finite external trace certificate checked as typed witness data. -/
structure ExternalTraceSurrogate where
  finiteClaim : Nat
  acceptanceMargin : Nat
  surrogateWithinMargin : Prop
  bridgeErrorOK : Prop

/--
Admissible projection depth.

The decisive inequality is `Err.total kappa < stabilityMargin M`.  The remaining
fields record that each finite witness channel has supplied its local adapter
certificate.
-/
structure AdmissibleKappa
    (Err : ProjectionErrors)
    (M : InvariantMargins)
    (kappa : Nat) where
  positiveScale : kappa > 0
  errorBelowMargin : Err.total kappa < stabilityMargin M
  booleanCapacityOK : Prop
  dyadicRefinementOK : Prop
  spectralProjectionOK : Prop
  determinantSurrogateOK : Prop
  externalTraceOK : Prop

/-- The existence of an admissible depth forces the stability margin to be positive. -/
def stabilityMargin_pos_of_admissible
    {Err : ProjectionErrors}
    {M : InvariantMargins}
    {kappa : Nat}
    (h : AdmissibleKappa Err M kappa) :
    0 < stabilityMargin M :=
  Nat.lt_of_le_of_lt (Nat.zero_le (Err.total kappa)) h.errorBelowMargin

/-- If the controlling margin is zero, no projection depth is admissible. -/
def no_admissible_of_zero_stabilityMargin
    {Err : ProjectionErrors}
    {M : InvariantMargins}
    (hzero : stabilityMargin M = 0)
    (kappa : Nat) :
    AdmissibleKappa Err M kappa → False := by
  intro h
  exact Nat.not_lt_zero (Err.total kappa) (by
    simpa [hzero] using h.errorBelowMargin)

/-- A certified least projection depth. -/
structure CertifiedProjectionDepth
    (Err : ProjectionErrors)
    (M : InvariantMargins) where
  kappa : Nat
  admissible : AdmissibleKappa Err M kappa
  minimal :
    ∀ j, j < kappa → AdmissibleKappa Err M j → False

/-- The certified projection depth is admissible by construction. -/
def CertifiedProjectionDepth.admissible_at_kappa
    {Err : ProjectionErrors}
    {M : InvariantMargins}
    (C : CertifiedProjectionDepth Err M) :
    AdmissibleKappa Err M C.kappa :=
  C.admissible

/-- No smaller depth is admissible for a least-depth certificate. -/
def CertifiedProjectionDepth.not_admissible_below
    {Err : ProjectionErrors}
    {M : InvariantMargins}
    (C : CertifiedProjectionDepth Err M)
    {j : Nat}
    (hj : j < C.kappa) :
    AdmissibleKappa Err M j → False :=
  C.minimal j hj

/-- The target invariants represented by an admissible projection certificate. -/
structure PreservesTargetInvariants
    (Err : ProjectionErrors)
    (M : InvariantMargins)
    (kappa : Nat) where
  positiveScale : kappa > 0
  errorBelowMargin : Err.total kappa < stabilityMargin M
  booleanSupportPreserved : Prop
  dyadicRefinementPreserved : Prop
  spectralClassesPreserved : Prop
  determinantDecisionPreserved : Prop
  externalTracePreserved : Prop

/-- Admissibility is the finite certificate needed to preserve the target invariants. -/
def preserves_target_invariants
    (Err : ProjectionErrors)
    (M : InvariantMargins)
    (kappa : Nat)
    (h : AdmissibleKappa Err M kappa) :
    PreservesTargetInvariants Err M kappa where
  positiveScale := h.positiveScale
  errorBelowMargin := h.errorBelowMargin
  booleanSupportPreserved := h.booleanCapacityOK
  dyadicRefinementPreserved := h.dyadicRefinementOK
  spectralClassesPreserved := h.spectralProjectionOK
  determinantDecisionPreserved := h.determinantSurrogateOK
  externalTracePreserved := h.externalTraceOK

/-- Public finite statement for a projection-depth-aware proof. -/
structure ProjectionZKPPublicStatement where
  kappa : Nat
  margins : InvariantMargins
  booleanMatrixHash : Nat
  dyadicObservationHash : Nat
  mobiusBoundaryReportHash : Nat
  spectralBoundaryHash : Nat
  prismaticBoundaryHash : Nat
  externalTraceClaim : Nat
  determinantClaim : Nat
  torsionClaim : Nat

/--
Private witness data for a projection-depth-aware proof.

The fields are certificates and finite payload hashes.  They do not assert that
the Boolean matrix itself contains analytic, determinant, or trace semantics.
-/
structure ProjectionZKPPrivateWitness
    (Err : ProjectionErrors)
    (S : ProjectionZKPPublicStatement) where
  leftTreeHash : Nat
  rightTreeHash : Nat
  leftMatrix : BooleanSupportWitness
  rightMatrix : BooleanSupportWitness
  dyadicObservation : DyadicObservation
  mobiusBoundaryReportHash : Nat
  spectralBoundaryHash : Nat
  prismaticBoundaryHash : Nat
  determinant : DeterminantSurrogate
  externalTrace : ExternalTraceSurrogate
  exactnessWitness : Prop
  admissible : AdmissibleKappa Err S.margins S.kappa

/-- A public/private witness pair satisfies the finite projection-depth relation. -/
def ProjectionZKPRelation
    (Err : ProjectionErrors)
    (S : ProjectionZKPPublicStatement)
    (witness : ProjectionZKPPrivateWitness Err S) : Prop :=
  witness.leftMatrix.supportHash = S.booleanMatrixHash ∧
    witness.dyadicObservation.kappa = S.kappa ∧
    witness.determinant.finiteClaim = S.determinantClaim ∧
    witness.externalTrace.finiteClaim = S.externalTraceClaim ∧
    witness.mobiusBoundaryReportHash = S.mobiusBoundaryReportHash ∧
    witness.spectralBoundaryHash = S.spectralBoundaryHash ∧
    witness.prismaticBoundaryHash = S.prismaticBoundaryHash ∧
    witness.exactnessWitness

/-- The finite relation exposes the admissible projection-depth certificate. -/
def ProjectionZKPRelation.admissible
    {Err : ProjectionErrors}
    {S : ProjectionZKPPublicStatement}
    {witness : ProjectionZKPPrivateWitness Err S}
    (_h : ProjectionZKPRelation Err S witness) :
    AdmissibleKappa Err S.margins S.kappa :=
  witness.admissible

/--
The finite projection relation proves that the private witness consumed the
same reducer-boundary hashes advertised by the public statement.
-/
theorem ProjectionZKPRelation.consumes_boundary_hashes
    {Err : ProjectionErrors}
    {S : ProjectionZKPPublicStatement}
    {witness : ProjectionZKPPrivateWitness Err S}
    (h : ProjectionZKPRelation Err S witness) :
    witness.mobiusBoundaryReportHash = S.mobiusBoundaryReportHash ∧
      witness.spectralBoundaryHash = S.spectralBoundaryHash ∧
      witness.prismaticBoundaryHash = S.prismaticBoundaryHash := by
  rcases h with ⟨_, _, _, _, hm, hs, hp, _⟩
  exact ⟨hm, hs, hp⟩

/-- A satisfied finite relation preserves the target invariants at public `kappa`. -/
def ProjectionZKPRelation.preserves_target_invariants
    {Err : ProjectionErrors}
    {S : ProjectionZKPPublicStatement}
    {witness : ProjectionZKPPrivateWitness Err S}
    (h : ProjectionZKPRelation Err S witness) :
    PreservesTargetInvariants Err S.margins S.kappa :=
  Boolean.Cube.preserves_target_invariants Err S.margins S.kappa
    (ProjectionZKPRelation.admissible h)

end Boolean.Cube
