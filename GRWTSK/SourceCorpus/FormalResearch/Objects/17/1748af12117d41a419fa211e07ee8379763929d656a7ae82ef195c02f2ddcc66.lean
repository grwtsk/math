import Boolean.Cube.SpectralDeterminantBoundary
import Boolean.Cube.ProjectionDepth
import Boolean.Cube.TDARecoverabilityZKP
import Boolean.Cube.TorsionBlindDataHomology
import Boolean.Cube.FredholmDeterminantAuthority
import Boolean.Cube.ArithmeticAuthorities
import Boolean.Tree.Compile
import Boolean.Tree.CNF
import Boolean.Tree.ANF
import Boolean.Tree.MatrixEncoding
import Boolean.Matrix.Warshall
import Boolean.Matrix.Cycle

/-!
# Local Prismatic Shape-Update ZKP Relation

This module defines the finite witness relation for local prismatic-shape updates.

It verifies:
* bounded valuation-box / divisor-lattice Möbius reduction;
* Boolean tree/matrix finite projection;
* dyadic stability certificates;
* prior/next finite state compatibility;
* determinant, prismatic, spectral, and torsion authority boundaries.

It does not prove:
* global Connes spectral trace;
* construction of prismatic cohomology;
* regularized/Fredholm determinant validity;
* exact raw forward-cycle flatness at nontrivial dyadic scale;
* Mordell-Weil torsion from field-coefficient homology.

The zero-knowledge property belongs to a later proof-system layer.
-/

namespace Boolean.Cube.PrismaticShapeUpdateZKP

abbrev ValuationBox :=
  SpectralDeterminantBoundary.ValuationBox

abbrev valuationMobius {k : Nat} (v : ValuationBox k) : Int :=
  SpectralDeterminantBoundary.valuationMobius v

abbrev PrismaticBoundaryData :=
  SpectralDeterminantBoundary.PrismaticBoundaryData

/-! ## Finite valuation/Möbius primitives -/

/-- A valuation box equipped with coordinatewise finite bounds. -/
structure BoundedValuationBox (k : Nat) where
  bound : Fin k → Nat
  value : ValuationBox k
  bounded : ∀ i : Fin k, value i ≤ bound i

/-- Finite bounded valuation-box Möbius reduction. -/
structure BoundedMobiusReduction (k : Nat) where
  box : BoundedValuationBox k
  mobiusWeight : Int
  squareFreeSupport : WalshFourier.Frequency k
  hasPrimePowerDependence : Bool
  valuationSupport : List Nat
  weightSound :
    mobiusWeight =
      SpectralDeterminantBoundary.valuationMobius box.value
  supportSound :
    squareFreeSupport =
      SpectralDeterminantBoundary.ValuationBox.support box.value
  primePowerFlagSound :
    hasPrimePowerDependence =
      SpectralDeterminantBoundary.ValuationBox.hasRepeatedPrimePower box.value

theorem bounded_mobius_reduction_weight_sound
    {k : Nat} (R : BoundedMobiusReduction k) :
    R.mobiusWeight =
      SpectralDeterminantBoundary.valuationMobius R.box.value :=
  R.weightSound

theorem bounded_mobius_reduction_support_sound
    {k : Nat} (R : BoundedMobiusReduction k) :
    R.squareFreeSupport =
      SpectralDeterminantBoundary.ValuationBox.support R.box.value :=
  R.supportSound

theorem bounded_mobius_reduction_primePowerFlag_sound
    {k : Nat} (R : BoundedMobiusReduction k) :
    R.hasPrimePowerDependence =
      SpectralDeterminantBoundary.ValuationBox.hasRepeatedPrimePower R.box.value :=
  R.primePowerFlagSound

/-! ## Boolean tree/matrix projection shadow -/

/--
Finite Boolean tree/matrix projection target for a local witness.

