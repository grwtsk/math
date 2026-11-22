# Localized length of the square-equation quotient

Local attribution: grwtsk contributors.

Maintained source: [LocalizedGradedLength.lean](LocalizedGradedLength.lean).
Namespace: `GRWTSK.CommutativeAlgebra.LocalizedGradedLength`.

## Actual objects and quantified result

Let `A` be a commutative algebra over a commutative ring `O`, with a
genuine integer grading `𝒜 : ℤ → Submodule O A`. Write `B=𝒜 0` for the
degree-zero subring. For an ideal `I`, the object
`GradedQuotientExact.quotientPiece 𝒜 I w` is the image of the homogeneous
piece `𝒜 w` in the actual quotient `A ⧸ I`, as a `B`-submodule. It is
not an abstract module assigned a dimension by hypothesis.

For any prime ideal `P` of `B`, the local definition is

\[
L_P(M)=\operatorname{length}_{B_P}(M_P)\in\mathbb N\cup\{\infty\},
\]

implemented exactly as

```lean
Module.length (Localization.AtPrime P) (LocalizedModule P.primeCompl M)
```

The theorem `localLength_quotientPiece_square_le` proves, for every
homogeneous ideal `J`, every `d : ℤ`, every `t∈𝒜 d`, and every `w : ℤ`,

\[
\boxed{
L_P\big((A/(J+(t^2)))_w\big)
\le
L_P\big((A/(J+(t)))_{w-d}\big)
+L_P\big((A/(J+(t)))_w\big).
}
\]

There is no Noetherian, Artinian, finite-length, regular-element,
nonzero-element, or finite-generation assumption. The value infinity
is retained throughout. In particular, the statement never applies
`toNat` to a module length.

For an algebra map `σ : B →ₐ[O] K` into a field, its kernel is prime.
The definition `pointLength σ M` specializes `L_P(M)` to that kernel,
and `pointLength_quotientPiece_square_le` gives the exact field-point
form of the submitted target. No hypothesis says that the degree-zero
part of `J` lies in `ker σ`; modules outside their support can localize
to zero. Allowing an arbitrary prime first is a strengthening of the
field-point interface, not a replacement of its mathematical objects.

## Complete proof

### 1. Construct the actual maps on homogeneous quotient pieces

The imported [GradedQuotientExact](GradedQuotientExact.md) construction
provides the sequence

\[
(A/(J+(t)))_{w-d}
\xrightarrow{F\,=\,\times t}
(A/(J+(t^2)))_w
\xrightarrow{G}
(A/(J+(t)))_w.
\]

Multiplication is well-defined because
`t·(J+(t))⊆J+(t²)`. Homogeneity of `t` gives the degree shift
`d+(w−d)=w`. The projection is well-defined because
`J+(t²)⊆J+(t)`, and it preserves degree. Every representative in the
last piece lifts through that projection, so it is surjective.

The key input is proved exactness, not a premise about unspecified
maps. If the class of a homogeneous `a∈𝒜 w` lies in the kernel of the
projection, then `a=j+tc` for some `j∈J`. Taking the degree-`w`
component, and using homogeneity of `J`, supplies a coefficient in
degree `w−d` whose product with `t` agrees with `a` modulo `J`.
Its quotient class is the required preimage under `F`. Conversely,
the projection kills every multiple of `t`, so `im F=ker G`.

This argument does not assert that `F` is injective. If `t=0`, the
first map can have a nonzero kernel. The valid conclusion is the
length inequality, not equality with the length of the entire first
module.

### 2. Pass the exact pair through localization

Localization uses the multiplicative set `P.primeCompl`. The two
localized maps are the actual maps produced by `LocalizedModule.map`,
linear over `Localization.AtPrime P`. Mathlib's
`LocalizedModule.map_exact` proves that their image and kernel still
agree. No extra flatness assumption is introduced: exactness of this
localization functor is the imported theorem supplying this step.

### 3. Derive length subadditivity without endpoint assumptions

For any exact pair of module maps `f : M →ₗ[R] N`, `g : N →ₗ[R] Q`,
factor through their images. There is a short exact sequence

\[
0\longrightarrow\operatorname{im}f\longrightarrow N
\longrightarrow\operatorname{im}g\longrightarrow0.
\]

The first map is inclusion and the last map is `g` with its codomain
restricted to its image. Mathlib's length-additivity theorem gives

\[
\operatorname{length}(N)
=\operatorname{length}(\operatorname{im}f)
+\operatorname{length}(\operatorname{im}g).
\]

The map `M → im f` is surjective, so the first summand is at most
`length(M)`. The inclusion `im g → Q` is injective, so the second is
at most `length(Q)`. Addition preserves these inequalities in `ℕ∞`.
Thus

\[
\operatorname{length}(N)
\le\operatorname{length}(M)+\operatorname{length}(Q).
\]

Apply this result over `B_P` to the localized graded maps from the
first two steps. This proves the displayed square-equation inequality
on the actual quotient pieces.

