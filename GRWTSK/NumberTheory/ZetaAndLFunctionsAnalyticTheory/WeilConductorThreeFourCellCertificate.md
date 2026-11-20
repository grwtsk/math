# Four-cell certificate for the complete conductor-three source

Local mathematical attribution: grwtsk contributors.

Source: [WeilConductorThreeFourCellCertificate.lean](WeilConductorThreeFourCellCertificate.lean).
Coordinating issue: [grwtsk/math#1840](https://github.com/grwtsk/math/issues/1840),
continuing [#1839](https://github.com/grwtsk/math/issues/1839).

## Statement and mathematical consumer

The maintained source now supplies an explicit rational interval certificate
for the **actual complete conductor-three source matrix** at the four midpoint
cells of `[-4,4]`. The points are `-3,-1,1,3`; the matrix entries are values of
the original `sourceKernel`, including its entire positive-lag gamma integral.
The auxiliary cutoff used to enclose these values is not an index of the target
matrix.

For every complex vector `u : Fin 4 → ℂ` with `∑ i, u i = 0`, the finite
Hermitian form is nonnegative. The source matrix is indefinite without that
constraint; two explicit vectors give opposite strict signs. The constraint is
therefore retained in the arithmetic return rather than inferred from a finite
selection of real or parity-specific tests.

For every complex globally `C¹` function `f` with compact support contained in
`[-4,4]`, the application is the existing arithmetic expression

```lean
primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
  modThreeQuadratic_nonprincipal 4 f
```

Denote it by `A(f)`, and write `E(f′)` for the original derivative energy.
The new bound is

\[
 A(f)\ge -8\omega(2)E(f')
       \ge -\left(16L_0+5\right)E(f').
\]

Here `L₀ = partialLipschitzConstant 0` and `ω` is the source-exact continuity
modulus from [SourceModulus](WeilConductorThreeSourceModulus.md). The preceding
two-cell bound had the explicit coefficient `32L₀+16/3`. Both the exact error
price and this explicit coefficient improve by more than eight, with the exact
price improving by at least `16L₀`. These are comparisons of certified error
budgets. They do not assert matrix order, monotone eigenvalues, or an eight-unit
decrease of the actual approximation error.

## Exact source observations

The original source is

\[
 K(t)=-\frac{c_\Gamma}{2}|t|
 -\int_0^\infty\frac{e^{-3r/2}}{1-e^{-2r}}
       \min(|t|,r)\,dr+P(t),
\]

where `cΓ = gammaConstant 3 1` and `P = primeHinges` retains the native
quadratic character modulo three and the radius-four arithmetic inventory.
No toy kernel, unsigned prime sum, altered character, or finite gamma kernel
replaces this source.

The new [FourCellBounds](WeilConductorThreeFourCellBounds.md) module supplies
the actual scalar intervals

\[
 \begin{aligned}
 -152/1000&\le a:=K(2)\le-148/1000,\\
 -76/1000&\le b:=K(4)\le-70/1000,\\
 -130/1000&\le c:=K(6)\le-122/1000.
 \end{aligned}
\]

It derives these from the actual gamma constant, certified exponential
enclosures for a 256-term head, exact signed prime-hinge sums, and the complete
one-sided gamma remainder `[-1/1025,0]`. The source retains the already proved
constant interval `[-1133/1000,-1131/1000]`. An initially proposed
micro-unit interval was rejected because the inherited Euler enclosure
did not imply it; increasing the gamma head replaces that unsupported
sharpening with an honest error allowance. The prime inventories at displacements
two, four and six reduce to `2..7`, `2..54`, and `2..403` only after proving
that all discarded hinges vanish. Zero-weight terms are retained in those
integer sums. The numerical investigation used to select rational parameters
is not a premise of any theorem here.

## Primary analytical argument

### 1. Identify the exact matrix and constrained reduction

Evenness and the zero value of `K` give

\[
 H=\begin{pmatrix}
 0&a&b&c\\
 a&0&a&b\\
 b&a&0&a\\
 c&b&a&0
 \end{pmatrix}.
\]

For a zero-sum vector, write `u=(-z₀-z₁-z₂,z₀,z₁,z₂)`. The already maintained
complex zero-sum reduction gives the exact identity `u*Hu=z*Rz`, with

\[
 R=\begin{pmatrix}
 -2a&-b&b-a-c\\
 -b&-2b&a-b-c\\
 b-a-c&a-b-c&-2c
 \end{pmatrix}.
\]

This is an identity on all complex vectors satisfying the original constraint.
It neither tests only rational coordinates nor assumes that the test function
has even parity. Since `R` is real, its complete realification is
`diag(R,R)`. The mixed blocks are exactly zero by source identity; they are not
discarded through an approximation.

### 2. Enclose every realified entry

For a slightly wider reusable scalar box, the proof accepts

\[
 a\in[-155,-145]/1000,\quad
 b\in[-79,-69]/1000,\quad
 c\in[-132,-122]/1000.
\]

The actual source intervals lie inside that box. Let

\[
 B=\frac1{10000}
 \begin{pmatrix}
 3001&735&2009\\
 735&1501&511\\
 2009&511&2493
 \end{pmatrix},\qquad
 E_{ij}=\frac1{50}.
\]

Each diagonal or affine three-value combination in `R` satisfies
`|Rᵢⱼ−Bᵢⱼ|≤Eᵢⱼ`, proved by rational linear inequalities from the scalar
endpoints. In particular, the uncertainty in `b−a−c` and `a−b−c` contains
all three contributing uncertainties. The six-dimensional center and radius
are `diag(B,B)` and `diag(E,E)`. The radius in each mixed block is zero.

The existing enclosure checker pays the entire row-diagonal penalty
`D(E)=(3/50)I₃`. It does not treat each entry error as if it only contributed
to the corresponding diagonal, nor substitute a sample eigenvalue for a
certified form bound.

### 3. Supply an exact rational Gram identity

Set

\[
 G=\begin{pmatrix}
 49/100&3/20&41/100\\
 0&13/50&-1/25\\
 0&0&7/50
 \end{pmatrix}.
\]

Direct rational arithmetic gives

\[
 B-\frac3{50}I_3=G^{\mathsf T}G.
\]

The certificate uses `diag(G,G)` as its Gram factor, identity packet metric,
zero tolerance, and no equality or inequality multiplier rows. Equality of
the rational matrices and the nonnegative symmetric radius guard are checked
by the unchanged `intervalCheck`. The source contains a kernel-reduced
`decide +kernel` proof of this finite check; source-bound execution evidence is
recorded separately below.

The maintained soundness theorem yields nonnegativity of the **true enclosed
matrix** on every realified coordinate vector. Exact realification then gives
nonnegativity on every complex reduced vector. The zero-sum identity returns
that conclusion to every admissible original vector.

### 4. Return to the actual arithmetic functional

The established source-return theorem uses the same four-cell grid, its actual
complex derivative cell moments, and the proved zero-sum identity for those
moments. The whole-cell approximation error is

\[
 |A(f)-Q_R(z)|\le8\omega(2)E(f').
\]

The packet has zero tolerance, so it contributes no additional metric price.
The lower error side and `Q_R(z)≥0` prove
`A(f)≥−8ω(2)E(f′)`. The carrier remains complex compact `C¹`, with support
contained in the closed interval `[-4,4]`.

Write

\[
 J(h)=\int_0^\infty\frac{e^{-3r/2}}{1-e^{-2r}}\min(h,r)\,dr
 \quad(h\ge0).
\]

The new integral comparison proves `J(2)≤J(4)` using the already established
integrability of both functions and positivity of the gamma kernel. The
new scalar head bound and complete tail give `J(2)≤5/8`. Specifically,
`Γ₂₅₆(2)≤5/8−1/1025` and the remaining integral is at most `1/1025`.
The existing two-cell result gives `J(4)≤2/3`. Since `ω(h)=L₀h+J(h)`,

\[
 8\omega(2)\le16L_0+5,
 \qquad
 8\omega(2)+16L_0\le8\omega(4).
\]

The established `L₀>1/2` makes the second gain strictly larger than eight.
The explicit coefficient improves by `16L₀+1/3`, also strictly more than
eight. Conversely,
`J(2)≥0` and `L₀>1/2` imply the current conservative four-cell budget exceeds
eight. Repetition of this fixed packet therefore cannot meet all dyadic
precision targets.

## Alternative analytic comparison and hostile controls

An AI-assisted review checked a distinct centrosymmetric decomposition, which
uses the same scalar source observations but does not use the displayed Gram
factor. Every complex zero-sum vector has the form

\[
 u=(x+y,-x+z,-x-z,x-y).
\]

Direct expansion gives

\[
 u^*Hu=2(c-a-2b)|x|^2+
 2\bigl[-c|y|^2-a|z|^2+2(a-b)\Re(\bar y z)\bigr].
\]

On the reusable scalar box above, `c−a−2b≥151/1000>0`, `−c>0`, and

\[
 ac-(a-b)^2\ge
 (145/1000)(122/1000)-(86/1000)^2
 =10294/10^6>0.
\]

The last two-dimensional Hermitian block is positive by completing the square.
For example, with `d=−c>0` and `e=a−b`, its quadratic is

\[
 d\left|y+\frac e d z\right|^2+
 \frac{ac-e^2}{d}|z|^2.
\]

This provides a separate analytical consistency check of all complex
constrained directions. It is not a second formal proof in the new module,
does not have independent source observations, and is not an external
independent mathematical review.

The new formal hostile control uses the original unconstrained vectors
`(1,1,0,0)` and `(1,−1,0,0)`, whose values are respectively `2a<0` and
`−2a>0`. It prevents promotion of constrained positivity to full-space
positivity. The fixed-budget floor similarly prevents promotion of this
single four-cell certificate to arbitrary-precision positivity.

## Declaration inventory

The file contains **21 public declarations: 17 theorems and four definitions**.
The outer namespace is

```lean
GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
```

| Declaration | Precise role |
| --- | --- |
| `complexFullSampleMatrix_fourCell` | Exact four-point matrix of the complete kernel. |
| `reducedFullSampleMatrix_fourCell` | Exact three-coordinate complex zero-sum reduction. |
| `FullSourceFourCell.centerBlock` | Rational three-by-three center `B`. |
| `FullSourceFourCell.gramBlock` | Rational upper triangular factor `G`. |
| `FullSourceFourCell.packet` | Complete realified center, radius, metric and zero tolerance. |
| `FullSourceFourCell.certificate` | Actual rational Gram certificate with empty multiplier types. |
| `FullSourceFourCell.checks` | Existing rational checker acceptance. |
| `FullSourceFourCell.encloses_scalars` | Scalar interval box propagated to every realified entry. |
| `FullSourceFourCell.encloses` | Actual complete source, using all three certified scalar endpoints. |
| `FullSourceFourCell.reduced_nonnegative` | Every complex reduced coordinate. |
| `FullSourceFourCell.original_nonnegative` | Every original complex zero-sum vector. |
| `FullSourceFourCell.original_indefinite` | Two opposite strict signs without the constraint. |
| `FullSourceFourCell.arithmeticValue_lower` | Actual compact-C¹ arithmetic lower return. |
| `FullSourceFourCell.gammaIntegral_two_le_four` | Comparison of complete, integrable gamma contributions. |
| `FullSourceFourCell.gammaIntegral_two_le` | Actual 256-term head plus the complete tail give `J(2)≤5/8`. |
| `FullSourceFourCell.spatial_price_le` | Explicit four-cell source-modulus price. |
| `FullSourceFourCell.arithmeticValue_lower_explicit` | Concrete coefficient `16L₀+5` with derivative energy. |
| `FullSourceFourCell.exact_price_improves` | Exact budget gain at least `16L₀`. |
| `FullSourceFourCell.exact_price_improves_eight` | Strict exact budget gain greater than eight. |
| `FullSourceFourCell.explicit_price_improves_eight` | Strict explicit coefficient gain greater than eight. |
| `FullSourceFourCell.budget_gt_eight` | Fixed-grid accounting obstruction. |

## Provenance, comparison and remaining bridges

Baseline: `grwtsk/math@3cbbf5648548e2c1dae99ce28ba7638261633d60`.
This is a local mathematical extension of the already maintained source,
not a claimed new formalization of an external paper or a novelty claim.
The proof is standard finite interval linear algebra applied to the exact
source and return interfaces:

- [SourceCertificates](WeilConductorThreeSourceCertificates.lean) supplies
  the full-source target, the general checker-to-arithmetic consumer, the
  two-cell comparison, and the explicitly conditional all-precision producer.
- [SourceSampling](WeilConductorThreeSourceSampling.lean) supplies the exact
  source grid, whole-cell error and simultaneous all-input integral estimates.
- [SourceModulus](WeilConductorThreeSourceModulus.lean) supplies the actual
  infinite gamma modulus and its integrability.
- [FourCellBounds](WeilConductorThreeFourCellBounds.lean) supplies the new
  actual scalar source enclosures, preserving the entire gamma remainder.
- [RationalEnclosureCertificates](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.lean)
  supplies complete row penalties, exact realification and checker soundness.
- [ZeroSumQuadraticReduction](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSumQuadraticReduction.lean)
  supplies the exact complete complex carrier reduction.

The increment extends the concrete two-cell certificate with an additional
four-cell certificate; it preserves the earlier result and its historical
evidence. It does not replace the original theorem by a surrogate target or
assume a spectral positivity conclusion as packet data. The new scalar
observations and the existing soundness/return theorems are shared premises
of the finite result and its source return.

Still required are accepted complete-source packets with the grid, enclosure,
metric and tolerance chosen **jointly** to make the full error budget arbitrarily
small. The currently maintained producer theorem remains conditional on that
family. This finite four-cell construction does not establish complete
fixed-window positivity, all-window or all-conductor coverage, RH/GRH, a
higher-rank Langlands correspondence, an executable Rust interval producer,
or trained model behavior. Neither a numerical eigenvalue nor agreement of
models substitutes for one of these bridges.

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
