# RH-E02 / #966 — Invisible terminal-center column of the four-family Green matrix

**Result class:** exact finite arithmetic-matrix obstruction on the **unrestricted ambient** centered-coordinate space. **Lean evidence:** SOURCE_DRAFT; not elaborated, kernel checked, trust audited or independently replayed for this new module.

## 1. Exact consumer, immutable source identities, and bounded choice

At authoring audit, grwtsk/math main was `a3d750e93f40ea6eeb50eaa2613ff261fb57e8bc`, tree `91d1936acc00a1d391ad9f97714074d4b489a47e`. The final direct-main integration commit and its actual parent are to be read from the Git history; the user-facing receipt records them after the non-force ref update. This work changes no existing source, root import, workflow, toolchain or dependency pin.

- Selected issue: [#966](https://github.com/grwtsk/math/issues/966), norm direction and lower-frame coercivity. Related #942 (coordinate compatibility), #100 (clean kernel replay), and RH root #15.
- **Exact RH-facing terminal theorem:** `GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound` in `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean` (blob `f40915f82fa625ab74d0cfd9c6459db08e65b75b`). The theorem is **conditional on the OPEN** `AllDyadicArithmeticFourierCoordinateBound`: for every \(\eta>0\), eventually on dyadic scales \(X\), **all** finite Fourier heads \(N\) plus both boundary squares are at most \(C_\eta X^{-1+\eta}\). There is no proved arrow from the matrix to this premise and no claim of RH.
- **Immediate declared intermediate:** real finite linear matrix `canonicalFourFamilyGreenMatrixEntry`, `canonicalFourFamilyGreenMatrixApply` in `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean`, blob `d351831b67611b3a341f8e4181b38382c769994e`, merged by #1076. Imported `anchoredMobiusPair` and source support from `AnchoredPairGreenCoefficientBridge.lean` (blob `70e382e8c8548a915f15d080fae512580f45bf3c`).
- Pin: Lean `leanprover/lean4:v4.33.0`; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

Three candidates were compared:

| Candidate | Immediate consumer and missing theorem | Strength, witness, tractability and failure |
|---|---|---|
| **Selected: terminal-center zero column and ambient lower-frame no-go** | The actual four-family real matrix, plus a typed full-ambient positive lower-frame predicate; one actual positive-shift source factor supplies a nonzero kernel witness | Exact integer divisor arithmetic and \(\log1=0\); low formal distance; settles false ambient coercivity without conjectural assumptions |
| Thin versus historical Fourier head compatibility | Historical `greenArithmeticFourierHead` and `originalThinGreenFourierHead` from different import stacks | Genuine separate declaration owners including duplicate names; not safely resolved without source/namespace/clean-import audit; remains the next integration gate |
| Restricted arithmetic lower frame / bounded reconstruction | `HasRestrictedLowerFrameBound T D A` (#966) | Needs actual admissible difference set, injective source restrictions and quantitative residual bound; ambient no-go does not rule it out but cannot supply it |

No interpolation, quintic, Hodge, spectral or K-theoretic object is introduced. No external Chowla result or Weil positivity theorem is imported.

## 2. Exact theorem and geometric support

The inherited finite Green window is \(Y_X=\{n\in\mathbb N:X<n\le 2X\}\). The matrix has four family labels \(F\in\{0,1\}^2\) and center coordinates \(c=0,\ldots,2X\). Its real coefficient is

\[
M_X(n;F,c)
=\sum_{\substack{a b=n,\ 1\le a\le 2X,\ h(a)>0\\
                  F=F(a),\,c=c(a)}}\varepsilon(a)\log b.
\]

There are **two separate exact support mechanisms**:

1. If \(a>X\), \(ab=n\in Y_X\), and \(a,b\) are positive, then \(b=1\): any \(b\ge2\) would imply \(n\ge2a>2X\). Thus \(\log b=0\) on this upper-half divisor range.
2. For a source-supported anchor \(a\le2X\), if \(c(a)=X+1\), an **odd** anchor would need \(a=2X+3>2X\) and is excluded. An **even** anchor must be \(a=2X\). Hence every admissible summand of the column with \(c=X+1\) has \(\log b=0\).

Therefore the new module authors the exact zero-column conclusion for **all** scales \(X\), all \(n\in Y_X\), all four family labels:

\[
\boxed{M_X(n;F,X+1)=0.}
\]

For \(X\ge2\), the even terminal anchor \(a=2X\) has \(r=0\), center \(X+1\) and **strictly positive** shift \(h=X-1\). The existing theorem `canonicalFourFamily_selected_shift_mem` confirms that this anchor's shift belongs to its actual selected canonical family. The zero column is therefore not merely a label that never occurs in the finite arithmetic support.

Define the signed ambient unit vector \(\delta_X(F,c)=1\) at the unique \((F(2X),X+1)\) cell, \(0\) elsewhere. The new declarations state that \(\delta_X\ne0\) and

\[
\boxed{
(M_X\delta_X)(n)=0\quad\forall n\in Y_X.
}
\]

This is a direct **source-specific finite kernel**, not a generic dimension-counting analogy.

## 3. Positive lower-frame obstruction with exact quantifiers

The new typed ambient source and output energies are nonnegative real sums of real squares:

\[
E_X^{\rm source}(v)=\sum_{F\in\{0,1\}^2}
                   \sum_{c=0}^{2X} v(F,c)^2,\qquad
E_X^{\rm target}(v)=\sum_{n=X+1}^{2X}(M_Xv)(n)^2.
\]

Their **positivity classification** is precise: \(E_X^{\rm source}(\delta_X)>0\) for \(X\ge1\), while \(E_X^{\rm target}(\delta_X)=0\). These are positive-definite ambient source norm squares and positive-semidefinite output squares; no pointwise positivity of Möbius coefficients, positive Weil form, measure, trace or spectral kernel is claimed.

The theorem `not_hasCanonicalFourFamilyAmbientLowerFrame` refutes the explicit proposition

\[
\boxed{
\neg\exists A>0\ \forall v\colon
 A\,E_X^{\rm source}(v)\le E_X^{\rm target}(v),
\qquad X\ge2.
}
\]

The actual Lean theorem quantifies over each \(A\) and refutes `HasCanonicalFourFamilyAmbientLowerFrame X A`, whose definition includes the strict condition \(0<A\). It also authors `canonicalFourFamilyWindowReadout_not_injective` from \(\delta_X\ne0\) and the exact zero readout.

**Crucial domain boundary:** \(\delta_X\) is an **arbitrary real finite ambient coordinate vector**, not proved to be a difference of two authentic arithmetic centered-data configurations. Therefore the theorem does **not** refute the restricted positive lower-frame interface `HasRestrictedLowerFrameBound T D A` for a carefully chosen admissible \(D\), nor does it say the actual arithmetic datum has zero target. The earlier signed other-shift correction and zero-shift \(B(n)\) remain essential in reconstructing \(\Lambda(n)\). Nothing about the zero column bounds those corrections.

## 4. Exact finite diagnostic and failure cases

A separate exact-integer support calculation inspected all \(2\le X\le256\) and each \(X<n\le2X\), enumerating all divisor factors. The observed terminal-center divisor occurrences were 255 (one for each scale, at \(n=a=2X\)); all had \(b=1\) and zero logarithmic weight. There were **zero structural counterexamples**. This finite computation is a diagnostic, not a proof of the general theorem and not Lean/kernel acceptance.

Hostile cases retained in the mathematical source/manifest:

- \(X=1\) has no positive-shift terminal anchor; the analytic statement about an actual selected *positive* family therefore assumes \(X\ge2\).
- \(a>X\) forces \(b=1\) only when the **target is in the authentic Green window**. Enlarging the target support could invalidate the argument.
- For \(a=2X\), the source coefficient \(\mu(2)\mu(2X)\) need not be nonzero. The **ambient delta** is deliberately independent of that arithmetic coefficient and no actual arithmetic data are silently substituted.
- The lower-frame no-go is for the full ambient source, not the restricted arithmetic difference set.
- Real output energy nonnegativity does not imply coercivity, strict positivity, signed Weil positivity or a uniform Fourier estimate.
- The existing thin and historical Fourier stacks both declare the names `fourierModePrimitive`, `fourierModeValue` and `greenFourierBackgroundCoordinate` in the same namespace, as checked in their pinned source bodies. They are **not jointly imported** here, nor is an exact historical/thin finite-head identity asserted.

## 5. Source provenance, trust states and one next obligation

Dependency DAG: pinned finite divisor-antidiagonal and real log identities → literal anchored pair parity/center → existing four-family real coefficient matrix → **new upper-half logarithm zero** → **new terminal-center zero column** → **new nonzero ambient kernel vector** → **new failure of all-ambient lower frame**. The required restricted source/difference/energy comparisons remain missing.

- **SOURCE_DRAFT:** produced and integrated as an auditable Lean source; a source-level proof script is not kernel acceptance.
- **ELABORATED / KERNEL_CHECKED / TRUST_AUDITED / EXTERNALLY_REPLAYED:** not established for the new file.
- **LITERATURE_REVIEWED:** no new source literature theorem invoked; exact repo/Mathlib imports and source identities recorded.
- **ANALYTIC_PREMISES_DISCHARGED:** false; no bound for `AllDyadicArithmeticFourierCoordinateBound` was proved.
- The new source includes `#print axioms` requests, but these are passive until a pinned compiler and independent kernel checker execute them. The module is not newly imported into `GRWTSK.lean`.

**One next obstruction:** reconcile the duplicated source declarations between the thin and historical Fourier stacks in a clean, pinned joint import, then prove or refute the exact equality of their full finite Fourier heads while retaining `mass0^2` and `mass1^2`. Even if that is done, an RH-scale uniform energy bound and a restricted arithmetic lower frame remain open.

Routine non-force main integration preserves concurrent changes and all old mathematical source declarations. No PR/draft-only completion, no force push and no RH claim.
