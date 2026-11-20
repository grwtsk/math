# Complete-source observations at separations two, four and six

Local attribution: grwtsk contributors.

Maintained source: [WeilConductorThreeFourCellBounds.lean](WeilConductorThreeFourCellBounds.lean).

Namespace prefix:
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen.FourCellBounds`.

## Purpose and exact source identity

The four midpoint cells on the radius-four window have representatives
`-3, -1, 1, 3`. Their complete integrated source matrix needs the three
nonzero values `sourceKernel 2`, `sourceKernel 4`, and `sourceKernel 6`.
This source supplies rational outward intervals for those actual values.
It does not substitute a finite gamma head for the matrix target.

The unchanged kernel is

\[
K(t)=-\frac{c_3}{2}|t|
 -\int_0^\infty\frac{e^{-3r/2}}{1-e^{-2r}}\min(|t|,r)\,dr
 +P(t),
\]

where `c₃ = gammaConstant 3 1` and

\[
P(t)=\sum_{n\in\operatorname{activePrimePowers}(4)}
\frac{\Lambda(n)}{\sqrt n}\,
\operatorname{Re}\overline{\chi_3(n)}
\max(|t|-\log n,0).
\]

The character is the repository's actual primitive nonprincipal real
character modulo three. Its values are retained exactly: zero on multiples
of three, one on residue one and minus one on residue two. The natural
inventory includes integers with zero von Mangoldt weight, which contributes
zero without changing the formula.

The mathematical consumer is the complete-source four-cell matrix
certificate and its existing exact derivative-moment return to
`primitiveArithmeticValue`. Scalar enclosure alone proves no matrix sign.

## Primary analytical argument

### 1. Remove only hinges known to vanish

For a natural `k ≤ 4`, the active inventory at radius `k` is contained in the
original radius-four inventory. If an integer in the larger inventory is
absent from the smaller one, then

\[
n\ge e^{2k},\qquad 2k-\log n\le0.
\]

Its hinge at separation `2k` is exactly zero. Every integer in the smaller
inventory satisfies `log n < 2k`, so its remaining hinge equals
`2k - log n`. Therefore, when the smaller inventory is `Icc 2 b`,

\[
P(2k)=\sum_{n=2}^{b}
\chi_3(n)\frac{\Lambda(n)}{\sqrt n}(2k-\log n).
\]

This is an equality of the actual signed source observations, not a
truncation allowance or replacement of the prime source. The formal
`primeHinges_even_eq` proves this identity before any scalar observations
are evaluated.

The exact cutoffs are

| Separation | Smaller radius | Inclusive natural cutoff |
| --- | ---: | ---: |
| `2` | `1` | `7` |
| `4` | `2` | `54` |
| `6` | `3` | `403` |

The first two inventory identities are reused. For the third, the existing
strict decimal bounds on the actual `exp 1`, raised to the sixth power,
prove `403 < exp 6 < 404`. Thus the source does not silently omit any prime
power below its true threshold. Integers beyond that threshold are omitted
only after their hinges are proved zero.

### 2. Enclose the signed prime terms

[WeilFinitePrimeObservations](WeilFinitePrimeObservations.lean) supplies
rational logarithm and von Mangoldt-weight observations for every positive
natural argument. Its logarithm proof retains the complete range-reduction
and series error, and the weight uses an integer-square-root bracket.
The fixed bound `n ≤ 54` from the earlier radius-two observation is not
used for the new `n ≤ 403` terms.

For each term, multiply the weight interval by the interval for
`2k - log n`, then scale by the exact signed character coefficient. The
interval product uses all four endpoint products, so multiplication by
a negative character reverses the interval correctly. Round each result
outward on the grid of step `2⁻²⁴`, and sum its lower and upper endpoints.

No floating-point value is an input to `primeTermBounds`, `primeBounds`,
their soundness theorems, or the endpoint guard.

### 3. Enclose the actual gamma head

The unchanged odd gamma rates are

\[
a_m=2m+\frac32.
\]

At separation `2k`, the finite head is

\[
G_{256}(2k)=\sum_{m=0}^{255}
\frac{1-e^{-2ka_m}}{a_m^2}.
\]

The exact identity

\[
e^{-2ka_m}=\bigl(e^{-1}\bigr)^{k(4m+3)}
\]

lets the existing real exponential bounds give rational endpoints. For
`m < 4`, the bounds used are

\[
0.3678794411\le e^{-1}\le0.3678794412,
\]

raised to the exact natural exponent. These nonzero lower bounds matter,
especially at separation two; replacing all exponential lower endpoints
by zero would lose approximately `0.022` in the first gamma term.

For `m ≥ 4` and `k ≥ 1`, the exponent is at least nineteen. Hence

\[
0\le e^{-2ka_m}
\le(3/8)^{k(4m+3)}
\le(3/8)^{19}
\le10^{-8}.
\]

The exponential interval is subtracted from one, multiplied by the positive
exact rational reciprocal `a_m⁻²`, and rounded outward at 24 bits before
summation. This bounds the finite head's actual real transcendental terms.

The same head observation supplies a useful complete-gamma upper bound:

\[
G_{256}(2)+\frac1{1025}\le\frac58.
\]

The rational endpoint guard and its real finite-head consequence are both
proved. After the existing integral decomposition and tail bound, the
four-cell consumer can therefore bound the complete gamma contribution to
the source modulus by `5/8` at mesh width two. This is a bound on the actual
complete integral, not a declaration that the omitted tail vanishes.

The conductor/parity constant is the existing exact observation
`ScalarBounds.gammaConstant_three_one_bounds`, retaining its proven interval

\[
-1.133\le c_3\le-1.131.
\]

The proof does not introduce a replacement gamma constant, assume its
numerical value, or discard the finite harmonic-sum error in its Euler
constant observation. The larger gamma cutoff compensates for retaining
this honest constant interval.

### 4. Include the entire omitted gamma tail

[WeilConductorThreeKernelTruncation](WeilConductorThreeKernelTruncation.lean)
already proves, for every real `t`,

\[
-\frac1{4M+1}\le K(t)-K_M(t)\le0.
\]

At `M = 256`, the interval is `[-1/1025, 0]`. It is added to the finite-head
source enclosure exactly once. Only its lower endpoint is negative. The
positive omitted gamma integral is subtracted in the definition of the
source, so a symmetric error interval would be weaker and a positive tail
correction would have the wrong sign.

The resulting formal intervals are

\[
\boxed{-\frac{152}{1000}\le K(2)\le-\frac{148}{1000}},
\]

\[
\boxed{-\frac{76}{1000}\le K(4)\le-\frac{70}{1000}},
\]

\[
\boxed{-\frac{130}{1000}\le K(6)\le-\frac{122}{1000}}.
\]

The final guard is a closed proposition about exact rational endpoints and
uses Lean's kernel reduction through `decide +kernel`. A numerical scout
may suggest candidate outer intervals; it cannot establish their acceptance.

## Comparison and hostile checks

The predecessor [two-cell source](WeilConductorThreeTwoCellCertificate.lean)
bounded only separation four, using eight gamma terms and a wider signed
prime observation. The new separation-four interval is a refinement of that
same source, while separations two and six are new inputs needed by the
actual four-cell matrix. The new observations share the original source,
gamma-constant identity, character, rational interval arithmetic and
complete-tail theorem. They are not independent proofs of those premises.

A separate exploratory computation used a trigamma representation with a
100-term exponential correction and direct prime-power enumeration. It gave
approximate values near `-0.1504509265`, `-0.0736000837` and
`-0.1262215122`. That scout did not certify the omitted numerical correction.
A separate AI-assisted review compared direct quadrature of the complete
gamma integral with the same arithmetic source. Both are consistency checks
only. No trigamma identity, numerical quadrature result or floating-point
output is a premise of the formal enclosure.

The following mistakes would invalidate the intended consumer:

- Applying the old `n ≤ 54` logarithm theorem to the separation-six inventory.
- Replacing the character by its absolute value before summation.
- Omitting arithmetic hinges without proving they vanish at the separation.
- Discarding the positive omitted gamma integral or adding it with the wrong
  sign to the source kernel.
- Replacing a coarse finite source value by the complete source without its
  explicit tail interval.
- Treating these scalar inequalities as positive semidefiniteness of the
  unconstrained matrix.

The four-cell certificate consumer must still prove the actual matrix
identities, enclose its complete complex zero-sum reduction, run the rational
matrix checker and return the result with its entire spatial approximation
budget. A finite certificate cannot supply an all-precision family by itself.

## Declaration correspondence

Every name in this table has the namespace prefix stated above.

| Declaration | Exact role |
| --- | --- |
| `primeHinges_even_eq` | Original radius-four source equality after proving omitted hinges vanish. |
| `activePrimePowers_three` | Exact natural cutoff at `exp 6`. |
| `primeTermBounds`, `primeTermBounds_sound` | Signed arithmetic term and its outward interval. |
| `primeBounds`, `primeBounds_sound` | Complete finite arithmetic sum at the proved cutoff. |
| `gammaConstant_bounds` | Retain the proven interval for the existing conductor/parity constant. |
| `gammaTermBounds`, `gammaTermBounds_sound` | Actual exponential gamma term and full rational error. |
| `gammaHeadBounds`, `gammaHeadBounds_sound` | The 256-term head at the same separation. |
| `gammaHead_two_upper_guard`, `gammaHead_two_le` | Price the head plus complete `1/1025` tail by `5/8`. |
| `sourceBounds`, `sourceBounds_sound` | Full source enclosure including the signed `1/1025` remainder. |
| `sourceBounds_coarse` | Exact rational endpoint comparisons for all three observations. |
| `sourceKernel_two_bounds` | Actual complete `K(2)` interval. |
| `sourceKernel_four_tight_bounds` | Refined actual complete `K(4)` interval. |
| `sourceKernel_six_bounds` | Actual complete `K(6)` interval. |

Three private supporting theorems establish active-inventory membership,
cutoff identification and exponential bounds. One private definition stores
the exponential endpoints. Their transitive dependencies are included when
the public endpoints are audited.

## Provenance and retained obligations

These are local consequences of maintained formal sources, not attributed
to a new external paper theorem. The authoring base is
`3cbbf5648548e2c1dae99ce28ba7638261633d60`. The exact existing inputs are:

- [WeilConductorThreeKernel](WeilConductorThreeKernel.lean): actual source,
  finite head, native parity-one rate and signed arithmetic hinges.
- [WeilConductorThreeKernelSampling](WeilConductorThreeKernelSampling.lean):
  `primeHinges_eq_sum` for the original radius-four inventory.
- [WeilConductorThreePrimeBounds](WeilConductorThreePrimeBounds.lean):
  exact rational values of the native modulo-three character.
- [WeilConductorThreeScalarBounds](WeilConductorThreeScalarBounds.lean):
  conductor/parity constant observation and rational rate identity.
- [WeilConductorThreeKernelTruncation](WeilConductorThreeKernelTruncation.lean):
  complete one-sided remainder bound.
- [WeilUnitWindowPrimeData](WeilUnitWindowPrimeData.lean) and
  [WeilRadiusTwoPrimeNorm](WeilRadiusTwoPrimeNorm.lean): existing exact
  inventories at radii one and two.
- [WeilFinitePrimeObservations](WeilFinitePrimeObservations.lean): new
  all-positive-natural logarithm and original prime-weight observations.
- [RationalRealBounds](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalRealBounds.lean):
  exact outward interval arithmetic.
- Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
  [`Mathlib/Analysis/Complex/ExponentialBounds.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/ExponentialBounds.lean),
  authors Mario Carneiro and Joseph Myers (Apache-2.0): actual `exp 1` and
  `exp (-1)` decimal bounds; `Real.exp_nat_mul` gives the power identities.

