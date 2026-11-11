# Compact-support Fourier collision conditioning

SOURCE_PROOF_CANDIDATE; grwtsk contributors; 2026-11-11.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).
RP-OC-02 and supplement C are the primary consumers; the zeroth-order Fourier envelope is also a dependency of RP-OC-01. There is one canonical implementation.

## Exact source and statement

Source: [FourierCollisionBound.lean](../FourierCollisionBound.lean).
Namespace: `GRWTSK.MeasureAndIntegration.FourierCollisionBound`.
Source SHA-256: `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`.
Git blob: `6669b1cd87456ca18f5a773d50622c56a70272f5`.
The enclosing Git commit binds this source and the thirteen individual declaration records.
Inspected math/main: `3a6d07fc0bf6a073df12e47ae6138bd4a54bdbc8`.
Complete base tree: `a575b7b251f8cc075efca63887c95b2bbb520a7b`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Use F(z) = integral_R f(t) exp(i*z*t) dt with Lebesgue measure. The source writes this integral literally; it defines no competing Fourier API, Weil form, arithmetic object, zero divisor or RH/GRH predicate. For A>0, supported L1 complex f, eta != 0, and errors ea+eb<2,

    norm(F(xi+i*eta)-1) <= ea, norm(F(xi-i*eta)+1) <= eb
    ==> 0 < (2-ea-eb)/(2*sinh(A*abs(eta))) <= integral_R norm(f(t)) dt.

All real xi, both signs of eta, and arbitrary complex-valued f are retained. Error nonnegativity follows from the error inequalities. The nondivided result also handles eta=0 and A=0. Auxiliary integrability/envelope lemmas allow any real A: if A<0 their support premise forces f=0; no nontrivial interpolation is inferred.

## Complete primary analytical argument

1. The real part of i*z*t is -Im(z)*t, so the kernel norm is exp(-Im(z)*t). On abs(t)<=A this is at most exp(A*abs(Im(z))). Outside the interval f=0. Multiplying by norm(f(t)) gives an integrable majorant. The exponential multiplier is continuous, so its product with f is a.e. strongly measurable and hence integrable. This is proved for every z before any subtraction of integrals.
2. The exact reflected-kernel difference factors as exp(i*xi*t) times (exp(-eta*t)-exp(eta*t)). The first factor has norm one. From abs(u)<=v, exponential monotonicity proves both inequalities in abs(exp(-u)-exp(u)) <= exp(v)-exp(-v) = 2*sinh(v). Apply this with u=eta*t and v=A*abs(eta).
3. Subtract the integrals using the proved integrability. The Bochner norm inequality and the pointwise bound yield norm(F(xi+i*eta)-F(xi-i*eta)) <= 2*sinh(A*abs(eta))*integral norm(f).
4. Write 2=(1-a)+(a-b)+(b+1) for these actual Fourier values a,b. Two triangle inequalities give 2-ea-eb <= norm(a-b). Combine the lower and upper separation estimates.
5. A>0 and eta!=0 imply v=A*abs(eta)>0. Strict exponential monotonicity gives exp(v)-exp(-v)>0, proving the denominator positive. The error-sum hypothesis makes the numerator positive. Only then divide.
6. At eta=0 the nondivided right side is zero, so ea+eb>=2. For compact smooth functions, continuity and compact support discharge the L1 premise via the pinned Mathlib theorem. The argument and normalization are unchanged.

## Source comparison and prior art

Immediate statement source: supplied research execution mandate, `Pasted text.txt`, RP-OC-02 collision-conditioning requirement, dated 2026-11-11; SHA-256 `77acba975792729ceaf80d12e3a91bddfd3556a4be88bbcf4f358af48023535f`. Its formula and eta=0 exception are preserved. This is a local elementary derivation, not a claimed novel result or a port of an upstream solution module. Novelty UNASSESSED. No manuscript archive digest was verified in this run; the historical manuscript hash is not relabeled as this attachment.