An alternative organization uses surjectivity of the particular
projection `G` directly: length of the middle module equals length
of `ker G` plus length of the last module, and the source maps onto
`ker G`. The maintained proof instead proves the general image-based
inequality once. Both organizations use exactness and module-length
additivity; they do not constitute independent foundational proofs.

## Mathematical consumer

The source's finite-family induction replaces homogeneous equations
`t_i` by their squares one at a time. A uniform bound `c` on all
weight pieces of `A/(J+(t_1,…,t_n))` therefore gives a bound `2^n c`
on all weight pieces of `A/(J+(t_1²,…,t_n²))`. Each single replacement
uses exactly the inequality proved here, including its shifted
weight. Uniformity over every weight pays for both summands.

The maintained [GradedSquareFamilyLength](GradedSquareFamilyLength.lean)
module now supplies that consumer directly: its
`localLength_square_family_le` allows a finite index set and individually
varying homogeneous degrees, and its
`pointLength_five_family_squares_le` supplies the submitted five-family
specialization with the length-one input retained explicitly.

The direct submitted consumer is the private `gen` in
[LocLenAPieceIdeal2LeTwoPow.lean][family]. Its public target applies
the argument to the `r+1` generators of weight `−1` and the `r′`
generators of weight `+1`, with the remaining homogeneous equations
included in `J`. It retains a substantive initial bound of one on
the unsquared quotient pieces. The resulting upper multiplicity
factor is `2^(r+1+r′)`.

