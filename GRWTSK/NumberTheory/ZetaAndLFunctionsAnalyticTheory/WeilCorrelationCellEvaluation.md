# Finite cells for the original Weil correlation

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Maintained source: [WeilCorrelationCellEvaluation.lean](WeilCorrelationCellEvaluation.lean).
Concrete consumer: [WeilExponentialBumpPrimeEvaluation](WeilExponentialBumpPrimeEvaluation.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 8 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6990978739).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. These are elementary source-specific estimates, not a new
Weil criterion. No numerical sign, determining-test theorem or RH/GRH conclusion.
All formal execution and independent review below are NOT_RUN.

## Exact objects and domain

Retain, without redefinition, the original antilinear-first whole-line correlation
and physical energy:

    C_f(r) = integral_R conj(f(t)) f(t+r) dt,
    E(f)   = integral_R |f(t)|^2 dt.

Lebesgue measure is used throughout. For the quadrature theorem let f:R->C be
L2, supported in [-T,T], T>=0, with bounds

    |f(t)| <= B                                      for every real t,
    |f(x)-f(y)| <= K |x-y|                           for every real x,y,
    B>=0, K>=0.

The lag-perturbation theorem additionally takes actual L1 membership. The bump
consumer derives both memberships, support and regularity. No finite sample set
is used to infer a derivative bound. Integrability of the correlation integrand
comes from the existing L2 source theorem BEFORE any subtraction of integrals.

Let x_0=-T, x_N=T, with -T<=x_j<=x_(j+1)<=T for every j<N. These adjacent
cells cover the original support, including endpoints, without gaps. Write
h_j=x_(j+1)-x_j and m_j=(x_j+x_(j+1))/2. At a sampled lag s, assume certificates

    |f(m_j)-v_j| <= e_j,    |f(m_j+s)-w_j| <= d_j,
    e_j,d_j >= 0.

The samples v_j,w_j are COMPLEX and signed. Define only the finite estimate

    C_hat(s) = sum_(j<N) conj(v_j) w_j h_j.

In Lean this is exactly the existing `quadratureMoment` at order zero. The
actual smooth test is never replaced by a discontinuous function in a Weil form.

## Complete analytical argument

For complex z,w,v,u, expand the difference as

    conj(z)w-conj(v)u = conj(z-v)w + conj(v)(w-u).

If |z|,|w|<=B, |z-v|<=e and |w-u|<=d, then |v|<=B+e, and consequently

    |conj(z)w-conj(v)u| <= B(e+d)+ed.                  (WCQ-1)

The product ed is not optional. The same expansion between two ACTUAL product
values, whose factors are both bounded by B, gives

    |conj(f(t))f(t+s)-conj(f(u))f(u+s)|
       <= 2BK |t-u|.                                 (WCQ-2)

The bound is uniform in every real lag s, including lags crossing either support
endpoint. At a midpoint, combine WCQ-1 with WCQ-2. On cell j the integrand error
is at most

    BK h_j + B(e_j+d_j)+e_j d_j.

The product integrand vanishes outside [-T,T] because its FIRST factor does.
This support statement is specific to the product; a translation difference
f(t+s)-f(t) generally has larger support. Apply the existing raw-moment cell
integral theorem at order zero, yielding

    |C_f(s)-C_hat(s)| <= E_cells,
    E_cells = sum_(j<N) [BK h_j+B(e_j+d_j)+e_j d_j]h_j. (WCQ-3)

For a true lag r and sampled lag s, subtract the two integrable correlation
integrands. The whole-line Lipschitz bound gives

    |C_f(r)-C_f(s)| <= K ||f||_1 |r-s|.               (WCQ-4)

The same UNshifted samples bound f on every cell by
|v_j|+K h_j/2+e_j. The already maintained midpoint/L1 theorem therefore gives

    ||f||_1 <= B0 := sum_(j<N) (|v_j|+K h_j/2+e_j)h_j.

