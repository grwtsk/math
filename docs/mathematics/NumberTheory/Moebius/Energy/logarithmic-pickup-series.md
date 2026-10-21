# Actual pickup series and the compensated signed-correlation frontier

Owners: #335; #334 / RH-E02. Continuation of draft PR #338.
Review parent: `a1857b3ca587a36b575431b5446adf60e9d2af2b`, tree
`9198a6c2d81cba5a2743b4289302203562c9cc1e`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_SUPPLIER_OPEN.**
Human mathematical direction: R.A. Jacob Martone. Derivation and formalization
assistance: OpenAI ChatGPT. Imported sources retain their original attribution.

This increment implements the previously written countable-cell bridge and
adds an exact arithmetic increment, a finite signed square telescope, and its
weighted terminal compensation. It supplies no new complete-pickup damping.

## 1. Unchanged arithmetic samples

Use the existing closed prefixes and pickup, with n>=1:

    M_n = sum_(k=1..n) mu(k)
    A_n = sum_(k=1..n) mu(k)/sqrt(k)
    Q_n = A_n - M_n/sqrt(n) = W(log n)/2.

`sampleResidue` is the literal finite expression Q_n, not free sample data.
The source equality reuses `wholePickup_log_nat`. In particular Q_1=0.
Neither an unsigned prefix nor a critical-line projection replaces the source.

The previous module establishes G(u)=W(log(floor(exp u))) and pays the complete
interpolation error |W(u)-G(u)|<=exp(-u/2) for u>=0. Thus, for sigma>-1,
weighted square integrability of W and G is equivalent, with finite-window
energy comparisons having additive cost 2/(sigma+1).

## 2. Countable cells with no assumed global integrability

Define C_k=[log(k+1),log(k+2)), k>=0. The new source derives:

    C_k is measurable;
    u in C_k -> floor(exp u)=k+1;
    the cells are pairwise disjoint;
    union_(k>=0) C_k = [0,infinity);
    G(u)=2 Q_(k+1) on C_k.

Every individual cell integrand is integrable for every real sigma. For
sigma!=0, its integral is derived from the exponential antiderivative:

    a_(sigma,k) = (4/sigma) Q_(k+1)^2
       [(k+1)^(-sigma)-(k+2)^(-sigma)].

The source defines the powers initially as exp(-sigma*log(n)) and proves the
positive-base real-power conversion. For sigma>0 these are nonnegative masses.
The value at sigma=0 from totalized division is NOT an integral formula;
that case would require the logarithmic cell weight instead.

The new source proof scripts establish, for each sigma>0:

    IntegrableOn(exp(-sigma*u)*G(u)^2,[0,infinity))
      iff Summable(a_(sigma,.))
      iff IntegrableOn(exp(-sigma*u)*W(u)^2,[0,infinity)).

The forward implication uses the disjoint countable integral theorem. The
reverse uses already-proved cell integrability and summability of the cell
integrals of the NORM. Nonnegativity identifies those norm integrals with the
explicit masses. This does not infer finiteness from a totalized real integral.

Only AFTER summability is supplied does `hasSum_sampleCellMass` identify the
real series sum with the real half-line sampled integral. The quantitative
return is

    integral_0^infinity exp(-sigma*u) W(u)^2 du
      <= 2 sum_(k>=0) a_(sigma,k) + 2/(sigma+1).

The old cofinal sequence d_j=2/(j+1) then gives

    alpha_W=0 iff forall j>=0, Summable(a_(d_j,.)),

and the existing exact conditional RH consumer is reused. There is still no
witness for the universal arithmetic summability premise.

The simpler series sum Q_n^2/n^(1+sigma) and the dyadic-block formulation in the
preceding note remain valid WRITTEN comparisons. This increment formalizes the
EXACT cell masses, not a new Lean proof of those additional weight comparisons.

## 3. Exact source increment and its paid diagonal

The finite prefix update gives A_(n+1)=A_n+mu(n+1)/sqrt(n+1) and
M_(n+1)=M_n+mu(n+1). Subtract the endpoint BEFORE taking absolute values:

    delta_n := Q_(n+1)-Q_n
             = M_n [n^(-1/2)-(n+1)^(-1/2)].

The touching new coefficient cancels exactly. The draft derives this identity
from the actual finite sums. It does not assume a recurrence for an unrelated
model. With a=sqrt(n+1), b=sqrt(n), the earlier scalar drift lemma and |M_n|<=n
give, for n>=1,

    |delta_n| <= 1/(2 sqrt(n+1)),
    delta_n^2 <= 1/[4(n+1)].

Thus the finite diagonal obeys

    sum_(n=1..L-1) delta_n^2 <= (1/4) sum_(n=1..L-1) 1/(n+1).

The exact square identity is

    Q_L^2 = 2 sum_(n=1..L-1) Q_n delta_n
              + sum_(n=1..L-1) delta_n^2.

