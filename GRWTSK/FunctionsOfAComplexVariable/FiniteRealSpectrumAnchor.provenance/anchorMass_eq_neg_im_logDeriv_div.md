# Finite real spectral anchor: exact mass extraction

Local attribution: grwtsk contributors. Source authoring assistance: OpenAI ChatGPT.

## Source identity

- Canonical file: [FiniteRealSpectrumAnchor.lean](../FiniteRealSpectrumAnchor.lean).
- Main declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.anchorMass_eq_neg_im_logDeriv_div`.
- General complex-slope identity: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.im_logDeriv_normalizedExpProduct_anchor`.
- Quantitative consumer: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.anchorMass_le_of_logDeriv_bound`.
- Coordination and source-bound verification: https://github.com/grwtsk/math/issues/1805.
- Research owner: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/53, layer 06. Layer 07 remains a conditional consumer.
- Inspected math base: `6cab1fb0725c00a9d06b112ffc215e3523396c50`.
- Lean: `leanprover/lean4:v4.34.1`; mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source SHA-256: `f827eeafeace715b0cbaf3195f3a974ba18c72f1e0c9b17b69b9ad71b073b5db`.
- Source Git blob: `0080b2e7299bccd27fe5894770ba631535c10861`.

The motivating manuscript is grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.4 / RP-OC-08, printed pages 44-45. Uploaded filename: `Typed_Mathematical_Architecture_and_Off_Critical_Research.pdf`; SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. This declaration formalizes a local derivation developed while pursuing that program, not a theorem attributed to the manuscript. No manuscript or third-party PDF is copied into this repository.

## Exact mathematical content and argument

Let `λ : ι → ℝ` for an arbitrary finite index type, let real `β ≠ 0`, and put `a = β I`. Define

`P(z) = product_j (z - λ_j)` and `G_c(z) = exp(c (z-a)) P(z)/P(a)`.

The nonreal anchor cannot equal any real root, so `P(a) ≠ 0` and `G_c(a)=1`. At every nonreal `z`, finite-product differentiation gives `logDeriv G_c z = c + sum_j (z-λ_j)^(-1)`. The imaginary part of each reciprocal at `a` is `-β/(λ_j^2+β^2)`. Summation therefore gives

`Im(logDeriv G_c a) = Im(c) - β sum_j 1/(λ_j^2+β^2)`.

For real slope `c=r`, division by the nonzero real number `β` gives the main equality. For positive `β`, `-Im(w) ≤ |Im(w)| ≤ norm(w)` gives `anchorMass ≤ M/β` whenever `norm(logDeriv G_r a) ≤ M`.

All occurrences in the finite index type are retained. There is no injectivity assumption and no conversion to a set of distinct eigenvalues. Zeros at the real origin are permitted. The module also gives nonvanishing off the real axis, the real-zero implication, and differentiability of the actual finite product.

## Upstream comparison and proof dependencies

The finite product and logarithmic-derivative rules are standard, not a novelty claim. Reused interfaces were inspected at the exact mathlib pin:

- `Mathlib/Analysis/Calculus/LogDeriv.lean`: `logDeriv_fun_prod`, `logDeriv_fun_mul`, `logDeriv_mul_const`, `logDeriv_apply`. File blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`; primary file authorship is Chris Birkbeck / mathlib contributors, Apache-2.0.
- `Mathlib/Basic/Complex/Basic.lean`: `Complex.inv_im`, `Complex.normSq_apply`; blob `02ad0aa87f370d1fd2bbb34072fc95cefcb27d87`.
- `Mathlib/Analysis/Complex/Norm.lean`: `Complex.abs_im_le_norm`; blob `0e2b6317a777c4d168a9098fb17ad33323efd4c3`.

Direct source prefix: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/ . Upstream source is imported, not copied or relabeled as a new result. The new proof terms are local consequences of those APIs.

An alternative algebraic check is to multiply numerator and denominator of `1/(iβ-λ)` by `-iβ-λ`; it yields the same imaginary part. This is not an independently reviewed proof.

## Hostile cases and source return

`anchorMass_two_zero_roots` retains two occurrences of the root zero. `nonreal_slope_obstruction` uses an empty root family and slope `I`; spectral mass is zero but the imaginary logarithmic derivative is nonzero. This blocks omission of the complex exponential slope.

The mathematical consumer is the square-sum hypothesis of the finite canonical-product bound. Identifying this sum with a matrix Hilbert-Schmidt norm or an arithmetic operator spectrum remains a separate theorem. No Euler product, full pole-inclusive Weil form, gamma factor, character, or arithmetic approximation scheme is defined here, and none is replaced by this auxiliary positive sum.

## Evidence and reproduction boundary

Source proof candidate; novelty `UNASSESSED`. The standard identities above carry no novelty claim. Independent analytic review: `NOT_RUN`. Lean elaboration: `NOT_RUN`. Fresh kernel replay: `NOT_RUN`. Transitive axiom audit: `NOT_RUN`. Numerical/arithmetic certification: `NOT_RUN`.

Canonical automation main `0126ba445446dea25047a89884df1adf6b10251a` was queried. `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` and its parent skills directory returned 404. No verified local skill link, Lean executable, or Lake executable was available. Dependent proof automation was not executed; static source authoring was separately requested. This source record is not an execution receipt.

After restoring the authorized canonical verification path, the exact source targets to elaborate are:

```sh
lake build GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrumAnchor \
  GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProductBounds \
  GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivativeRigidity
```

These commands have not been run. Preserve the pinned toolchain/dependencies. Record source-bound elaboration, fresh replay and axiom results separately; successful compilation would not discharge the arithmetic reconstruction premise.
