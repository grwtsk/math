# From the canonical p-adic norm to a finite valuation budget

Local attribution: grwtsk contributors.

Maintained source: [PadicNormValuationBudget.lean](PadicNormValuationBudget.lean).
Namespace: `GRWTSK.NumberTheory.PadicNormValuationBudget`.

## The reconstructed statement

Let `p` be a prime. The carrier is Mathlib's actual `PadicAlgCl p`,
the algebraic closure of the p-adic field with its canonical norm. Define

\[
v_p(x)=-\log_p\|x\|_p.
\]

This is precisely the real-valued definition `UpperTheory.V.U3.vl` in
the [pinned submitted source][definition]. In Lean the real logarithm
is totalized, so `v_p(0)=0`. It is not an extended-real valuation with
value infinity at zero.

For a finite type `I`, finite selected sets `X i`, an arbitrary family
`f : I → J → PadicAlgCl p`, and an integer `N`, the core theorem proves

\[
\boxed{N\ne0\quad\land\quad
\|N\|_p\le\prod_{i\in I}\prod_{j\in X_i}\|f_{i,j}\|_p
\quad\Longrightarrow\quad
\sum_{i\in I}\sum_{j\in X_i}v_p(f_{i,j})\le v_p(N).}
\]

The right side is identified with the real cast of Mathlib's
`padicValInt p N`. Neither integrality nor the individual bounds
`‖f i j‖≤1` are assumptions of this logarithmic step. The selected
factors can have negative valuations. The finite outer type and the
selected sets can be empty.

The submitted private `vl_bound` additionally assumes that every
selected factor is nonzero. The local theorem
`sum_logValuation_le_padicValInt` retains that exact interface. The
stronger core derives the nonvanishing from `N≠0` and the norm
inequality, so it does not need the separate factor assumption.

## Proof walkthrough

### 1. Normalize the norm on embedded integers

For a nonzero integer `N`, the canonical norm satisfies

\[
\|N\|_p=p^{-\operatorname{padicValInt}(p,N)}.
\]

The local proof first restricts the algebraic-closure norm to the
embedded p-adic field using `PadicAlgCl.norm_extends`. It then applies
`Padic.norm_eq_zpow_neg_valuation`, identifies the p-adic valuation of
the integer with `Padic.valuation_intCast`, and converts the integer
power to the real-power expression above. The integer embedding is
injective, so `N≠0` supplies the nonzero argument required by the norm
formula.

Since `p` is prime, `p>1`. Applying the base-p logarithm to this exact
norm expression and negating gives

\[
v_p(N)=-\log_p(p^{-\operatorname{padicValInt}(p,N)})
=\operatorname{padicValInt}(p,N).
\]

The normalization theorem also holds at `N=0`: both the logarithmic
valuation and `padicValInt p 0` are zero. The displayed norm formula
does not hold there, because its right side would be one. The proof
therefore handles `N=0` separately when establishing valuation
normalization.

### 2. Recover nonzero selected factors

The nonzero integer has strictly positive p-adic norm. The assumed
comparison gives

\[
0<\|N\|_p\le\prod_i\prod_{j\in X_i}\|f_{i,j}\|_p.
\]

Thus the product is nonzero. A finite product is nonzero only if all
its factors are nonzero, and a norm is nonzero exactly when its
argument is nonzero. Applying this fact to the outer and inner
products gives `f i j≠0` for every selected pair.

This is why removing only the submitted factor hypothesis does not
produce a counterexample: the other hypotheses already imply it.

### 3. Turn the complete selected product into the exact sum

For nonzero elements `x` and `y`, norm multiplicativity and the
logarithm product law give

\[
v_p(xy)
=-\log_p(\|x\|_p\|y\|_p)
=v_p(x)+v_p(y).
\]

The local finite-product theorem applies the logarithm product law
to every norm in a finite set. Applying it again to the outer product
gives the exact identity

