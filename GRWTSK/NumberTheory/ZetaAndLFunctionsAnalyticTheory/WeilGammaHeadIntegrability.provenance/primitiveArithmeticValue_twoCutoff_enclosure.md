# Signed arithmetic return of the two-endpoint gamma budget

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.primitiveArithmeticValue_twoCutoff_enclosure`.

MSC2020: primary 11M06; supporting 65G20.

## Exact source statement

For an actual primitive nonprincipal Dirichlet character chi modulo q,
with the full Lipschitz/L2/support/cutoff hypotheses of
`gammaCorrection_twoCutoff_enclosure`, put kappa=gammaParity chi,
c=gammaConstant(q,kappa), E=energy f, and

    B = (c+tailPrefix(kappa,n,R))*E
        + integral_(epsilon,R] gammaCorrectionDensity(kappa,f,r) dr
        - twistedPrime(A,chi,k -> correlation(f,log k)).

The declaration proves

    B <= primitiveArithmeticValue(chi,hprimitive,hnonprincipal,A,f)
      <= B + headConstant(A,R,L)*epsilon^2/2
           + tailUpper(kappa+2n,R)*E.

The consumer is source-exact evaluation of this existing arithmetic
quantity. No replacement GRH target, new positive Gram model or
all-scale sign hypothesis is introduced.

## Derivation and convention check

Unfold only the native arithmetic definition and insert the proved
two-cutoff enclosure of its gamma correction. The complete signed prime
term is identical on both sides and is neither bounded by absolute
mass nor discarded. In particular its convention remains
Re(conj(chi(k))*C_f(log k)), with C_f(r)=integral conj(f(t))*f(t+r) dt,
and `activePrimePowers`/von Mangoldt weights retain the original strict
cutoff and all prime powers. The conductor and gamma constant remain
unchanged. This is order algebra after a substantive analytic supplier,
not a new explicit-formula theorem.

## Error and sign boundaries

B>=0 would suffice for nonnegativity for THIS test. B+budget<0 would
suffice for a negative THIS-test value. A negative B alone is not a
negative certificate. A numerical implementation must additionally
certify its entire prime inventory, complex entries, finite quadrature,
transcendental evaluation and basis/error transport. None is inferred
from this theorem. Universal existence of suitable certificates is not
proved. The zeta source is not nonprincipal; both of its pole orientations
must be retained in a separate full source assembly. The generic a=0
gamma estimate does not remove either pole.

## Source, provenance and evidence

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Canonical source: [`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaHeadIntegrability.lean`](../WeilGammaHeadIntegrability.lean).
Source SHA-256: `c38741ef2863553c72ded8d2da9743b0e1d2b225ee50d47412931c6f2d3330e9`.
Inspected math main: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a source-local elementary consequence, not a copied Yang--Mills
proof or a claim to have formalized a new external paper theorem. The exact
native objects come from `WeilGammaData`, `WeilSourcePrimeCorrelation`,
`WeilConductorFrontier` and `WeilExactGammaTail` at the inspected revision.
Their historical arithmetic context is Connes--Consani--Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
(2.1)--(2.5) for the complex correlation convention and (3.19)--(3.20)
as identified by the canonical gamma sources. No new paper attribution,
explicit-formula proof or theorem novelty is inferred from that context.

Status: `SOURCE_PROOF_CANDIDATE`. Written analytical derivation: supplied.
Lean elaboration, full dependency build, fresh kernel replay, transitive
axiom audit, independent analytical review and repository-wide validation:
`NOT_RUN`. Novelty: `UNASSESSED`; no novelty asserted. Static source
inspection is not Lean evidence. Historical checks of dependencies do not
verify this increment. Source and publication coordination: issue #1789.

The canonical proof-automation skill was inaccessible (404) at
`grwtsk/noeaaeue@8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent execution
was not run. No verified local skill checkout or Lean/Lake executable was
available. Source-only publication does not alter imports in the root
aggregator, dependency pins, workflows or prior evidence statuses.