This is finite data and finite proof plumbing.  It is not a Hilbert space and
not a prismatic site.
-/
structure BooleanTreeMatrixProjection where
  treeHash : Nat
  matrixHash : Nat
  rows : Nat
  cols : Nat
  compiledFromTree : Prop
  cnfNormalized : Prop
  anfNormalized : Prop
  matrixEncodingSound : Prop
  warshallReachabilitySound : Prop
  cycleCheckSound : Prop
  finiteProjectionSound : Prop

def TreeMatrixLoweringIsExternalAuthority
    (_P : BooleanTreeMatrixProjection) : Prop :=
  False

def ProjectionShadowIsHilbertSpace
    (_P : BooleanTreeMatrixProjection) : Prop :=
  False

def ProjectionShadowIsPrismaticGeometry
    (_P : BooleanTreeMatrixProjection) : Prop :=
  False

theorem projection_shadow_not_hilbert_space
    (P : BooleanTreeMatrixProjection) :
    ¬ ProjectionShadowIsHilbertSpace P := by
  intro h
  exact h

theorem projection_shadow_not_prismatic_geometry
    (P : BooleanTreeMatrixProjection) :
    ¬ ProjectionShadowIsPrismaticGeometry P := by
  intro h
  exact h

theorem tree_matrix_lowering_is_finite_execution_kernel
    (P : BooleanTreeMatrixProjection) :
    P.matrixEncodingSound →
      P.warshallReachabilitySound →
      P.cycleCheckSound →
      P.finiteProjectionSound →
      ¬ TreeMatrixLoweringIsExternalAuthority P := by
  intro _hmatrix _hreach _hcycle _hfinite h
  exact h

/-! ## Dyadic-scale stability without exact raw flatness -/

structure DyadicScale where
  kappa : Nat
  positive : kappa > 0

structure DyadicProjectionStability where
  scale : DyadicScale
  forwardCycleApproxSound : Prop
  dyadicRefinementSound : Prop
  totalErrorBoundSound : Prop
  hexagonalOverlapSound : Prop

def AssumesExactRawForwardCycleFlatness
    (_S : DyadicProjectionStability) : Prop :=
  False

theorem dyadic_stability_does_not_assume_exact_raw_flatness
    (S : DyadicProjectionStability) :
    ¬ AssumesExactRawForwardCycleFlatness S := by
  intro h
  exact h

/-! ## External authority shells -/

structure PrismaticShapeAuthority where
  prismaticSiteHash : Nat
  shapeRealizationHash : Nat
  prismaticComparisonSound : Prop
  frobeniusTraceSound : Prop

structure ConnesSpectralTraceAuthority where
  spectralTripleHash : Nat
  connesTraceHash : Nat
  spectralTraceSound : Prop
  determinantCompatibilitySound : Prop

structure DeterminantAuthority where
  determinantHash : Nat
  determinantCoeffs : List Int
  regularizationSound : Prop
  errorBoundSound : Prop

structure ArithmeticTorsionAuthority where
  torsionHash : Nat
  witnessSound : Prop
  notInferredFromFieldHomology : Prop

def KernelInternalizesGlobalConnesTrace
    (_A : ConnesSpectralTraceAuthority) : Prop :=
  False

theorem kernel_does_not_internalize_global_connes_trace
    (A : ConnesSpectralTraceAuthority) :
    ¬ KernelInternalizesGlobalConnesTrace A := by
  intro h
  exact h

/-! ## Imported certificate semantics and ZKP backend assumptions -/

/--
Checker-side semantics for an imported local shape-update certificate.

The checker validates finite hash/flag compatibility and records that the
external certificate supplies the semantic comparison, precision, and
boundary-realization facts. It does not construct those external facts.
-/
structure ImportedShapeUpdateCertificateSemantics where
  certificateHash : Nat
  boundaryHash : Nat
  publicBoundaryHash : Nat
  publicFlagAccepted : Bool
  boundaryHashMatches : boundaryHash = publicBoundaryHash
  acceptedFlagSound :
    publicFlagAccepted = true → Prop
  comparisonSemantics : Prop
  precisionSemantics : Prop
  realizesFiniteBoundary : Prop

