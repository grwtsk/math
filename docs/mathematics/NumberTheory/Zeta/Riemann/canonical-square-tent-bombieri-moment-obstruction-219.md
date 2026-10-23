# RH / #219: Bombieri zero-moment obstruction to the literal canonical square-tent realization

**Evidence states established:** `LITERATURE_REVIEWED`, `SOURCE_DRAFT`.

**Not established:** `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`,
`EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`.

This increment does not construct a classical Weil criterion adapter and does not
prove RH. It refutes one exact candidate realization before any classical cross term
is evaluated.

## 1. Repository audit and selected obstruction

Repository: `grwtsk/math`.

Pinned public base:

```text
commit: 549d145e5ab7b9faaacab46fd9b6123d907ee1f3
tree:   e09eb441a18636dd93155abac972b9baf42cc887
branch: research/rh-bombieri-tent-moment-obstruction-219-20261023
```

Toolchain and dependency lock:

```text
Lean:    leanprover/lean4:v4.33.0
Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

Selected existing issue: **#219**, which owns the exact Weil test class,
normalization, form, and criterion interface.

The immediate predecessor is

```text
CanonicalSquareTentWeilTransportObstruction.lean
```

which proves that any positive-scale all-pairs transport from the orthogonal
arithmetic form must send distinct basis vectors to classically orthogonal vectors.
It left one exact next task: instantiate a named classical profile or refute a proposed
realization before constructing a criterion adapter.

No open PR matching `Bombieri`, `Weil tent`, or this moment obstruction was found at
branch creation.

## 2. Exact literature source

The selected source is:

```text
E. Bombieri,
Problems of the Millennium: the Riemann Hypothesis,
Clay Mathematics Institute official problem description,
section V, printed pages 8-9.
```

The source first defines a class `W` of complex functions on the positive half-line:
continuous and continuously differentiable except at finitely many first-kind
singular points, with specified behavior at zero and infinity. It uses the Mellin
transform

```text
f~(s) = integral_0^infinity f(x) x^s dx/x.
```

It then states Weil's explicit formula. For the RH criterion, it specializes to
functions

```text
f(x) = integral_0^infinity g(x y) conjugate(g(y)) dy
```

with `g in W` satisfying the two exact moments

```text
integral_0^infinity g(x) dx/x = 0,
integral_0^infinity g(x) dx   = 0.
```

The source states that RH is equivalent to negativity of the explicit-formula
right-hand side for all such functions. This increment imports no criterion theorem;
it uses only the two displayed moment conditions to test the literal canonical basis.

Primary source PDF:

```text
https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf
```

No statement from a secondary exposition is placed on the proof path.

## 3. Candidate comparison

| Candidate | Missing premise / conclusion | Existing support | Strength, distance, failure value |
|---|---|---|---|
| Construct the complete Bombieri-Weil model and compute `W(e0,e1)` | Full class `W`, convolution, explicit-formula distribution, source normalization, and cross term | Exact publication is identified; repository lacks the concrete distributional form | Strongest, but several analytic layers beyond one bounded increment |
| **Selected literal/scaled canonical-tent realization** | Determine whether actual square tents, up to nonzero scalar normalization, satisfy Bombieri's source test conditions | Exact source moments; repository tent support and positivity | Exact, source-bound, low speculative distance; failure identifies a test-class obstruction before cross terms |
| Arbitrary moment-corrected or basis-mixed realization | Construct new functions satisfying the moments and compare every arithmetic/classical cross term | No current source theorem identifying the corrected matrix | Remains open; changing functions may destroy the diagonal arithmetic coefficient matrix |

The selected result is a genuine refutation of the direct realization. It is not
reported as nonexistence of every possible realization.

## 4. Literal canonical test

For coefficient index `i`, define

```text
g_i(x) = tent(squareCenter(i+2), squareRadius(i+2), x).
```

This is precisely the real tent underlying the arithmetic basis at source stage
`i+2`. Its support is the square window

```text
[(i+2)^2, (i+3)^2].
```

The file proves:

```lean
canonicalTentReal_continuous
canonicalTentReal_hasCompactSupport
canonicalTentReal_integrable
```

The proof uses the existing exact support theorem for `tent`; no asymptotic or
numerical estimate is involved.

## 5. Ordinary moment positivity

The principal analytic lemma is

```lean
canonicalTentReal_ordinaryMoment_pos (i) :
  0 < integral_{x>0} g_i(x) dx.
```

The proof does not assume an area formula. It uses:

1. `g_i(x) >= 0` everywhere;
2. `g_i(x) > 0` on the nonempty open interval
   `squareCenter(i+2)-squareRadius(i+2) < x <
    squareCenter(i+2)+squareRadius(i+2)`;
3. that interval lies in the positive half-line because its left endpoint is
   `(i+2)^2 > 0`;
4. the open interval has positive Lebesgue measure;
5. the compactly supported continuous tent is integrable.

Thus the ordinary moment is strictly positive, not merely nonnegative.

For the complex-valued tent, the file proves

```lean
bombieriOrdinaryMoment_canonicalTent_ne_zero.
```

It further proves that for every `c : Complex` with `c != 0`,

```lean
bombieriOrdinaryMoment (c * g_i) != 0.
```

Therefore no nonzero scalar normalization can repair the second Bombieri moment.

## 6. Typed source conditions

The exact displayed source conditions are represented by

```lean
structure BombieriZeroMomentConditions (g : Real -> Complex) : Prop where
  multiplicativeMoment_zero :
    integral_{x>0} g(x) / x dx = 0
  ordinaryMoment_zero :
    integral_{x>0} g(x) dx = 0
