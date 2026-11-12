# Endpoint-stable sampling of the original Weil gamma correction

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
MSC2020: primary 11M06; secondary 11M26, 65D30.
Source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature`.
Coordination: [#1789](https://github.com/grwtsk/math/issues/1789),
[scope 6831005151](https://github.com/grwtsk/math/issues/1789#issuecomment-6831005151).

## Evidence boundary and consumer

This is complete written elementary analysis accompanied by five Lean
**SOURCE_PROOF_CANDIDATE** declarations. Elaboration, full dependency build,
fresh kernel replay, transitive axiom audit, certified numerical evaluation,
and independent analytical review are **NOT_RUN**. Originality is
**UNASSESSED**; no novelty is claimed. Publishing source does not change
these statuses or verify any imported declaration. No RH/GRH result is claimed.

The consumer is the existing `primitiveArithmeticValue` with its actual
prime term, not a proxy form. The previous outer quadrature error contains
`kernelCellMass a epsilon R`, which grows without bound as epsilon tends to
zero for fixed R. The new LEFT-endpoint rule instead has error

    2 * headConstant A R L * delta * (R - epsilon).

The actual kernel cell weights, energy, complex correlation, prime powers,
character phases, conductor/parity, head and tail remain unchanged. The
sample energies remain integrals in this Lean file. The inner physical
sampling estimates in WIPS-1--WIPS-3 are still written analysis, not Lean
suppliers newly proved by this module.

## Source bindings and dated comparison

Inspected native main: `05c3158365036f6eaa025d78cf2586dbbfb81f20`;
complete root tree `49c727c41d7910d94a4a7c02c6574a239670c42c`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Root imports and pins are unchanged.

The following exact sources were inspected on 2026-11-12:

* [WeilGammaWeightedQuadrature.lean](../WeilGammaWeightedQuadrature.lean),
  blob `dabea1b0042188b914e41dcdb8cc5478333cec8c`: actual energy modulus,
  exact cell weights, finite additivity and primitive arithmetic enclosure.
* [WeilGammaHeadIntegrability.lean](../WeilGammaHeadIntegrability.lean),
  blob `4800bc7f7b04ac7ae6821fbac2a0dcfb6e9cf0c3`:
  `shift_mul_parityKernel_le`, `shiftDifference_zero_outside`,
  `headConstant`, gamma integrability and two-cutoff enclosure.
* [WeilInnerEnergyPoissonSampling.md](../WeilInnerEnergyPoissonSampling.md),
  at publication `301b779d1ff18484d82254b8654fd9a78f598a48`, blob
  `a7bcfa8e90cd4451a35ad630bc021b88162fc072`: WIPS-1--WIPS-5, especially
  the separate inner-error estimate and the outer-error limitation.
* Johannes Hoelzl, Sebastien Gouezel, Yury Kudryashov and Mathlib contributors,
  [Lebesgue/Basic.lean at the native pin](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Measure/Lebesgue/Basic.lean),
  blob `84794cf74fa34664073bbf336adccdefb5bada62`:
  `Real.volume_real_Icc_of_le` and `Real.volume_real_Ioc_of_le`.

The earlier FLT comparison remains precisely scoped: the contributors to
`anthropics/fermats-last-theorem`, revision
`6e837e75355538c7f80bab5b956861e86c4eacc2`, supplied the inspected translated
Euclidean Poisson theorem
[`SchwartzMap.tsum_eq_tsum_fourier_euclideanSpace`](https://github.com/anthropics/fermats-last-theorem/blob/6e837e75355538c7f80bab5b956861e86c4eacc2/Theorems/Thm_SchwartzMap_tsum_eq_tsum_fourier_euclideanSpace.lean).
That is method-discovery context, not an import or proof dependency of this
new module. This edition copies no FLT implementation and formalizes no
Fermat/Wiles theorem. The new results are local consequences of classical
norm inequalities and integration against the original kernel, not direct
formalizations of a new external paper. Mathematical source context remains
Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
(3.17)--(3.20), as bound by the native energy/correlation modules. That paper
is not credited with these exact quadrature constants. The targeted search
for `left_sampling` found no match; it is not an exhaustive duplicate or
prior-art audit.

## Primary analytical argument

Let A,R be nonnegative, let f:R->C be globally L-Lipschitz, square-integrable,
and zero outside [-A,A]. Write

    E_r = integral_R |f(t+r)-f(t)|^2 dt,
    D = (2*A+R)*L^2,
    C = headConstant(A,R,L) = D*(R+1/2).

For r,s>=0, set z=f(t+r)-f(t), w=f(t+s)-f(t). Then
|z|<=L*r, |w|<=L*s and |z-w|<=L*|r-s|. Factoring the difference of squared
norms and using the reverse triangle inequality gives

    ||z|^2-|w|^2| <= L^2*(r+s)*|r-s|.             (E1)

If r,s<=R, both increments vanish outside [-A-R,A], whose Lebesgue measure
is 2*A+R. Both squared norms are integrable by the original L2 translation
lemmas. Integrating (E1) therefore gives the actual-source modulus

    |E_r-E_s| <= D*(r+s)*|r-s|.                   (E2)

Now let 0<u<=v<=R, with v-u<=delta and delta>=0, and sample at LEFT endpoint
u. For u<r<=v, one has r+u<=2*r and |r-u|<=delta. Thus (E2) implies

    |K_a(r)*(E_r-E_u)| <= 2*D*delta*r*K_a(r)
                          <= 2*D*delta*(r+1/2)
                          <= 2*C*delta.          (E3)

Here a is any natural rate index and K_a is the unchanged parity kernel.
The middle inequality is exactly the existing `shift_mul_parityKernel_le`,
whose proof uses exp(2*r)>=1+2*r. K_a itself is never bounded by a constant
near zero. The private `kernel_nonneg` helper only uses exp(-2*r)<1 for
r>0 and positivity of the numerator.

Both K_a and the gamma density are integrable on this positive cell, so
integral subtraction and multiplication by E_u are valid. With the original
weight w(u,v)=integral_(u,v] K_a, integrating (E3) gives

    |integral_(u,v] K_a(r)*E_r dr - w(u,v)*E_u|
        <= 2*C*delta*(v-u).                      (E4)

For any finite pairwise-disjoint family of these cells covering exactly
(epsilon,R], finite integral additivity gives sum_i(v_i-u_i)=R-epsilon.
Summing (E4), before making any positivity assertion, gives

    |integral_(epsilon,R] K_a(r)*E_r dr
       - sum_i w(u_i,v_i)*E_(u_i)|
        <= eta_out := 2*C*delta*(R-epsilon).      (E5)

No geometric ratio v_i/u_i is required. In particular eta_out<=2*C*delta*R
for all 0<epsilon<=R. Uniformity is only in epsilon with A,R,L,delta fixed.
No claim is made that this error is smaller than every old bound at every
cutoff; one may use whichever of two established bounds is smaller.

For primitive NONPRINCIPAL chi, retain the original sampled expression S,
using left energies, gammaConstant, tailPrefix and the full twistedPrime.
The existing two-cutoff enclosure plus (E5) gives

    S-eta_out <= primitiveArithmeticValue(chi,A,f)
      <= S+eta_out+C*epsilon^2/2
           +tailUpper(a+2*n,R)*energy(f).         (E6)

This is the consumer in the fifth declaration. Primitivity is not omitted;
a modulus is not silently used as a primitive conductor. Zeta is not covered
by (E6). Its two signed pole orientations remain a separate requirement.

## Written composition with inner physical sampling

This paragraph is an analytical consequence of WIPS-2--WIPS-4, not additional
Lean verification. In that notation B_s<=s^2*B1 for every s>=0. Left samples
s=u_i satisfy u_i<=r everywhere in cell i, so now for ANY such partition,

    sum_i w_i*B_(u_i)
      <= B1 * integral_(epsilon,R] r^2*K_a(r) dr
      <= B1*J_a,
    J_a <= 2/(a+1/2)^3 + 1/(2*(a+1/2)^2).

Thus the previous geometric-cell restriction on this particular INNER error
can also be dropped when using left endpoints: J0<=18 and J1<=22/27 suffice.
For physical spacing h, use

    eta_in <= h^2/12 * ((|c|+primeMass(A))*B0+B1*J_a),
    eta0 = h^2*B0/12,
    S_h-eta_in-eta_out <= Q
      <= S_h+eta_in+eta_out+C*epsilon^2/2+U*(E_h+eta0).

All prime powers and Re(conj(chi(n))*C_h(log n)) remain in S_h. The absolute
values bound evaluation error, not the arithmetic form. Character values,
logarithms, function samples, exact cell weights, gamma constants and tails
still require certified evaluation/rounding before this is a numerical
certificate.

For a fixed supported smooth test with certified derivative bounds and
fixed R>=2*A, R>0, an explicit analytic refinement is epsilon_m=R/m,
partition points j*R/m (j=1,...,m), delta_m=R/m, h_m=1/m and tail-prefix
length n_m=m, for integers m>=2. Then eta_out<=2*C*R^2/m and the omitted
head is at most C*R^2/(2*m^2). The inner bound is O(1/m^2), since tailPrefix
is bounded by the fixed exact tail mass, and the tail remainder tends to
zero exponentially in m. This proves convergence of these analytical error
budgets. It does not compute arbitrary smooth functions, supply rounding
certificates, or prove that Q is nonnegative.

## Hostile checks and remaining work

The LEFT endpoint condition is essential to this proof: for an arbitrary
sample s>r near zero, s<=r is false and (E3) does not follow. A cell starting
at zero is not admitted; its bare kernel mass diverges. The head is omitted
with its proved O(epsilon^2) budget instead. Zero-length cells contribute
zero, and epsilon=R is allowed only with the stated exact covering. Missing
or overlapping cells cannot pass the hypotheses. Functions with jump
boundaries are not globally Lipschitz; no H1 energy is assigned to them.
Modulation may increase L and the inner derivative norms, so none of these
estimates is frequency-uniform. Invisible smooth bumps between samples
still prevent finite sample signs from implying all-test positivity.

An alternative pointwise check uses
|z|^2-|w|^2=Re((z-w)*conj(z+w)), followed by Cauchy-Schwarz in C. It reproduces
(E1) with the same hypotheses. This shares the elementary norm bounds and
is not independent mathematical review or a second formal proof.

The first unresolved formal obligations of the earlier Poisson companion
remain its sampling/derivative/translation suppliers. The original signed
arithmetic inequality, full zeta assembly, completed explicit-formula
transfer and universal positive-certificate existence are not discharged.
The canonical proof-automation skill at
`grwtsk/noeaaeue@1d5f33f44c6b4e64d420b7279d09324d2b8e7268:workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`
returned 404. No dependent proof execution was attempted. Source publication
and byte-level inspection are recorded separately in #1789.