Inspected existing canonical source at the base commit:
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`: polynomial interpolation, signed head, error consumers, and `Admissible f := ContDiff R top f AND HasCompactSupport f`. Polynomial interpolation is not substituted for compact-smooth Fourier interpolation.
- The same directory's `WeilGaussianLocalization.lean`, blob `4dd56d11b74f7b4e63b64c29e8a8c0485cd4ba0c`: a derived Gaussian tail bound with supplied seed, cutoff and arithmetic identity premises. The present lower bound does not supply its upper envelope or source identity.
- `GRWTSK/FunctionalAnalysis/QuadraticError.lean`: positive norm-square error, not this L1 separation or a signed Weil pairing.

For the existing `hadmissible : WeilNegativeWitness.Admissible f`, the new smooth theorem accepts `hadmissible.1` and `hadmissible.2` directly. No new admissibility predicate is defined. A source zero rho uses xi=Im(rho), eta=1/2-Re(rho) under the existing spectral-coordinate convention; no arithmetic zero is asserted. The full pole-inclusive Weil identity remains a separate obligation.

Pinned primary library references, all at Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:
- [Complex exponential](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Exponential.lean): `Complex.exp_add`, `Complex.ofReal_exp`, `Complex.norm_exp`, real exponential order.
- [Hyperbolic functions](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Trigonometric.lean): `Real.sinh_eq`, `Real.sinh_zero`, the exact factor 2.
- [Bochner integral](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/Basic.lean): `integral_sub`, `integral_mono`, `norm_integral_le_integral_norm`, `integral_mul_const`.
- [Local integrability](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Function/LocallyIntegrable.lean): `Continuous.integrable_of_hasCompactSupport`.

Upstream Mathlib authorship and Apache-2.0 license remain unchanged. Local argument/source attribution is grwtsk contributors, MIT. Each individual record gives the local statement, hypotheses, dependencies, consumer and source correspondence. Compiler-generated private names are not guessed before elaboration.

## Hostile checks and remaining premises

The source handles eta=0 without division, eta<0 through abs(eta), and A=0 in the nondivided bound. xi is unrestricted. Nothing assumes f is real-valued or the Fourier outputs are conjugate. No absolute square replaces a signed pairing. No optimality or attainment of the lower bound is claimed. A lower conditioning cost is not a constructive upper-cost estimate.

Still open: constructive interpolation on the actual compact-smooth test space with upper seminorm costs; joint varying-test and infinite-tail control; actual zeta/primitive-Dirichlet divisor and counting constants; full pole-inclusive arithmetic Weil identification; arithmetic positivity. This module completes no RP-OC program and proves neither RH nor GRH.

## Verification boundary and clean-checkout instructions

The following commands are proposed, not execution receipts. Use the enclosing commit with its unchanged toolchain and manifest and the pinned dependencies:

```sh
lake build GRWTSK.MeasureAndIntegration.FourierCollisionBound
lake env lean GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean
```

After building, a temporary audit file can contain:

```lean
import GRWTSK.MeasureAndIntegration.FourierCollisionBound
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.integrable_fourier_integrand
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_fourier_integral_le
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_kernel_difference_le
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_fourier_difference_le
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.interpolation_cost
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.l1_lower_bound
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.collided_error_sum_ge_two
#print axioms GRWTSK.MeasureAndIntegration.FourierCollisionBound.smooth_l1_lower_bound
```

A printed axiom closure is distinct from fresh kernel replay. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review, repository-wide CI and arithmetic certification are NOT_RUN. No passing formal check is inferred from text, hashes, publication or an earlier issue receipt.

Current boundary: Lean/Lake and verified local canonical Noe skill checkouts are absent. The required proof-automation skill and parent skills directory returned 404 at Noe `65cd9eb488ebaec3d3f330902b2978ae2a85a481`; dependent automation stopped. Ordinary source publication is separately authorized by repository policy. No workflow, scheduler, branch-protection change or cross-chat message was dispatched.

Local lexical-only checks found thirteen theorem bodies, eight public and five private, and no placeholder, research-axiom or unsafe-escape tokens outside comments. An initial scan failed on an accidental nested-comment opener in a docstring; it was repaired before the successful rerun. These checks do not establish Lean parsing, elaboration or kernel validity. Exact-source publication and integrity observations are recorded in math#1801.