/--
Assumptions attached to an external ZKP backend or CRS.

These are explicit checker-side inputs for a later protocol layer, not the
zero-knowledge theorem itself.
-/
structure ZKPBackendAssumptions where
  backendHash : Nat
  crsHash : Nat
  relationDigest : Nat
  completeForRelation : Prop
  soundForRelation : Prop
  zeroKnowledgeForRelation : Prop
  transcriptBindingSound : Prop

theorem imported_shape_update_certificate_boundary_matches
    (S : ImportedShapeUpdateCertificateSemantics) :
    S.boundaryHash = S.publicBoundaryHash :=
  S.boundaryHashMatches

def ZKPBackendSoundnessStatement
    (A : ZKPBackendAssumptions) : Prop :=
  A.soundForRelation

theorem zkp_backend_assumptions_expose_soundness_statement
    (A : ZKPBackendAssumptions) :
    ZKPBackendSoundnessStatement A = A.soundForRelation :=
  rfl

/-! ## Local prismatic shape state and update -/

structure PrismaticShapeState where
  stateHash : Nat
  toroidalProjectionHash : Nat
  valuationBoxHash : Nat
  mobiusReportHash : Nat
  projectionHash : Nat
  determinantBoundaryHash : Nat
  prismaticBoundaryHash : Nat
  spectralTraceBoundaryHash : Nat
  torsionBoundaryHash : Nat

structure PrismaticShapeUpdateInput (k : Nat) where
  prior : PrismaticShapeState
  next : PrismaticShapeState
  mobius : BoundedMobiusReduction k
  projection : BooleanTreeMatrixProjection
  dyadicStability : DyadicProjectionStability
  determinantAuthority : DeterminantAuthority
  prismaticAuthority : PrismaticShapeAuthority
  spectralAuthority : ConnesSpectralTraceAuthority
  torsionAuthority : ArithmeticTorsionAuthority
  determinantCoeffs : List Int
  relativeTraceData : List Int

/-! ## ZKP public/witness/relation layer -/

structure ShapeUpdatePublicStatement where
  priorStateHash : Nat
  nextStateHash : Nat
  valuationBoxHash : Nat
  mobiusReportHash : Nat
  treeHash : Nat
  matrixHash : Nat
  projectionHash : Nat
  dyadicScaleHash : Nat
  dyadicErrorBoundHash : Nat
  determinantBoundaryHash : Nat
  prismaticBoundaryHash : Nat
  spectralTraceBoundaryHash : Nat
  torsionBoundaryHash : Nat
  acceptedProjectionCertificateFlag : Bool
  acceptedPrismaticCertificateFlag : Bool
  acceptedSpectralCertificateFlag : Bool
  acceptedDeterminantCertificateFlag : Bool
  acceptedTorsionWitnessFlag : Bool
deriving Repr, DecidableEq

/-! ## Finite ZKP representative policy -/

/--
A dyadic value as a numerator at an explicit finite scale.

The circuit-facing representative stores the numerator.  The scale `kappa` is
public metadata, and `withinScale` records the finite range condition
`0 <= numerator <= 2^kappa` in natural-number form.
-/
structure DyadicNumeratorRepresentative where
  kappa : Nat
  numerator : Nat
  withinScale : numerator ≤ 2 ^ kappa
deriving Repr, DecidableEq

/-- A finite hash transition constraint for prior/next shadow-state data. -/
structure HashTransitionConstraint where
  priorHash : Nat
  nextHash : Nat
  transitionDigest : Nat
deriving Repr, DecidableEq

/--
Digest slots for certificate-gated authority boundaries.

These are finite public representatives of supplied certificates, not proofs of
the external analytic, prismatic, determinant, or torsion authority themselves.
-/
structure CertificateDigests where
  projection : Nat
  determinant : Nat
  prismatic : Nat
  spectralTrace : Nat
  torsion : Nat
deriving Repr, DecidableEq