\[
v_p\!\left(\prod_i\prod_{j\in X_i}f_{i,j}\right)
=\sum_i\sum_{j\in X_i}v_p(f_{i,j}).
\]

Every selected occurrence is retained, including occurrences of the
same element at different indices. No injectivity or class-identifying
map is required for this identity. Empty products are one and empty
sums are zero, in agreement with `v_p(1)=0`.

The module also records `v_p(x⁻¹)=-v_p(x)`. Unlike the multiplication
law, that inversion identity holds at zero because both sides are
zero. Norms at most one yield nonnegative values, but this fact is not
needed in the main budget proof.

### 4. Reverse norm order by negating the logarithm

Let `F` be the complete selected product. Norm multiplicativity
rewrites the assumed comparison as `‖N‖≤‖F‖`. The logarithm base `p>1`
is increasing on positive inputs, so

\[
\log_p\|N\|_p\le\log_p\|F\|_p.
\]

Negating reverses the inequality. Combining the previous identities
therefore gives

\[
\sum_i\sum_{j\in X_i}v_p(f_{i,j})
=v_p(F)
\le v_p(N)
=\operatorname{padicValInt}(p,N).
\]

The submitted proof takes logarithms of the product comparison
directly. The local proof factors that same analytic argument into
normalization, finite-product, and order lemmas. This is an original
implementation of the same mathematical argument, not an independent
analytic route to the surrounding arithmetic conclusions.

### 5. Apply a supplied observation estimate

Suppose additionally that `c≥0` and real observations `a i` satisfy

\[
a_i\le c\sum_{j\in X_i}v_p(f_{i,j})
\quad\text{for every }i.
\]

Summing those inequalities and factoring out the common scalar gives

\[
\sum_i a_i
\le c\sum_i\sum_{j\in X_i}v_p(f_{i,j})
\le c\,\operatorname{padicValInt}(p,N).
\]

The last multiplication uses `c≥0`. The theorem makes no sign
assumption on the observations. In the submitted `PropGK` application
the scalar is two, while the observation-to-valuation estimate is
supplied by `OneCharU_s`. The local consumer retains this substantive
pointwise estimate as an explicit hypothesis; it does not prove the
deformation or arithmetic-length comparison that supplies it.

## Exact target and useful interfaces

The imported audit independently states the submitted target with
the logarithmic definition expanded, rather than hiding its
conclusion behind a local predicate:

```lean
example {p : ℕ} [Fact p.Prime] {I J : Type*} [Fintype I]
    (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (N : ℤ) (hN : N ≠ 0)
    (hf : ∀ i, ∀ j ∈ X i, f i j ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ∏ j ∈ X i, ‖f i j‖) :
    ∑ i, ∑ j ∈ X i, -Real.logb (p : ℝ) ‖f i j‖ ≤
      (padicValInt p N : ℝ) := by
  exact sum_logValuation_le_padicValInt p X f N hN hf h
```

Names in this example are opened from
`GRWTSK.NumberTheory.PadicNormValuationBudget`. The local declaration
allows universe-polymorphic index types; specializing them to `Type`
recovers the original submitted index universes.

The stronger core,
`sum_logValuation_le_padicValInt_of_norm_prod_le`, has the same statement
with the `hf` parameter removed. Its supporting theorem
`selected_ne_zero_of_int_norm_le_prod` separately returns the derived
nonvanishing. The imported audit checks these two conclusions together
without supplying `hf`.

For a single finite type the flat endpoint is

```lean
logValuation_product_le_padicValInt
    (p : ℕ) [Fact p.Prime] {I : Type*} [Fintype I]
    (f : I → PadicAlgCl p) (N : ℤ) (hN : N ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ‖f i‖) :
    ∑ i, logValuation p (f i) ≤ (padicValInt p N : ℝ)
```

This endpoint also accommodates dependent selected families by using
the finite sigma type `Σ i, ↥(X i)`. It is proved by specializing the
nested theorem to a singleton outer family; it does not introduce a
new mathematical assumption.

