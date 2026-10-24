# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Shell.Variant29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f9fe85f4c3bf4a933b3a75cb7a05fbc88d8fc27` · SHA-256 `29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.CohomologicalGluing
import Mathematics.Homology.TorsionRoundedState
import Mathematics.Homology.UniversalCoefficient

/-!
# Complete finite cohomological shell

The shell records both UCT degrees that are easy to conflate:

* torsion in `H^r` is the character dual of torsion in `H_(r-1)`;
* the Bockstein phase target in `H^(r+1)` is the character dual of torsion in
  `H_r`.

Those two exact finite ledgers are coupled to the free real lattice, its Gram
form, and one branch-preserving phase state.  Fiber-cover geometry is an
optional, separately typed realization downstream.
-/

namespace Mathematics.Homology

universe u v w x y

noncomputable section

/-- Exact finite shell before any proposal-only diffusion. -/
structure CohomologicalShell
    (IntegralCohomology : Type u)
    (RealCohomology : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    (ContinuousTorus : Type w)
    (Phase : Type x)
    (PhaseTorsion : Type y)
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion] where
  shellId : ObjectAddress
  stage : Nat
  degree : Nat
  previousHomologyDegree : Nat
  degree_is_successor :
    degree = Nat.succ previousHomologyDegree
  chain : FiniteIntegralChain
  previousIntegralTorsionLedger :
    TorsionLedger chain previousHomologyDegree
  integralTorsionLedger :
    TorsionLedger chain degree
  lattice :
    FreeCohomologyLattice IntegralCohomology RealCohomology
  /--
  Integral torsion killed by real realization is exactly the UCT character
  dual of torsion in the preceding homology degree.
  -/
  integralCohomologyTorsionUCT :
    lattice.integralTorsion ≃+
      CharacterModule previousIntegralTorsionLedger.Coordinate
  /--
  The Bockstein target in `H^(r+1)(K; ℤ)` is canonically the character
  dual of torsion in `H_r(K; ℤ)`.  It is not torsion in `H_(r+1)`.
  -/
  phaseTorsionUCT :
    PhaseTorsion ≃+
      CharacterModule integralTorsionLedger.Coordinate
  /--
  Identifying phase torsion with the homology coordinates themselves is a
  noncanonical choice and is therefore optional, explicit data.
  -/
  chosenPhaseTorsionSelfDuality :
    Option (PhaseTorsion ≃+ integralTorsionLedger.Coordinate)
  cohomologyGram :
    PositiveGram RealCohomology
  roundingExistence :
    RoundingExistenceCertificate lattice cohomologyGram
  phase :
    OrdinaryBocksteinPhase
      ContinuousTorus Phase PhaseTorsion
  phase_degree_agrees :
    phase.degree = degree
  state :
    TorsionRoundedState
      lattice cohomologyGram phase.extension
  /--
  The state-level Bockstein carrier is not a second, merely addressed torsion
  ledger. Its chain, degree, ledger object, and UCT coordinate equivalence are
  exactly the shell fields above.
  -/
  state_torsionChain_eq :
    state.torsionChain = chain
  state_torsionDegree_eq :
    state.torsionDegree = degree
  state_torsionLedger_eq :
    HEq state.torsionLedger integralTorsionLedger
  state_phaseTorsionUCT_eq :
    HEq state.torsionRepresentation.coordinates phaseTorsionUCT
  shellDigest : Digest
  shellCertificate : ObjectAddress

end

end Mathematics.Homology
```