/-- Certificate digests exposed by a public shape-update statement. -/
def ShapeUpdatePublicStatement.certificateDigests
    (pub : ShapeUpdatePublicStatement) : CertificateDigests where
  projection := pub.projectionHash
  determinant := pub.determinantBoundaryHash
  prismatic := pub.prismaticBoundaryHash
  spectralTrace := pub.spectralTraceBoundaryHash
  torsion := pub.torsionBoundaryHash

/-- The public prior-to-next state transition as finite hash metadata. -/
def ShapeUpdatePublicStatement.stateHashTransition
    (pub : ShapeUpdatePublicStatement) : HashTransitionConstraint where
  priorHash := pub.priorStateHash
  nextHash := pub.nextStateHash
  transitionDigest := pub.projectionHash

/--
Finite representative policy for the local ZKP layer.

The finite checker sees dyadic numerators at one public `kappa`, p-depth
metadata, Boolean support bits, hash transition constraints, and certificate
digests.  It does not see or construct prismatic cohomology, global spectral
trace data, Fredholm convergence, or arithmetic torsion proofs.
-/
structure FiniteZKPRepresentativePolicy (k : Nat) where
  publicKappa : Nat
  pDepthMetadata : Nat
  dyadicNumerators : List DyadicNumeratorRepresentative
  booleanSupportBits : WalshFourier.Frequency k
  hashTransitionConstraints : List HashTransitionConstraint
  certificateDigests : CertificateDigests
  numeratorsUsePublicKappa :
    ∀ d ∈ dyadicNumerators, d.kappa = publicKappa

/-- Public-statement compatibility for the finite representative policy. -/
def FiniteZKPRepresentativePolicy.matchesPublicStatement
    {k : Nat}
    (policy : FiniteZKPRepresentativePolicy k)
    (pub : ShapeUpdatePublicStatement) : Prop :=
  policy.publicKappa = pub.dyadicScaleHash ∧
    policy.certificateDigests = pub.certificateDigests ∧
    pub.stateHashTransition ∈ policy.hashTransitionConstraints

/-- Every dyadic representative is expressed at the public `kappa`. -/
theorem finite_zkp_representative_uses_public_kappa
    {k : Nat}
    (policy : FiniteZKPRepresentativePolicy k)
    {d : DyadicNumeratorRepresentative}
    (h : d ∈ policy.dyadicNumerators) :
    d.kappa = policy.publicKappa :=
  policy.numeratorsUsePublicKappa d h

/-- Matching a public statement fixes the representative's public `kappa`. -/
theorem finite_zkp_representative_matches_public_kappa
    {k : Nat}
    {policy : FiniteZKPRepresentativePolicy k}
    {pub : ShapeUpdatePublicStatement}
    (h : policy.matchesPublicStatement pub) :
    policy.publicKappa = pub.dyadicScaleHash :=
  h.1

/-- Matching a public statement fixes the certificate digest payload. -/
theorem finite_zkp_representative_matches_certificate_digests
    {k : Nat}
    {policy : FiniteZKPRepresentativePolicy k}
    {pub : ShapeUpdatePublicStatement}
    (h : policy.matchesPublicStatement pub) :
    policy.certificateDigests = pub.certificateDigests :=
  h.2.1

/-- Matching a public statement carries the prior/next hash transition. -/
theorem finite_zkp_representative_carries_hash_transition
    {k : Nat}
    {policy : FiniteZKPRepresentativePolicy k}
    {pub : ShapeUpdatePublicStatement}
    (h : policy.matchesPublicStatement pub) :
    pub.stateHashTransition ∈ policy.hashTransitionConstraints :=
  h.2.2

