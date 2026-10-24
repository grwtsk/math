# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Shell.Variant992e83f1730bc3fde3410bc0378e34331e2435182b654cee6527f098fc119349

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2de5a19a4fe344399df980e0b77abd4b21619ed9` · SHA-256 `caf9444d09662dbd936aecb2760d07c2038dd390053f80231b731757e0125e4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CohomologicalShell.Variant29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CohomologicalShell.Variant29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/Shell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CohomologicalShell.Variant29488d403095acb5de543b675578f1ba8ea47a467d15e0b8b10824da6729d52d

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
