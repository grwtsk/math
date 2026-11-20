# Finite type from the actual degree-zero quotient image

Local source attribution: grwtsk contributors.

Maintained source: [FiniteTypeGradedQuotient.lean](FiniteTypeGradedQuotient.lean).
All six public declarations are in
`GRWTSK.CommutativeAlgebra.FiniteTypeGradedQuotient`. There are no private
helpers or new definitions in that file.

This module supplies the finite-type premise for the actual normalized graded
slice. Its inputs are the finite-generation component of `IsWRing.gen` and the
literal quotient-image condition `M2`. It does not assume finite type of the
slice as a separate premise. The proof is reconstructed using the pinned root
Mathlib; no submitted implementation or submitted import is incorporated.

## Exact objects and hypotheses

Let `O` and `A` be commutative rings, with an `O`-algebra structure on `A`, and
let `𝒜 : ℤ → Submodule O A` be an actual `GradedAlgebra`. Write
\(A_0=\mathcal A_0\), with its canonical degree-zero subalgebra structure.
The generation hypothesis is

\[
\exists s\subset A\text{ finite},\qquad
O[A_0\cup s]=A.
\]

The exact Lean premise is

```lean
∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤
```

For an arbitrary ideal `I : Ideal A`, let \(q_I:A\to A/I\) be the canonical
quotient map. The second hypothesis is that the actual image \(q_I(A_0)\) is
finitely generated as an `O`-module:

```lean
((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG
```

This is exactly the source's `M2 𝒜 I` after unfolding its definition. It is
not a claim that \(A_0\) itself is a finite `O`-module, that \(A/I\) is a
finite `O`-module, or that `I` is finitely generated. No induced grading on
\(A/I\) is needed; in particular, this finite-type argument does not require
`I.IsHomogeneous 𝒜`.

For `f g : A` and `π : O`, the final objects are literally

\[
J=I+(f-1),\qquad
\bar s=\operatorname{image}(\pi)\operatorname{image}(g)\in A/J,
\qquad C=(A/J)[1/\bar s].
\]

The endpoint spells these as

```lean
let J := I ⊔ Ideal.span ({f - 1} : Set A)
let s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
Algebra.FiniteType O (Localization.Away s)
```

It permits arbitrary `f`, `g`, and `π`, including zero localization factors.
Finite type remains meaningful for the zero ring. No nontriviality, field of
points, degree-sign, nonzero degree-cast, DVR, completeness, characteristic-zero,
or coefficient-faithfulness hypothesis enters this supplier.

## Complete primary analytical proof

### 1. Move the degree-zero algebra into the coefficients

First work with any actual subalgebra \(S\subseteq A\). Suppose a finite set
\(s\subseteq A\) satisfies \(O[S\cup s]=A\). The `S`-subalgebra generated
by \(s\), considered again as an `O`-subalgebra, is exactly
\(O[S\cup s]\). Therefore \(S[s]=A\): the elements of \(s\) already form
a finite algebra generating set over `S`.

In Lean, `finiteType_over_subalgebra` uses the exact scalar-restriction
identity `Algebra.restrictScalars_adjoin`, then the injectivity of restriction
of scalars on subalgebras. Taking `S` to be
`SetLike.GradeZero.subalgebra 𝒜` gives
`Algebra.FiniteType (𝒜 0) A` with the canonical degree-zero scalar action.
This is the first conclusion of the pinned `ft_holds` statement.

### 2. Replace the image of the coefficient algebra by finitely many generators

Let \(q:A\to B\) be a **surjective** `O`-algebra map. Assume
\(O[S\cup s]=A\), with \(s\) finite, and assume \(q(S)\) is finitely
generated as an `O`-module. Choose a finite module generating set
\(t\subseteq q(S)\).

Every element of \(q(S)\) is an `O`-linear combination of elements of \(t\).
An `O`-subalgebra containing \(t\) contains those linear combinations, so
\(q(S)\subseteq O[t]\). Conversely, \(q(S)\) is itself an `O`-subalgebra
containing \(t\), so \(O[t]\subseteq q(S)\). Thus \(q(S)=O[t]\).

The original generation equality and the fact that an algebra homomorphism
preserves sums and products imply

\[
q(A)=q(S)[q(s)]=O[t\cup q(s)].
\]

Surjectivity gives \(q(A)=B\), and \(t\cup q(s)\) is finite. Hence `B` is
finite type over `O`.