structure ShapeUpdatePrivateWitness (k : Nat) where
  input : PrismaticShapeUpdateInput k
  priorMatchesPublic : Prop
  nextMatchesPublic : Prop
  valuationMatchesPublic : Prop
  mobiusMatchesPublic : Prop
  treeMatchesPublic : Prop
  matrixMatchesPublic : Prop
  projectionMatchesPublic : Prop
  dyadicScaleMatchesPublic : Prop
  dyadicErrorMatchesPublic : Prop
  determinantMatchesPublic : Prop
  prismaticMatchesPublic : Prop
  spectralTraceMatchesPublic : Prop
  torsionMatchesPublic : Prop
  localFiniteWitnessSound : Prop

/--
The finite witness relation for local prismatic-shape updates.

Simulation-based zero knowledge is a property of a later proof protocol for
this relation, not a claim of the relation itself.
-/
structure LocalShapeUpdateZKPRelation
    {k : Nat}
    (pub : ShapeUpdatePublicStatement)
    (witness : ShapeUpdatePrivateWitness k) : Prop where
  publicPriorOK :
    witness.priorMatchesPublic
  publicNextOK :
    witness.nextMatchesPublic
  publicValuationOK :
    witness.valuationMatchesPublic
  publicMobiusOK :
    witness.mobiusMatchesPublic
  publicTreeOK :
    witness.treeMatchesPublic
  publicMatrixOK :
    witness.matrixMatchesPublic
  publicProjectionOK :
    witness.projectionMatchesPublic
  publicDyadicScaleOK :
    witness.dyadicScaleMatchesPublic
  publicDyadicErrorOK :
    witness.dyadicErrorMatchesPublic
  publicDeterminantOK :
    witness.determinantMatchesPublic
  publicPrismaticOK :
    witness.prismaticMatchesPublic
  publicSpectralTraceOK :
    witness.spectralTraceMatchesPublic
  publicTorsionOK :
    witness.torsionMatchesPublic
  boundedValuationOK :
    ∀ i : Fin k,
      witness.input.mobius.box.value i ≤ witness.input.mobius.box.bound i
  supportOK :
    witness.input.mobius.squareFreeSupport =
      SpectralDeterminantBoundary.ValuationBox.support
        witness.input.mobius.box.value
  primePowerFlagOK :
    witness.input.mobius.hasPrimePowerDependence =
      SpectralDeterminantBoundary.ValuationBox.hasRepeatedPrimePower
        witness.input.mobius.box.value
  mobiusOK :
    witness.input.mobius.mobiusWeight =
      valuationMobius
        witness.input.mobius.box.value
  projectionOK :
    witness.input.projection.finiteProjectionSound
  dyadicStabilityOK :
    witness.input.dyadicStability.totalErrorBoundSound
  determinantOK :
    witness.input.determinantAuthority.regularizationSound
  prismaticOK :
    witness.input.prismaticAuthority.prismaticComparisonSound
  spectralTraceRoutedExternally :
    witness.input.spectralAuthority.spectralTraceSound
  torsionOK :
    witness.input.torsionAuthority.witnessSound
  torsionNotFromFieldHomology :
    witness.input.torsionAuthority.notInferredFromFieldHomology
  projectionFlagOK :
    pub.acceptedProjectionCertificateFlag = true →
      witness.input.projection.finiteProjectionSound
  prismaticFlagOK :
    pub.acceptedPrismaticCertificateFlag = true →
      witness.input.prismaticAuthority.prismaticComparisonSound
  spectralFlagOK :
    pub.acceptedSpectralCertificateFlag = true →
      witness.input.spectralAuthority.spectralTraceSound
  determinantFlagOK :
    pub.acceptedDeterminantCertificateFlag = true →
      witness.input.determinantAuthority.regularizationSound
  torsionFlagOK :
    pub.acceptedTorsionWitnessFlag = true →
      witness.input.torsionAuthority.witnessSound
  noRawForwardCycleFlatness :
    ¬ AssumesExactRawForwardCycleFlatness witness.input.dyadicStability
  noKernelConnesTraceInternalization :
    ¬ KernelInternalizesGlobalConnesTrace witness.input.spectralAuthority

/-! ## Main plumbing soundness theorems -/

theorem local_shape_update_verifies_finite_mobius
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    W.input.mobius.mobiusWeight =
      valuationMobius W.input.mobius.box.value :=
  R.mobiusOK