If |r-s|<=delta, combine this finite L1 bound, WCQ-4 and WCQ-3 by the triangle
inequality:

    |C_f(r)-C_hat(s)| <= K B0 delta + E_cells.         (WCQ-5)

This is why replacing log(n) by a rational sampling lag requires its OWN error.
It cannot be absorbed into a statement about exact samples at log(n).

At zero lag the original pointwise product is |f(t)|^2, so

    C_f(0) = E(f) in C.                               (WCQ-6)

Taking the real part of any zero-lag correlation enclosure yields

    |C_f(0)-z|<=e  ==>  |E(f)-Re(z)|<=e.              (WCQ-7)

WCQ-6 is an integral identity; meaningful finite-energy use in the consumer
has already been supplied by L2 membership. It is not a claim that an arbitrary
nonintegrable input becomes admissible.

For every positive modulus and Dirichlet character chi, retain the original
`twistedPrime`, its conjugated character phase, strict cutoff and every von
Mangoldt weight. Given complex C_n,A_n and |C_n-A_n|<=e_n on the ENTIRE original
`activePrimePowers T` inventory,

    |twistedPrime(T,chi,C)-twistedPrime(T,chi,A)|
      <= 2 sum_active primeWeight(n) e_n.             (WCQ-8)

Proof: subtraction is linear, |Re(z)|<=|z|, |chi(n)|<=1, and every primeWeight
is nonnegative. Only the ERROR is majorized. The approximate central value
still uses Re(conj(chi(n))*A_n), not |chi(n)|*|A_n|. The inventory is the original
finite set of integer labels with von Mangoldt weights, including zero weights;
no contribution is dropped by a new enumeration convention.

Finally, if all h_j<=h, e_j<=e0 and d_j<=d0, then the finite budget satisfies

    E_cells <= 2T [BK h + B(e0+d0)+e0*d0].             (WCQ-9)

This follows by monotonicity and telescoping sum h_j=2T, using the existing mesh
budget theorem. In the Lean algebraic statement B,K,e0 and every d_j are required
nonnegative; the application has nonnegative certified e_j and d_j as well.
The bound gives an explicit accuracy price at FIXED T,B,K. It neither proves a
favorable arithmetic sign nor supplies constants uniform in unbounded T.

## Hostile checks and comparison

Omitting the sample cross term is false: z=w=1 and v=u=11/10 have errors 1/10
but product error 21/100, greater than 1/5. The new formula gives exactly 21/100.
This is an exact written counterexample to the weakened error budget, not an
executed numerical certificate.

Uncertain lag is a separate issue from uncertain values. For a nonzero supported
test, C_f(0)=E(f)>0 whereas C_f(r)=0 once r>=2T. Thus silently identifying a
sampled lag with a different actual lag can erase a real source contribution.
For the explicit bump, nonzeroness follows from its value at an interior nonzero
point. No negative Weil value follows from this example.

A direct step-function comparison is another check on the product expansion:
compare each actual factor with its cellwise constant value and integrate the
two-term product difference. It also charges both factor uncertainties. This
shares the same source identity and triangle inequality; it is not claimed as an
independently reviewed proof or as verification of Lean elaboration.

Comparison dated 2026-11-18: inspected the existing `RawMomentQuadrature`,
`WeilSourcePrimeCorrelation`, `ExponentialBumpCells`, and `WeilExponentialBumpGamma`
providers at the pin below. The zeroth raw-moment theorem already supplies the
integration mechanism. The increment is the source correlation's product and
lag estimates and their signed-prime consumer, not a replacement quadrature
framework. Repository code search was incomplete/empty and proves no absence.