The formal proof follows the same mathematical argument at the subalgebra
level. It converts the finitely generated image submodule into the finitely
generated subalgebra `S.map q`, joins that subalgebra with the image of
`Algebra.adjoin O s`, and identifies the join with the whole target using
surjectivity. In particular, `Subalgebra.map_toSubmodule` identifies the image
used in the module hypothesis with the image used in the algebra argument.
The proof never replaces the actual quotient image by an unrelated finite
module or by a field extension.

For the graded quotient, take `S = SetLike.GradeZero.subalgebra 𝒜`,
`B = A ⧸ I`, and `q = Ideal.Quotient.mkₐ O I`. The quotient map is
surjective, and the finite-image hypothesis is precisely `M2`. This proves
`Algebra.FiniteType O (A ⧸ I)`.

### 3. Impose the normalization

Since \(I\subseteq J=I+(f-1)\), there is a surjective `O`-algebra map
\(A/I\to A/J\). The images of any finite algebra generating set of `A/I`
generate `A/J`. Thus `A/J` is finite type over `O`.

The maintained proof uses the actual map `Ideal.Quotient.factorₐ` and its
surjectivity. It makes no claim that \(J\) is homogeneous; the normalization
\(f=1\) generally destroys the original grading.

### 4. Invert one element

The principal localization \((A/J)[1/\bar s]\) is generated over `A/J` by
the single element \(\bar s^{-1}\). Equivalently, it has the presentation

\[
(A/J)[T]/(\bar s T-1).
\]

It is therefore finite type over `A/J`, and transitivity of finite type makes
it finite type over `O`. The `Away` instance in the pinned Mathlib supplies
this principal-localization step. The factorization
\(\bar s=\bar\pi\bar g\) is retained to match the actual slice; it is not
needed merely to prove finite type.

These four steps prove every declaration in this module. The finite-generator
and polynomial-presentation descriptions explain the same construction; they
are not claimed as independent proofs. The hostile checks below test the
hypotheses and the meanings of the finiteness statements separately.

## Declaration correspondence and consumers

| Local declaration | Exact role | Direct mathematical consumer |
|---|---|---|
| `finiteType_over_subalgebra` | Finite generation relative to an actual coefficient subalgebra | `finiteType_over_degreeZero` |
| `finiteType_of_surjective` | Finite type of a surjective image with module-finite coefficient image | `finiteType_quotient` |
| `finiteType_over_degreeZero` | `Algebra.FiniteType (𝒜 0) A` | First conclusion of the pinned `ft_holds`; no additional downstream local theorem is asserted here |
| `finiteType_quotient` | `Algebra.FiniteType O (A ⧸ I)` from the literal `M2` premise | `finiteType_sliceQuotient`; second conclusion of `ft_holds` |
| `finiteType_sliceQuotient` | Finite type after imposing `f = 1` | `finiteType_sliceAway` |
| `finiteType_sliceAway` | Finite type of the literal quotient/Away slice | `GradedSliceSeparation.slice_holds` |

The actual local return is in
[GradedSliceSeparation.lean](GradedSliceSeparation.lean). Its `slice_holds`
passes `finiteType_sliceAway 𝒜 I hgen hM2 f g π` directly to
`FiniteTypePointRigidity.slice_finite_points_and_separation` in
[FiniteTypePointRigidity.lean](FiniteTypePointRigidity.lean). The separate
[DVRLocalizedCoefficients.lean](DVRLocalizedCoefficients.lean) supplier
provides invertibility of nonzero coefficients. Earlier Euler/M4 results
provide vanishing point derivations. This module alone establishes neither
those premises nor finite points, reducedness, separation, or the later
denominator-cleared ideal-membership conclusion.

## Comparison with the pinned source

The mathematical comparison pin is
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The pinned repository identifies the submitted mathematical source being
compared. It does not, by itself, attribute authorship of that submission to
the repository's verification maintainers. These source files establish no
separate paper edition or individual theorem author. All three local
comparison files were checked byte-for-byte against `git show` at that pin.

| Pinned source | Locator and role | SHA-256 |
|---|---|---|
| [FtHolds.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/FtHolds.lean) | `UpperTheory.V.Alg.M.ft_holds`; its two conclusions | `f3934878da5e7bb158d2ba4571d0d4f22531a354151813dda2025e3d59e4f298` |
| [OrbitVanishingLocal.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean) | `UpperTheory.V.Alg.IsWRing.gen` and `UpperTheory.V.Alg.M2` | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [SliceHolds.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean) | `UpperTheory.V.Alg.M.slice_holds`, specifically the `hft` finite-type block | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |

The source `ft_holds` assumes a domain, DVR structure, adic completeness,
characteristic zero, `IsCO O (𝒜 0)`, an augmentation `x`, and `IsWRing 𝒜 x`.
Its proof extracts the finite set from `IsWRing.gen` and explicitly discards
the restrictions that generators have degrees `−2`, `−1`, `1`, or `2`.
The present statements retain precisely the remaining generation equality
and, for the quotient, the actual `M2` image condition. No part of `IsCO`,
the augmentation, or its fixed-point condition is used. `Type` is generalized
to `Type*`.

The mathematical argument shares the source's finite-generation reasoning.
Using subalgebra joins in the local proof is a different formal organization,
not evidence of an independent analytical discovery. The first two local
theorems expose reusable commutative-algebra implications; the graded
theorems return them to the source's actual degree-zero algebra, quotient,
and localization.

The root Mathlib revision is
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Principal APIs used are
[`Algebra.restrictScalars_adjoin`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Adjoin/Basic.lean),
[`Subalgebra.fg_of_fg_toSubmodule`, `Subalgebra.FG.map`, and `Subalgebra.FG.sup`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Adjoin/FG.lean),
[`Algebra.FiniteType.of_surjective` and transitivity](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/FiniteType.lean),
and the
[`Localization.Away` finite-type instance](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Localization/Away/AdjoinRoot.lean).

## Missing-hypothesis and meaning controls

The imported audit compiles the following controls over an arbitrary field
`K`. Its negative field example is proved separately using Zariski's lemma:
if `K(T)` were finite type over `K`, it would be a finite-dimensional field
extension, so `T` would be integral and algebraic over `K`, contradicting the
transcendence of the rational-function variable.

1. **The coefficient-image premise cannot simply be deleted.** Take
   `A = B = K(T)`, `S = ⊤`, and `q = id`. The extra generating set is empty,
   and `q` is surjective, but `B` is not finite type over `K`. The audit
   checks these retained hypotheses and the failure of the conclusion.

2. **Finite extra generation cannot simply be deleted.** Take the same
   identity map, but use `S = ⊥`, the scalar subalgebra. Its image is a
   finite `K`-module, while the full target is not finite type. The audit
   checks this at the generic subalgebra API.

3. **Surjectivity matters in the generic theorem.** Take `A = K`,
   `B = K(T)`, and the scalar inclusion. The source is generated by its
   coefficient algebra with no additional generators, and its image is
   module-finite. Nevertheless, the target is not finite type. The generic
   proof can only determine the image without surjectivity. The graded
   specialization supplies surjectivity from the actual quotient map.

4. **Finite type is weaker than module finiteness.** The audit proves both
   `Algebra.FiniteType K K[X]` and `¬ Module.Finite K K[X]`. The powers of
   `X` are generated multiplicatively by one algebra generator, but cannot
   lie in the linear span of finitely many polynomials of bounded degree.

5. **Only the quotient image must be module-finite.** For
   `A = K[X]` and `I = (X − C 0) = (X)`, the audit proves that the image of
   the whole `K`-submodule under the actual quotient map is finitely
   generated, while `A` itself is not a finite `K`-module. It uses the
   actual equivalence `K[X]/(X) ≃ₐ[K] K`.

For direct graded interpretations, place `K(T)` entirely in degree zero in
the first example, or place `K[X]` entirely in degree zero in the fifth.
Then the coefficient subalgebra is literally the degree-zero component.
These grading identifications are analytical explanations, not additional
grading instances compiled by the audit.

There is also a direct graded example for the second omission: give
`K[X_i | i ∈ ℕ]` its total-degree grading, viewed as an integer grading, and
take `I = 0`. The degree-zero component is `K`, so `M2` holds. Any finite
list of polynomials mentions only finitely many variables; the subalgebra
they generate cannot contain a variable outside that finite set. Hence
finite extra generation and finite type both fail. This particular grading
and infinite-variable argument are analytical controls, not claimed as
Lean fixtures in this pass.

The `M2` condition is sufficient, not a minimal characterization: finite
generation of the coefficient image **as an algebra** would already suffice
for the argument. For example, the identity quotient of a trivially graded
`K[X]` is finite type although its degree-zero image is not a finite
`K`-module. The source supplies the stronger module condition, which is
retained exactly.

Finally, the principal nature of `Away` matters. Localizing `K[X]` at all
nonzero polynomials gives `K(T)`, so arbitrary localization does not preserve
finite type over `K`. The positive polynomial finite-type fact and the
negative rational-function finite-type fact are compiled above; the
fraction-field interpretation is the analytical bridge for this additional
localization comparison.

## Actual verification and preserved attempts

