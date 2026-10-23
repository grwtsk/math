# RH / #219: three-tent moment-plus-coordinate reconstruction

**2026-10-23 · Mathematical reconstruction identified; Lean SOURCE_DRAFT integrated later at `37781e9ee1872edf41d275c9a67f82118a194313`. Warning-clean compilation, fresh kernel replay and transitive axiom audit NOT ESTABLISHED.**

This note isolates the exact next bounded supplier after the
[existing third-coordinate information-loss source](https://github.com/grwtsk/math/blob/93468e369390b8ec75e7fd6a031ada2ae92223b0/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean).
The committed module proves that a literal stage-four coefficient distinguishes
one nonzero *two-moment* fiber collision from zero, but explicitly does
**not** claim global injectivity. The stronger global statement **is
mathematically available inside this three-dimensional coefficient
space** from the already proved-in-source nonzero two-tent moment
determinant. This note records the exact matrix and inverse, without
claiming that the corresponding Lean proof exists.

## 1. Paper provenance and exact hypotheses consumed

**External source:** Enrico Bombieri, *Problems of the Millennium: the
Riemann Hypothesis*, Clay Mathematics Institute, **2000** (collected
edition **2006**), **Section V, printed pages 8–9**,
[official stable PDF](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf).

Only these two conditions on the **same** complex function on the
positive half-line are source-derived inputs:

\[
\int_0^\infty g(x)\,dx=0,\qquad
\int_0^\infty g(x)\,\frac{dx}{x}=0.
\]

The finite coefficients and explicit decoder below are **not a theorem
in Bombieri's paper**. They are repository-derived linear algebra
on literal normalized square tents. The entire source test class
\(W\), Mellin/involution conventions, correlation, gamma/pole/prime
sums, signed polarized Weil form, zero multiplicities, and classical
RH criterion are **not used or claimed** in the inversion.

## 2. Fixed source space, measured quantities, and determinant

Let \(\mathrm{Combination}\ 2=\mathrm{Fin}\ 3\to\mathbb C\).
The coefficient indices \(j=0,1,2\) correspond precisely to
canonical square stages \(n=2,3,4\); do not relabel index 2 as
stage 2.

For the **actual literal source tents** \(t_j(x)\), let

\[
A_j=\int_0^\infty t_j(x)\,dx,\qquad
B_j=\int_0^\infty t_j(x)\,\frac{dx}{x}.
\]

The existing positive-determinant supplier proves, at the source level,

\[
D=A_1B_0-A_0B_1
=\operatorname{twoTentMomentDeterminant}>0.
\]

For \(u=(u_0,u_1,u_2)\), the exact ordinary and reciprocal
Bombieri moment profile is

\[
m_0=A_0u_0+A_1u_1+A_2u_2,\qquad
m_1=B_0u_0+B_1u_1+B_2u_2.
\]

The already declared third-coordinate readout is \(t=u_2\).
Together these measurements form a **three-coordinate** map

\[
\mathcal A(u)=((m_0,m_1),t),
\qquad
\begin{pmatrix}m_0\\m_1\\t\end{pmatrix}
=
\underbrace{\begin{pmatrix}
A_0&A_1&A_2\\
B_0&B_1&B_2\\
0&0&1
\end{pmatrix}}_{M}
\begin{pmatrix}u_0\\u_1\\u_2\end{pmatrix}.
\]

The matrix determinant is exactly \(\det M=-D\ne0\). This
shows **all** coefficient vectors in the fixed finite source
space can be recovered from the three measurements; the original
two moments alone cannot do so.

## 3. Explicit source-faithful left inverse

Given **arbitrary** \((m_0,m_1,t)\in\mathbb C^3\), define
\(q_0=m_0-A_2t\) and \(q_1=m_1-B_2t\).
The reconstruction is

\[
\begin{aligned}
u_0&=\frac{A_1q_1-B_1q_0}{D},\\
u_1&=\frac{B_0q_0-A_0q_1}{D},\\
u_2&=t.
\end{aligned}
\]

The denominator is nonzero by the source-proposed theorem
`twoTentMomentDeterminant_pos`. Substitution gives

\[
u_0D=A_1(B_0u_0+B_1u_1)
       -B_1(A_0u_0+A_1u_1),
\]
\[
u_1D=B_0(A_0u_0+A_1u_1)
       -A_0(B_0u_0+B_1u_1).
\]

Thus \(M^{-1}M=I_3\) and \(MM^{-1}=I_3\) as exact algebraic
identities wherever \(D\ne0\). This is stronger than separation
of the particular corrected witness \(u=\texttt{correctedCoordinates}\)
from zero. The full augmented map is an isomorphism **of this
three-dimensional complex coefficient space**, not a theorem of
source-preserving reconstruction of all Bombieri \(W\) functions.

## 4. Source-integrated injectivity and remaining explicit inverse proposal

**Authored source-level Lean declarations (not kernel verified):**
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.augmentedThreeMomentProfile_injective`
and
`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.any_source_readout_factorsThrough_augmentedThreeMoments`,
introduced at [`37781e9ee1872edf41d275c9a67f82118a194313`](https://github.com/grwtsk/math/commit/37781e9ee1872edf41d275c9a67f82118a194313),
source blob `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f`.
The first proves global injectivity of the augmented profile **only
on `Combination 2`** by subtracting two vectors, applying
`coefficient_line_of_two_moments`, and forcing the remaining scalar
zero through `cofactorTwo_ne_zero`. The second uses
`factorsThrough_iff_fiberConstant_of_nonempty_source` to prove the
existence of a *classically chosen set-theoretic decoder* for any
coefficient readout. This is neither an effective decoder nor
classical Weil-form reconstruction.

The following are the **original proposed** declaration names/types
from the mathematical plan. They are **not** the declaration names
used by the integrated injectivity theorem; the explicitly computed
`decodeAugmentedBombieri` function remains uncommitted Lean source:

```lean
-- Within GRWTSK.NumberTheory.Zeta.Riemann.
-- CanonicalSquareTentThirdCoordinateInformationLoss

theorem augmentedBombieriProfile_injective :
    Function.Injective
      (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)

noncomputable def decodeAugmentedBombieri :
    (ℂ × ℂ) × ℂ → Combination 2 := ...

theorem decodeAugmentedBombieri_leftInverse :
    Function.LeftInverse decodeAugmentedBombieri
      (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)
```

The *actual* source `bombieriMomentProfile` and
`thirdCoordinateReadout` should be reused; do **not** substitute
abstract arbitrary measurements or infer additional source test
admissibility. The proof may use the existing two-tent
`combination_eq_zero_of_momentMaps_zero` after subtracting the
known third-coordinate contribution, or carry out the two linear
eliminations with the exact \(D>0\) supplier.

Do **not** insert the proposed theorem names in a kernel audit or
verification report as if they had been compiled.

## 5. Source identities and formalization mapping

**Inspected complete repository source snapshot:**
[`grwtsk/math@16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2`](https://github.com/grwtsk/math/commit/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2).
The exact source file SHA-1 objects below were observed through GitHub;
their declarations are repository source candidates, **not fresh kernel
acceptance**.

| Mathematical supplier / formal declaration | Exact source commit, file and Git blob | Role |
|---|---|---|
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos` | [source at this pin](https://github.com/grwtsk/math/blob/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L328), blob `e522772381075f125453ef2ba6b30e63d2873910` | Nonzero real 2×2 moment determinant `D` |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile`, `bombieriMomentProfile_not_injective` | [source](https://github.com/grwtsk/math/blob/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean#L44), blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead` | Both exact actual moments; noninjective without third coordinate |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.augmentedThreeMomentProfile_injective`, `any_source_readout_factorsThrough_augmentedThreeMoments` | [later main source integration `37781e9ee1872edf41d275c9a67f82118a194313`](https://github.com/grwtsk/math/blob/37781e9ee1872edf41d275c9a67f82118a194313/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean#L88), blob `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f` | Source-level full coefficient-space injectivity and nonconstructive readout-factorization theorem; NOT fresh kernel checked |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss.thirdCoordinateReadout`, `thirdCoordinateReadout_separates`, `thirdCoordinateReadout_augmented_separates` | [original integration `93468e369390b8ec75e7fd6a031ada2ae92223b0`](https://github.com/grwtsk/math/blob/93468e369390b8ec75e7fd6a031ada2ae92223b0/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean#L39), blob `1ff8c00eac7c167abc4c5456924312bf6f95bf74` | Actual added arithmetic coefficient observable and pair separation |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine.physicalTwoMoments_iff_cofactor_line` | [source](https://github.com/grwtsk/math/blob/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L208), blob `2b9d613a7cef0428754fdceab226907407ad5467` | Identifies exactly the lost one-dimensional coefficient direction |
| `GRWTSK.Logic.InformationLoss.augmentedProfile` | [FactorizationFiber.lean at pinned source](https://github.com/grwtsk/math/blob/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2/GRWTSK/Logic/InformationLoss/FactorizationFiber.lean#L62), blob `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd` | Generic pair-valued observable; by itself not globally injective |
| `GRWTSK.Logic.InformationLoss.readout_factorsThrough_augmentedProfile` | [FactorizationFiberCompleteness.lean at pinned source](https://github.com/grwtsk/math/blob/16e1b6d2c78ffc157e3453c6b9832f9da1b1a0b2/GRWTSK/Logic/InformationLoss/FactorizationFiberCompleteness.lean#L152), blob `13e934c9c8b477474bda909a5e689710795154bd` | Generic readout reconstruction via second projection; still no injectivity claim |

The two generic declarations above are separately pinned to their actual source files. Neither supplies a classical Weil-form identification.

**Formalization relationship:** `DIRECT_HYPOTHESIS_ENCODING`
for the two Bombieri displayed moments; `LOCAL_FINITE_LINEAR_ALGEBRA`
for the matrix recovery; `UNFORMALIZED_MATHEMATICAL_BRIDGE`
for the new full injectivity/decoder proof; `ANALOGY_ONLY`
for any relation to the classical polarized Weil spectral form.
The existing pair-separation theorem is a repository proof script
whose exact current kernel acceptance remains **NOT ESTABLISHED**.

## 6. Independent preflight and trust boundary

**Authored source advance, independent of this numeric preflight:** the two actual Lean theorem scripts above are now in `main`; no new successful `lake build --wfail`, `leanchecker --fresh -v` or transitive axiom receipt is attached at their exact introduction commit. The explicit formula in §3 remains a mathematical calculation, not a separately defined Lean inverse.


**Actually executed:** `python /tmp/grwtsk_augmented_moment_inverse_preflight_20261023.py`;
exit **0**; script SHA-256
`f3af7883bf9dfc7bcfc8e862a682e76653a4afce6e1e3895484fc538e5a70545`.
Sympy verifies both formal products \(M^{-1}M=I\) and \(MM^{-1}=I\),
and mpmath 60-digit values of the **actual** two-tent moment determinant
give \(D\approx0.67203230270158182870325689549>0\) with
successful reconstruction of an arbitrary complex three-vector.

These are **finite algebraic/numeric diagnostics**, not Lean
elaboration, fresh kernel checking or transitive axiom auditing.
The pinned local container still lacks `lean`, `lake`,
`elan`, `leanchecker` (exit **127**); GitHub DNS/remote-Git
exits **2/128**. No authorization for Railway or unapproved remote
execution is granted by this note.

**Open analytic obligations:** constructing a source-exact classical
Weil test family, comparing the full signed classical Hermitian
pairing to the corrected *arithmetic* Gram, proving a source-preserving
global dense extension, uniform zero tails, and instantiating a
criterion to the canonical `RiemannHypothesis`. None follows
from the finite inverse.