## Declaration inventory

The definition is
`GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation`.
The following are all 15 maintained public theorems.

| Fully qualified declaration | Role |
|---|---|
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_zero` | Records totalization at zero. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_one` | Normalizes the empty-product value. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.norm_intCast_eq_rpow` | Canonical norm of a nonzero integer. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_intCast` | Integer valuation normalization, including zero. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_mul` | Additivity for two nonzero factors. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_inv` | Sign change under inversion, including zero. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_finset_prod` | Exact sum for a finite product of nonzero factors. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_nested_prod` | Exact nested product/sum identity. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_le_of_norm_le` | Reverses norm order when the lower-norm element is nonzero. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_nonneg_of_norm_le_one` | Nonnegativity on the unit ball. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.selected_ne_zero_of_int_norm_le_prod` | Derives nonzero selected factors from the integer norm comparison. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.sum_logValuation_le_padicValInt_of_norm_prod_le` | Stronger nested budget without a separate factor hypothesis. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.logValuation_product_le_padicValInt` | Flat finite-type budget, suitable for dependent sigma carriers. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.sum_logValuation_le_padicValInt` | Exact retained-hypothesis counterpart of submitted `vl_bound`. |
| `GRWTSK.NumberTheory.PadicNormValuationBudget.sum_observation_le_mul_padicValInt` | Finite observation budget under an explicit pointwise supplier. |

## Boundary and hostile checks

The successful imported audit proves all four controls below
concretely at the prime two. In particular it derives `v₂(2)=1` from
integer normalization and obtains `‖2‖₂=1/2` from the canonical norm
formula.

| Invalid modification | Concrete data | Failure |
|---|---|---|
| Drop the nonzero integer premise. | `N=0`, one factor `2`. | The norm premise `0≤1/2` holds, while the proposed conclusion is `1≤0`. |
| Reverse the norm comparison. | `N=1`, one factor `2`. | The reversed premise `1/2≤1` holds, while the proposed conclusion is again `1≤0`. |
| Extend multiplication additivity to arbitrary zero factors. | Factors `0` and `2`. | `v₂(0·2)=0`, but `v₂(0)+v₂(2)=1`. |
| Permit a negative observation multiplier. | `N=2`, empty selection, zero observation, `c=−1`. | The norm and pointwise premises hold, while the final bound would be `0≤−1`. |

The last control checks the resulting scalar inequalities explicitly;
the selected empty product is one and its valuation sum is zero.
These controls are proof obligations whose successful compilation
establishes the stated counterexamples. They are not failures of the
maintained theorem. Conversely, removing only `hf` is a valid
strengthening and is covered by the core theorem.

## Source correspondence and attribution

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | Correspondence | SHA-256 of inspected file |
|---|---|---|
| [UnitaryThreeGroups/Rigid0.lean][definition] | `UpperTheory.V.U3.vl`, line 10, is exactly the local logarithmic expression. | `06a9c0de32019909817e49078ad96b3741e795d2760fc19d2b998509848b43d1` |
| [DenseThresholdCases/FPropGKU.lean][external] | Private `vl_bound`, lines 54–68, has the retained target proved locally; its later consumer supplies the pointwise factor-two observation estimate. | `c3f14dafdc1a3657be28733e7924a8d72f6e72cb7a0e1dcd766860597b56b76a` |

The local implementation was authored originally, is MIT licensed,
and is attributed to `grwtsk contributors`. It imports only Mathlib
modules, not the submitted implementation or its build dependencies.
Mathlib retains its upstream authorship and licensing. The comparison
repository is identified as the submitted mathematical source; a
verification mirror is not credited as its author.

The surrounding route still needs the actual norm-product supplier
and the arithmetic/deformation observation supplier. The former is
the subject of the adjacent finite selected-product construction;
the latter remains a substantive separate argument. This module
alone proves no automorphic classification, deformation-length
comparison, counting-window result, RH, or Dirichlet-GRH endpoint.