The later upper/lower comparison cancels this against a lower factor
`2^(r+r′)`, producing the factor two in `LemmaM`. The present result
proves the actual localized square-equation step. It does not prove
the initial local length-one geometry, the lower cotangent bound,
the length-to-valuation identity, `model_upper`, `OneCharU_s`, or RH.
The [arithmetic route audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records those remaining consumers and suppliers.

## Declaration inventory and source comparison

All declarations in this table have the prefix
`GRWTSK.CommutativeAlgebra.LocalizedGradedLength.`

| Declaration | Role |
|---|---|
| `moduleLength_le_add_of_exact` | General `ℕ∞` length inequality for an exact pair, with no injection or surjection assumptions. |
| `localLength` | Actual length after localization at an arbitrary prime ideal. |
| `localLength_le_add_of_exact` | Applies the general inequality to actual localized maps. |
| `localLength_quotientPiece_square_le` | Consumes the constructed graded exact sequence and proves the arbitrary-prime square-equation bound. |
| `pointLength` | Specializes actual localized length to the prime kernel of a field-valued algebra point. |
| `pointLength_quotientPiece_square_le` | Exact field-point counterpart of the submitted target. |

Mathematical correspondence is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | Exact correspondence | SHA-256 |
|---|---|---|
| [LocLenAPieceSupSpanSqLeAdd.lean][external] | `UpperTheory.V.Alg.M.locLen_aPiece_sup_span_sq_le_add`, including its field point, homogeneous ideal, degree shift, and actual length conclusion. | `7ce3da392d0b3655fee9bad840eb5d2743672a654b1f2d309948d012daa5fcf5` |
| [ToDegInjective.lean][objects] | `locLen`, `oz`, and `aPiece` identify the actual localization and quotient-image objects. | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |
| [LocLenAPieceIdeal2LeTwoPow.lean][family] | Direct finite-generator consumer, private `gen` and public `locLen_aPiece_ideal2_le_two_pow`. | `951a47248af0fdb1f63dfe57b95080c0ef234b008e9caa016111dd0f2fa165a8` |

Each file was read from the available checkout and compared byte for
byte with its blob at the stated revision. That is source identity
evidence, not proof replay of the external development. The local
types are universe-polymorphic, while the submitted statement uses
`Type`; specializing the universes recovers that scope.

The local implementation is original, MIT licensed, and attributed
to `grwtsk contributors`. It imports the newly authored local exact
sequence module and root Mathlib. No submitted module or implementation
is imported. Mathlib retains upstream authorship and licensing. The
comparison repository identifies the inspected mathematical source;
its verification maintainers are not attributed as the submission's
author.

## Hostile comparisons

Dropping the shift `w−d` fails for the standard grading of `k[x]`:
take `J=0`, `t=x`, and `w=d=1`. The degree-one piece of `k[x]/(x²)`
has length one, while the degree-one piece of `k[x]/(x)` has length
zero. The correct degree-zero source piece contributes the missing
one. Homogeneity of `J` is the premise allowing the preimage to be
chosen in the required degree; the exact-sequence record examines
that condition separately.

Exactness alone does not justify equality of lengths of the full
end modules. Over `ℚ`, the pair `ℚ --0→ ℚ --id→ ℚ` is exact, but the
middle length is one and the two end lengths sum to two. Without
exactness, a nonzero middle vector space between two zero spaces
already violates the inequality.

Infinite lengths must remain infinite. The `ℚ`-vector space
`ℕ →₀ ℚ` has module length infinity, while `ℚ` has length one.
The true inequality `1≤∞` becomes false after `toNat`, which sends
the infinite value to zero. These are actual module-length controls,
not numerical assumptions replacing the graded quotient objects.

## Exact-source verification

Source base: `grwtsk/math@68cd4c5195ae9ff07adaa7f71378c312a3ac497c`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The final maintained source passed stock Lean with
`--trust=0 -DwarningAsError=true`, exit `0`, no warnings or errors, in
115.836 seconds. The imported endpoint, axiom, and hostile-control audit
then passed with the same flags, exit `0`, in 40.378 seconds. The source
and imported local objects were unchanged for these successful checks.

| Checked artifact | SHA-256 |
|---|---|
| Maintained `LocalizedGradedLength.lean` | `f90e6bb4d5b626329a9c3536df951b869c6c1ceadd4a6df2ba93ddce15332aac` |
| Produced `LocalizedGradedLength.olean` | `18c9c520ce6ed00e1eae63ff6537e8ffde93939e97f193e4c9a53483ea506a45` |
| Imported `GradedQuotientExact.lean` | `d493ae61a2bf01ae9b43dd44fb44ddd55877a1008e486f962eeabbf63bba2570` |
| Imported `GradedQuotientExact.olean` | `6987243d6bbf2ff45f4ca92894a54ef11ac4bd82396f77145d260a5afbba7aca` |
| Successful scratch endpoint/axiom/control audit | `175a3b169638b22126988370fde337a619a8e4981b6e3945a411430a1b6415ee` |

The audit independently writes the homogeneous degree submodule, its
image under the actual quotient map, and the full expression
`Module.length (Localization.AtPrime P) (LocalizedModule P.primeCompl M)`.
It fixes the standard group and module instances in generic binders before
substituting the concrete quotient subtypes. Definitional-equality checks
identify those objects and the explicit length definition with the
maintained definitions. Both the arbitrary-prime and field-point endpoint
statements then check against these explicit objects. No unspecified
length function or exactness premise replaces the claimed objects.

The same audit proves the three module-length controls above: strict
inequality for the zero-map/identity exact pair; failure of the inequality
between a nonzero middle and zero endpoints; and infinite length of
`ℕ →₀ ℚ` together with loss of `1≤∞` under `toNat`. The polynomial shift
comparison remains an analytical hostile example here; the adjacent
exact-sequence record describes its own object-level controls separately.

Transitive `#print axioms` inspection of all four public theorems returned
exactly `[propext, Classical.choice, Quot.sound]` in each case. It reported
no `sorryAx` or additional axiom. This is an audit of the declared proof
dependencies in the imported environment, not an independently implemented
kernel check or a fresh rebuild of every dependency.

Earlier attempts are retained at their actual outcomes:

- The scratch generic length/localization core passed its first check,
  exit `0`, in 45.646 seconds, with SHA-256
  `16342ff7aa52966d9c94cc8fdae7f88a1c29aefa778e9c804896153f41816bd2`.
- The first maintained-source check failed, exit `1`, in 31.323 seconds,
  at source SHA-256
  `c70920ffb190cbbff85e897b500898e42da9d5f6ee5ac2822c09bdcc8acc8609`.
  The diagnostic was the style linter's requirement to use `have` rather
  than `haveI` for the proof-local prime instance in the final theorem.
  That binder was corrected before the passing source check above.
- The first imported audit failed, exit `1`, in 34.403 seconds, at audit
  SHA-256
  `653992982ab75286399b60035a23f0b40b7ec0a900bbeec967542c2bc888c6a5`.
  Directly nesting the concrete graded subtype in `LocalizedModule`
  failed group-instance synthesis, and two hostile controls needed
  explicit symmetry and arithmetic tactics. The corrected audit fixes
  module instances at the generic length binder, adds its definitional
  equality checks, and uses `simp [eq_comm]` and `norm_num` for those
  controls. The maintained theorem was unchanged.
- A diagnostic probe reproduced that instance-synthesis failure for both
  the maintained and independently written quotient-piece names, while
  the underlying quotient groups and modules synthesized separately.
  Its Lean exit was `1`, in 95.109 seconds, with source SHA-256
  `91d4b09daa255d5ac12a6705ae776c432982cc6ca7f64edb0809bcc4c08fd32d`.
  This was an elaboration failure in the diagnostic expression, not a
  counterexample to the maintained length inequality.

Fresh full-dependency replay, an independently implemented kernel
check, and rebuilding the external automorphic consumer with the
local declaration substituted are **NOT_RUN**. No full-submission
verification claim follows from the local reconstruction.

With the pinned dependencies and local exact-sequence import built:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/CommutativeAlgebra/LocalizedGradedLength.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceSupSpanSqLeAdd.lean
[objects]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
[family]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceIdeal2LeTwoPow.lean
