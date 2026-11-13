# Classical H1 translation bound for the native Weil gamma source

Attribution: grwtsk contributors.
Prepared: November 13, 2026, America/Los_Angeles.
Maintained Lean source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilH1ShiftFTC.lean.
Exact consumer: NativeGammaH1ShiftBudget.NearH1ShiftBound and the genuine original real zeta / primitive paired-character gamma-energy budgets.
Evidence level: COMPLETE_WRITTEN_CLASSICAL_ANALYSIS; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_BUILD_NOT_RUN; KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN. RH AND DIRICHLET GRH NOT PROVED.

## 1. Exact original source

The prior WeilGammaH1ShiftBudget.lean defines the physical real shift energy and gamma energy by the unchanged source:

    E_r(f) = integral_R (f(t+r)-f(t))^2 dt,
    Gamma_a(f) = integral_(r>0) parityKernel(a,r)*E_r(f) dr.

The prior source proves E_r(f)<=4||f||² for all real r by Lebesgue translation invariance, and uses exact native kernel moment and tail results. It kept one named premise, NearH1ShiftBound f first:

    for every 0<r<=1,
    E_r(f) <= r²*integral_R first(t)^2dt.              (FTC-Goal)

The new source derives this exact proposition from real classical differentiability, genuine first derivative first, continuous first, and original whole-line MemLp f 2 volume / MemLp first 2 volume. There is no support or parity assumption in this inequality. It applies in particular to the supported smooth real odd test vectors used in the zeta and primitive-paired-sector matrix return.

## 2. Fundamental theorem of calculus in original variables

For every t in R and r>=0, the pinned Mathlib interval-integral fundamental theorem gives

    f(t+r)-f(t) = integral_(u=0..r) first(t+u)du.      (FTC-1)

Its Lean source is actual_shift_eq_interval_integral. The proof composes HasDerivAt f first with u -> t+u and applies intervalIntegral.integral_eq_sub_of_hasDerivAt, then returns the ordinary interval to the original Ioc(0,r) Lebesgue integral. No Fourier series or operator-domain claim is introduced.

## 3. Nonnegative square proves interval Cauchy-Schwarz

For any real continuous g on [0,r] and r>0, put A=integral_0^r g(u)du. The integral

    0 <= integral_0^r (r*g(u)-A)^2 du

is finite and nonnegative. Expanding it gives

    0 <= r²*integral_0^r g(u)^2du - r*A²,

and since r>0,

    (integral_0^r g)^2 <= r*integral_0^r g².          (FTC-2)

The private candidate theorem interval_integral_sq_le derives FTC-2 by finite-interval integral linearity, constant integration, and the nonnegative-square inequality. No square roots, assumed Hilbert-space Cauchy-Schwarz, positive spectral matrix, or form positivity are needed.

Apply it to g(u)=first(t+u), and insert FTC-1:

    (f(t+r)-f(t))² <= r*integral_0^r first(t+u)²du.  (FTC-3)

## 4. Fubini with the ACTUAL L2 derivative mass

For each fixed u, the real physical measure is translation invariant:

    integral_R first(t+u)²dt = integral_R first(t)²dt = D.  (FTC-4)

The pair (u,t) -> first(t+u)² is measurable because first is continuous. It is integrable on the product Ioc(0,r) x R: every t-fibre is a translate of the L1 function first² and has the same integral D; the interval Ioc(0,r) has finite measure r. The pinned Mathlib integrable_prod_iff' and integral_integral_swap apply. Hence

    integral_R integral_0^r first(t+u)²du dt
      = integral_0^r integral_R first(t+u)²dt du
      = r*D.                                          (FTC-5)

Integrate FTC-3 over the actual whole real line, and use FTC-5:

    E_r(f) <= r*(r*D) = r²*||first||².               (FTC-6)

The new Lean theorem nearH1ShiftBound_of_classical_derivative is the candidate complete original-source statement of FTC-6. It returns the old exact NearH1ShiftBound without an extra shift inequality or unspecified gamma continuity premise. Importantly, the proof is for ordinary globally C1 functions with L2 f and first; proving the Sobolev weak-derivative density extension to every H1 equivalence class is a SEPARATE issue.

## 5. Consequences for original gamma parity

The existing NativeGammaH1ShiftBudget.realGammaEnergy_integrable_and_bound takes NearH1ShiftBound and proves actual gamma integrability plus the exact parity-dependent upper budget

    0 <= Gamma_a(f)
       <= (7/12)*||first||²
         + 2*ExactGammaTail.tailUpper(a,1)*||f||².

Its first term comes from the native true kernel moment; its second comes from the native source kernel tail and the previously established all-r L2 contraction. Applying FTC-6 supplies the missing argument for the original classical carrier, giving new Lean candidate consumers:

    zeta_gamma_H1_bound_of_classical
    primitive_gamma_H1_bound_of_classical

The former uses a=0 and is exactly OddHighComplement.oddArchimedeanEnergy. The latter keeps the true gammaParity chi, all native conductor and prime-phase data outside gamma, and does not delete or change the two signed zeta pole orientations. No source is replaced by a positive toy form.