The supplied corrected edition of S. M. Rump, *Verification methods: Rigorous
results using floating-point arithmetic*, Acta Numerica 19 (2010), 287-449,
section 12 (PDF pages 85-87), Theorem 12.1 and Algorithm 12.2, describes certified
Simpson quadrature using fourth-derivative error control. That theorem is NOT
formalized here: this argument is a first-order Lipschitz midpoint enclosure.
The relevant comparison is the requirement to pay mathematical truncation and
sample/rounding errors rather than trust agreement of approximate routines.
[Author edition](https://www.tuhh.de/ti3/rump/intlab/ActaNumerica2010.pdf).
Supplied-edition SHA-256:
`6d4d2eaa2dd40389fa75fbdc26f4e37f863806d734a6bbbf02005271cc08fea2`.
No portion of the paper or third-party implementation is copied into this source.

## Individual declaration records

All nine declarations have namespace prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.CorrelationCells`.
Their exact typed statements and quantifiers are in the adjacent maintained
source. The numbered arguments above give their complete primary proofs.
These local records are not a claim of a new published criterion.

| Record | Declaration | Exact source/method and consumer |
|---|---|---|
| WCQ-1 | `norm_conj_product_sub_le_sample_error` | Local complex product expansion with B,e,d nonnegative; both actual factors bounded. Supplies WCQ-3 samples. Rump section 12 is comparison only. |
| WCQ-2 | `correlation_integrand_lipschitz` | Same expansion on actual globally B-bounded K-Lipschitz factors, every real r,x,y. Supplies WCQ-3 variation. |
| WCQ-3 | `norm_correlation_sub_cells_le` | Actual L2 correlation integrability plus `moment_and_l1_bounds_of_midpoint`, k=0; all cells and both sample-error tables retained. Supplies WCQ-5. |
| WCQ-4 | `norm_correlation_sub_le_lipschitz` | Integral subtraction and global Lipschitz control, actual L1/L2 hypotheses; every real r,s. Supplies WCQ-5's lag cost. |
| WCQ-5 | `norm_correlation_sub_cells_of_shift_error_le` | WCQ-3/4 and the original finite cellL1Budget; quantified lag enclosure and all sample data. Consumed by EBP-3. |
| WCQ-6 | `correlation_zero_eq_energy` | Exact original integrands and complex inclusion of a real integral. Consumed by WCQ-7. No positivity of a Weil form. |
| WCQ-7 | `energy_error_of_correlation_zero` | WCQ-6 and norm control of real projection. Consumed by EBP-4 at zero lag. |
| WCQ-8 | `abs_twistedPrime_sub_le` | Original `twistedPrime`, nonnegative original weights, character norm bound; every positive modulus and all active labels. Consumed by EBP-4. |
| WCQ-9 | `correlationCellBudget_le_of_mesh` | Original `cellVariationBudget_le_of_mesh` and monotonicity of the displayed sample error. Quantitative accuracy consumer for WCQ-3/5 and EBP-3. |

## Source pins and verification boundary

Inspection base: math `600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`.
Lean `leanprover/lean4:v4.34.1`;
mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Relevant exact supplier blobs:

* `WeilSourcePrimeCorrelation.lean`: `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`.
* `RawMomentQuadrature.lean`: `a79225cb702533f94f5b5c705d960b90ad8d93f5`.
* `WeilExponentialBumpGamma.lean`: `623f5dd5053f74a778aea5310e6fd7b2bda45cd5`.

No existing source, root aggregate import, dependency pin or historical evidence
is changed. The exact publication and source-text identity observations belong
in the coordinating issue. Text scans and Git hashes are not Lean parsing.
Parsing, elaboration, exact exported types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified arithmetic and independent mathematical
review: NOT_RUN. Existing dependencies' verification is not promoted here.
The canonical Noe proof skill was inaccessible at revision
`579468f41b6fb1c02fce66f25a2deee81bde78ff`; dependent execution was not dispatched.

Remaining arithmetic obligations: actual log/weight/character/gamma-constant
coefficient certificates and rounding; evaluation of the retained finite-lag
gamma integral; source-domain determining-test coverage and universal signed
lower bounds. No off-line zero, RH or primitive Dirichlet GRH proof is claimed.