The source base is
`grwtsk/math@1d7d057d8c47c3d0535af91a1a746f8fbaaa0d20`. The selected
environment uses Lean **4.34.1**, compiler revision
`5045d0056413266e57c625dcd7c365b10e377c52`, and the root Mathlib revision
listed above. Root imports, toolchain, lakefile, and dependency pins were not
changed for this module.

Every attempted Lean run below used `--trust=0 -DwarningAsError=true`.
The source and imported audit were run with the source-bound checker in
`tmp/slice_advance_verification/run_check.py`; each attempt retained its exact
source snapshot, complete log, outcome, timing, command, environment digest,
and before/after identities outside the maintained source tree.

| Attempt | Outcome | Elapsed seconds | Actual observation |
|---|---|---:|---|
| `source1` | **FAIL**, exit 1 | 5.195422459 | Simplification of the first proof left the coefficient subtype `adjoin O S` instead of `S`; dependent scalar transport was not discharged. |
| `source2` | **PASS**, exit 0 | 3.216892169 | Used the existing exact scalar-restriction identity. All six maintained declarations compiled; no statements changed. |
| `audit1` | **FAIL**, exit 1 | 4.392110003 | All six axiom queries and independently spelled main targets were accepted. Scratch controls failed from an unavailable inferred algebraicity instance and the unopened polynomial notation scope. |
| `audit2` | **FAIL**, exit 1 | 11.602868708 | Polynomial controls were corrected. The rational-function control exposed a mismatch between two canonical `ℚ`-algebra structures when applying transcendence. |
| `audit3` | **PASS**, exit 0 | 4.326451508 | Controls were stated over an arbitrary field `K`, using the canonical rational-function algebra and explicit finite ⇒ integral ⇒ algebraic reasoning. Every endpoint and control compiled. |

All five attempt snapshots and their dependency/source identities remained
unchanged during their runs. There were no timeouts or interrupted Lean
attempts in this module's validation. Failed attempts remain failures in the
record; they are not relabeled as unperformed checks.

The passing imported audit independently spells the generic subalgebra and
surjective-image targets, the paired `ft_holds` conclusions, the normalized
quotient, and the literal `Away` endpoint. Its six `#print axioms` queries each
report exactly

```text
[propext, Classical.choice, Quot.sound]
```

This is an observed transitive axiom report for each maintained declaration.
The fresh runs use the stock Lean checker and the selected cached Mathlib
objects; they do not constitute a fresh proof replay of every imported
dependency or verification by an independent kernel implementation.

| Evidence object | SHA-256 |
|---|---|
| Final maintained Lean source / `source2.source.lean` | `b6d93fc681d9a4dc76836fa8cbffc9f2f2f4b9fd3d34101208434d044608c33a` |
| Final maintained module `.olean` | `8ffe33a3f28eaa2be0495d02aff6f544106be78c3e266c52b7d3ba971e9699a2` |
| Final imported `EndpointAudit.lean` / `audit3.source.lean` | `3d45a28ff4c11a0d36c4670c4c57b1b35a103850fc7ee6da6e51601d7a3bac3c` |
| Successful source log, empty | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Successful imported audit log | `649044efd8a72cc08d7a5e7eb5cbac89da68b502e1d323626c9f71d2258261f7` |
| Exact checker environment | `237d578a8adb02cc0d5de73055e5cf1cfd5ecb15db4275e20f7077e3e543960f` |

| Preserved failed attempt | Source snapshot SHA-256 | Complete log SHA-256 |
|---|---|---|
| `source1` | `905fdffa8480347017176b949e7c822404ee7e2fd5f8eebe717eb1a895d4c05c` | `576c6dea839c845c39f36d2e5ce9871ee750b30b62053930d6d1f3607b5a9eae` |
| `audit1` | `84e9d975fcacc781416dc93907813fb12fc2eb0d6668566aa27c5760b3eb89eb` | `63b398905075b780b1926da934d06fd986a0a8afe6c642a37377d15b23e29702` |
| `audit2` | `8aabf3a6f83bd6cc2ec1a6212ad49e10397276be1a92ed1c85503a77d2804b9d` | `48ddcc6176b23023003ab05de05dfe33ef2e32d80adc70807dfc12f6731ed52c` |

Fresh full-dependency proof replay, an independent-kernel run, and substitution
of these declarations into the external submitted build are **NOT_RUN**.
The separate read-only mathematical/source review of the frozen Lean module
returned **PASS** with no findings; that review is not an additional Lean
execution or an independent proof of the full submitted RH route. No claim
of the Riemann hypothesis, global orbit coverage, or later length/valuation
estimates follows from this finite-type supplier alone.