The draft proves the finite telescope. Its small diagonal DOES NOT bound the
signed mixed term from above. This estimate also applies to bounded comparison
coefficients; it is not a new Mobius cancellation estimate.

## 4. Terminal compensation and the smaller signed supplier

For sigma>0, set

    D_sigma(L) = sum_(n=1..L-1) delta_n^2 (n+1)^(-sigma),
    R_sigma(L) = 2 sum_(n=1..L-1) Q_n delta_n (n+1)^(-sigma)
                  - Q_L^2 L^(-sigma).

Finite summation by parts gives the EXACT identity

    sum_(n=1..L-1) Q_n^2[n^(-sigma)-(n+1)^(-sigma)]
      = R_sigma(L)+D_sigma(L).

`sampleResidue_weighted_telescope` proves this for arbitrary real weights,
and `sampleCellMass_partial_sum` specializes it to the actual cell masses.
The code's N cells correspond to L=N+1. Both the factor 4/sigma and the NEGATIVE
terminal term must remain. Bounding the mixed sum without compensation is a
stronger sufficient demand, not an equivalent replacement established here.

The new source also bounds the finite weighted diagonal by the corresponding
finite reciprocal-power sum. The following uniform evaluation is a WRITTEN
integral comparison, not a Lean theorem added by this increment:

    0 <= D_sigma(L)
      <= (1/4) sum_(n=1..L-1) (n+1)^(-1-sigma)
      <= (1/4) integral_1^L x^(-1-sigma) dx
      = [1-L^(-sigma)]/(4 sigma) <= 1/(4 sigma).

The integral comparison follows because x^(-1-sigma) is nonnegative and
decreasing on [1,infinity). No bound on M_n beyond |M_n|<=n is used.

Consequently, at each fixed sigma>0, the actual series is summable precisely
when R_sigma(L) has an upper bound uniform in all positive integers L. For
one direction use bounded partial sums of the nonnegative cell masses and
D_sigma>=0. For the other use the displayed uniform diagonal bound.
This final bounded-partial-sums equivalence is WRITTEN here; the source proves
its exact finite identities and the cell-summability endpoint, not a witness
for its supplier or a new Lean bounded-partial-sums equivalence.

A supplied C_sigma>=0 with R_sigma(L)<=C_sigma for ALL L gives the written bounds

    J_sigma(T) <= 4 C_sigma/sigma + 1/sigma^2,
    E_sigma(T) <= 8 C_sigma/sigma + 2/sigma^2 + 2/(sigma+1),

for ALL T>=0. Nonnegative finite-window energy is monotone, and the logarithmic
integer endpoints exhaust all horizons. Constants may depend on sigma; no
uniform-in-sigma bound or sigma=0 estimate is required.

This is the next genuine arithmetic target: use the signed Mobius structure to
bound R_sigma(L), with its exact terminal compensation, at cofinally small
positive sigma. A finite table, the diagonal allowance, and the recurrence do
not prove that bound. The old cofinal successor obligation is not assumed.

## 5. Controls and verification boundary

Keep n=1, integer endpoint ownership, the factor four, the sigma denominator,
the mixed square term, and the terminal subtraction. Wrong-endpoint, missing
cell, double-cell, unsigned-source, and finite-prefix substitutions are invalid.

For the comparison coefficients all equal to one, the same increment and
interpolation allowances hold. Nevertheless the comparison pickup obeys
W_+(u)>=exp(u/2)-1, since floor(exp u)>=exp u/2 for u>=0. Its square energy
therefore diverges for 0<sigma<=1. This is a written control on a DIFFERENT
source, not a conclusion about the actual Mobius pickup.

The module contains 32 authored declarations: 3 definitions and 29 theorem
scripts, including 2 private helpers. Private elaborated names and every
compiler-generated declaration require eventual extraction; source names are
not advertised as elaborated declaration identities.

No Lean/Lake/native evaluator, compilation, repository tests, independent
review, merge, root admission, worker/replay request or execution-hold release
is represented. Finite exact rational and symbolic diagnostics exercise the
formulas but do not establish countable coverage, infinite summability or Lean
proof acceptance. Operational diagnostic scripts and reports are not committed
to the pure mathematics repository.

Pinned primary dependencies:

- `LogarithmicPickupSampling.lean`, blob `1a80d899449bc755d2ca7469e31078479ff3312f`.
- `CofinalEnergyDamping.lean`, blob `413f3e31870158078d380c5323f3c013efcdf00b`.
- Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`,
  `Mathlib/MeasureTheory/Integral/Bochner/Set.lean`, blob
  `338ff3f267c912291cbf581e3cd3f2de78982a82`:
  `hasSum_integral_iUnion` and `integrableOn_iUnion_of_summable_integral_norm`.

Preserve the prior source and evidence packets. Exact-head elaboration, full
inherited/generated declaration coverage, transitive axiom/native/unsafe
review and independent source review remain required. Keep #335, #334 and #15
open; accepting this conditional reduction would not supply R_sigma's bound.
