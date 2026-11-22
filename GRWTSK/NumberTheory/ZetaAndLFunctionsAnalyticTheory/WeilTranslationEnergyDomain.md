# Complete maximal translation-energy domain with exact source identity

Owner: [WeilTranslationEnergyDomain.lean](WeilTranslationEnergyDomain.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.TranslationEnergyDomain`.
Primary subject: MSC 11M06; supporting functional analysis 46C05, 47A05.

## Source-return chain

`jump_norm_sq` identifies the Hilbert-valued translation norm with the
original whole-line scalar difference-square integral for EVERY lag.
`jump_memLp_iff_gamma_integrable` then proves equivalence of MemLp(jump f)
and the exact integrability condition already used by the original source.
This explicitly avoids identifying infinity with a totalized real integral.

The concrete `energyGraph` is the pre-existing graph construction applied
to A_m and R_m. `mem_energyGraph_iff` identifies every graph energy vector
with the actual translation difference a.e.; `exists_energy_iff` proves
its maximal domain. `energyOperator_isClosed` and
`mem_energyOperator_domain_iff` are therefore source-specific, not an
abstract closure predicate supplied as a premise.

`output_norm_sq` proves norm(G)^2=oddArchimedeanEnergy(f).
`restrictions_tendsto` uses dominated convergence on the omitted energy
square; `cutoff_tendsto_output` returns that strong convergence to actual
source inputs. Neither asserts operator-norm convergence.

Support and oddness define `supportedOdd` as the intersection of two
bounded-map kernels. `mem_supportedOdd_iff` returns to the original a.e.
conditions; `supportedOdd_isClosed` gives its completeness. The supported
energy graph is pulled into the genuine Hilbert product `WithLp 2`, whose
closed subspace is `FormDomain T`. The ordinary product maximum norm is
not mislabeled an inner-product norm.

`existsUnique_form_lift`, `input_injective`, and
`existsUnique_form_lift_of_source` prove that this model is neither an
arbitrary completion with extra invisible states nor a smaller test domain.
Every original L2 representative with the stated support, oddness and
finite gamma energy has exactly one lift. `form_norm_sq_eq_gammaNormSq`
identifies its norm with original physical mass plus gamma energy.
`form_sourceNormSq_equivalent` consumes the existing explicit bounded
SIGNED perturbation estimate. Its constants depend on T and beta.

## Proof comparison and provenance

Primary local proof: closed equalizers + exhaustive a.e. windows, then the
literal L2 norm/integrability identities. Existing consumer:
`ClosedMeasurementGraph.lean`, blob `d857274766c05de048912a339cfba8b3e37ef1bf`.
Original finite-energy source: `WeilOddHighComplement.lean`, blob
`b2fbd7b1184ff303d4186dfda5e3eabf41d00cd5`; zero-shift source:
`WeilOddWrapEnergy.lean`, blob `8e2eae6e04e76eadeea9f59db240d52fb9e6c20b`.
Bounded perturbation consumer: `WeilFixedWindowSemibounded.lean`, blob
`becde980e515c1909cdb1d52fa3cdbc1fec1f8a7`.
Mathlib `L2Space.lean`, `Analysis/InnerProductSpace/ProdL2.lean` (blob
`ecf025481612a64304da7f1a9bddaacd7157f4ba`) and the standard dominated
convergence theorem supply the underlying APIs.

This is a direct local construction related to the closed-form method in
Simon, *Tosio Kato's work on non-relativistic quantum mechanics: part 1*
(2018), §10. It does not import or claim a completed Lean formalization of
Kato's representation theorem, KLMN, or the source's operator spectrum.
The prior search compared distinct Suzuki editions; this increment invokes
neither edition's endpoint-domain claim and introduces no such hypothesis.

## Remaining obligations

Density of this source domain in the supported odd physical space, the
specific smooth/sine form-core theorem, complete domain-linear signed
sesquilinear structure and associated self-adjoint source operator remain
OPEN. They are not inferred from graph closedness or norm equivalence.
The product-space Fubini isometry, complex primitive-character transfer,
full corrected lower-matrix signs and cofinal arithmetic coverage are also
not supplied here. Fixed-window closure does not prove RH or GRH.

## Source pins, evidence, and scope

Local mathematical attribution: grwtsk contributors.
Base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins are changed.

Status: **SOURCE_PROOF_CANDIDATE**. Lean elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay, and independent mathematical review: **NOT_RUN**. Static inspection
is not a replacement for any of these checks. No earlier acceptance or
failure record is changed. Novelty is not claimed; prior-art completeness
is **UNASSESSED**.

The source is ordinary authorized mathematical authoring, not execution of
a proof runner or import of an unproved paper theorem as an axiom.
Coordinating issues: [#1837](https://github.com/grwtsk/math/issues/1837),
[#1258](https://github.com/grwtsk/math/issues/1258).