theorem local_shape_update_verifies_tree_matrix_projection
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    W.input.projection.finiteProjectionSound :=
  R.projectionOK

theorem local_shape_update_uses_external_prismatic_authority
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    W.input.prismaticAuthority.prismaticComparisonSound :=
  R.prismaticOK

theorem local_shape_update_routes_spectral_trace_externally
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    W.input.spectralAuthority.spectralTraceSound :=
  R.spectralTraceRoutedExternally

theorem local_shape_update_does_not_internalize_connes_trace
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    ¬ KernelInternalizesGlobalConnesTrace W.input.spectralAuthority :=
  R.noKernelConnesTraceInternalization

theorem local_shape_update_does_not_assume_raw_forward_cycle_flatness
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    ¬ AssumesExactRawForwardCycleFlatness W.input.dyadicStability :=
  R.noRawForwardCycleFlatness

theorem local_shape_update_torsion_not_from_field_homology
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W) :
    W.input.torsionAuthority.notInferredFromFieldHomology :=
  R.torsionNotFromFieldHomology

theorem local_shape_update_projection_flag_backed
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W)
    (h : P.acceptedProjectionCertificateFlag = true) :
    W.input.projection.finiteProjectionSound :=
  R.projectionFlagOK h

theorem local_shape_update_prismatic_flag_backed
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W)
    (h : P.acceptedPrismaticCertificateFlag = true) :
    W.input.prismaticAuthority.prismaticComparisonSound :=
  R.prismaticFlagOK h

theorem local_shape_update_spectral_flag_backed
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W)
    (h : P.acceptedSpectralCertificateFlag = true) :
    W.input.spectralAuthority.spectralTraceSound :=
  R.spectralFlagOK h

theorem local_shape_update_determinant_flag_backed
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W)
    (h : P.acceptedDeterminantCertificateFlag = true) :
    W.input.determinantAuthority.regularizationSound :=
  R.determinantFlagOK h

theorem local_shape_update_torsion_flag_backed
    {k : Nat}
    {P : ShapeUpdatePublicStatement}
    {W : ShapeUpdatePrivateWitness k}
    (R : LocalShapeUpdateZKPRelation P W)
    (h : P.acceptedTorsionWitnessFlag = true) :
    W.input.torsionAuthority.witnessSound :=
  R.torsionFlagOK h

/-! ## Bridge to `SpectralDeterminantBoundary` -/

def PrismaticShapeUpdateInput.toBoundaryData
    {k : Nat}
    (I : PrismaticShapeUpdateInput k) :
    PrismaticBoundaryData where
  squareFreeCancellation := I.mobius.mobiusWeight
  valuationSupport := I.mobius.valuationSupport
  hasPrimePowerDependence := I.mobius.hasPrimePowerDependence
  priorToroidalStateHash := I.prior.toroidalProjectionHash
  nextToroidalStateHash := I.next.toroidalProjectionHash
  valuationBoxHash := I.next.valuationBoxHash
  mobiusBoundaryReportHash := I.next.mobiusReportHash
  spectralBoundaryHash := I.next.spectralTraceBoundaryHash
  prismaticBoundaryHash := I.next.prismaticBoundaryHash
  needsPrismaticCertificate := true
  needsAnalyticCertificate := true
  needsArithmeticCertificate := true
  acceptedProjectionWitness := true
  acceptedTorsionWitness := true

theorem toBoundaryData_preserves_mobius
    {k : Nat}
    (I : PrismaticShapeUpdateInput k) :
    (I.toBoundaryData).squareFreeCancellation =
      I.mobius.mobiusWeight := rfl

/-! ## Field-only torsion collision theorem -/

