# Genus-one elementary factor: quadratic norm bound

Local attribution: grwtsk contributors.

Source: [FiniteCanonicalProductBounds.lean](../FiniteCanonicalProductBounds.lean).
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct.norm_elementaryFactor_le`.
Source SHA-256: `4aaa7e2820784f7629f5e7cf2f106825fd7de0decdfe5952a6f381c5558dc5d8`.
Source Git blob: `ecb5736d84716ac395f9c9bba65a13e41c16420a`.
Inspected math base: `6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Issue: https://github.com/grwtsk/math/issues/1805 .

## Exact statement and analytical argument

For every complex number `u`, define `E1(u)=(1-u) exp(u)`. Then

`norm(E1(u)) <= exp(norm(u)^2/2)`.

Put `t=-2 Re(u)+norm(u)^2`. The identity `norm(1-u)^2=1+t` and `1+t<=exp(t)` imply

`norm(E1(u))^2 <= exp(t) exp(2 Re(u)) = exp(norm(u)^2)`.

The right-hand side is the square of the positive real number `exp(norm(u)^2/2)`. Nonnegativity of norms gives the stated inequality. The argument is valid at `u=1`, where the elementary factor vanishes, and does not divide by `1-u` or choose a branch of a complex logarithm.

## Prior-art comparison and dependencies

This is a standard canonical-product estimate, locally proved from `Real.add_one_le_exp`, `Complex.sq_norm`, `Complex.normSq_apply`, norm multiplicativity and the exponential addition rule. It is not presented as a new theorem of the motivating RP-OC-08 manuscript. The source program is section 20.4 of the November 10, 2026 edition, as identified in [anchor provenance](../FiniteRealSpectrumAnchor.provenance/anchorMass_eq_neg_im_logDeriv_div.md).

The norm interfaces were read directly at the pinned mathlib source https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Norm.lean , blob `0e2b6317a777c4d168a9098fb17ad33323efd4c3`. Upstream mathlib retains its authorship and Apache-2.0 license; new source is a local consequence, not an imported proof adaptation.

The consumer is `norm_finiteProduct_le`, which multiplies this inequality without losing spectral multiplicity. This bound alone does not establish a convergent infinite product, a determinant identity, a normal-family subsequence, source identification or GRH. No independently reviewed alternative argument is asserted.

Source proof candidate; novelty `UNASSESSED` with no novelty claim. Elaboration, fresh kernel replay, transitive axiom audit and independent review: `NOT_RUN`. Reproduction commands and the canonical automation access limitation are recorded in the linked anchor provenance and issue #1805.
