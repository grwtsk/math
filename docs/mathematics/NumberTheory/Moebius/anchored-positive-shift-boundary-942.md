# RH-E02 / #942 — Exact zero-shift boundary for anchored Green arithmetic coefficients

**Status of new Lean declarations:** `SOURCE_DRAFT` only. No Lean/Lake elaboration, kernel acceptance, transitive trust audit or external replay has been performed for this increment.

## 1. Exact terminal consumer and current base audit

- Repository: `grwtsk/math`. Pinned `main`: `645cc45f0d7abb6f19d26637370cdd1a29e9131c`, tree `9672a165e8f77c7ad4b3c46fc1190a1d4e82dafb`. Selected existing issue [#942](https://github.com/grwtsk/math/issues/942), with related kernel-obstruction #956, restricted-frame #966 and RH target #15. Parent [PR #1048](https://github.com/grwtsk/math/pull/1048), head `5e7b30fe8d5fcd0b27f0ca9b7ea6e557e51d9673`, was merged before this increment. The new branch is based on **main**, not a stacked PR.
- Direct imported owner `GRWTSK/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean`, blob `70e382e8c8548a915f15d080fae512580f45bf3c`. It provides `anchoredMobiusPair`, `anchoredPairSign`, `anchoredDyadicSourceIndices`, `anchoredFiniteGreenDivisorTransform_actual`, and exact `centeredGreenPrimeCoordinate` equality. The source's presence on main does not independently certify Lean replay.
- Green input file `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean`, blob `6f0a2352dc636f3774d5ef2ebebc0235ffde70aa`, owns `centeredGreenWindow X = Finset.Ioc X (2*X)`, `centeredGreenArithmeticCoefficient n = Λ(n)/n` and weighted test coordinates.
- Fourier input `CenteredMobiusLogGreenFourierBridge.lean`, blob `6b11fea2492a8552f93919bc215f0e40a53deb7e`, owns `thinGreenArithmeticFourierCoordinate X k = background(k) - centeredGreenPrimeCoordinate X (fourierModeValue k)`.
- **Selected RH-facing terminal consumer:** `GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound` in `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean`, blob `f40915f82fa625ab74d0cfd9c6459db08e65b75b`. It is an **RH-implying conditional theorem** from `AllDyadicArithmeticFourierCoordinateBound`, equivalently (at source level) `AllDyadicEnergyBound`. The premise includes the two original boundary-square channels and uniform all-head Fourier energy decay at every sufficiently large dyadic scale \(X\): \(O_\eta(X^{-1+\eta})\). This remains **OPEN**.
- Toolchain in the pinned repository: `leanprover/lean4:v4.33.0`, Mathlib commit `db584cd6d46c92f209a44c0f1c829460d327499d`. Neither toolchain installation nor Lean executable is present in the authoring container.

**The direct consumed intermediate is the literal Green coefficient and thin Fourier coordinate.** There is no claim of a proved implication from the finite correction itself to `AllDyadicArithmeticFourierCoordinateBound`.

## 2. Comparison of three candidates

| Candidate | Immediate consumer | Missing input / desired conclusion | Existing support, witness | Strength and formal risk | Failure value |
|---|---|---|---|---|---|
| Assert all positive anchored shifts directly equal the full regular-centered packet | `parityCenteredIntegerCoordinateAmplitude` / restricted-frame bridge | Equality of supports, parity families, center multiplicities and signed amplitudes | Existing centered support lemmas, but no source-identical packet map | High risk: shifting one coefficient to an already summed amplitude is not faithful | Counterexample or explicit defect |
| **Compute the entire zero-shift boundary (selected)** | Actual Green `Λ(n)/n` and thin Fourier coordinate | Exact `full = positive(h>0) + boundary(h=0)` with boundary closed form | Anchored-pair source `#1048`, `μ(1)=1`, `μ(2)=-1`, divisor antidiagonal; finite witness \(n=3\) | Pure finite arithmetic; no speculative analytic bridge | Explicit nonzero missing boundary prevents invalid transport |
| Attempt source-energy coercivity using norm-controlled linear reconstruction | `HasRestrictedLowerFrameBound` (#966) | Actual admissible differences and quantitative small reconstruction residual | General conditional constructor `#1046` only | Requires nontrivial arithmetic operator and uniform estimate; cannot be obtained from finite identity | Detects kernel/circularity |

The selected result is consumed immediately by a named existing Green input without requiring a new spectral, Hodge, quintic, interpolation or \(K\)-theoretic object.

## 3. Canonical arithmetic observable, support and exact formulas

The observable is a **real signed finite divisor transform**, not a positivity form. At fixed \(X\) and \(n\), let
\[
Y_X=\{n\in\mathbb N:X<n\le2X\},\qquad
P_X=\{a\in\mathbb N:1\le a\le2X\}.
\]
For \(a>0\), the inherited parity-anchored pair \(x(a)\) has endpoints
\[
(1,a)\ (a\ \mathrm{odd}),\qquad (2,a)\ (a\ \mathrm{even}),
\]
and sign \(\varepsilon(a)=+1\) (odd), \(-1\) (even). Thus \(\varepsilon(a)\mu(\text{left})\mu(\text{right})=\mu(a)\).

The anchored **shift** is
\[
h(a)=\begin{cases}(a-1)/2,&a\text{ odd},\\a/2-1,&a\text{ even}.\end{cases}
\]
For every **positive** factor \(a\),
\[
\boxed{h(a)>0\iff a\ge3,\qquad h(a)=0\iff a=1\ \text{or}\ a=2.}
\]
The new Lean source proves both equivalences with exact integer parity arithmetic.

For a finite real packet \(f\), define
\[
T_X^{+}(f;n)
=\sum_{ab=n,\ a\in P_X,\ h(a)>0}
     \varepsilon(a) f(a)\log b,
\]
\[
T_X^{0}(f;n)
=\sum_{ab=n,\ a\in P_X,\ h(a)=0}
     \varepsilon(a) f(a)\log b.
\]
The sum uses Mathlib's exact `n.divisorsAntidiagonal`, not an unproved infinite rearrangement. There is no truncation beyond the original fixed \(P_X\). For **every** \(X,n,f\),
\[
T_X(f;n)=T_X^{+}(f;n)+T_X^0(f;n)
\]
exactly, with no norm or absolute value inserted.

For actual data \(f_{\rm anchored}(a)=\mu(\operatorname{left}(x(a)))\mu(\operatorname{right}(x(a)))\) and \(n\in Y_X\), every divisor satisfies \(a\in P_X\), and the inherited coefficient identity gives
\[
\boxed{\Lambda(n)
  =T_X^{+}(f_{\rm anchored};n)+B(n),}
\]
where the **entire** zero-shift correction is
\[
\boxed{B(n)=\log n-\mathbf1_{2\mid n}\log(n/2).}
\]
Equivalently, \(B(n)=\log n\) for odd \(n\), and \(B(n)=\log2\) for even \(n\), by the ordinary real-logarithm identity at positive arguments.

The source proves the closed form using exact antidiagonal singleton contributions:
- First factor \(a=1\): the **only** pair is \((1,n)\), yielding \(\mu(1)\log n=\log n\).
- Second factor \(a=2\): a pair exists iff \(2\mid n\), uniquely \((2,n/2)\), yielding \(-\log(n/2)\).
- No other factor with \(h(a)=0\) exists.

These are exact arithmetic identities, no rational enclosure, approximation, numerical prime count, tail bound or distribution theorem.

### Explicit hostile witness

At \(X=2,n=3\), the actual Green target support includes \(3\). Since \(3\) is odd, \(B(3)=\log3>0\); the only remaining positive-shift divisor is \(a=3\), paired with \(b=1\), whose logarithmic weight vanishes. Therefore deleting the zero-shift boundary fails to recover even \(\Lambda(3)\) pointwise. This is a strictly positive **scalar boundary contribution**, not a positive-semidefinite kernel or positive Weil form.

## 4. Exact normalization into the consumer

For arbitrary complex test \(\phi\), the new source defines
\[
G_X^{+}(\phi)=\sum_{n\in Y_X}
\frac{T_X^{+}(f_{\rm anchored};n)}{n}\,
\phi(n/X-1),\qquad
G_X^0(\phi)=\sum_{n\in Y_X}\frac{B(n)}n\,\phi(n/X-1).
\]

It then authors
\[
\boxed{
\operatorname{centeredGreenPrimeCoordinate}(X,\phi)
=G_X^{+}(\phi)+G_X^0(\phi).
}
\]
For each integer Fourier mode \(k\), the existing affine continuum background remains separate:
\[
\boxed{
\operatorname{thinGreenArithmeticFourierCoordinate}(X,k)
=\operatorname{greenFourierBackgroundCoordinate}(k)
-G_X^{+}(\phi_k)-G_X^0(\phi_k).
}
\]

This preserves the exact \(X<n\le2X\) convention, \(1/n\) weight, \(n/X-1\) location, real-to-complex cast, Fourier test function and background. **The Fourier boundary and positive contributions may cancel; no termwise absolute-value bound or positivity transport is asserted.**

## 5. Positivity, control types and failure cases

- **Exactness:** complete finite divisor-antidiagonal identity, source-index partition and source-bound Green coordinate equality.
- **Strict positivity:** \(B(3)=\log3>0\), a particular coefficient. No assertion \(B(n)\) is a PSD operator or positive trace.
- **Nonnegative arithmetic object:** none selected as the terminal object. Neither finite positive-shift *index* nor "positive" in its name implies coefficient nonnegativity.
- **No additional controls supplied:** no uniform energy estimate, finite-height zeta certification, interval enclosure, global tail, differentiation-under-the-limit, nontrivial frame constant, positive measure, Weil quadratic form, or asymptotic positivity.
- **Information loss:** discarding \(h=0\) changes the exact prime coefficient. Treating the two Green pieces independently via triangle inequality can also lose arithmetic cancellation.
- **Admissibility:** this construction knows \(h(a)>0\), not membership in the *actual* `zeroWindingCenteredShiftSet b r c H` of `RegularOrbitZeroWindingCenteredCorrelation.lean`. That authentic support additionally specifies the parity family, \(h\le c\), parity of \(c-h\), and both endpoints. Nor does this source prove equality of one anchored pair to the **sum** `parityCenteredIntegerCoordinateAmplitude b r H c`.
- **Finite sanity computation:** separately checked the exact integer prime-exponent vectors of both sides for \(1\le n\le4096\), zero discrepancies. This is a diagnostic finite computation only; it does not prove unbounded equalities or Lean elaboration.

## 6. Evidence and provenance

- `SOURCE_DRAFT`: **established** by committed additive Lean source.
- `LITERATURE_REVIEWED`: not claimed; no external scholarly theorem imported. Standard Mathlib Möbius values, finite divisor-antidiagonal API and real log positivity are imported independently.
- `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`, `EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`: **not established**. Source `#print axioms` directives are not an audit receipt.

Source/provenance DAG:
\[
\text{pinned Mathlib Möbius/log + divisor APIs}
\rightarrow \text{existing anchored pair coefficients (#1048)}
\rightarrow \text{new } h>0\ /\ h=0\text{ exact split}
\rightarrow \text{explicit boundary }B(n)
\rightarrow \text{authentic Green and thin Fourier coordinates}.
\]
The missing arrow to a quantitative RH-relevant all-scale bound is deliberately absent. Inherited mathematical ideas, user-led program, formal draft implementation, computational fixture and future replay are recorded as distinct contributions; no unsupported numerical credit allocation.

## 7. One next obstruction, then stop

**Prove or refute a multiplicity-preserving source-admissibility map from the anchored positive-shift terms \(x(a)\), \(a\ge3\), into the actual centered support `zeroWindingCenteredShiftSet b r c H` and the actual summed amplitude `parityCenteredIntegerCoordinateAmplitude b r H c`, with an exact defect for any unmatched terms.**

Until that theorem exists, the present coefficient reconstruction does not identify the positive-shift anchored arithmetic packet with the actual centered second-moment energy. There is no source theorem importing a positive lower-frame constant, norm equivalence or RH-strength bound. The existence of an explicit boundary correction makes no claim that its Fourier effect is small.

This is the **only** selected next obligation; no second bridge is attempted in this increment. Remain draft and unmerged until separately authorized and fully verified.
