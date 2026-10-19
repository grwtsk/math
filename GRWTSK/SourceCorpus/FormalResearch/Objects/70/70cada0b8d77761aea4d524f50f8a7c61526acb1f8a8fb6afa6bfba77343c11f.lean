import Mathematics.Homology.ShellTransition
import Mathematics.NeuralDiffusion.PrimeSectorObligation
import Mathematics.Surgery.Request

/-!
# Proposal-only diffusion on a fixed torsion fiber

Continuous diffusion may propose a new cohomological residue and new positive
Gram data.  Its torsion coordinate is definitionally the source coordinate.
Changing torsion is a separately typed surgery event with no theorem-authority
constructor.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Homology

universe u v w x y

noncomputable section

/-- Continuous proposal constrained to one Bockstein torsion fiber. -/
structure ContinuousTorsionFiberProposal
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion}
    (source : TorsionRoundedState lattice gram extension) where
  proposedResidue : RealCohomology
  proposedCohomologyGram : PositiveGram RealCohomology
  proposedFiberGramDigest : Digest
  heatEvidence : ObjectAddress
  modelEvidence : Option ObjectAddress

namespace ContinuousTorsionFiberProposal

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion}
    {source : TorsionRoundedState lattice gram extension}
    (proposal : ContinuousTorsionFiberProposal source)

/-- The proposal has no mutable torsion field. -/
def phaseTorsion
    (_proposal : ContinuousTorsionFiberProposal source) :
    PhaseTorsion :=
  source.phaseTorsion

theorem phaseTorsion_preserved :
    proposal.phaseTorsion = source.phaseTorsion :=
  rfl

end ContinuousTorsionFiberProposal

/--
Proposal for a discrete crossing between torsion sectors.

This type deliberately has no `accepted` bit.  The external finite-surgery
authority may consume the request and publish a separate accepted transition;
the diffuser cannot manufacture one.
-/
structure DiscreteTorsionSurgeryRequest
    (PhaseTorsion : Type y) [AddCommGroup PhaseTorsion] where
  source : PhaseTorsion
  target : PhaseTorsion
  gluingClassBefore : Digest
  gluingClassAfter : Digest
  obstructionGroup : String
  zeroObstructionCertificate : ObjectAddress
  proposedGluingCertificate : ObjectAddress
  requestObject : ObjectAddress

end

end Mathematics.NeuralDiffusion
