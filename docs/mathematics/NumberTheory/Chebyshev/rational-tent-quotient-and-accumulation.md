# Rational tent quotients, finite accumulation, and canonical binding

Parent: `89ab74d8da79a7ff24caeafa3f12491888feeefe` (PR #314).
Scope: #189/#261 under #257. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No Lean/Lake execution, code-generation check, external replay, or prime certificate.

## 1. Exact endpoint source identities

Fix rational x,h with h>0 and a=x-h>1; set b=x+h. One raw point input
contains a rational complex center c, nonnegative coordinate radius r, positive
denominator lower bound d, three power schedules, and quotient grid bits.
The endpoint bases a,x,b and exponent c+1 are computed internally. A row cannot
replace them with unrelated endpoint inputs or supply purported power values.
The old rational power implementation independently checks each schedule and
computes its complete rounded value/error pair:

    A +/- eA for a^(c+1), X +/- eX for x^(c+1), B +/- eB for b^(c+1).

Here '+/-' denotes a complex norm ball, not separate signed real bounds.
Their logarithm, seed and squaring errors remain inherited and charged in full.
No final per-endpoint tolerance is required: the whole point/head output is
checked against the requested final tolerance after all errors are combined.

## 2. Division is guarded by exact rational squared norms

For c=(u,v), normSqQ(c)=u^2+v^2. The raw guard is

    0<d, d^2 <= h^2 normSqQ(c) normSqQ(c+1).

Positivity of h and d, and the complex squared-norm identity, derive

    0<d <= h |c| |c+1|.

This excludes both c=0 and c=-1. Squaring an inequality without the sign guards
would be insufficient. No rational square-root approximation is trusted.
Complex rational division uses the exact conjugate-denominator formula; its
embedding agrees with complex division. Totalized division still exists as
algebra, but a zero denominator cannot pass the positive guard.

The center quotient is

    V0=(B-2X+A)/(h*c*(c+1)).

It is the actual maintained tent quotient, with coefficients 1,-2,1 and radius
h. The inherited entire-kernel estimate, plus the derived upper endpoint log
bound lambda_b+eta_b, gives the unrounded budget

    E0=4*b*(lambda_b+eta_b)*r + (eB+2eX+eA)/d.

For any actual point z with Re(z)<=1 and |z-c|<=r,

    |M_(x,h)(z)-V0| <= E0.

The coordinate enclosure remains a semantic premise. Numerical r>=0 does not
establish that any zero is inside the ball. The center also satisfies Re(c)<=1.
Only the center must avoid the quotient's removable parameters; the coordinate
ball need not avoid them because transport uses the entire integral kernel.

## 3. Quotient rounding is distinct from endpoint rounding

For G=2^bits, retain the historical componentwise downward quantizer Q and
upward error rounding up. Define

    V=Q(V0), E=up(E0+2/G).

The extra 2/G charges both quotient components. Endpoint rounding has already
been charged in eA,eX,eB and is not silently reused to cover quotient rounding.
The new compute_sound draft concludes |M(z)-V|<=E. Point evaluate checks all
numeric guards and E<=tolerance; verify additionally checks exact agreement
with both claimed components and the claimed error. On failure it returns no
certified result. A loose or failed budget does not prove actual inaccuracy.

## 4. Multiplicity-weighted finite accumulation

A raw batch is a finite tuple indexed by Fin k, with natural positive weights
m_i and point inputs p_i, all using the same externally fixed x,h. It is not a
zero list simply because every numerical row passes. The computation forms

    Vsum=sum_i m_i V_i, Esum=sum_i m_i E_i

in exact rational arithmetic. It then rounds ONCE on the separately selected
accumulation grid:

    Vout=Q_acc(Vsum), Eout=up_acc(Esum+2/G_acc).

Every weight multiplies the WHOLE point error, including coordinate transport
and quotient rounding. The accumulation allowance appears once after the exact
sum. This is not a sequential rounded summation algorithm; using machine sums
instead requires an additional refinement and matching allowance.
For any correspondingly enclosed actual family z_i in Re<=1, the source draft
proves |sum_i m_i M(z_i)-Vout|<=Eout. The batch verifies the complete final budget
and exact claimed output. An invalid row or zero multiplicity rejects the batch.
An empty numeric tuple can be admitted with its conservative rounding budget;
that does not establish that a canonical zero head is empty.

Stored endpoint states, rounded quotients and the final output have dyadic
coordinates/bounds by construction and inherited quantizer results. Intermediate
rational products and exact sums can still have large numerators/denominators.
No bit-complexity, resource cap, or measured speedup is claimed.

## 5. Numerical acceptance is not zero-source acceptance

The separate HeadBinding(T,rows) requires:

* a bijection Fin k <-> the SAME canonical heightHead(T);
* equality of every stored natural weight with the actual analytic multiplicity;
* a proved coordinate enclosure for each mapped actual complex zero.

This is explicit mathematical evidence, not a Boolean field, parser assertion,
comparison of cardinalities, or lookup of sampled heights. It preserves both
height signs and distinguishes complex points sharing a height. The numeric
checker does not check T, zero existence, uniqueness, multiplicity or completeness.
Different cutoffs require their own exact binding. A duplicated numeric center
need not mean a duplicated zero; the bijection concerns actual points, not centers.

The binding proves exact equality of the canonical finite sum and the raw
weighted family's analytic interpretation. Verified arithmetic plus that binding
therefore supplies the same-head norm enclosure required by #304.
For square geometry, exact rational definitions are proved equal to the maintained
squareCenter and squareRadius. No new arithmetic observable is introduced.

The resulting conditional prime theorem retains n>=2, T>=2, and

    h_n-Re(Vout)-Eout-D_n-B_n(T)-U_n > 0,
    B_n(T)=8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa=44/log(6/5).

The omitted tail, signed trivial-zero floor D_n, proper-prime-power correction
U_n and STRICT margin are unchanged. The returned error, not an arbitrary
requested tolerance, is used. No positive margin is proved. Raw arithmetic
acceptance alone cannot prove a prime, Legendre, or RH.

## 6. Verification boundary

All source files are additive. The computational definitions use rational data,
finite sums, integer floors, natural schedules and decidable rational comparisons.
They are written to be computable; successful Lean compilation is NOT claimed.
Complex embeddings and the canonical binding live only in the semantic layer.
No byte parser, resource-bounded service, zero database or universal coverage
supplier is implemented.

The bounded companion completes 190 exact rational assertions: 25 complex
quotient reconstructions, four centered tent models, one off-center model,
three weighted batches and directed rejection/domain checks. References use
unscaled Taylor and positive-Mercator logarithm intervals, not the candidate's
rounded squaring recurrence. Python does not prove those analytic allowances.
No actual zeta zeros, floating-point arithmetic, Lean execution or prime-margin
certificate is used. An initial broader reference run timed out; no success is
claimed for that run. The reported smaller suite completed normally.

Mandatory remaining obligations: exact-head elaboration/repair; inherited exact
types, generated members, decidability/code generation and transitive trust audit;
actual-zero identity/completeness/coordinate evidence; practical error sizes and
all-input strict margins. Pure computations and written proof drafts are not
kernel acceptance. No merge, issue disposition or verification hold changes.