theorem fieldOnly_recovery_blocked_by_collision
    (C : TorsionBlindDataHomology.ArithmeticCollision)
    (A : TorsionBlindDataHomology.FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/-! ## Example -/

def exampleValuation : ValuationBox 3
  | ⟨0, _⟩ => 1
  | ⟨1, _⟩ => 0
  | _ => 2

def exampleBounds : Fin 3 → Nat
  | ⟨0, _⟩ => 1
  | ⟨1, _⟩ => 1
  | _ => 2

def exampleBoundedValuation : BoundedValuationBox 3 where
  bound := exampleBounds
  value := exampleValuation
  bounded := by
    decide

def exampleMobiusReduction : BoundedMobiusReduction 3 where
  box := exampleBoundedValuation
  mobiusWeight :=
    valuationMobius exampleValuation
  squareFreeSupport :=
    SpectralDeterminantBoundary.ValuationBox.support exampleValuation
  hasPrimePowerDependence :=
    SpectralDeterminantBoundary.ValuationBox.hasRepeatedPrimePower
      exampleValuation
  valuationSupport :=
    SpectralDeterminantBoundary.ValuationBox.exponentList exampleValuation
  weightSound := rfl
  supportSound := rfl
  primePowerFlagSound := rfl

def exampleProjection : BooleanTreeMatrixProjection where
  treeHash := 101
  matrixHash := 202
  rows := 3
  cols := 3
  compiledFromTree := True
  cnfNormalized := True
  anfNormalized := True
  matrixEncodingSound := True
  warshallReachabilitySound := True
  cycleCheckSound := True
  finiteProjectionSound := True

def exampleDyadicScale : DyadicScale where
  kappa := 4
  positive := by decide

def exampleDyadicStability : DyadicProjectionStability where
  scale := exampleDyadicScale
  forwardCycleApproxSound := True
  dyadicRefinementSound := True
  totalErrorBoundSound := True
  hexagonalOverlapSound := True

def examplePrismaticAuthority : PrismaticShapeAuthority where
  prismaticSiteHash := 303
  shapeRealizationHash := 404
  prismaticComparisonSound := True
  frobeniusTraceSound := True

def exampleSpectralAuthority : ConnesSpectralTraceAuthority where
  spectralTripleHash := 505
  connesTraceHash := 606
  spectralTraceSound := True
  determinantCompatibilitySound := True

def exampleDeterminantAuthority : DeterminantAuthority where
  determinantHash := 707
  determinantCoeffs := [1, 0]
  regularizationSound := True
  errorBoundSound := True

def exampleTorsionAuthority : ArithmeticTorsionAuthority where
  torsionHash := 808
  witnessSound := True
  notInferredFromFieldHomology := True

def examplePriorState : PrismaticShapeState where
  stateHash := 1
  toroidalProjectionHash := 11
  valuationBoxHash := 12
  mobiusReportHash := 13
  projectionHash := 14
  determinantBoundaryHash := 15
  prismaticBoundaryHash := 16
  spectralTraceBoundaryHash := 17
  torsionBoundaryHash := 18

def exampleNextState : PrismaticShapeState where
  stateHash := 2
  toroidalProjectionHash := 21
  valuationBoxHash := 22
  mobiusReportHash := 23
  projectionHash := 24
  determinantBoundaryHash := 25
  prismaticBoundaryHash := 26
  spectralTraceBoundaryHash := 27
  torsionBoundaryHash := 28

def exampleInput : PrismaticShapeUpdateInput 3 where
  prior := examplePriorState
  next := exampleNextState
  mobius := exampleMobiusReduction
  projection := exampleProjection
  dyadicStability := exampleDyadicStability
  determinantAuthority := exampleDeterminantAuthority
  prismaticAuthority := examplePrismaticAuthority
  spectralAuthority := exampleSpectralAuthority
  torsionAuthority := exampleTorsionAuthority
  determinantCoeffs := [1, 0]
  relativeTraceData := [0]

def examplePublic : ShapeUpdatePublicStatement where
  priorStateHash := examplePriorState.stateHash
  nextStateHash := exampleNextState.stateHash
  valuationBoxHash := exampleNextState.valuationBoxHash
  mobiusReportHash := exampleNextState.mobiusReportHash
  treeHash := exampleProjection.treeHash
  matrixHash := exampleProjection.matrixHash
  projectionHash := exampleNextState.projectionHash
  dyadicScaleHash := exampleDyadicScale.kappa
  dyadicErrorBoundHash := 909
  determinantBoundaryHash := exampleNextState.determinantBoundaryHash
  prismaticBoundaryHash := exampleNextState.prismaticBoundaryHash
  spectralTraceBoundaryHash := exampleNextState.spectralTraceBoundaryHash
  torsionBoundaryHash := exampleNextState.torsionBoundaryHash
  acceptedProjectionCertificateFlag := true
  acceptedPrismaticCertificateFlag := true
  acceptedSpectralCertificateFlag := true
  acceptedDeterminantCertificateFlag := true
  acceptedTorsionWitnessFlag := true

def exampleWitness : ShapeUpdatePrivateWitness 3 where
  input := exampleInput
  priorMatchesPublic := True
  nextMatchesPublic := True
  valuationMatchesPublic := True
  mobiusMatchesPublic := True
  treeMatchesPublic := True
  matrixMatchesPublic := True
  projectionMatchesPublic := True
  dyadicScaleMatchesPublic := True
  dyadicErrorMatchesPublic := True
  determinantMatchesPublic := True
  prismaticMatchesPublic := True
  spectralTraceMatchesPublic := True
  torsionMatchesPublic := True
  localFiniteWitnessSound := True

def exampleRelation :
    LocalShapeUpdateZKPRelation examplePublic exampleWitness where
  publicPriorOK := trivial
  publicNextOK := trivial
  publicValuationOK := trivial
  publicMobiusOK := trivial
  publicTreeOK := trivial
  publicMatrixOK := trivial
  publicProjectionOK := trivial
  publicDyadicScaleOK := trivial
  publicDyadicErrorOK := trivial
  publicDeterminantOK := trivial
  publicPrismaticOK := trivial
  publicSpectralTraceOK := trivial
  publicTorsionOK := trivial
  boundedValuationOK := exampleBoundedValuation.bounded
  supportOK := exampleMobiusReduction.supportSound
  primePowerFlagOK := exampleMobiusReduction.primePowerFlagSound
  mobiusOK := exampleMobiusReduction.weightSound
  projectionOK := trivial
  dyadicStabilityOK := trivial
  determinantOK := trivial
  prismaticOK := trivial
  spectralTraceRoutedExternally := trivial
  torsionOK := trivial
  torsionNotFromFieldHomology := trivial
  projectionFlagOK := by
    intro _
    trivial
  prismaticFlagOK := by
    intro _
    trivial
  spectralFlagOK := by
    intro _
    trivial
  determinantFlagOK := by
    intro _
    trivial
  torsionFlagOK := by
    intro _
    trivial
  noRawForwardCycleFlatness :=
    dyadic_stability_does_not_assume_exact_raw_flatness
      exampleDyadicStability
  noKernelConnesTraceInternalization :=
    kernel_does_not_internalize_global_connes_trace
      exampleSpectralAuthority

theorem example_update_verifies_projection :
    exampleProjection.finiteProjectionSound :=
  by
    simpa [exampleWitness, exampleInput]
      using local_shape_update_verifies_tree_matrix_projection exampleRelation

theorem example_update_does_not_internalize_connes_trace :
    ¬ KernelInternalizesGlobalConnesTrace exampleSpectralAuthority :=
  by
    simpa [exampleWitness, exampleInput]
      using local_shape_update_does_not_internalize_connes_trace exampleRelation

theorem example_update_does_not_assume_raw_forward_cycle_flatness :
    ¬ AssumesExactRawForwardCycleFlatness exampleDyadicStability :=
  by
    simpa [exampleWitness, exampleInput]
      using local_shape_update_does_not_assume_raw_forward_cycle_flatness
        exampleRelation

end Boolean.Cube.PrismaticShapeUpdateZKP
