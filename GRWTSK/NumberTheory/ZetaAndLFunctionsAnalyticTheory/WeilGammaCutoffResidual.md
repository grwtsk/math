# Literal gamma cutoffs: exact far tail and a finite-source residual estimate

Local attribution: grwtsk contributors.
Owner: [WeilGammaCutoffResidual.lean](WeilGammaCutoffResidual.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaCutoffResidual`.
Subjects: MSC2020 11M06 (primary), 46C05, 47A07, 65G20.
Coordination: math#1837 and math#1258. Publication of this candidate and its geometric-quadrature consumer is coordinated in math#1837.
Initial drafting baseline: `grwtsk/math@71a70edea2007e6f5c1c408189e10862499139e9`.
Source-only publication review: `grwtsk/math@bc1e1b34506f54ccdb46de9138e906044def5a55`.
The candidate is unchanged mathematically; the new consumer is
[WeilGammaGeometricQuadrature](WeilGammaGeometricQuadrature.md).

## 1. Mathematical increment and consumer

The preceding `EnergySchur` module proves an exact source-trial-minus-residual
identity. This increment supplies quantitative estimates for the actual gamma
part of that residual, not another abstract positivity criterion.

Let I=[-L,L], L>0, and identify H=L2(I;R) with zero-extended whole-line L2.
The complex version of the written argument uses Hermitian inner products;
the Lean source deliberately consumes the existing REAL physical L2 API.
Write tau_r f(x)=f(x+r), and use the canonical density

    k(r) = parityKernel 0 r = exp(-r/2)/(1-exp(-2r)), r>0.

The original gamma energy and pairing are

    G[f] = integral_0^infinity k(r) ||tau_r f-f||_2^2 dr,
    G(f,g) = integral_0^infinity k(r) <tau_r f-f,tau_r g-g> dr.

On the real odd sector the unchanged shifted source is

    q_epsilon[f] = (gammaConstant(1,0)+epsilon)||f||_2^2 + G[f]
                  - <P_L f,f> - 2 |<s_L,f>|^2,
    P_L = sum_(2<=n<exp(2L)) primeWeight(n) (U_log(n)+U_log(n)^*),
    s_L(x) = 1_I(x) sinh(x/2).

All active prime powers and the original negative odd pole are retained.
The corresponding full complex Weil form retains BOTH pole vectors; the
method below concerns the gamma component and does not remove either pole.
The accuracy shift is physical mass only, never an auxiliary pole coordinate.

The goal is a certified lower Schur matrix for this SAME source. Below, lag
cutoff b is a real-space translation lag, NOT the archimedean frequency cutoff
T in Groskin's paper. The two truncations and their tail orders cannot be
identified by notation alone.

## 2. Exact far tail

If f and g are supported in I and r>=2L, their cross-translated products
vanish a.e. Translation preserves the original L2 pairing, so

    <tau_r f-f,tau_r g-g> = 2<f,g>.

The endpoint r=2L contributes at most a null singleton. The existing
`OddWrapEnergy.zeroShiftEnergy_eq_two_mass_of_period_le` proves the real
quadratic statement with the correct almost-everywhere support hypothesis.

For b>=2L define the convergent integral

    kappa(b) = integral_b^infinity k(r) dr.

Then the COMPLETE gamma tail equals 2*kappa(b)*<f,g>. In particular,

    integral_b^infinity k(r) zeroShiftEnergy(r,f) dr
      = 2*kappa(b)*||f||_2^2.

In particular, the exact original signed source has the unconditional bound

    q_beta[f] >= [gammaConstant(1,0)-beta + 2*kappa(b)-primeMass(L)
                  -2(sinh(L)-L)] ||f||_2^2, b>=2L>0.

Proof: retain the separated gamma tail, discard only the nonnegative
remaining gamma energy, then use the canonical `abs_primeEnergy_le` and
`poleMoment_sq_le` estimates. The gamma constant keeps its sign; it is not
replaced by minus its absolute value. This strictly improves that earlier
coarse lower allowance by the positive tail mass. Its scale dependence is
still far too weak to supply the dyadic cofinal signs. The Lean candidate
contains `gamma_energy_lower` and `source_lower_with_exact_tail`.

There is no exponentially small error to extrapolate here: this is an exact
mass term, including every lag beyond b. Scalar evaluation must still be
certified if rounded.

For b>0 the elementary tail majorant is

    k(r) <= exp(-r/2)/(1-exp(-2b)), r>=b,
    0 <= kappa(b) <= 2 exp(-b/2)/(1-exp(-2b)).

Its exact closed form follows by t=exp(-r/2):

    kappa(b) = 2 integral_0^(exp(-b/2)) dt/(1-t^4)
             = (1/2) log((1+z)/(1-z)) + arctan(z), z=exp(-b/2).

Here 0<z<1; the last equality uses
2/(1-t^4)=1/(1-t^2)+1/(1+t^2). This is a written elementary calculation.
The Lean candidate proves integrability, the majorant and the exact return
using the integral-defined kappa. It does NOT yet formalize this log/arctan
evaluation. No floating-point evaluation is substituted for the integral.

## 3. Near-zero source rows: rigorous bounds without fictitious H2 regularity

For f in whole-line H1, the fundamental theorem of calculus in L2 gives

    ||tau_r f-f||_2 <= |r| ||f'||_2.

It is enough to assume this translation-slope bound with any D>=0. The Lean
candidate states it explicitly as `TranslationSlope f D`; it neither assumes
an H1 API that was not constructed nor infers it from an interval derivative.

Let

    Delta_r f = 2f-tau_r f-tau_(-r) f = -(jump(f,r)+jump(f,-r)).

Then ||Delta_r f||_2 <= 2rD for r>0. Since exp(2r)>=1+2r,

    r k(r) <= 1/2+r.

Therefore

    || k(r) Delta_r f ||_2 <= (1+2r)D,
    k(r)||tau_r f-f||_2^2 <= (r/2+r^2)D^2.

Both majorants are integrable at zero. Define the actual Bochner row

    H_a f = integral_0^a k(r) Delta_r f dr.

For a>=0,

    ||H_a f||_2 <= h(a)D,                 h(a)=a+a^2,
    0 <= G_(0,a)[f] <= e(a)D^2,          e(a)=a^2/4+a^3/3.

These bounds are uniform in the tested HIGH-COMPLEMENT vector because the
row error is bounded in physical L2. They are not uniform operator-norm
convergence on the entire L2 unit ball: D depends on the trial.

Zero-extended original finite sine trials are globally H1, not generally H2.
For e_n(x)=L^(-1/2)sin(n*pi*x/L)1_I(x), n>=1, endpoint values vanish.
Integration by parts against a smooth compact test cancels the endpoint
terms, proving that its weak derivative is

    e_n'(x)=L^(-1/2)(n*pi/L)cos(n*pi*x/L)1_I(x).

Cosine orthogonality gives, for f=sum_n c_n e_n,

    ||f'||_2^2=sum_n (n*pi/L)^2 |c_n|^2.

Consequently no numerical derivative enclosure is required for an EXACT
finite sine synthesis: its derivative Gram is explicit. For a coefficient
map C from retained vectors to trial coefficients this Gram is

    D_trial = C^* diag((n*pi/L)^2) C.

Derivative jumps at the support endpoints generally create delta terms in
f'', so applying a whole-line H2 estimate to ordinary zero-extended sine
trials would be invalid. The present H1 estimate avoids that step. The
weak-derivative/sine-Gram argument is WRITTEN, not yet a new Lean theorem.

## 4. Operator/form source return on trials

For an H1 trial u define the whole-line Bochner integral

    Gamma u = integral_0^infinity k(r) Delta_r u dr.

Near zero use the preceding slope bound; away from zero use
||Delta_r u||<=4||u|| and exponential integrability. Thus Gamma u is a
physical L2 vector. At each finite positive lag,

    <Delta_r u,w>=<tau_r u-u,tau_r w-w>.

This follows by translation invariance and the adjoint relation
(tau_r)^*=tau_(-r). Integrating proves <Gamma u,w>=G(u,w) for every original
finite-gamma-energy w. The right side is absolutely integrable by energy
Cauchy--Schwarz; the left side is a Bochner pairing. This establishes the
source row identity on trials without first constructing the self-adjoint
operator on its entire maximal operator domain.

For 0<a<b and b>=2L, let P_I denote physical restriction and put

    Gamma_(a,b) u = P_I integral_a^b k(r) Delta_r u dr + 2*kappa(b)u.

For r>b both translated functions vanish after restriction to I. Hence

    P_I Gamma u - Gamma_(a,b)u = P_I H_a u,
    ||P_I Gamma u-Gamma_(a,b)u||_2 <= h(a)||u'||_2,
    <P_I H_a u,u> = G_(0,a)[u] >= 0.

This last sign is useful: dropping the near lag lowers the trial energy, so
it need not be paid AGAIN as a negative trial-energy observation error.
Its effect on the residual must still be included.

The full form-level Bochner pairing and support-restriction identities in
this section are proved in this written argument; they are not asserted as
completed Lean declarations by the accompanying candidate.

## 5. Source-specific finite Schur bound

Fix the genuine shifted high complement with a_epsilon>=m||.||_2^2, m>0.
Let V be the retained physical space, X:V->W a trial correction, Uv=v-Xv,
and assume Uv is an H1 supported trial for every v. No test direction in W
is discarded or required to be smooth.

Define T_epsilon u by the gamma row above, the exact scalar physical shift,
the complete active prime sum and the original signed pole operator.
Replace ONLY its gamma row by Gamma_(a,b) to obtain Ttilde_epsilon.
Put

    Ftilde[v] = <Ttilde_epsilon Uv,Uv>,
    Rtilde[v] = ||P_W Ttilde_epsilon Uv||_2^2,
    D_trial[v] = ||(Uv)'||_2^2.

The original trial value F_X[v]=q_epsilon[Uv] satisfies Ftilde[v]<=F_X[v].
The actual source residual is r_v(w)=q_epsilon(Uv,w). By coercivity,

    ||r_v||_(a_epsilon^*)^2
      <= ||P_W T_epsilon Uv||_2^2/m
      <= ((1+t)Rtilde[v]+(1+1/t)h(a)^2 D_trial[v])/m, t>0.

Combine with the existing EXACT Schur identity s=F_X-||r||^2:

    s_epsilon[v] >= Ftilde[v]
      - ((1+t)Rtilde[v]+(1+1/t)h(a)^2 D_trial[v])/m.       (* )

This is the main new WRITTEN source-specific estimate. Its hypotheses are
coercivity and actual source/trial identities, not the desired Schur sign.
It preserves signed prime/pole contributions rather than bounding them
termwise by absolute values.

For certified matrices lowerF<=Ftilde and upperR>=Rtilde, the finite test is

    lowerF - ((1+t)upperR+(1+1/t)h(a)^2 D_trial)/m >= 0.

All matrix inequalities quantify EVERY retained vector. Quadrature error,
rounding of kappa(b), prime weights and pole moments, and approximation of
Rtilde must be included when constructing lowerF/upperR. A matrix of sampled
residuals is not upperR. If the implementation uses a bordered auxiliary pole
coordinate, retain the existing physical-only shift metric.

The far LAG tail is exact, but this does not certify a FREQUENCY or mode tail
for a different representation. Computing full spatial residual norms is one
way to enclose all modes without a finite Fourier-tail substitution.

## 6. Declaration map and evidence

The candidate contains local consequences of canonical sources, not an import
of an external conjecture or a claim of novel arithmetic positivity.

- `kernel_mul_lag_le`, `parityKernel_mul_lag_le`: the actual kernel estimate
  from exp(2r)>=1+2r; no Dirichlet-GRH transfer is inferred.
- `kernel_le_tail_majorant`, `kernel_integrableOn_tail`, `tailWeight_nonneg`,
  `tailWeight_le`: finiteness and bounds for the complete positive lag tail.
- `tail_energy_integrable`, `tail_energy_eq`: exact original mass return,
  reusing the established separation-of-support declaration.
- `gamma_energy_lower`, `source_lower_with_exact_tail`: unconditional bounds
  on the original finite-gamma-energy domain, without asserting a cofinal sign.
- `symmetricDifference`, `TranslationSlope`, `symmetricDifference_norm_le`,
  `weighted_row_norm_le`: concrete physical L2 row and its bound.
- `nearRow_integrable`, `nearRow_norm_le`, `nearRow_pairing_le`: actual Bochner near-lag remainder.
- `nearEnergy_nonneg`, `weighted_energy_le`, `nearEnergy_integrable`,
  `nearEnergy_le`: signed lower-form truncation and exact polynomial allowance.

Inspected source identities:

- `WeilGammaData.lean`, blob `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`:
  `parityKernel`, `parityKernel_le_base`, `gammaConstant`.
- `WeilGammaLagMeasure.lean`, blob `37c441cc23b1d3253ff811e568b049398208bc4e`:
  `kernel_pos`, same weighted source measure.
- `WeilTranslationCutoffs.lean`, blob `0f9bea10933135edb5b792284a443a53d500e21b`:
  `Physical`, `translate`, `jump`, strong continuity.
- `WeilOddWrapEnergy.lean`, blob `8e2eae6e04e76eadeea9f59db240d52fb9e6c20b`:
  `zeroShiftEnergy_eq_two_mass_of_period_le`.
- `WeilOddSineForm.lean`, blob `ce5100120f5af50eb520a5a58e6aac0c10f26ba2`:
  canonical `finiteSine` and physical mass normalization.
- `EnergySchur.lean`, blob `35ff8aa8f0f62b8348003677544bb9fb175e221a`:
  the unchanged source-trial/residual consumer.

Primary-literature comparison, inspected November 18, 2026:

1. Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
   Sections 2--3, especially (3.19)--(3.20), supplies the source background,
   already represented by the canonical declarations. No theorem from that
   paper is newly formalized by this file.
2. Suzuki, *Weil's quadratic form via the screw function*, supplied v3,
   September 24, 2026, Section 1.1: original explicit formula and separate
   form/operator domains. No endpoint-domain assertion is imported here.
3. Rump, *Verification methods: rigorous results using floating-point
   arithmetic*, Acta Numerica 19 (2010), 287--449, Sections 10.4, 12 and
   Part 3: residual/rigorous quadrature methodology, not a mathematical
   dependency or an independently replayed certificate.
4. Chen--Weth, *The Dirichlet problem for the logarithmic Laplacian*,
   arXiv:1710.03416; CPDE 44 (2019), 1100--1139, DOI
   10.1080/03605302.2019.1611851. Comparison only: singular differences and
   logarithmic-order energy are classical. Their kernel is NOT substituted
   for the literal gamma kernel and no direct paper-to-Lean adaptation is claimed.

Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean 4.34.1.
Pinned Mathlib `ImproperIntegrals.lean` blob
`e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c` supplies exponential integrability;
`Integrals/Basic.lean` blob `efe8fff89fbf1782b4a42a89038f51f9d862c562`
and interval FTC supply elementary polynomial integrals.

Status: SOURCE_PROOF_CANDIDATE. Elaboration, exact type checks,
fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
Novelty/prior-art completeness: UNASSESSED. All hsource, high-floor,
finite-matrix signs and cofinal certificate-existence obligations remain
OPEN unless separately discharged. No RH/GRH proof is asserted.

Historical delivery: the initial draft was delivered as an unpublished patch.
The present source-only increment admits the mathematical source to its
canonical math path without promoting any verification status. No diagnostics
from the earlier package are claimed as newly replayed or as certified signs.
The new geometric-quadrature consumer proves-in-source the middle-lag bound;
its source note states the exact spatial residual Gram and remaining adapters.
No root import, dependency pin, protection, schedule, worker or CI configuration
is changed. Publication evidence belongs in the coordinating issue.
