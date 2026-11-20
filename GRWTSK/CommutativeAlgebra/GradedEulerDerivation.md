# Euler derivations and homogeneous ideals

Local attribution: grwtsk contributors.

Maintained source: [GradedEulerDerivation.lean](GradedEulerDerivation.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedEulerDerivation`.

## Actual objects and statements

Let `O,A` be commutative rings, with an `O`-algebra structure on `A`,
and let `𝒜 : ℤ → Submodule O A` be a genuine integer grading,
represented by `[GradedAlgebra 𝒜]`. The module constructs an actual
Mathlib object

```lean
euler 𝒜 : Derivation O A A
```

whose value on a homogeneous element is

\[
E_A(a_j)=(j:A)a_j\qquad(a_j\in A_j).
\]

Every homogeneous ideal `I` is preserved:

\[
a\in I\quad\Longrightarrow\quad E_A(a)\in I.
\]

For another commutative `O`-algebra `K` and an actual algebra map
`ξ : A →ₐ[O] K`, the module defines the point map

```lean
pointEuler 𝒜 ξ : A →ₗ[O] K
```

as the composite `ξ ∘ E_A`. It proves the actual point-Leibniz rule
and homogeneous value:

\[
\begin{aligned}
E_\xi(ab)&=\xi(a)E_\xi(b)+\xi(b)E_\xi(a),\\
E_\xi(a_j)&=(j:K)\xi(a_j).
\end{aligned}
\]

If `ξ` kills a homogeneous ideal `I`, then `E_ξ` kills `I`. The
arbitrary-map theorem retains the source's stronger formulation:
every `O`-linear map with these homogeneous values kills `I` whenever
`ξ` does. No Leibniz assumption on that arbitrary map is necessary.

The construction and ideal statements need no field, characteristic-zero,
domain, DVR, completeness, finite-type, faithful-coefficient, or
algebraic-closedness assumption. The later tangent argument requires
additional hypotheses, including nonvanishing of the chosen degree
after it is cast into the point field.

## Complete analytical proof

### 1. Define the algebra-valued degree operator

Every element has a unique finite homogeneous expansion

\[
a=\sum_j a_j,\qquad a_j\in A_j.
\]

Define

\[
E_A(a)=\sum_j (j:A)a_j.
\]

Each grade inclusion is `O`-linear, and multiplying its values by
`(j:A)` preserves `O`-linearity. The universal linear map from the
direct sum therefore supplies the degree-weighted map. Composing with
the actual decomposition linear equivalence gives `eulerLinearMap`.
On an element already in `A_j`, the decomposition is the single
component at `j`, so the formula reduces to `(j:A)a_j`.

The use of a direct sum is exact: the proof sums finite supports. It
does not silently treat infinite completed expansions as finite sums.
Euler operators on completed power-series algebras require a suitable
coefficientwise or continuous construction, not the direct-sum instance
used here.

### 2. Prove the product rule

For homogeneous `a_i∈A_i` and `b_j∈A_j`, their product is in `A_{i+j}`.
Additivity of the integer cast and commutativity give

\[
\begin{aligned}
E_A(a_i b_j)
  &=(i+j)a_i b_j\\
  &=a_i(jb_j)+b_j(ia_i)\\
  &=a_i E_A(b_j)+b_j E_A(a_i).
\end{aligned}
\]

Both sides are additive in each variable. Finite homogeneous
decomposition extends this equality first in one argument and then in
the other. This proves `eulerLinearMap_mul` on all of `A`.

Mathlib's `Derivation.mk'` packages that linear map and product rule
as `Derivation O A A`. Its unit condition follows by additive
cancellation from `E_A(1)=E_A(1)+E_A(1)`; no division by two and no
characteristic hypothesis is used.

### 3. Preserve a homogeneous ideal

If `a∈I` and `I` is homogeneous, every component `a_j` belongs to `I`.
Hence `(j:A)a_j∈I`, since an ideal is closed under ring multiplication.
The finite sum of those elements lies in `I`, giving `E_A(a)∈I`.

This argument preserves the actual ideal in `A`. It does not replace
ideal membership by a pointwise or radical membership assertion.

### 4. Compose with the point

Set `E_ξ=ξ∘E_A`. The composite is `O`-linear. Applying the algebra
homomorphism `ξ` to the algebra-valued product rule gives

\[
E_\xi(ab)=\xi(a)E_\xi(b)+\xi(b)E_\xi(a).
\]

An algebra homomorphism preserves integer casts, so for `a_j∈A_j`,

\[
E_\xi(a_j)=\xi((j:A)a_j)=(j:K)\xi(a_j).
\]

If `ξ` is zero on `I`, the established membership `E_A(a)∈I` yields
`E_ξ(a)=0` for every `a∈I`.

### 5. Retain the source's arbitrary-map endpoint

Suppose `E : A →ₗ[O] K` has the same value `(j:K)ξ(a_j)` on each
homogeneous element. Then `E` and `E_ξ` agree on every grade. The
actual decomposition linear equivalence implies that they agree on
all of `A`; equivalently, expand each element as its finite homogeneous
sum and use linearity. Thus `E=E_ξ`, and the preceding ideal-vanishing
result applies to `E` as well. The formal proof uses
`DirectSum.decompose_lhom_ext` to express this uniqueness.

## Exact source comparison and consumer

The comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The following files were matched byte for byte with their Git blobs.

| Pinned source | Relevant object or declaration | SHA-256 |
|---|---|---|
| [SliceHolds.lean][slice] | Private `exists_ptDer_eq_degree_smul_of_graded`, private `degree_derivation_vanishes_on_homogeneous_ideal`, and their use in `slice_holds`'s `hder` argument. | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [ResMapBijective.lean][ptder] | `UpperTheory.V.Alg.PtDer` is the submodule of actual `O`-linear maps satisfying the point-Leibniz rule. | `20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e` |
| [OrbitVanishingLocal.lean][m4] | `OnS`, `TwoSigned`, and `M4`; the last supplies linear dependence of the specified ideal-killing point derivations. | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |

The source constructs the point map directly from the graded
decomposition and proves ideal vanishing by summing components. This
implementation first constructs the genuine algebra-valued derivation,
proves ideal preservation there, and then composes with the point.
Its arbitrary-map endpoint is obtained by graded uniqueness. It is
universe-polymorphic and permits a commutative ring-valued point where
the two source statements use a field.

For `Q=K`, membership in the source's actual `PtDer ξ K` is exactly
the displayed raw Leibniz identity, after replacing scalar multiplication
in `K` with multiplication. No custom local predicate stands in for
that source condition. The maintained module imports root Mathlib only;
it does not import or copy a submitted implementation.

The direct local consumer is
`GradedSlicePointDerivation.point_eq_zero_of_normalizing_element` in
[GradedSlicePointDerivation.lean](GradedSlicePointDerivation.lean).
If `f∈A_d` and `ξ(f)=1`, the Euler value is `E_ξ(f)=(d:K)`.
A derivation pulled back from the slice `f=1` kills `f`. Under the
explicit dependence premise, evaluation at `f` forces its Euler
coefficient to vanish when `(d:K)≠0`, then forces the other derivation
to vanish. The source uses `d=-2`; characteristic zero supplies
`(-2:K)≠0` at that later step.

The Euler point map is formed on the original algebra. It is not
asserted to descend through the normalized slice ideal `I+(f−1)`:
indeed, its value on `f−1` is `(d:K)`, which is deliberately nonzero
in the rigidity argument. Only the original homogeneous ideal is
preserved and killed as stated.

The [localization companion](LocalizedPointDerivation.lean) handles the
passage from a zero pullback to a zero derivation on the actual
localization. Finite type, the differential/Nakayama argument,
separation by field-valued points, local reducedness, cyclicity and the
complete length-one conclusion require their own supplied hypotheses
and proofs. This module alone establishes none of those subsequent
conclusions or RH/Dirichlet GRH. The
[arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records the full remaining route.

## Alternative comparison and hostile controls

A distinct analytical organization uses dual numbers. In `A[ε]/(ε²)`,
send each homogeneous `a_j` to

\[
a_j+\varepsilon\,j a_j.
\]

For homogeneous factors, multiplication gives the coefficient
`(i+j)a_i b_j` of `ε`; thus the map is multiplicative. Its `ε`
coefficient is the Euler derivation. This shares the actual grading
and finite homogeneous expansion with the primary proof; it is an
analytical comparison, not a second independently verified kernel
proof or a novelty claim.

Two substantive boundaries are checked using actual Laurent monoid
algebras `AddMonoidAlgebra k ℤ`, with Mathlib's genuine integer grading
`AddMonoidAlgebra.grade k` and the algebra homomorphism sending every
monomial `T^j` to one:

- **Homogeneity of the ideal is essential.** Over `ℚ`, take
  `I=(T−1)` and the evaluation-at-one point. The point kills every
  element of `I`, but `E_ξ(T−1)=1`. The audit proves the point's
  ideal-vanishing, membership of `T−1` in the ideal, its nonzero
  Euler value, and that this actual ideal is not homogeneous.
- **A nonzero integer degree need not have nonzero point-field cast.**
  Over `𝔽₂`, the monomial `T²` has actual degree two, whose integer
  value is nonzero, and point value one. Nevertheless `E_ξ(T²)=0`.
  The construction is valid in this characteristic; the later rigidity
  inference must require `(d:K)≠0`, not merely `d≠0` in `ℤ`.

The same imported audit checks the actual negative-grade monomial
`T^(−2)` over `ℚ`, obtaining Euler value `−2`. These are concrete
graded-algebra controls, not examples conditional on an unevidenced
grading instance. None claims that the remaining `M4` or reduced-slice
hypotheses are satisfied in a counterexample.

## Declaration provenance

All declaration suffixes have the namespace stated at the top.

| Declaration | Role |
|---|---|
| `eulerLinearMap` | Actual degree-weighted map built from the direct-sum decomposition. |
| `eulerLinearMap_apply_of_mem` | Its value on a homogeneous element. |
| `eulerLinearMap_mul` | Product rule on all finite homogeneous sums. |
| `euler` | Actual `Derivation O A A`. |
| `euler_apply_of_mem` | Homogeneous value of that derivation. |
| `euler_mem_of_mem_homogeneousIdeal` | Actual ideal preservation. |
| `pointEuler` | Composition with the chosen algebra map. |
| `pointEuler_apply_of_mem` | Exact point value and degree cast. |
| `pointEuler_leibniz` | Raw point-Leibniz identity. |
| `pointEuler_eq_zero_of_mem` | Canonical point map kills a homogeneous ideal killed by the point. |
| `eq_zero_of_degree_formula_on_homogeneousIdeal` | The source's arbitrary-linear-map ideal-vanishing return. |
| `exists_pointDerivation_eq_degree_mul` | Exact existential point-derivation return with expanded conditions. |

There are nine public theorems and three definitions, with no private
theorem helpers. The implementation is original MIT-licensed source
attributed to `grwtsk contributors`; Mathlib retains its upstream
authorship and licensing. The external repository is a source locator;
the submitted mathematics is not attributed to its verification
maintainers.

## Exact-source verification

Source base: `grwtsk/math@06a747e6244febf917e797a672c5ea8f6e07064a`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The final maintained source and the separate imported audit were both
checked by stock Lean with `--trust=0 -DwarningAsError=true`, using
the saved pinned environment. The source passed with exit 0 and no
diagnostics in **3.729 seconds**. The imported endpoint/axiom/control
audit passed with exit 0 in **3.789 seconds**. All nine public theorem
axiom reports are exactly

```text
[propext, Classical.choice, Quot.sound]
```

The audit independently restates the raw existential point-Leibniz
endpoint and the arbitrary-map homogeneous-ideal endpoint, and checks
all concrete controls described above. The latter controls use actual
graded Laurent algebras and their actual evaluation maps.

| Final artifact | SHA-256 |
|---|---|
| Maintained source and final source snapshot | `1bcaff4f8b45b558a24380410dc8c0997304c6bf6b17119686fb01ae7dd5ee4e` |
| Produced and imported `.olean` | `d18c57e51acbf2e8725788b8bec9eb5dc2c2411b2fc3d0dc307f37a275555f7b` |
| Successful imported audit | `dbf741ef32536c70faab864a098a7a92ca7e8a2c1bb9f75c7a130f3a89cf4297` |
| Successful imported audit log | `f307240546c3b0c0290681b475bc3868ddcc284f805108bd7e4180c3b8f6f5b6` |
| Saved verification environment | `470cd18cdb19d12e1462dcb2195d94e25bdd7ca1968746104478fd1d9e7c8301` |

The source and object were unchanged across their final checks. No root
import, dependency revision, or submitted source file changed.

### Retained attempt history

Every attempt snapshot and log is retained in the scratch evidence
directory `tmp/euler_core`. None timed out.

| Attempt | Outcome | Seconds | Source SHA-256 | Scope or repair |
|---|---|---:|---|---|
| `source1` | PASS, exit 0 | 12.773 | `0a3a9225575597ec5257cf8f2deb88589d97549932c6ea5f76956a2e41937d8a` | Initial eight-theorem version, before adding the arbitrary-map source return. |
| `source2` | PASS, exit 0 | 3.729 | `1bcaff4f8b45b558a24380410dc8c0997304c6bf6b17119686fb01ae7dd5ee4e` | Final nine-theorem maintained source. |
| `audit1` | FAIL, exit 1 | 4.183 | `ed4ba2fe4f0d09bb048ba03fac28473323bcd8017098483d81e961a7af2d2cab` | All nine axiom reports and both raw endpoints elaborated. Scratch controls needed a noncomputable monomial declaration, explicit lift-on-single rewrites before Laurent-monomial simplification, and explicit `ZMod 2` cast normalization. |
| `audit2` | PASS, exit 0 | 3.789 | `dbf741ef32536c70faab864a098a7a92ca7e8a2c1bb9f75c7a130f3a89cf4297` | Final imported audit and concrete controls. |

The failed audit is retained as a failure. Its repairs changed no
maintained source, theorem statement, hypothesis, or coefficient field.
The additional ninth theorem was a source-comparison endpoint, not a
repair to a failed source proof.

Fresh full-dependency replay, an independently implemented kernel
check, and substitution into the external geometric consumer are
**NOT_RUN**. A separate mathematical/source and saved-evidence review
has its own scope and does not supply another kernel execution.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[ptder]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[m4]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