## Exact-source verification

Source base: `grwtsk/math@d398a7cbc4e86691a1fdf5cf2cacf958e6568786`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Final maintained source SHA-256:
`33a0df9191859b31d3f3b3bafa5569efd697786c6cab6901bdf22e45f6664b71`.

Final compiled object SHA-256:
`7d089ef7fd10512885ab50e0b7b08b8ddb7cb9dbc10de505aec939277081b5b4`.

The final maintained compilation passed with `--trust=0` and
`-DwarningAsError=true`, exit `0`, no diagnostics, in 62.165 seconds.
The source digest was recorded before execution and checked unchanged
after it. The resulting object was used by the imported audit.

The final imported audit passed with the same flags, exit `0`, in
66.087 seconds. It independently spelled the original raw-log target,
checked the stronger conclusion together with derived nonvanishing,
checked the raw-log observation consumer, and proved the four hostile
controls. All 15 transitive axiom reports contained exactly
`propext`, `Classical.choice`, and `Quot.sound`. There was no
`sorryAx` or custom axiom. A source scan found no `sorry`, `admit`,
`axiom`, or `unsafe` declaration.

Final imported-audit SHA-256:
`32d1ccaa5f48dc6de3e90438d0cda3910f5c1638d4adad07bcf3fae541ad3765`.

A separate agent read the source and its mathematical interfaces,
including the final flat endpoint. That review found no defect in
the canonical norm, zero convention, derived nonvanishing, retained
target, or nonnegative scalar requirement. Mathematical review and
the compiled proof/axiom checks are separate evidence.

### Development and audit attempts

The complete attempt history is retained; failed attempts were not
classified as unrun.

| Attempt | Flags and result | Time | Source SHA-256 |
|---|---|---|---|
| Initial source development compile. | Warnings as errors; exit `1`. An attempted reference to `Finset.sum_neg_distrib.symm` was not a declaration. Replaced by simplification using the actual theorem. | 27.352 s | `06abab3a8d67af14b2022b555cda1f633cdde602073f12cacb6dfc25a45413d5` |
| Maintained 14-theorem version, including observation consumer. | Trust zero and warnings as errors; exit `0`, no diagnostics. | 75.096 s | `2c36b0d3a089fe6acc84325cc0740143716d6c74b832f4a69b3ebeeeb3e85c71` |
| Final 15-theorem source, adding the flat endpoint. | Trust zero and warnings as errors; exit `0`, no diagnostics. | 62.165 s | `33a0df9191859b31d3f3b3bafa5569efd697786c6cab6901bdf22e45f6664b71` |
| First imported audit. | Trust zero and warnings as errors; exit `1`. All 15 axiom reports and exact target obligations succeeded; scratch numeric controls needed explicit normalization of `padicValInt 2 2`, and one unnecessary `simpa` triggered the linter. | 10.185 s | `31c9ded56d3f97ad4ee9ec50ca889963578947d334bdb50fd697f4ccfecc0da8` |
| Corrected imported audit. | Trust zero and warnings as errors; exit `0`. All targets, axiom queries, and controls passed. Maintained source unchanged. | 66.087 s | `32d1ccaa5f48dc6de3e90438d0cda3910f5c1638d4adad07bcf3fae541ad3765` |

No attempt timed out. Operational logs, audit sources, environment
records, and machine-readable attempt records remain in scratch
rather than in the maintained proof tree.

Fresh full-dependency replay, an independently implemented kernel
check, and compilation of the submitted automorphic consumer with
this local declaration substituted are `NOT_RUN`. The checks above
used the pinned available Mathlib build. They do not certify the
external dependency closure or the entire submitted proof.

With the pinned dependencies available, the maintained module can
be checked with:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[definition]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/Rigid0.lean
[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FPropGKU.lean
