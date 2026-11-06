/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import WeilZetaOddCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddCofinalCoverage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCertificateCoding
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain

/-!
# Terminal certificate-chain returns to the original RH and Dirichlet GRH

This module belongs to the isolated `WeilZetaOddCriterion`/Zeta23 replay
environment. It must NOT be promoted into the default root library merely
to make its short upstream imports resolve. Preserve the upstream source
pin and compatibility edits of `WeilZetaExplicitFormula`.

Reuse the actual zeta odd criterion and original RH definition. A cofinal
family of source-bound finite packets, accepted by the existing Gram or
Euler-heat theorem, supplies its literal stages. The code-return branch
uses equality of the full dependent payload, not a digest comparison.

For Dirichlet GRH, the primitive character negative-test return is an
explicit additional premise, as are all remaining small-conductor stage
bounds. The inducing-character step is proved by the native Mathlib
identity in `WeilPrimitiveDirichletReturn`, not postulated. None of these
theorems asserts existence of the accepted cofinal family or proves the
missing primitive negative-test theorem. There is no unconditional RH or
GRH declaration here. The consumer is exactly the pre-existing targets.

Primary criterion: H. Yoshida (1992), Proposition 1, as stated in Suzuki,
arXiv:2606.09096v3, section 1.1; implementation reused from the local
`WeilZetaOddCriterion`, not recreated from a changed Fourier convention.
Baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CertificateRootReturn

open OddStageCertificate OddCofinalCoverage OddStageCoding DirichletStageChain
open GRWTSK.NumberTheory.Conditional
open GRWTSK.Algebra.LinearAlgebra.FiniteRealHeatCertificate

/-- All analytic and finite-sign obligations are carried by `Accepted`, not assumed RH. -/
theorem riemannHypothesis_of_cofinal_packets (index : ℕ → ℕ) (hcover : Covers index)
    (p : ∀ n, Packet (index n)) (haccepted : ∀ n, (p n).Accepted) :
    _root_.RiemannHypothesis :=
  RealWeilSource.riemannHypothesis_of_literal_odd_stageLower
    (all_stages_of_accepted_packets index hcover p haccepted)

/-- Direct reuse of the finite ordinary-trace heat theorem, with the same source return. -/
theorem riemannHypothesis_of_cofinal_heat (index : ℕ → ℕ) (hcover : Covers index)
    (p : ∀ n, Data (index n)) (hsource : ∀ n, SourceBound (p n))
    (hheat : ∀ n, Witness ((p n).lower.map (Rat.castHom ℝ))) :
    _root_.RiemannHypothesis :=
  RealWeilSource.riemannHypothesis_of_literal_odd_stageLower
    (all_stages_of_cofinal index hcover
      (fun n => stageLower_of_eulerHeat (p n) (hsource n) (hheat n)))

/-- Decoding preserves the original stage; an accepted decoded object is still required. -/
theorem riemannHypothesis_of_coded_packets (p decoded : ℕ → Payload)
    (hcover : Covers (fun n => (p n).1))
    (hread : ∀ n, packetCode.decode (packetCode.encode (p n)) = some (decoded n))
    (haccepted : ∀ n, (decoded n).2.Accepted) : _root_.RiemannHypothesis :=
  RealWeilSource.riemannHypothesis_of_literal_odd_stageLower
    (all_stages_of_cofinal (fun n => (p n).1) hcover
      (fun n => stageLower_of_packetCode_readback (p n) (decoded n) (hread n) (haccepted n)))

/-- End-to-end conditional return. The outstanding character bridge is visible in the type. -/
theorem dirichletGRH_of_cofinal_packets (index : ℕ → ℕ) (hcover : Covers index)
    (p : ∀ n, Packet (index n)) (haccepted : ∀ n, (p n).Accepted)
    (hreturn : PrimitiveNegativeWitness)
    (hsmall : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), SmallConductorStages χ hp hn) :
    DirichletGRH :=
  dirichletGRH_of_source_chains
    (riemannHypothesis_of_cofinal_packets index hcover p haccepted) hreturn hsmall

end GRWTSK.NumberTheory.WeilQuadraticForm.CertificateRootReturn
