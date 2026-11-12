# Actual gamma-parity gap: physical kernel and trace budget

Author: grwtsk contributors. Date: 2026-11-12. MSC2020: 11M41 (primary), 33B15, 42A38, 47B10.
Status: WRITTEN ANALYTICAL ARGUMENT ONLY. No Lean declaration, elaboration, kernel replay, transitive axiom audit, certified computation, or independent review. Novelty UNASSESSED. Coordination: math#1801.

## Exact source and theorem

Fix q>=1, A>0, and a complex canonical admissible test f supported in [-A,A]. Put
F_f(t)=integral_R f(x)exp(i*t*x)dx; E(f)=integral_R |f(x)|^2 dx;
C_f(r)=integral_R conjugate(f(x))*f(x+r)dx. Let A_(q,a)(f) be the ORIGINAL archimedean Weil sector

 A_(q,a)(f)=integral_R |F_f(t)|^2/(2*pi)*
                [log(q/pi)+Re digamma(1/4+a/2+i*t/2)]dt, a=0,1.

Reflection of the actual digamma function and evenness of its real part give, for EVERY real t,

 Re digamma(3/4+i*t/2)-Re digamma(1/4+i*t/2)=pi/cosh(pi*t).

Hence the parity difference at the SAME conductor is

 Delta_A(f):=A_(q,1)(f)-A_(q,0)(f)
      =1/2*integral_R sech(pi*t)*|F_f(t)|^2 dt.                (1)

It extends by Plancherel to all of H_A=L2([-A,A];C). This is a comparison of TWO gamma sectors, NOT a comparison of the complete arithmetic Weil forms of different characters. Their prime phases and the two signed zeta pole orientations remain separate.

## Physical-source return, with exact kernel normalization

The existing parityKernel is K_a(r)=exp(-(a+1/2)*r)/(1-exp(-2*r)), r>0. Direct factoring gives

 K_0(r)-K_1(r)=exp(-r/2)/(1+exp(-r))
              =1/(2*cosh(r/2))=:h(r).                        (2)

The unchanged gammaConstant satisfies gammaConstant(q,1)-gammaConstant(q,0)=pi. Further, integral_(0,infinity) h(r)dr=pi/2. The ORIGINAL shift-energy identity is

 ||f(.+r)-f||_2^2 = 2 E(f)-C_f(r)-C_f(-r)
                   = 2E(f)-2 Re C_f(r).

Use the gamma realization from WeilGammaPhysicalReturn, subtract the two absolutely convergent corrections, and apply (2) BEFORE splitting:

 Delta_A(f)=pi E(f)-integral_(0,infinity)h(r)*||f(.+r)-f||_2^2 dr
           =integral_(0,infinity)sech(r/2)*Re C_f(r)dr
           =1/2*integral_(-A)^A integral_(-A)^A
                      sech((x-y)/2)*conjugate(f(x))*f(y)dy dx.  (3)

The original correlation has C_f(-r)=conjugate(C_f(r)). All integrals are justified before subtraction: |C_f(r)|<=E(f), h is positive and integrable, the compact-square kernel is bounded, and the individual gamma integrals are finite for canonical admissible tests. Equivalently, (3) follows from the exact Fourier identity

 integral_R sech(pi*t)*exp(i*t*u)dt=sech(u/2).

No pole, prime power, character phase, or source multiplicity has been modified in (1)--(3).

## Trace-class factorization and all-vector budget

On H_A let (T_A f)(x)=1/2*integral_(-A)^A sech((x-y)/2)*f(y)dy.
Then Delta_A(f)=<f,T_A f>, with inner products antilinear in the first argument. Define e_t(x)=exp(-i*t*x), x in [-A,A]. There is a POSITIVE, trace-norm-convergent rank-one factorization

 T_A = 1/2 * integral_R sech(pi*t)*|e_t><e_t|dt.          (4)

Indeed ||e_t||_2^2=2A and integral_R sech(pi*t)dt=1. Therefore

                     Tr(T_A)=A,  T_A>=0,  ||T_A||<=A.       (5)

For EVERY d>=1 and EVERY complex L2-orthonormal family f_1,...,f_d supported in [-A,A], Bessel's inequality at every t yields

 sum_(j<=d)|F_(f_j)(t)|^2
 =sum_j |<e_t,f_j>|^2 <= ||e_t||_2^2=2A.

Multiply by sech(pi*t)/2, integrate, and obtain the exact quantitative theorem

                     sum_(j<=d) Delta_A(f_j) <= A.        (6)

Consequently EVERY d-dimensional subspace V of H_A contains a unit vector f with Delta_A(f)<=A/d. The number of eigenvalues of T_A greater than or equal to any epsilon>0 (counted with multiplicity) is at most A/epsilon. For smooth compact families, Gram-Schmidt preserves their canonical support and admissibility, so (6) applies to EVERY supported complex finite span, not merely a selected sample list.

The gap is STRICTLY positive for each nonzero f, since sech(pi*t)>0 everywhere and Fourier uniqueness implies F_f is not zero a.e. Nevertheless it is NOT uniformly coercive: H_A is infinite-dimensional and T_A is compact. Explicitly, for a fixed nonzero smooth supported phi, f_R(x)=exp(i*R*x)phi(x) has constant support and L2 norm but

 Delta_A(f_R)=1/2*integral_R sech(pi*t)*|F_phi(t+R)|^2 dt -> 0

as |R|->infinity, by L1 convolution/translation convergence.

## Consumer, hostile check, and limits

This gives a concrete obstruction for phase/coercivity strategies: the same-conductor parity gap cannot pay a fixed negative arithmetic price on all directions of increasing finite-dimensional source spaces. Its total budget on ANY orthonormal d-family is at most A, so its mean gain is at most A/d. This is a quantitative full-complex/all-vector conclusion, not merely positivity of individual rays.

No inequality between ACTUAL Q_chi and Q_chi' follows without retaining and estimating their distinct prime phases. The conductor-one source has the further signed two-orientation pole term. The source inequality (P) for every primitive character and every admissible test, the off-line negative witness, and RH/GRH remain UNRESOLVED. This trace bound does not require RH/GRH and is not an alternative positive model.

Source-local consumers: WeilGammaPhysicalReturn (physical gamma identity), WeilGammaData (literal parity kernel and constant), WeilGammaCompensatedInversion (shift-energy/correlation), and the signed low-Schur and sample-kernel discussions in math#1801. Classical Fourier-sech and Bessel identities are used; no novelty or independent proof is claimed. No new imports, pins, or numerical certificates.

Source inspection: grwtsk/math main, prior head be479d9e1e57faa41406805591396c1354bd8b03; Lean leanprover/lean4:v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Repo root AGENTS.md and CONTRIBUTING.md inspected, scoped AGENTS locations absent. The exact publication commit is recorded in issue #1801. Formal verification and independent analytical review: NOT_RUN.
