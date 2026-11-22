# Exact multiplication and projection on graded quotient pieces

Local attribution: grwtsk contributors.

Maintained source: [GradedQuotientExact.lean](GradedQuotientExact.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedQuotientExact`.

## The actual objects and statement

Let `O,A` be commutative rings, with an `O`-algebra structure on `A`, and
let `𝒜 : ℤ → Submodule O A` carry Mathlib's genuine `GradedAlgebra`
structure. Put `B=𝒜 0`, the degree-zero ring. The definition
`degreePiece 𝒜 w` is the submodule of `A` over `B` consisting of the
elements in `𝒜 w`. The definition `quotientPiece 𝒜 I w` is its image
under the actual quotient map `A → A/I`, as a `B`-submodule of `A/I`.

These definitions use the original ring, its homogeneous components,
and its ideal quotient. For a nonhomogeneous ideal `I`, the image
definition remains meaningful, although it need not be a grading on
the quotient ring. Homogeneity is required at the exactness step below.

For a homogeneous ideal `J`, a homogeneous element `t∈𝒜 d`, and every
integer weight `w`, the module constructs the actual linear maps

\[
(A/(J+(t)))_{w-d}
\xrightarrow{\;\times t\;}
(A/(J+(t^2)))_w
\xrightarrow{\;\pi\;}
(A/(J+(t)))_w.
\]

The theorem `square_exact` proves that the image of multiplication
equals the kernel of the projection. The theorem
`squareProjection_surjective` proves that the projection is onto.
The left map is not asserted to be injective. All lengths and
finiteness questions are left to the consumer; no finite-length,
noetherian, or regular-element premise is required for this sequence.

The exact public interface is:

```lean
theorem square_exact (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) :
    Function.Exact (squareMul 𝒜 J d t ht w)
      (squareProjection 𝒜 J t w)
```

The ambient rings, algebra, grading, and their instances are the
variables specified above. The maps are defined independently of
the exactness proof, with their actual quotient domains and codomains.

## Complete analytical argument

### 1. Restrict scalars to the degree-zero ring

Multiplication by an element of `A₀` preserves `A_w`, since `0+w=w`.
Thus every homogeneous piece is a `B`-module. Mapping that submodule
into `A/I` gives the actual quotient piece. By the definition of image,
every element of a quotient piece has a representative `a∈A_w`.
The helper `exists_pieceMk` records that fact, including its equality
with the given quotient element.

### 2. Construct the quotient projection

For arbitrary ideals `I≤K`, the identity map of `A` descends to
`A/I → A/K`. It preserves each degree piece because it sends the
class represented by a homogeneous `a` to the class represented by
that same `a`. It is onto each such piece for the same reason.

This construction is maintained as `quotientProjection` on the whole
quotients and `pieceProjection` on the degree pieces. Specialize

\[
I=J+(t^2),\qquad K=J+(t).
\]

The containment follows from `t²∈(t)`. This produces
`squareProjection`, with no assumption on `J` or on the degree of `t`
needed merely to define the map and prove surjectivity.

### 3. Construct multiplication by the homogeneous element

A multiplication map descends from `A/I` to `A/K` whenever
`tI⊆K`. The implementation first constructs this general linear
quotient map, then restricts its domain and codomain to degree pieces.
For `t∈A_d`, multiplication sends `A_(w−d)` into `A_w`.

For the square sequence, the needed containment is

\[
t\bigl(J+(t)\bigr)\subseteq J+(t^2).
\]

It holds because `tJ⊆J` and `t(t)⊆(t²)`. The implementation proves
those two containments and combines them using the ideal supremum.
The resulting `squareMul` acts on representatives by

\[
[a]\longmapsto[ta].
\]

### 4. Construct the preimage of every kernel element

Suppose a class in the middle piece is represented by `a∈A_w` and
its projection is zero. Then `a∈J+(t)`, so there is an element `c∈A`
such that

\[
a-tc\in J.
\]

The coefficient `c` need not initially be homogeneous. Let `c_(w−d)`
be its homogeneous component of degree `w−d`. Since `J` is
homogeneous, the degree-`w` component of `a−tc` still lies in `J`.
The degree-`w` component of `a` is `a`, and homogeneity of `t` gives

\[
\operatorname{pr}_w(tc)=t\operatorname{pr}_{w-d}(c).
\]

Consequently

\[
a-tc_{w-d}\in J\subseteq J+(t^2).
\]

The class of `c_(w−d)` in the left piece therefore maps to the given
middle class. The maintained helper `exists_homogeneous_factor`
proves precisely this shifted representative statement. It uses
Mathlib's genuine direct-sum decomposition and homogeneous-ideal
membership, rather than taking the required preimage as a premise.

### 5. Verify the reverse inclusion

The projection of the class of `tc` is zero modulo `J+(t)` because
`tc∈(t)`. Therefore every image element belongs to the kernel.
Combining this with the constructed preimage proves `square_exact`.
Every target degree-piece representative lifts unchanged to the
middle quotient, proving surjectivity of the projection.

## The length consumer

[LocalizedGradedLength.lean](LocalizedGradedLength.lean) consumes these
actual maps. Localization preserves their exactness, so the actual
module-length inequality gives, for a prime ideal `P` of `B`,

\[
\operatorname{length}_{B_P}
  \bigl((A/(J+(t^2)))_{w,P}\bigr)
\le
\operatorname{length}_{B_P}
  \bigl((A/(J+(t)))_{w-d,P}\bigr)
+\operatorname{length}_{B_P}
  \bigl((A/(J+(t)))_{w,P}\bigr).
\]

The length values remain extended natural numbers. The exact source
specialization takes `P=ker σ` for an algebra map to a field. This
module establishes the required maps and exactness; the separate
length record documents its localization and length proof and checks.

The submitted route iterates the estimate when replacing homogeneous
equations by their squares. This produces powers of two in local
multiplicity bounds, consumed by `up_holds` and then the factor-two
cotangent estimate. The full deformation, rigidity, and automorphy
arguments remain separate suppliers. This exact sequence alone proves
no `OneCharU_s`, arithmetic window estimate, or RH/Dirichlet-GRH result.

## Declaration inventory

All names below have the common prefix
`GRWTSK.CommutativeAlgebra.GradedQuotientExact.`

The nine definitions are `degreePiece`, `quotientPiece`, `pieceMk`,
`quotientProjection`, `pieceProjection`, `quotientMul`, `pieceMul`,
`squareMul`, and `squareProjection`.

| Public theorem | Mathematical role |
|---|---|
| `mem_degreePiece` | Identifies membership with the original homogeneous component. |
| `exists_pieceMk` | Supplies an actual homogeneous representative of a quotient-piece element. |
| `quotientProjection_mk` | The whole-quotient projection sends a representative to itself. |
| `pieceProjection_mk` | The restricted projection has the same representative action. |
| `pieceProjection_surjective` | Surjectivity holds on every degree piece. |
| `quotientMul_mk` | The descended multiplier has the actual representative action `a↦ta`. |
| `squareProjection_surjective` | The projection in the square sequence is onto. |
| `exists_homogeneous_factor` | Constructs the shifted homogeneous coefficient from kernel membership. |
| `square_exact` | Establishes equality of image and kernel for the actual maps. |

Two private containment helpers justify the square maps. Their proof
dependencies are included transitively in the public exactness theorem.

## Source correspondence and analytic comparison

The submitted mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | Exact correspondence | SHA-256 |
|---|---|---|
| [ToDegInjective.lean][definitions] | Its `oz` and `aPiece` are the actual homogeneous component and quotient image represented locally by `degreePiece` and `quotientPiece`. | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |
| [LocLenAPieceSupSpanSqLeAdd.lean][external] | The multiplication/projection and homogeneous-kernel argument inside `UpperTheory.V.Alg.M.locLen_aPiece_sup_span_sq_le_add`. | `7ce3da392d0b3655fee9bad840eb5d2743672a654b1f2d309948d012daa5fcf5` |
| [LocLenAPieceIdeal2LeTwoPow.lean][iteration] | Its finite-family induction consumes the localized square-sequence bound. | `951a47248af0fdb1f63dfe57b95080c0ef234b008e9caa016111dd0f2fa165a8` |

The local index universes are arbitrary `Type*`, specializing to the
source's `Type`. The ring, grading, ideal, homogeneous multiplier,
shifted weight, and actual quotient carriers are retained. No external
Lean module or submitted implementation is imported.

The source constructs the two maps inside the length theorem and
decomposes a representation `a=j+tc`. This local implementation exposes
general quotient maps first and factors exactness through the projection
of `a−tc`. Both use the same homogeneous-component argument. The local
implementation is original, MIT licensed, and attributed to
`grwtsk contributors`; it does not establish an independent foundational
proof or a novelty claim. Mathlib's authorship and licensing are retained.

## Hostile and boundary comparisons

- **The first map need not be injective.** With `J=0`, `t=0`, and
  `d=w=0` in any nontrivial graded algebra, the degree-zero classes of
  `1` and `0` are distinct and both map to zero. The sequence is still
  exact, with the projection the identity. The imported audit checks
  this on the actual maintained maps.
- **The shift cannot be omitted.** In `k[x]` with its ordinary grading,
  `J=0`, `t=x`, and `w=1`, the degree-one piece of `k[x]/(x²)` has
  dimension one. The degree-zero piece of `k[x]/(x)` supplies its
  preimage. Replacing `w−d` by `w` would put zero-dimensional spaces on
  both ends and lose exactness; the resulting length claim is `1≤0`.
- **Homogeneity of `J` is essential.** In standard-graded `k[x,y]`, take
  `J=(x+y²)`, `t=x`, and `w=2`. The quotient by `J+(x)` is `k[y]/(y²)`;
  its degree-one image has dimension one and degree-two image is zero.
  The quotient by `J+(x²)` is `k[y]/(y⁴)`, whose degree-two image is
  spanned independently by `y²` and `y³`. The proposed length inequality
  without homogeneous `J` would be `2≤1`.
- Zero elements, zero modules, negative weights, and infinite module
  lengths cause no exception to the exact sequence. Additional
  finiteness is required before converting lengths to ordinary natural
  numbers in a subsequent numerical argument.

The polynomial shift and nonhomogeneous-ideal examples are explicit
mathematical controls, not reported Lean formalizations. The zero
multiplier control is part of the exact-source Lean audit described
below.

## Exact-source verification

Source base: `grwtsk/math@68cd4c5195ae9ff07adaa7f71378c312a3ac497c`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The maintained Lean source has SHA-256
`d493ae61a2bf01ae9b43dd44fb44ddd55877a1008e486f962eeabbf63bba2570`.
On 2026-11-20, its full source check with `--trust=0` and
`-DwarningAsError=true` **PASS**ed, exit 0, in 65.795 seconds. The
resulting imported object has SHA-256
`6987243d6bbf2ff45f4ca92894a54ef11ac4bd82396f77145d260a5afbba7aca`.
The check used the pinned compiler and existing Mathlib dependency
objects; it did not rebuild the full dependency tree.

An imported endpoint audit with SHA-256
`f2178e683dbf422a21356a306ea39c98a8f737d59ce67a4d4965c64fb7a09a71`
also **PASS**ed with `--trust=0` and `-DwarningAsError=true`, exit 0,
in 22.712 seconds. It independently spells the degree-piece carrier
and its image under the actual ideal-quotient map, checks their
definitional equality with the maintained objects, and restates the
endpoint on those explicit objects. The restatement checks the
actual representative actions `[a]↦[ta]` and `[a]↦[a]`, exactness,
and projection surjectivity together. The same audit proves the
zero-multiplier noninjectivity control on `squareMul` described above.

The audit ran `#print axioms` on all nine public theorems in the
declaration inventory. Each reported exactly
`[propext, Classical.choice, Quot.sound]`, with no `sorryAx`, new
axiom, or native-decision axiom. This is a transitive dependency
observation, including the private helper proofs used by the public
endpoints. The maintained source contains no `sorry`, `admit`, new
`axiom` declaration, or `native_decide` invocation.

The earlier failed source checks are retained at their actual source
identities; they are not relabeled as unperformed checks:

| Attempt | Input SHA-256 | Actual result |
|---|---|---|
| Initial full source, warnings as errors, default import trust | `9ad14faa693e2e33dc980f32844d0aae41342f92836bd1da5c632b7d07434e1e` | **FAIL**, exit 1, 75.112 s: scalar-action unfolding, a substituted variable name, and dependent projection-index normalization. An elaborator heartbeat-exhaustion diagnostic also occurred; this was a completed failing process, not a wall-clock timeout. |
| Revised full source, warnings as errors, default import trust | `fb1a111d33f4edf63bb05200eaa84ccc6cac88c3aa1e1a8316dea4168e8233c7` | **FAIL**, exit 1, 98.997 s: dependent projection-index normalization remained. |
| First full trust-zero source check, warnings as errors | `ea4c1cf6c202ca8276323f7f1bf71b344e7f9db41f9bd7e3ed69aa7fbaf93555` | **FAIL**, exit 1, 124.857 s: the proposed congruence tactic left a dependent-coercion goal that arithmetic normalization could not solve. |
| First imported endpoint audit, trust zero and warnings as errors | `8e5a865e591d6c15a2c8ce49b5029543c5d08015cfef0de18668da06810d8568` | **FAIL**, exit 1, 117.749 s: the unnecessary-`simpa` linter rejected the last tactic in the zero-multiplier control. Replacing it with `simp at hm` produced the passing audit above. The maintained source was unchanged. |

The final source repairs the dependent-index step using an explicit
equality of integer indices and `congrArg` on the `A`-valued projection
function. An isolated probe of that step also passed in 19.979 seconds
at SHA-256
`37ee2c5b519a3882bcd8e4033978c8c9e0520261aed5f787db3f3a458459dd4d`;
that probe was not the full maintained-source check. The final source
and imported audit results above supersede the failed candidates.
No wall-clock timeout occurred in these recorded attempts. Raw logs,
source snapshots, and compiled objects remain outside the maintained
repository.

Fresh full-dependency replay, an independently implemented kernel
check, and compilation of the submitted deformation consumer with the
local declarations substituted are **NOT_RUN**.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[definitions]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceSupSpanSqLeAdd.lean
[iteration]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceIdeal2LeTwoPow.lean
