# Base-three endpoint through the integer-normalized seed

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Parent: `9a59ffc6d19053942e37c1d34753e8b7d6448fb2` (#331).
Owners: #189/#261 under #257. No execution or hold-release authority is granted.

## Exact source and purpose

The fixed packet retains center

\[
c=\frac12+\frac{7067362571}{500000000}i.
\]

This increment concerns integer base 3, common exponent `sourceExponent center`
(that is, -c), and the original schedule: log reduction exponent 1, eighteen
logarithm terms, twenty-two Taylor terms, eight squarings and 64 grid bits.
It adds the third endpoint proof draft, not a zeta-value recomputation or a
new local-zero theorem. The original evaluator and all its error budgets are
unchanged. No `SourceAcceptance` or endpoint-computation equality is a premise
of `third_endpoint_compute`.

## Both logarithm contributions matter

Here the mantissa is 3/2 rather than one. With the inherited rational lower and
width expressions, the original supplier is literally

\[
\lambda=L_{18}(2)+L_{18}(3/2)
       +\frac{\Delta_{18}(2)+\Delta_{18}(3/2)}2,
\qquad
\eta=\frac{\Delta_{18}(2)+\Delta_{18}(3/2)}2.
\]

The transformed mantissa parameter is (3/2-1)/(3/2+1)=1/5. Its width is

\[
\Delta_{18}(3/2)=\frac1{34924596548080444335937500}>0.
\]

The proof drafts identify the original finite expressions with these exact
rational data:

```
lambda = 792189129332179263159137201459946459058941278704939
         / 721081620425510516919563000556081533432006835937500
eta = 1455191531175276030497347
      / 582443842419885413255542516708374023437500
```

These are an enclosure midpoint and half-width, not exact log(3). Both are
used to derive the original argument a=(-c)*lambda/256, radius and displacement.
All four original admissibility guards are retained. No database, residual,
or approximate equality provides these identities.

## Same polynomial, integer normalization

A single positive integer denominator D is used for both argument coordinates:

```
D = 92298447414465346165704064071178436279296875000000000000000000
Re(w) = -198047282333044815789784300364986614764735319676234750000000
Im(w) = -5598687801795321950313245474251712160417145476006165241438169
```

The inherited `IntegerTaylorPolynomial.polynomial_eq_decode` identifies the
original 22-term rational seed with S/C at stage 21 of

\[
P_0=S_0=1,\quad P_{j+1}=P_jw,\quad
S_{j+1}=D(j+1)S_j+P_{j+1},\quad C_j=D^j j!.
\]

No intermediate rounding, term omission or factorial change occurs. The
complete pre-rounding error remains

\[
\tau+2(\|S/C\|_1+\tau)\delta,\qquad
\tau=2R^{22}/22!,
\]

with the original transported logarithm uncertainty delta. Its integer
numerator/denominator identity retains every term. The concrete unreduced seed
denominator has 1321 decimal digits; the complete-error denominator has 2748.
These are finite data sizes, not resource or performance guarantees.

For G=2^64 the three integer windows certify initialization at

```
(18373350954544269177, -1115869325961005862, 8).
```

The component windows have a strict upper endpoint; the error ceiling window
has a strict lower endpoint and includes the original two-component allowance.
The source uses ordinary `norm_num` scripts for these integer inequalities.
None has been executed by Lean, and their resource demand is unmeasured.

## Eight exact restored steps

The nine error numerators are

```
8, 19, 45, 111, 297, 800, 1936, 4771, 7873.
```

Every value coordinate is explicit in `thirdTrace`. All eight transitions use
the existing integer `StepValid`, including the quadratic error contribution
and local rounding allowance before upward storage rounding. The closed proof
draft concludes the exact original State:

\[
V_3=\frac{-10479343362953028843-1900215335598869484i}{2^{64}},
\qquad E_3=\frac{7873}{2^{64}}.
\]

This is equality of both coordinates and the complete error, not an arbitrary
sound enclosure. A companion reuses the inherited theorem for the actual
positive-axis power 3^(-c); it is not a theorem about a zeta zero.

## Three leaves, not a complete block

`first_three_prefix_check` combines the existing base-one and base-two leaves
with this base-three leaf. The transcript must match all three full records.
`first_block_of_remainder` still requires the old checker to accept the other
61 entries of block zero. No block acceptance is proved by this increment.

The other 4093 prefix entries, terminal base 4097, final six-field aggregation,
original SourceAcceptance, and the entire inherited analytic/trust stack remain
outstanding. Source scripts for three leaves are not three kernel-accepted
results. No whole-packet or zero-existence assumption is added or removed.

## A diagnostic that rounded agreement alone would miss

Exact rational tests show that dropping ONLY the mantissa-width contribution
makes the pre-rounding error strictly smaller, yet leaves this particular
quantized initial state and all subsequent integer states unchanged. This is
not an alternative valid analytic certificate. Equality of rounded outputs
alone cannot establish that the required logarithm uncertainty was included.
The source route instead proves the exact original logarithm and error identities.

Dropping ALL logarithm uncertainty changes the initial error numerator from 8
to 3, failing the original complete-error window. Dropping the entire mantissa
term produces the base-two seed and the wrong base-three output. These are
different failures and are recorded separately.

## Evidence and nonclaims

The external finite diagnostic completed 308 exact integer/rational assertions.
It freshly evaluates one endpoint, compares 22 polynomial stages with direct
factorial sums, reverse Horner and coefficient recurrence, checks all nine
states and eight transition windows, and rejects 108 individual state-field
mutations. The full output matches the retained parent transcript's base-three
record. Two additional computations test wrong base/exponent inputs.

The diagnostic uses the retained rational endpoint implementation; alternative
internal arithmetic expressions are not an independent complete verifier.
No floating-point or transcendental evaluation, Lean execution, full block or
4097-endpoint replay, joint-zeta evaluation, root-count certificate, or prime
margin is performed. Python does not establish any source proof or inherited
analytic theorem. Runtime scripts and diagnostic data stay outside grwtsk/math.

Required next: trusted elaboration and resource assessment of the integer-seed
proofs and trace composition, the remaining endpoint/terminal/final checks, and
the full type/import/axiom audit. Complete canonical zero counting and strict
all-interval prime margins remain separate. No merge, issue closure, execution
hold release, deployment, Legendre proof or RH proof is represented.
