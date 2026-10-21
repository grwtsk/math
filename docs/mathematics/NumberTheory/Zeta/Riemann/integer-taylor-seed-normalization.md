# Integer-normalized Taylor seeds for the concrete Newton packet

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: `b4f3d6ae6033559cbab6d250ef75a6b3cf8bd294` (PR #328).
This increment changes no existing evaluator, analytic budget, transcript,
prime criterion, verification hold, or source-acceptance proposition.

## Purpose

The base-two proof draft in #328 expands a 22-term complex polynomial in
rational arithmetic separately for its real, imaginary and error rounding
windows. This increment gives an alternative exact representation: a Gaussian
integer numerator and one positive common denominator. All three large
concrete windows are then integer inequalities. Generic refinement lemmas,
not a comparison of approximate intervals, connect them to the original
`QComplex.polynomial` and the original `SeedValid` predicate.

This is an algebraic reorganization of a proof obligation. No Lean execution
or performance measurement is represented. Integer numerators can be large;
avoiding repeated rational normalization does not prove a speedup, a memory
bound, or that the supplied proof scripts elaborate without repair.

## 1. Exact recurrence, with the factorial and term count retained

Let `w = u + iv` have integer components and let the integer `D` be positive.
Set `a = w/D`. Define integer complex powers and polynomial numerators by

```
P_0 = 1,          S_0 = 1,       C_0 = 1,
P_(j+1) = P_j*w,
S_(j+1) = D*(j+1)*S_j + P_(j+1),
C_(j+1) = D*(j+1)*C_j.
```

The maintained denominator is `C_j = D^j*j!`. By induction,

```
S_j / C_j = sum_(k=0..j) a^k/k!.
```

For the induction step, divide the numerator recurrence by
`C_(j+1)=D*(j+1)*C_j`. The first term is `S_j/C_j`, and the second is
`w^(j+1)/(D^(j+1)*(j+1)!)`. This is exactly the next finite Taylor term.
At stage zero the expression is ONE term, not an empty polynomial. Therefore
stage 21, not 22, represents the required 22 terms. No exponential remainder
is changed or inferred from the integer identity.

`IntegerTaylorPolynomial.polynomial_eq_decode` drafts this equality for the
same rational `QComplex.polynomial` used by the existing power evaluator.
The complex embedding appears only in its proof; the integer definitions do
not call real or complex operations. Both numerator coordinates and the
factorial are retained. No gcd normalization of the common denominator is
necessary for the equality.

## 2. Exact binding of the concrete argument

For base 2 at the fixed exponent `-c`, retain the original 18-term logarithm
midpoint and uncertainty, eight squarings, 22 Taylor terms and 64 grid bits.
The reduced argument is exactly

```
D = 317135050493363535285614361600000000000,
u = -429338410363693023287871079250000000,
v = -12137160846788010280474125695059299007,
a = (u + iv)/D.
```

The concrete module proves this identity against the original
`RationalPowerEvaluation.argument 2 (sourceExponent center) (schedule 2)`.
It separately identifies the original radius and logarithm displacement.
Its finite logarithm identities are identities of the existing rational
midpoint/width formulas, NOT an assertion that a rational equals `Real.log 2`.

The new concrete module imports the original packet and the generic integer
module. It does not import `ConcreteNewtonSecondSeed` or invoke any of its
three large rational seed-window declarations. This provides an independently
structured proof route to the same initial seed predicate. The historical
files, statements and original proof drafts remain untouched.

For this argument the unreduced denominator `C_21` has 829 decimal digits.
The attached exact diagnostic data records all 22 integer stages, but the
repository source defines them mathematically by recurrence. No external
stage table, digest, decoder or cached acceptance flag is trusted.

## 3. Integer form of the COMPLETE error

Write the original radius as `R = a_R/b_R` and displacement as
`delta = a_d/b_d`, with positive denominators and nonnegative numerators.
The original Taylor remainder allowance is

```
t = 2*R^22/22!,
e = t + 2*(rect(seed)+t)*delta.
```

Let `S=S_21`, `C=C_21`, and define

```
Tn = 2*a_R^22,     Td = b_R^22*22!,
En = Tn*C*b_d + 2*((abs(Re S)+abs(Im S))*Td + Tn*C)*a_d,
Ed = Td*C*b_d.
```

Then `e = En/Ed` exactly. The new `seed_error_identity` is a symbolic rational
identity; positivity of all relevant denominators is established separately.
`errorNum_nonneg` retains the nonnegative complete error.

The numerator includes BOTH Taylor truncation and transported logarithm
uncertainty, using the actual rectangle norm of the SAME finite seed. It is
not a larger replacement allowance, and it is not just the first omitted
Taylor term. The unreduced error denominator has 1715 decimal digits in the
concrete diagnostic. This representation can be larger than a reduced
fraction; no intermediate-size bound is claimed.

## 4. Exact initial rounding windows

For `G=2^64`, the original first state is

```
U = 18408298253608376264,
V = -704853099503417683,
E = 8.
```

The three integer inequalities are

```
C*U <= G*Re(S) < C*(U+1),
C*V <= G*Im(S) < C*(V+1),
Ed*(E-1) < G*En + 2*Ed <= Ed*E.
```

The final `+2*Ed` is exactly the original two-component initial rounding
allowance after multiplication by the grid. It must not disappear. Strictness
is opposite for the floor and ceiling cells; the imaginary numerator is
negative, so truncation towards zero is invalid.

Generic cross-multiplication lemmas carry these windows back to the original
rational inequalities. `original_seed_valid` concludes the unchanged
`SeedValid` at the original argument and complete error. `initial_state_eq`
then derives exact equality with the original initialized `State`, including
the stored error. It does not assert a restored endpoint or full-block result.
The old eight rounded-squaring transitions and endpoint output are unchanged.

All three concrete integer inequalities have closed `norm_num` proof scripts.
They have NOT been elaborated or executed. Generic algebra, casts, tactic
resource demand and all inherited definitions still require trusted checking.
There is no native-decision invocation, proof axiom, supplied seed acceptance
premise, or SourceAcceptance premise in this new seed route.

## 5. Bounded external checks

The standard-library diagnostic completed 1,982 exact rational/integer
assertions. The general recurrence was compared with direct factorial sums
and reverse Horner evaluation in 390 argument/stage models (30 arguments,
stages zero through twelve), including zero, real, imaginary and signed
complex arguments. Positive unreduced rescalings were checked independently.

One base-two seed was freshly reconstructed from the finite logarithm formulas
and original exponent. Its polynomial value, complete error and initial state
match the retained source data exactly. The diagnostic checks all three
cross-multiplied windows and rejects altered component/error claims, invalid
denominator signs, changed arguments, a missing Taylor term, and wrong strict
boundaries. Omitting logarithm uncertainty gives error numerator 3 rather than
8 and fails the complete-error window.

These counts include repeated elementary assertions, not independent proofs.
No floating point, transcendental evaluation, joint-zeta calculation, complete
endpoint replay, zero count or prime margin is used. Python does not prove the
Lean refinement declarations or any inherited analytic statement. The
companion data and script are outside the pure mathematical repository.

## Remaining scope

This adds a reusable integer normalization for all positive-degree rational
Taylor seeds and a concrete alternate base-two initialization proof draft.
It does not add a third completed endpoint or close any of the 66 block,
terminal and final-aggregation obligations. The original `SourceAcceptance`
remains open. Exact-head elaboration and the full inherited type/import/axiom
and computational-dependency audits remain mandatory. Complete zero counting,
canonical head completeness and all-interval strict prime margins remain
independent. No merge, issue closure or hold release is represented.
