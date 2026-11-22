# Rational observations for arbitrary finite prime inventories

Local attribution: grwtsk contributors.

Maintained source: [WeilFinitePrimeObservations.lean](WeilFinitePrimeObservations.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FinitePrimeObservations`.
Coordination: [grwtsk/math#1840](https://github.com/grwtsk/math/issues/1840),
continuing [#1839](https://github.com/grwtsk/math/issues/1839).

## Mathematical consumer and exact scope

The complete conductor-three source sampled on the four-cell midpoint grid
has displacements two, four and six. The signed arithmetic contribution at
six involves prime powers beyond the earlier radius-two inventory. The
previous observation theorem explicitly required `n ≤ 54`; using it at a
larger integer without a new argument would leave a genuine proof gap.

This source constructs rational intervals for `Real.log n` and the unchanged
`LowSchur.primeWeight n` at every positive natural argument. The logarithm
radius depends on the actual dyadic reduction scale. It is not a uniform
fixed error assertion over all natural numbers. The finite inventory,
vanishing of omitted hinges, signed character coefficients, gamma integral,
matrix enclosure and accepted certificate are separate consumers.

## Primary analytical argument

For `n > 0`, set

\[
s(n)=\lfloor\log_2 n\rfloor+1,
\qquad x(n)=1-n/2^{s(n)}.
\]

The natural-number base-two logarithm inequalities prove
`2^(s-1) ≤ n ≤ 2^s`, hence `0 ≤ x ≤ 1/2`. The source uses

\[
A(x)=-\sum_{j=1}^{24}\frac{x^j}{j}.
\]

The actual real-logarithm remainder theorem bounds

\[
|\log(1-x)-A(x)|
\le\frac{|x|^{25}}{1-|x|}\le 2^{-24}.
\]

Applying this also at `x=1/2` gives the center `b=-A(1/2)` for
`log 2`, with error at most `2^-24`. The exact identity

\[
\log n=\log(1-x(n))+s(n)\log2
\]

therefore gives a rational raw center

\[
c_0(n)=A(x(n))+s(n)b,
\qquad |\log n-c_0(n)|\le(s(n)+1)2^{-24}.
\]

The center is rounded downward to the fixed dyadic grid:

\[
c(n)=2^{-32}\lfloor2^{32}c_0(n)\rfloor.
\]

The floor inequalities give `|c₀-c| ≤ 2^-32`. The interval

\[
[c(n)-r(n),c(n)+r(n)],
\qquad r(n)=(s(n)+1)2^{-24}+2^{-32}
\]

thus contains the actual `log n`. Every operation defining these endpoints
is rational or natural-number arithmetic. The precise series error, scale
error and rounding error all remain in the final radius. For example,
the displacements used by the four-cell consumer require arguments no larger
than 403, for which the scale is at most nine; the general theorem itself
does not depend on that bound.

For the denominator, the source reuses the existing integer-square-root
brackets from `RadiusTwoPrimeObservations.sqrtBounds`. If
`q = floor(sqrt(n*10^36))`, their endpoints are `q/10^18` and
`(q+1)/10^18`. The previous soundness theorem applies to every natural
argument. This source additionally exposes positivity of its lower endpoint
when `n > 0`, by positivity of `Nat.sqrt(n*10^36)`.

Finally, the original arithmetic-function identity is retained:

\[
\Lambda(n)=
\begin{cases}
\log(\operatorname{minFac}(n)),&n\text{ is a prime power},\\
0,&\text{otherwise}.
\end{cases}
\]

The rational interval product and positive reciprocal soundness theorems
then enclose the original weight `Λ(n)/sqrt(n)`. Non-prime-powers are
exactly zero. In particular, the construction does not replace von Mangoldt
weights by logarithms of composite arguments.

## Source comparison, provenance and retained hypotheses

This is a local extension of the dyadic argument in
[WeilRadiusTwoPrimeObservations.lean](WeilRadiusTwoPrimeObservations.lean),
reviewed at repository revision
`3cbbf5648548e2c1dae99ce28ba7638261633d60`.
Its `abs_log_sub_logHatRaw_le`, `abs_logHatRaw_sub_logHat_le`,
`logBounds_sound`, `sqrtBounds_sound`, and `primeWeightBounds_sound`
provide the direct comparison. The old logarithm construction uses sixty
terms, a sixty-four-bit center grid and a fixed radius proved only through
54. The new construction uses twenty-four terms, a thirty-two-bit center
grid and a scale-dependent radius, with the restriction replaced by the
retained hypothesis `0 < n`. The old source and its evidence are unchanged.

Both use the same real logarithm, floor operation and original arithmetic
weight. The square-root interval and its general soundness are reused
directly. These shared dependencies mean this extension is not an independent
proof of those imported results.

Pinned Mathlib revision:
`d13f23b723b8a846827a245b89c10fc7d3f11612` (upstream Apache-2.0).
The exact supporting APIs are:

- [`Mathlib/Analysis/SpecialFunctions/Log/Deriv.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Log/Deriv.lean):
  authors Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo and Calle Sönne;
  `Real.abs_log_sub_add_sum_range_le`, under its strict `|x| < 1` hypothesis.
