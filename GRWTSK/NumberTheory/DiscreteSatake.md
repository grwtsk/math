# Discrete rank-one convolution and Satake transport

Local source attribution: grwtsk contributors.

## Mathematical consumer and scope

[`DiscreteSatake.lean`](DiscreteSatake.lean) provides the finite algebraic part of the proposed
unramified `GL(1)` adapter. It supports verified paired examples consisting of finite coefficient
sequences, Laurent polynomials, and character evaluations. The source proves the equations connecting
these presentations. It does not construct a local-field Hecke algebra or assert a Langlands
correspondence.

The coefficient semiring `R` is commutative. The complex case is obtained by taking `R = ℂ`.
The character parameter is a unit `z : Rˣ`, which supplies the inverse required by negative
integer powers. No unit-circle hypothesis is needed for these finite algebraic identities.

## Primary argument

For finitely supported `f,g : ℤ →₀ R`, convolution is defined independently by

\[
f*g=\sum_{m\in\operatorname{supp}f}\sum_{n\in\operatorname{supp}g}
 f(m)g(n)\,\delta_{m+n}.
\]

The coefficient-to-Laurent map is `S(f)=Σₙ f(n)Tⁿ`. Its inverse reads coefficients.
The multiplication rule for Laurent polynomials is the same finite double sum, so the checked
identity `S(f*g)=S(f)S(g)` requires no analytic convergence argument. Injectivity then returns
polynomial identities to identities of the original coefficient sequences.

The main sample reconstruction proves `shift (-k) (shift k f) = f` through the image
`T⁻ᵏ(TᵏS(f)) = S(f)`. Its proof uses the independently established multiplicativity and
injectivity lemmas, Laurent exponent addition, and the multiplicative identity. It does not
invoke the target theorem or a prior alias of its proof.

Evaluating the Laurent polynomial at a unit gives

\[
E_z(f)=\sum_n f(n)z^n,\qquad
E_z(f*g)=E_z(f)E_z(g),\qquad E_z(\operatorname{shift}_k f)=z^kE_z(f).
\]

The coefficient identity `shift k f n = f (n-k)` fixes the direction of the translation.
These are exact algebraic identities; they impose no numerical approximation or learned loss.

The additional quotient construction starts with a group homomorphism
`v : G →* Multiplicative ℤ` and an element `π` satisfying `v π = ofAdd 1`.
For each integer `n`, the element `π^n` maps to `n`. Thus `v` is surjective and the first
isomorphism theorem gives `G / ker(v) ≃ Multiplicative ℤ`. This result explicitly retains
the normalization hypothesis. It does not identify the kernel with a local field's unit group.
The character `g ↦ z^(v g)` is proved multiplicative and trivial on `ker(v)`. Its value at
`π^n` agrees with `E_z(δₙ)`, giving the character compatibility at the group-algebra level.

## Declaration correspondence

All names below have prefix `GRWTSK.NumberTheory.DiscreteSatake`.

| Declarations | Checked mathematical content |
| --- | --- |
| `Coefficients`, `convolution`, `delta` | Finite coefficient functions, their explicit convolution, and the single-class basis. |
| `satake`, `coefficients`, `coefficients_satake`, `satake_coefficients`, `satake_injective` | Mutually inverse coefficient and Laurent presentations. |
| `satake_convolution`, `satake_delta` | Multiplication compatibility and the image of a basis function. |
| `convolution_delta_delta` | `δₘ*δₙ=δₘ₊ₙ`. |
| `convolution_assoc_via_satake`, `convolution_comm_via_satake` | Associativity and commutativity transported from Laurent multiplication. |
| `convolution_delta_zero` | The convolution unit. |
| `shift`, `satake_shift`, `shift_apply`, `shift_add`, `shift_zero` | Translation, its coefficient direction, its Laurent image, and its composition law. |
| `shift_inverse_via_satake` | The original coefficient statement reconstructed through the Laurent presentation. |
| `characterEvaluation`, `characterEvaluation_eq_sum` | Evaluation at a unit is the finite sum of character-weighted coefficients. |
| `characterEvaluation_convolution`, `characterEvaluation_delta`, `characterEvaluation_shift` | Multiplicative evaluation and translation equivariance. |
| `valuationCharacter`, `valuationCharacter_kernel`, `valuationCharacter_uniformizer` | The valuation character is multiplicative, trivial on the kernel, and takes the chosen parameter at the uniformizer. |
| `characterEvaluation_delta_eq_valuationCharacter` | Evaluation of `δₙ` agrees with the valuation character of `π^n`. |
| `normalizedValuation_surjective`, `valuationQuotient` | The explicitly normalized group valuation is onto; its kernel quotient is the integer lattice. |

## Source identities and comparison

This is a locally authored algebraic development, not a claimed formalization of an entire
published Satake theorem. The standard identities are not claimed as new mathematical results.
The source uses the repository's pinned Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`:

- [Laurent polynomials](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/Polynomial/Laurent.lean),
  authored by Damiano Testa: `LaurentPolynomial.T_add`, `eval₂`, `eval₂_T`, and `eval₂_C_mul_T`.
- [Monoid-algebra definitions](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/MonoidAlgebra/Defs.lean):
  `AddMonoidAlgebra.ofCoeff`, `mul_def`, `coeff_single_mul_apply`, and `sum_coeff_single`.
- [Quotient groups](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/GroupTheory/QuotientGroup/Basic.lean):
  `QuotientGroup.quotientKerEquivOfSurjective`.

The independent coefficient formula supplies a direct check on the transported inverse-shift
identity: substitution gives `f ((n+k)-k)=f n`. This analytic comparison is elementary and
shares the same integer arithmetic and finite coefficient model. It is not evidence for an
independent proof of a local-field or automorphic theorem.

## Remaining mathematical bridges

To obtain the proposed local-field `GL(1)` adapter, supply a specified nonarchimedean local field,
its normalized valuation, and a proof identifying the valuation kernel on `Fˣ` with
`𝒪_Fˣ`. Next construct the compactly supported, bi-`𝒪_Fˣ`-invariant functions, normalize
multiplicative Haar measure by `vol(𝒪_Fˣ)=1`, and prove that their integral convolution has the
finite coefficient formula used here. Character evaluation then needs its separately proved
identification with the chosen convention for a local-field unramified character; the
corresponding abstract valuation-character equation is already proved here.

No theorem here addresses analytic continuation, functional equations, infinite spectral sums,
zero locations, RH, or GRH. Those conclusions do not follow from this finite algebraic adapter.

## Verification

The source with SHA-256
`c7c28f60ad5bb1b82d851bd98e18fbf7241a3c8ca9bc5eddc15c3e24ad265e54`
was compiled in a fresh Lean process on 2026-11-20 under the unchanged Lean `4.34.1` toolchain
and Mathlib revision above. The check completed without warnings or errors.

Transitive `#print axioms` inspection covered all 31 named declarations, including the 22 theorems.
The resulting axiom sets are subsets of `{propext, Classical.choice, Quot.sound}`; no `sorryAx`
or additional mathematical axiom occurs. The source introduces no axiom declarations or proof
placeholders. Compilation and this axiom audit establish the stated formal algebraic results,
not the absent local-field/Haar bridge.

Standalone checker implemented independently of Lean: `NOT_RUN`. A separate
AI-assisted mathematical review checked the convolution direction, unit-valued
evaluation, normalized valuation quotient, and noncircular transport, finding
no blocking issue. It confirmed the discrete/local-field boundary stated above.
Whole-repository build and remote CI: `NOT_RUN`. These statuses do not imply failures or successes
of unrelated source files.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