These are diagonal gamma bounds only. Turning them into full mixed Weil form continuity still requires gamma polarization/integrability for mixed shifts, original character prime correlations, and both signed zeta pole moments. The full source continuity theorem is NOT asserted in this change.

## 6. Independent exact-polynomial checks and hostile boundary

Take the genuinely supported real odd classical source

    f(t)=t*(1-t²)^3 for -1<=t<=1, 0 outside.

Exact SymPy integration yields

    ||f||² = 2048/45045,
    ||first||² = 3072/5005,

and its true source realShiftEnergy on 0<=r<=2 is

    -r²*(7*r^13 - 210*r^11 + 2808*r^9 - 22880*r^7
           + 164736*r^5 - 256256*r^4
           + 199680*r² - 110592)/180180.

For r>=2 its shift energy equals 2*||f||² because the translated supports cease to overlap. Direct 60-digit evaluation produces:

| r | E_r(f) | E_r(f)/(r² ||first||²) |
|---:|---:|---:|
| 0.01 | 0.000061367540540619 | 0.99981946747 |
| 0.10 | 0.006028370547518820 | 0.98216128224 |
| 0.25 | 0.034324533391146587 | 0.89476192512 |
| 0.50 | 0.099502396644425453 | 0.64844986355 |
| 1.00 | 0.126023976023976024 | 0.205322265625 |

All ratios are at most 1, illustrating the correct sharp small-shift normalization. These checks are noncertified numerical diagnostics, NOT outward-rounded interval proofs or a Lean checker.

Hostile domain test: a step function f=1_[0,1] has an L2 jump and a distributional derivative which is not in L2. Its physical E_r is order r rather than order r² at small positive r; FTC-Goal is not applicable. The classical derivative / L2 hypotheses cannot be removed merely because f belongs to L2.

## 7. Precise evidence and next open obligations

A source file with a complete Lean script is a MANUAL LEAN SOURCE PROOF CANDIDATE until successfully elaborated by Lean 4.34.1 and the pinned Mathlib commit d13f23b723b8a846827a245b89c10fc7d3f11612. Exact Git source publication, structural checks and floating-point diagnostics do NOT constitute successful elaboration, kernel proof, transitive axiom auditing, or independent mathematical review.

Next mathematical target: the original full real odd Weil form H1 bilinear/mixed continuity, retaining all active prime powers and paired character weights, gamma parity/conductor and both signed zeta poles, using the new actual gamma shift allowance. This is distinct from the MUCH harder RH/Dirichlet GRH premises: (i) true hypothetical off-line zero -> normalized exponentially negative original physical tests with the completed source and all tails, (ii) universal cofinal all-dimension subexponential LOWER budget for the original signed arithmetic Weil matrices. Neither is solved here.

Primary source comparisons: existing grwtsk/math WeilGammaH1ShiftBudget, WeilH1SourceContinuity.md Section IV, GammaNearZero.kernel_moment_bounds, ExactGammaTail.tailMass_bounds, and the exact pinned Mathlib FTC/Prod integral theorems. No mathematical novelty asserted. Canonical noe-proof-automation skill was unavailable on main; no dependent Noe proof automation, browser worker, messaging, scheduler or background execution was invoked.

## 8. Exact-pin static Fubini orientation repair (2026-11-13)

**Source-revision audit:** The prior manually authored Lean proof candidate at Git blob
08404cd50364dbacb9479e7e0211f41d051795a3 used
integrable_prod_iff' on the product measure

    μ.prod volume,
    μ = volume.restrict (Ioc 0 r),

in its translated_square_integrable_prod proof. At Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612, the theorem
integrable_prod_iff' requires almost-everywhere integrability in the
FIRST variable for each fixed SECOND variable, and integrability of the
resulting FIRST-variable norm integral over the SECOND variable.

That is the **opposite orientation** from the actual candidate proof:
for each shift u in the FIRST-variable interval, the SECOND-variable
function t ↦ first(t+u)^2 is Lebesgue integrable by the genuine
whole-line L2 first derivative and translation invariance. Its
whole-line norm integral is exactly the constant D=∫_R first(t)^2 dt,
which is integrable over the finite FIRST-variable shift interval.

The pinned Mathlib theorem **integrable_prod_iff** (without prime) has
precisely these two hypotheses:

    (∀ᵐ u ∂μ, Integrable (fun t => first(t+u)^2) volume)
    ∧ Integrable (fun u => ∫ t, ‖first(t+u)^2‖) μ.

Accordingly the maintained source changes exactly ONE Lean line,
from integrable_prod_iff' hm to integrable_prod_iff hm. No definitions,
theorem statements, imports, shift orientation, measure, constants,
or original Weil form terms are changed. The subsequent use of
Integrable.integral_prod_right is correctly oriented: it constructs
integrability of the OTHER iterated integral over t, which is
what the outer monotonicity proof requires.

**Actual verification:** Direct comparison against the exact
pinned Mathlib declarations PASS; one-line source patch inspected
PASS. Lean elaboration, full import build, kernel replay, transitive
axiom audit and independent review **NOT_RUN**, because the matching
Lean/Lake/Elan toolchain and compiled Mathlib are unavailable in this
session. This repair removes one identifiable proof-obligation
mismatch; it does NOT certify the rest of the proof or its imports.
The RH/Dirichlet GRH research status is unchanged.