- [`Mathlib/Data/Nat/Log.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/Log.lean):
  authors Simon Hudon, Yaël Dillies and Yury Kudryashov;
  `Nat.pow_log_le_self`, `Nat.lt_pow_succ_log_self`.
- [`Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean):
  author Bhavik Mehta; `ArithmeticFunction.vonMangoldt_apply`.
- Local [RationalRealBounds](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalRealBounds.lean):
  rational enclosure `mul_sound`, `inv_sound`, `point_sound` and their
  actual positivity assumptions.

This is a local consequence and implementation of explicit elementary
estimates. No paper-level novelty or new external theorem formalization is
claimed. Source attribution is the collective byline above; upstream
attribution and licensing remain in the imported files.

## Declaration inventory

Every name below has the namespace given at the top of this record.

| Declaration | Role |
| --- | --- |
| `logOneMinusHat` | Exact finite rational series. |
| `logOneMinus_error` | Actual real logarithm remainder on `[0,1/2]`. |
| `logTwoHat` | Rational center for `log 2`. |
| `logTwo_error` | Error at the reduction base. |
| `logScale` | Actual natural dyadic reduction exponent. |
| `logFraction` | Exact reduced rational argument. |
| `logHatRaw` | Reconstructed rational center before rounding. |
| `abs_log_sub_logHatRaw_le` | Scale-sensitive error for all positive arguments. |
| `logHat` | Rounded rational center. |
| `logRadius` | Full series, scale and rounding allowance. |
| `abs_logHatRaw_sub_logHat_le` | Actual floor-rounding error. |
| `abs_log_sub_logHat_le` | Combined logarithm error. |
| `logBounds` | Outward rational interval. |
| `logBounds_sound` | Interval contains the actual logarithm. |
| `sqrtBounds_lo_pos` | Strictly positive lower square-root endpoint. |
| `primeWeightBounds` | Interval retaining the prime-power predicate. |
| `primeWeightBounds_sound` | Interval contains the original arithmetic weight. |

## Hostile checks and limits

The argument covers `n=1` conservatively and explicitly excludes `n=0`
where the positive denominator argument would fail. The scale-dependent
radius avoids a hidden finite-inventory cap. The lower square-root endpoint
must be positive before the reciprocal enclosure is used. An independent
AI-assisted read of these mathematical steps found no blocking issue;
it is not independent external review or an independently implemented check.

These are scalar enclosures. Their existence does not imply a useful matrix
sign, positivity on every resolution, or a continuum Weil inequality.
Larger source entries must retain their exact prime inventory and all gamma
remainder costs. Numerical reconnaissance is separate from the proved
rational observation contract.

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