The source uses the existing Lean `4.34.1` toolchain and unchanged root
dependency pins. There are no new conjectural analytic hypotheses in the
stated enclosure endpoints. The complete-source all-grid certificate
producer and all-window arithmetic positivity remain separate obligations.

## Verification evidence

All three new modules passed the pinned aggregate build of
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeFourCellCertificate`.
It includes the exact rational endpoint guards and the six-dimensional
`intervalCheck` acceptance, using `decide +kernel` rather than a native
decision trust shortcut. The arithmetic target, original source identity and
complete complex zero-sum carrier are retained. An unsupported intermediate
constant narrowing was corrected as detailed below.

The separate transitive axiom audit covers **57 public declarations**:
17 in `WeilFinitePrimeObservations`, 19 in `WeilConductorThreeFourCellBounds`,
and 21 in `WeilConductorThreeFourCellCertificate`. Every reported axiom set
is empty or a subset of `propext`, `Classical.choice`, and `Quot.sound`.
Private supporting declarations are included through the public results’
dependencies. Definitions are audited as well as theorems.

### Executed attempts

Every attempt below records frozen source bytes. Failures remain failures;
later successes do not retroactively change them. Durations are observed
wall-clock seconds. Operational logs remain outside this repository.

| Attempt | Scope | Outcome | Seconds | Source unchanged |
| --- | --- | --- | ---: | --- |
| `finite_prime_build_1` | Finite prime observations | **FAILED** | 256.490 | True |
| `four_cell_build_1` | Aggregate target | **FAILED** | 225.417 | True |
| `four_cell_build_2` | Aggregate target | **FAILED** | 522.183 | True |
| `four_cell_build_3` | Aggregate target | **FAILED** | 259.748 | True |
| `four_cell_build_4` | Aggregate target | **PASSED** | 474.617 | True |
| `four_cell_axioms_1` | Transitive axiom audit | **PASSED** | 186.344 | True |

The failed attempts include elaboration issues and an unsupported
intermediate constant enclosure, all bound to the hashes below. The final
four-cell statement is checked only at its corrected source bytes.
The first observation build exposed a natural-power versus rational-power
cast mismatch in the square-root denominator; the correction retains the
existing natural grid and its unchanged positivity claim.

The first aggregate retry still encountered the same square-root cast boundary: Lean had elaborated a real quotient of separately cast operands while the source held the cast of a rational quotient. The next revision explicitly unfolds the public square-root interval and applies `Rat.cast_div` before exposing the unchanged natural grid. Both failures retain the original theorem statement and positivity hypotheses.

The second aggregate build compiled `WeilFinitePrimeObservations` successfully, then failed in `WeilConductorThreeFourCellBounds`: explicit rational-to-real interval casts were required, negated quotients needed normalization, the natural-one inventory argument needed its cast exposed, and the proposed sharper gamma-constant guard was unsupported by its inherited interval. These are retained as failed source checks; the complete matrix module was not built in that attempt.

Analytical inspection of the failed gamma-constant step found a substantive precision gap: the inherited Euler enclosure has width `1/1024`, so it cannot justify the proposed micro-unit constant interval. The correction reuses the already proved constant interval `[-1133/1000,-1131/1000]`, increases the auxiliary gamma head from 64 to 256 terms, and includes its complete tail `1/1025`. The revised complete-source scalar intervals are `[-152,-148]/1000`, `[-76,-70]/1000`, and `[-130,-122]/1000`. They still lie within the unchanged certificate box; the target matrix, zero tolerance, full gamma bound `5/8`, and final arithmetic statement `A(f) ≥ -(16L₀+5)E(f′)` remain the same. The failed narrow constant is not an accepted premise.

The initial AI-assisted static review also missed compatibility with the inherited constant interval. That portion of the initial endorsement was withdrawn. The subsequent review traced the Euler remainder through the conductor/parity identity to the exact reused theorem and checked the corrected cutoff, source intervals and consumer. Numerical plausibility and review were not substituted for the failing source-bound proof.

The third aggregate attempt failed on documentation-comment placement before a scoped `set_option`. Moving that comment inside the scoped command, directly above its theorem, changes no mathematical expression or proof. No other error was reported by that attempt.

### Exact source fingerprints

| Attempt | Lean source | SHA256 |
| --- | --- | --- |
| `finite_prime_build_1` | `WeilFinitePrimeObservations.lean` | `6d908d509ebdd6937e99e26688e15fa9d0798c96669e83957d40bce540d31451` |
| `four_cell_build_1` | `WeilFinitePrimeObservations.lean` | `9e233e378aa5e3f586641f8fa3b4a1781bc509eae5b67baa48da43e7a27dd670` |
| `four_cell_build_1` | `WeilConductorThreeFourCellBounds.lean` | `52e78bf370630095e24be238f37a1bab7dbf0bf05451208d5cbfed8394f958f0` |
| `four_cell_build_1` | `WeilConductorThreeFourCellCertificate.lean` | `ae6bbc700d85f5ffd8970c6d02b87074e22d2f0fea9ed920e291fee30235a177` |
| `four_cell_build_2` | `WeilFinitePrimeObservations.lean` | `ef63b6ce4b6a62347c855fc0fa2d794821d19c8de8daa8d97ae3c8bbd48f924a` |
| `four_cell_build_2` | `WeilConductorThreeFourCellBounds.lean` | `52e78bf370630095e24be238f37a1bab7dbf0bf05451208d5cbfed8394f958f0` |
| `four_cell_build_2` | `WeilConductorThreeFourCellCertificate.lean` | `ae6bbc700d85f5ffd8970c6d02b87074e22d2f0fea9ed920e291fee30235a177` |
| `four_cell_build_3` | `WeilFinitePrimeObservations.lean` | `ef63b6ce4b6a62347c855fc0fa2d794821d19c8de8daa8d97ae3c8bbd48f924a` |
| `four_cell_build_3` | `WeilConductorThreeFourCellBounds.lean` | `2649688dcbcac743f99e5504c01258e8645a8be7e48cca4022fd0e46cff0666f` |
| `four_cell_build_3` | `WeilConductorThreeFourCellCertificate.lean` | `fbed8e2740a193a1832e252d559352e16bec965c2be0e46f85a30432f7500219` |
| `four_cell_build_4` | `WeilFinitePrimeObservations.lean` | `ef63b6ce4b6a62347c855fc0fa2d794821d19c8de8daa8d97ae3c8bbd48f924a` |
| `four_cell_build_4` | `WeilConductorThreeFourCellBounds.lean` | `f11887ffe4df0c5a297aebc82d22e058f4b77dd08e0320cd35ab54f9a2cc7af5` |
| `four_cell_build_4` | `WeilConductorThreeFourCellCertificate.lean` | `fbed8e2740a193a1832e252d559352e16bec965c2be0e46f85a30432f7500219` |
| `four_cell_axioms_1` | `WeilFinitePrimeObservations.lean` | `ef63b6ce4b6a62347c855fc0fa2d794821d19c8de8daa8d97ae3c8bbd48f924a` |
| `four_cell_axioms_1` | `WeilConductorThreeFourCellBounds.lean` | `f11887ffe4df0c5a297aebc82d22e058f4b77dd08e0320cd35ab54f9a2cc7af5` |
| `four_cell_axioms_1` | `WeilConductorThreeFourCellCertificate.lean` | `fbed8e2740a193a1832e252d559352e16bec965c2be0e46f85a30432f7500219` |

### Concurrent repository check-in

Before publication, main advanced from the authoring base to
[`417156d807dda632ef6cbf08dc5958037f9e6dd0`](https://github.com/grwtsk/math/commit/417156d807dda632ef6cbf08dc5958037f9e6dd0).
That commit changes only `README.md`. It asserts universal bounded-window
refinement and a `P=NP` conclusion, but supplies no new mathematical source,
accepted-certificate producer, complexity bound or complexity-theoretic
reduction. The README change is preserved as the publication parent; its
claims are not promoted to verified premises or conclusions of this increment.
The full-source producer theorem remains conditional, and this source
constructs only the stated four-cell certificate with its nonzero spatial
budget. Existence of finite approximations, even with broader coverage,
would not on its own supply a polynomial-time algorithm for an NP-complete
problem. No such bridge is provided by this check-in.

The complete local import traversal contains 85 mathematical source files;
all 82 pre-existing files, all root dependency pins, and repository
instructions are unchanged. The concurrent prose change therefore does
not alter the mathematical sources or environment used by the passing
build and audit.

### Environment and distinct evidence categories

Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Root toolchain/dependency files and root imports were not changed.
The final build has one nonblocking new linter warning: the `push_cast`
at the end of the finite reduced-matrix calculation does nothing in an
already simplified branch. Earlier cached dependency warnings remain
unchanged. No warning is treated as proof acceptance or rejection.

| Environment input | SHA256 |
| --- | --- |
| `lean-toolchain` | `d5edba4e4b8faad9c1baeadb265716d20d03be4d1a2647dc5e35b0c0325bea7b` |
| `lake-manifest.json` | `79720f104a8602620c98e6984bbb881494854cd6714ae3ccae28049f84b3abe4` |
| `lakefile.toml` | `5cdd24d189d199dbbaac88f25c9e8d21e9c1e817dd03e01fa80054cb8301ad76` |

AI-assisted mathematical/source reviews covered scale-sensitive logarithms,
actual arithmetic inventory, character signs, complete gamma remainder,
every affine matrix entry, full complex zero-sum reduction, rational Gram
orientation, the distinct parity-square comparison, arithmetic return,
derivative-energy accounting and the fixed-grid obstruction. No blocking
mathematical finding remained. Shared source and imported soundness
premises remain shared; these reviews are not independent external proofs.

Numerical trigamma/quadrature scouts and exact rational reconstructions
are consistency evidence, not formal premises. The actual proof uses the
source-bound interval theorems and checked rational predicates.

Fresh proof-term replay of the **complete imported dependency closure**,
independently implemented kernel checking, independent external mathematical
review, a whole-repository build and Rust execution are **NOT_RUN** for this
increment. The passing build and axiom audit do not claim any of those checks.

The fixed-window all-precision accepted-certificate producer remains open.
Source publication does not turn finite positivity or the explicit lower
bound into complete Weil positivity or RH/GRH.
