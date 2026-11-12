# Native-prime assembly of the original Weil line

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. No originality claim.
MSC2020:11M41,11M06,42A38,30E20. Scope:RP-OC-02.
Source: [WeilPrimeGammaAssembly.lean](../WeilPrimeGammaAssembly.lean).
SHA-256: bdb5fe5d3419ff774e3577a1dbfa6bc6769c9fb6944053a7708aa372fd4fba09.
Lean:leanprover/lean4:v4.34.1; Mathlib:d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination:math#1801, scope6830176457/update6830786205.

## 1. Recovery and unchanged objects

This source was prepared in the preceding unpublished archive at
c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3. Its theorem bodies and literal types
are unchanged; only the unpublished header label was removed. The original
archive remains a historical artifact, not a publication or verification receipt.
The original source digest was
2d2ecd4d77de3a7d97a21c659a60004e7c3a18a4abadd30a9fe76aab02507385.

Reconciliation initially used68d976d55601e8b827dd9e93bb45678eb074265d, then
05c3158365036f6eaa025d78cf2586dbbfb81f20, complete root
49c727c41d7910d94a4a7c02c6574a239670c42c. The two complete comparisons showed
13 and24 additions respectively, with no changes to these paths, imports,
policies or pins. All concurrent work is preserved by complete-tree publication.

For the original admissible complex test supported in[-A,A], A>=0, retain

 C(r)=integral conjugate(f(u))*f(u+r)du,
 W(s)=integral C(r)*exp((s-1/2)*r)dr, s_t=2+it.

The completion is the actual completedLFunction, with no added q^(s/2).
Its original line integrand is

 V_chi(W,t)=log(q)W(1-s_t)+[W(s_t)+W(1-s_t)]g_a(s_t)
            -W(s_t)p_chi(s_t)-W(1-s_t)p_(chi inverse)(s_t),
 g_a(s)=-log(pi)/2+psi((s+a)/2)/2.

The p-functions are the actual twisted von Mangoldt series only on Re(s)=2.
All prime powers, nonunit values, character phases, original multiplicities,
and both zeta poles remain. The original criticalStripStatement and conductor-one
target correspondence are not changed.

## 2. Complete analytical argument and consumers

WPGA-v1-01 uses native correlation_weight_inversion at sigma=-1,y=0,
followed by t->-t. The normalized reflected-line integral is C(0), so the
whole conductor term is log(q)C(0). Native line-weight integrability supplies
its L1 assertion, including t=0; q=1 gives zero conductor, not deletion of poles.

WPGA-v1-02 proves the actual integral identity WR(s)=W(1-s), where
WR(s)=integral C(-r)exp((s-1/2)r)dr. Apply the maintained reflected-prime theorem
to chi inverse and the SAME f. Its pair becomes

 W(1-s_t)p_(chi inverse)(s_t)+W(s_t)p_chi(s_t),

exactly the original prime pair reordered. Both legs are separately integrable
by the native series/interchange theorem and vertical L1 estimates. The result
is twistedPrime(A,chi inverse,C(log n)), not twistedPrime at chi. The native
supplier proves the strict support cutoff AFTER Fourier inversion, including
the null overlap at log(n)=2A. No new cutoff or inversion library is introduced.

WPGA-v1-03 sets G=[W(s_t)+W(1-s_t)]g_a(s_t). The original V is L1 by
WeilVerticalLimits; the preceding conductor and prime pair are L1. Since
G=V-conductor+primePair, gamma-pair integrability is derived. Integral
additivity is therefore legitimate and gives the equality in C

 J_chi=(integral_R G)/(2pi)+log(q)C(0)
          -twistedPrime(A,chi inverse,C(log n)).

No imaginary component is discarded. WPGA-v1-04 substitutes this identity into
the maintained selected-height limit. The SAME heights are chosen before EVERY
f,A, with n+2<T_n<n+3. The sum uses CriticalStripZero, heightWindow and
zeroMultiplicity and subtracts delta_(q=1)*(W(0)+W(1)). WPGA-v1-05 specializes
literally to the level-one primitive principal character, parity0, log(1)=0,
and both negative pole contributions on the zero-window side.

The gamma evaluation that was previously only written is now consumed in
[WeilGammaPhysicalReturn](../WeilGammaPhysicalReturn.lean). Its
[complete argument](../WeilGammaPhysicalReturn.provenance/README.md) proves
product integrability, compensated Fubini, positive-real digamma reality and
the canonical physical return. The [resolvent module](../WeilGammaResolventEvaluation.lean)
supplies exact finite compensated evaluation and a full complex truncation bound.
No claim of arithmetic positivity follows from these source identities.

## 3. Individual source map and evidence

Records: [01](weil_conductor_line_evaluation.md),
[02](weil_native_prime_pair_evaluation.md),
[03](weil_full_line_eq_gamma_native_prime.md),
[04](exists_primitive_weil_gamma_native_limit.md),
[05](exists_zeta_weil_gamma_native_limit.md).

Native inversion source:WeilCorrelationInversion.lean,
blob6cddeef9417b55e33e2f4f8c446bd591e5a78bc6.
Native prime source:WeilPrimeLineEvaluation.lean,
blob0c7338b32fdd2b103f331e3a4f6dcaad6c627c44.
Both were read and reused at the original base, not copied from another project.
Method comparison:Anthropic Zeta23/WeilEF/VerticalLine and ThmE/VerticalLineChi
at16a5ce41304fcdaea4e0be7c132e1c361dc26da5, tilted inversion and prime-line
interchange. No upstream code/import/build result is transferred. This is a
local consequence, not a novel direct paper formalization. Originality and
independent review are unassessed; the search is not exhaustive.

Elaboration, full dependency build, fresh kernel replay, transitive axiom audit,
elaborated-statement correspondence, independent review, numerical certification
and repository-wide validation: **NOT_RUN**. No Lean/Lake command was executed.
The canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no verified local skill/toolchain was found. Dependent execution stopped.
Publication actions are separately authorized and available; source-text/scalar
checks and readback observations belong in #1801 and do not establish checked
mathematics. All imported source candidates retain their evidence status.

The refreshed WeilSourceHeightTail supplies the actual-source count and unordered
HasSum endpoint, superseding the earlier count-premise handoff for that consumer.
The independent all-test arithmetic sign and complete varying-interpolant
negative-witness margin remain unresolved. No RH/GRH proof is asserted.