```

This structure intentionally does not claim that the rest of Bombieri's class `W`
has been formalized. The obstruction needs only the ordinary moment; the
multiplicative condition is retained so that the source statement is not weakened or
silently changed.

The resulting theorem is

```lean
canonicalTent_not_bombieriZeroMomentConditions.
```

## 7. Direct realization and refutation

A direct candidate is represented by

```lean
BombieriScaledCanonicalTentRealization M.
```

It contains:

```text
an actual GuinandWeilCompactSupportModel M (Real -> Complex),
a theorem that every admitted vector satisfies both Bombieri moments,
a nonzero complex scale for every basis vector,
a theorem that each realized basis vector is exactly that scaled canonical tent,
exact publication and theorem-profile metadata equalities.
```

The principal obstruction is

```lean
no_bombieriScaledCanonicalTentRealization (M) :
  not Nonempty (BombieriScaledCanonicalTentRealization M).
```

The contradiction uses the first basis vector. The candidate says its image has zero
ordinary moment, while exact scalar linearity of the integral and strict positivity of
the real tent moment say the same moment is nonzero.

The transport-level corollary is

```lean
no_exactTransport_with_directBombieriTentBasis (M) :
  not exists candidate : BombieriScaledCanonicalTentRealization M,
    Nonempty (ExactSourceBoundTransport candidate.model).
```

The form comparison is never reached: the direct target realization already violates
the exact source test class.

## 8. Positivity and cross-term status

This increment changes none of the predecessor's arithmetic positivity results.

Proved previously and retained:

```text
positive semidefinite arithmetic diagonal on each finite coefficient space;
positive-cone preservation on the image of any exact positive-scale transport;
all-pairs transport would force distinct classical basis cross terms to vanish.
```

Proved here:

```text
the literal Bombieri basis realization does not exist,
even after independent nonzero scalar rescaling of each canonical tent.
```

Not proved:

```text
a concrete Bombieri-Weil Hermitian form;
the classical first cross term;
nonexistence of moment-corrected or basis-mixed realizations;
equality or inequality of any corrected cross matrix;
global classical Weil positivity;
a criterion theorem or RH consequence.
```

## 9. Failure controls

1. **Moment deletion.** Both Bombieri source moments remain in the typed record even
   though one failure suffices.
2. **Scalar normalization.** Every basis scale is required nonzero; zeroing a basis
   vector is not an injective realization.
3. **Shape change.** The theorem refutes literal scaled tents only. Adding moment
   corrections is a different test family and requires a new coefficient comparison.
4. **Basis mixing.** An arbitrary injective linear change of basis is not ruled out.
5. **Cross-term promotion.** Failure of the direct test class is not reported as a
   computed nonzero classical cross term.
6. **Criterion promotion.** No `WeilCriterionForZeta`, criterion direction, or RH
   adapter is constructed.
7. **Source authority.** Publication strings are provenance; the integral equality
   and inequality theorems carry mathematical authority.

## 10. Finite fixture

For `M=1`, the first basis vector is the stage-two tent supported on `[4,9]`.
Its ordinary positive-half-line integral is strictly positive. Hence even before the
stage-three basis vector or the classical cross term is considered, the literal
Bombieri realization fails the required zero ordinary moment.

This is an exact symbolic fixture, not a numerical quadrature certificate.

## 11. Evidence states

Established:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

The exact source pages were inspected. Lean and Lake were unavailable in the
execution environment, so no elaboration, fresh kernel check, axiom audit, or
independent replay is claimed.

## 12. RH consequence

This result has no direct RH consequence. It is a source-bound test-class
obstruction preventing the arithmetic basis from being inserted literally into the
Bombieri criterion.

Dependency path:

```text
Bombieri source moment conditions
  + canonical tent nonnegativity/support
  -> strictly positive ordinary tent moment
  -> no nonzero scalar multiple satisfies the source moments
  -> no literal scaled canonical-basis realization
  -> no exact transport using that realization.
```

## 13. Provenance

```text
Bombieri official problem description
  -> exact two zero-moment conditions
TentWeight + TentSource
  -> continuity, positive support, positive-half-line location
Mathlib Lebesgue integration
  -> strict positivity of the ordinary moment
CanonicalSquareTentWeilTransportObstruction
  -> typed classical model and exact all-pairs transport contract
new obstruction
  -> direct realization nonexistence.
```

No numerical contributor weights are assigned.

## 14. Exactly one next obstruction

Construct one explicit **moment-corrected** two-vector Bombieri candidate derived from
the stage-two and stage-three tents, with both source moments proved zero. Then derive
the complete arithmetic coefficient matrix of the corrected vectors before computing
or comparing the first classical Weil cross term. The correction must not silently
reuse the old diagonal arithmetic matrix.
