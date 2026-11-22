# Finite and separating points from tangent rigidity

Local attribution: grwtsk contributors.

Maintained source: [FiniteTypePointRigidity.lean](FiniteTypePointRigidity.lean).
All six public declarations are in
`GRWTSK.CommutativeAlgebra.FiniteTypePointRigidity`.
This module has no new public definitions or private theorem helpers.

## Mathematical consumer and exact scope

The source's `et_holds` converts vanishing point derivations into a finite
set of field-valued points that separates elements. Its consumer is the
normalized, localized graded slice in [SliceHolds.lean][slice]. This local
module reconstructs that complete implication through the actual fraction
field and returns to the original coefficient-algebra homomorphisms. Its
final two theorems combine the result with the already checked
[Euler/M4 slice argument](GradedSlicePointDerivation.md).

Let `O` be a commutative domain, `K` an algebraically closed field with a
faithful `O`-algebra structure, and `C` a finite-type `O`-algebra. Assume

\[
\forall a\in O\setminus\{0\},\quad
\operatorname{algebraMap}_{O,C}(a)\in C^\times,
\tag{units}
\]

and the following actual point-derivation statement:

\[
\begin{split}
&\forall\xi:C\to_O K,\ \forall D:C\to_O K\text{ linear},\\
&\left(\forall a,b\in C,\
D(ab)=\xi(a)D(b)+\xi(b)D(a)\right)\Longrightarrow D=0.
\end{split}
\tag{tangent}
\]

The conclusion is

\[
\operatorname{IsReduced}(C),\qquad
\operatorname{Finite}\operatorname{Hom}_{O\text{-alg}}(C,K),
\tag{rigidity}
\]

and

\[
\forall x\in C,\quad
\bigl(\forall\xi:C\to_O K,\ \xi(x)=0\bigr)\Longrightarrow x=0.
\tag{separation}
\]

The target is the ordinary `Finite` typeclass for the actual type of
algebra homomorphisms and literal equality to zero in `C`. It is not a
finite list of selected sample points or a quotient modulo its nilradical.
The coefficient ring's discrete valuation, adic completeness, and
characteristic-zero assumptions do not enter this implication. They are
therefore omitted from its general local statement. They remain available
in the original application and in the independently stated source-shaped
audit endpoint.

The finiteness used in the proof is finiteness of `C` as a module over
`FractionRing O`. Finiteness as an `O`-module is not asserted; it generally
does not hold after inverting a uniformizer.

## Primary analytic argument

### 1. Construct the fraction-field actions

Put `E = FractionRing O`. Every denominator in `O` maps to a unit in `C`
by (units), so the localization universal property gives a ring map

\[
E\longrightarrow C
\]

extending the given map from `O`. Faithfulness makes `O→K` injective.
Every nonzero element of `O` therefore has nonzero image in the field
`K`, hence a unit image. The same localization construction gives

\[
E\longrightarrow K.
\]

The two constructed actions are accompanied by the actual scalar-tower
identities `O→E→C = O→C` and `O→E→K = O→K`. Finite type over `O`
implies finite type over `E`: the same finite generating set works once
the coefficient algebra is enlarged.

These are genuine `Algebra (FractionRing O) C` and
`Algebra (FractionRing O) K` instances constructed using
`IsLocalization.lift`. The proof does not replace `C` with an unrelated
field algebra or assume that its original `O`-algebra points respect new
scalars without verification.

### 2. Supply all residue points and kill the differential module

For every maximal ideal `m` of `C`, the residue field `C/m` is a
finite-type field algebra over `E`. Zariski's lemma makes it finite over
`E`; algebraic closedness of `K` gives an `E`-algebra embedding
`C/m→K`. Restriction of scalars gives an injective `O`-algebra map
of the exact kind required by
[PointDerivationUnramified](PointDerivationUnramified.md).

That module uses the actual finite `C`-module `Ω[C/O]`. A nonzero
maximal fiber would admit a residue-field dual functional. Composing
that functional with the universal derivation and the residue embedding
would produce a nonzero point derivation, contradicting (tangent).
The finite-module Nakayama argument then gives `Ω[C/O]=0`, hence
`Algebra.FormallyUnramified O C`.

Enlarging the coefficient ring to `E` preserves formal unramifiedness:
an `E`-algebra infinitesimal lift is in particular an `O`-algebra lift.
Thus `C` is formally unramified over the actual fraction field `E`.

### 3. Obtain a finite algebra over the field

Here is the finite-support tensor argument behind the imported
`Algebra.FormallyUnramified.finite_of_free` theorem in
[Mathlib's finite unramified algebra source][finite]. It applies because
every vector space over `E` is free.

Let `J` be the kernel of the multiplication map

\[
\mu:C\otimes_E C\longrightarrow C.
\]

Finite type makes this diagonal ideal finitely generated. The identity
`J/J² ≅ Ω[C/E]` and formal unramifiedness give `J=J²`. The
finite-ideal idempotence result then yields an element

\[
u\in C\otimes_E C,\qquad
\mu(u)=1,\qquad
(x\otimes1)u=(1\otimes x)u\quad(x\in C).
\]

Choose an `E`-basis `(b_i)` of `C` and write the tensor as a finite sum

\[
u=\sum_{i\in S}c_i\otimes b_i.
\]

For any `x∈C`, expand `b_i x=∑_j a_{ij}b_j`. Comparing coefficients
of the second tensor factor in the displayed commutation identity gives

\[
x c_j=\sum_{i\in S}a_{ij}c_i.
\]

Since `μ(u)=∑_{j∈S}c_j b_j=1`, it follows that

\[
x=\sum_{j\in S}x c_jb_j
 =\sum_{i,j\in S}a_{ij}c_i b_j.
\]

Thus the finite family `(c_i b_j)_{i,j∈S}` spans `C` over `E`.
The Lean return uses `Module.Finite E C` for this actual algebra.

### 4. Obtain reducedness

The field theorem
`Algebra.FormallyUnramified.isReduced_of_field` is used at the same
root Mathlib revision; its [source][field] has also been inspected.
One analytic description of its local argument is as follows.

Extend scalars to an algebraic closure `L` of `E`. Formal unramifiedness
and finite type persist under this base change. The finite-support
argument makes `L⊗[E]C` a finite-dimensional `L`-algebra. Its local
factors are therefore Artinian. A residue field at a maximal ideal of a
local factor `B` is `L` itself, by algebraic closedness.

The tensor element from the previous step supplies a `B`-linear section
of the residue map `q:B→L`. Explicitly, for
`u=∑u_i⊗v_i`, averaging the coefficient-field section `t:L→B`
gives

\[
s(z)=\sum_i u_i\,t(q(v_i)z).
\]

The identity `μ(u)=1` gives `q∘s=id`; tensor commutation gives
`B`-linearity. Write `e=s(1)`. Then `q(e)=1` and `e²=e`.
Consequently `1-e` is an idempotent in the maximal ideal. That ideal is
nilpotent in the Artinian local ring, so `1-e=0`. For any element `a`
of the maximal ideal,

\[
a=ae=a\,s(1)=s(q(a))=0.
\]

Every such local factor is a field. Hence every nilpotent element of
`L⊗[E]C` vanishes in every maximal localization and is zero. Finally,
the scalar-extension map `C→L⊗[E]C` is injective, since extension
of a field is faithfully flat. Thus `C` itself is reduced.

This explanation and the finite-support argument describe the mathematics
of the imported Mathlib results. They do not claim that a second kernel
implementation or an independent proof of the dependency closure was run.

### 5. Prove finiteness of the original point set

Distinct `E`-algebra maps `C→K` are linearly independent as elements of
the `K`-vector space `Hom_E(C,K)`. This is the algebra-homomorphism
independence theorem `linearIndependent_toLinearMap` in
[Mathlib's fixed-field source][fixed]. Since `C` is finite-dimensional
over `E`, that linear-map space is finite-dimensional over `K`, even
when `K/E` is an infinite extension. The set of `E`-algebra points is
therefore finite.

Now take an original point `ξ:C→ₐ[O]K`. The ring maps

\[
\xi\circ(E\to C),\qquad E\to K
\]

agree after composition with `O→E`, by the two scalar-tower identities
and `ξ`'s original `O`-compatibility. Uniqueness of localization maps
therefore makes them equal on all of `E`. This is the public theorem
`pointHom_respects_fractionScalars`.

Consequently each `O`-point determines an `E`-point with the same
underlying ring map. The construction is injective: equality of the
extended points is pointwise equality of the original maps. Finiteness
of the `E`-point set thus gives finiteness of the exact `O`-point set
appearing in the source conclusion. The imported audit also checks that
restricting an extended point back to `O` returns the original point.

### 6. Separate elements using maximal ideals

A finite-type algebra over the field `E` is Jacobson. Since `C` is
reduced, the intersection of all maximal ideals is zero. If every
`O`-point kills `x`, then for each maximal ideal `m`, compose its
quotient map with the previously constructed injective residue-field
embedding into `K`. Vanishing at that point and injectivity imply
`x∈m`. Thus `x` lies in every maximal ideal, and `x=0`.

The implemented proof invokes the actual generic Jacobson/reduced
separation theorem from
[FiniteTypeResiduePoints](FiniteTypeResiduePoints.md), with the
constructed `O`-algebra residue embeddings. No density assertion about
a selected collection of numerical points is used.

## Return to the actual graded slice

The last two theorems use exactly

\[
J=I+(f-1),\qquad
s=\overline\pi\,\overline g\in A/J,\qquad
C=(A/J)[1/s].
\]

The ideal `I` is homogeneous for the actual integer grading. The complete
source `M4` condition is retained in its raw quantified form. The general
theorem takes `f∈A_d`, `g∈A_e`, `d<0<e`, and `(d:K)≠0`.
The preceding [graded-slice module](GradedSlicePointDerivation.md)
then proves (tangent) on this exact `C`.

Applying the coefficient-inversion theorem gives a finite set of actual
`O`-algebra points and the exact all-points-zero implication. The
`−2,+2` specialization derives `CharZero K` from `CharZero O` and
faithful scalar action, thereby supplying the nonzero degree cast.

Both statements explicitly retain `Algebra.FiniteType O C` and (units)
for the same slice ring. This continuation does not reconstruct
[FtHolds.lean][ft] or derive all coefficient units from a chosen DVR
uniformizer. The point-separation return is now available once those
suppliers are established. The subsequent construction of the actual
slice membership, local reducedness in the graded pieces, cyclicity,
length at most one, and Rees/Herbrand and lower cotangent comparisons
remain separate steps in the
[arithmetic route](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md).

## Hostile checks and necessary hypotheses

### Coefficient inversion cannot be omitted

The imported audit uses `O=ℤ`, `C=ℤ/2ℤ`, and
`K=AlgebraicClosure ℚ`. The target is an algebraically closed field
with faithful `ℤ`-action, and `C` is a finite-type reduced
`ℤ`-algebra. There is no `ℤ`-algebra point `C→K`: such a point
would send `2=0` in `C` to the nonzero integer `2` in `K`.
Thus all point-derivation vanishing conditions hold vacuously, while
the all-points-zero implication fails at `1`. The image of `2` is
not a unit. The audit proves all these claims needed for this control,
including the finite-type instance, absence of points, the vacuous
derivation condition, failure of separation, and failure of (units).

A nonvacuous analytical variant is `O=ℤ`, `C=ℤ×𝔽₂`, and
`K=ℂ`. There is exactly one `ℤ`-algebra point: the first projection
followed by `ℤ→ℂ`. A field-valued point sends the two orthogonal
idempotents to `0` and `1`; the second possibility would give a unital
map `𝔽₂→ℂ`, so only the first projection is possible. Its point
derivations vanish: idempotents have zero derivative, and
`ℤ`-linearity kills the first component. Yet `(0,1)` is nonzero
and killed by the point. The image of `2` is `(2,0)`, which is not
a unit. This variant is a written counterexample, not claimed as a
compiled fixture here.

### Finite type is needed for point finiteness

Take an algebraically closed field `K`, let `O=K`, and let
`C=K^ℕ` with coordinatewise operations. Nonzero coefficients are
units. Every `K`-valued point derivation at every point `ξ` is zero:
for `a∈C`, put `b=a-ξ(a)·1`. Coordinatewise choose `g` with
`g_n=0` if `b_n=0` and `g_n=b_n⁻¹` otherwise. Then

\[
b=b^2g,\qquad \xi(b)=0.
\]

The product rule gives `D(b)=0`; `K`-linearity and `D(1)=0`
then give `D(a)=0`. Nevertheless, the coordinate evaluation points
are infinitely many, distinguished by the coordinate idempotents.
This is an analytical counterexample to omitting finite type from the
finite-point conclusion. No classification of other points or embedding
of every maximal residue field into `K` is asserted in this example.

### Faithfulness is needed for the fraction-field return

Let `k` be algebraically closed, `O=k[[t]]`, `C=k((t))=O[1/t]`,
and give `K=k` the residue `O`-algebra structure. The algebra `C`
is finite type over `O` and every nonzero coefficient becomes a unit.
There are no `O`-algebra points `C→K`, because `t` is a unit in
`C` but maps to zero in `K`. The tangent statement is vacuous and
separation fails at `1`. The missing hypothesis is faithfulness of
`O→K`. This example is analytical and is not claimed as a compiled
power-series fixture.

### Other boundaries are retained

Algebraic closedness supplies the residue embeddings; its failure and
the nonreduced-algebra obstruction to point separation are treated in
[FiniteTypeResiduePoints](FiniteTypeResiduePoints.md). The zero
derivation premise is substantive: a polynomial algebra has nonzero
point derivations. For the actual graded slice, homogeneity, M4, and
the nonzero degree cast retain the sharp obstructions documented in
[GradedSlicePointDerivation](GradedSlicePointDerivation.md).

The primary proof above uses actual fraction-field extension,
differentials, the finite-support tensor argument, reducedness, and
Jacobson separation. Rephrasing its final step through the nilradical
or repeating the same scalar-extension proof is not an independent
analytic proof. The explicit missing-hypothesis examples are hostile
checks of this argument's scope.

## Declaration and source correspondence

| Public declaration | Mathematical role and source correspondence |
|---|---|
| `field_rigidity_of_pointDerivations` | The field-base return: actual finite module, reduced algebra, finite point set, and separation. |
| `pointHom_respects_fractionScalars` | The original-point compatibility argument in the finite-homomorphism branch of `et_holds`. |
| `rigidity_of_invertible_coefficients` | Complete coefficient-inversion return, strengthened to expose reducedness and with unused DVR/completeness/CharZero premises removed. |
| `finite_points_and_separation_of_invertible_coefficients` | The literal finite-point/separation conclusion of `et_holds`, for the original `O`-algebra maps. |
| `slice_finite_points_and_separation` | Actual slice consumer with general negative/positive degrees; obtains tangent vanishing from the established Euler/M4 theorem. |
| `slice_finite_points_and_separation_of_charZero` | Source degree specialization `−2,+2` with faithful characteristic-zero coefficients. |

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The submitted implementation is not copied or imported. The verification
repository identifies the submitted mathematical source; this does not
attribute authorship of that submitted proof to its verification maintainers.
Local source is original MIT-licensed code attributed to `grwtsk contributors`.

| Pinned comparison source | SHA-256 |
|---|---|
| [EtHolds.lean][et] | `f2c5fbe52de89015a446afccc25c2637dd35794692d1c4ce82a8d55f77d26f80` |
| [SliceHolds.lean][slice] | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [FtHolds.lean][ft] | `f3934878da5e7bb158d2ba4571d0d4f22531a354151813dda2025e3d59e4f298` |
| [ResMapBijective.lean][point] | `20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e` |

| Inspected root Mathlib source | SHA-256 |
|---|---|
| [Unramified/Finite.lean][finite] | `6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168` |
| [Unramified/Field.lean][field] | `f5b5f16c8f436a5b63f025518b05ffa4ee020bd4b8f1082bdb93b1d9c7e70cb8` |
| [FieldTheory/Fixed.lean][fixed] | `81553ba9f92d6a741f3f102e9d38a0b7add914997e3ef58cf501b86b3edcc564` |
| [Localization/Defs.lean][localization] | `b4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d` |

## Exact-source verification

Verification source base:
`grwtsk/math@b09f7ac564b418c51d8062844bd3c9c81e3894db`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
root Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The root import and dependency files are unchanged.

The final maintained source passed `--trust=0 -DwarningAsError=true`,
exit 0 and no diagnostics, in **4.790 seconds**. Its source SHA-256 is
`c47bb344eed0ba3e0e8ea8f7b56f9efacfe27b3d30cf0991717efc22e308dd54`;
the produced object SHA-256 is
`4b49ca7ae67a052aaa61054b90214b4bf0306387181d1e3aaba40ee7984a212a`.

The final imported endpoint/axiom/control audit passed the same flags,
exit 0, in **69.856 seconds**. It independently spells the full source
`et_holds` conclusion, including its stronger original coefficient
assumptions and an actual point-derivation submodule-bottom premise.
It checks restriction of a constructed fraction-field point back to the
original `O`-point, a nonvacuous field-base instance, and the exact
normalized/localized slice return with `M4` stated using the source
submodule's scalar Leibniz convention. Its missing-unit controls prove
the `ℤ/2ℤ` example described above.

All six public theorem axiom queries passed. The fraction-scalar
compatibility theorem reports exactly `[propext, Quot.sound]`; the
other five report exactly `[propext, Classical.choice, Quot.sound]`.
There are no `sorry`, `admit`, custom `axiom`, `native_decide`,
`unsafe`, or `implemented_by` occurrences in the maintained source.

| Final artifact | SHA-256 |
|---|---|
| Imported audit source | `039bc74cfcc703a7aecdd379569acff3393399887b6d0c800c7488b582744773` |
| Imported audit log | `62d045c18472ab08106ce9a496a27a661f5852f4443cfe9ba613378e0e5acca5` |
| Maintained-source log (empty) | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Recorded compilation environment | `0f16e93e990780c8723f4fe99223d968e50e4f6d42626cc682ff19cab6f8e35b` |

Every transitive local import was bound to its checked source and object
before each run. These identities, the maintained source, and the imported
audit source were unchanged before and after their final runs:

| Local dependency | Source SHA-256 | Object SHA-256 |
|---|---|---|
| `FiniteTypeResiduePoints` | `b83a0f173cd57ce06abbd5358b515c6a410acfaea6d0fd0f64c35a75bfc88128` | `9feba70d00633926043383ec89b406f9e2a1f609abd1b2505b97ac8d95ca273c` |
| `PointDerivationUnramified` | `5130fba38d8639efca97bed5fca91e2c82dc64f3c390a0d4e555944c995a3f03` | `46174dc80976ad72fd0baf036dfaabec1e4687aa62754fbcb64b5400bdb1fadc` |
| `GradedSlicePointDerivation` | `e1bc617d6aba18be695666020d5ec6e5cb19bb74b7018a5d3fda4f39a6b2a789` | `35f85c7cbeb9696280b2fba0ab1dd0e481329b1b56c16c76a68c46466c52d4e0` |
| `GradedEulerDerivation` | `1bcaff4f8b45b558a24380410dc8c0997304c6bf6b17119686fb01ae7dd5ee4e` | `d18c57e51acbf2e8725788b8bec9eb5dc2c2411b2fc3d0dc307f37a275555f7b` |
| `LocalizedPointDerivation` | `fb556fbf8ee8ae48899cc225eb529a2093a3573d91a0a67d2b878f90dc15d17f` | `a70fbd14669919510c00b3fc922f69b8e05af49bd46e36f6cb61b8d909116de2` |

All five attempts were retained with their exact source snapshots,
logs, identities, and outcomes:

| Attempt | Outcome | Seconds | Source SHA-256 | Log SHA-256 |
|---|---|---:|---|---|
| Maintained source 1 | FAIL, exit 1 | 8.238 | `d532ac01f2854ffa37b58c60be8f85061555a8d430adc51de277e7d630e82ca3` | `bcd6449c848173efe2d94926b48a5509b92d010fa49ba45c1b00c9976b408123` |
| Maintained source 2 | PASS, exit 0 | 4.790 | `c47bb344eed0ba3e0e8ea8f7b56f9efacfe27b3d30cf0991717efc22e308dd54` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Imported audit 1 | FAIL, exit 1 | 32.616 | `43a840fceb277e78cd204e2d9d7517705b423a63cc9459002d984e0d5c0cd67c` | `06a7301a057645fa958562fad013e9b5eff3fe7764190e758bd9124c73946e49` |
| Imported audit 2 | FAIL, exit 1 | 19.584 | `05b369e8f5550e330547802bd10de44c179acb08349f6d7901751222d5625f7b` | `7aaab8f6d177fcce5f8e2945242b14f784145976b28b69fe7684dafc88616404` |
| Imported audit 3 | PASS, exit 0 | 69.856 | `039bc74cfcc703a7aecdd379569acff3393399887b6d0c800c7488b582744773` | `62d045c18472ab08106ce9a496a27a661f5852f4443cfe9ba613378e0e5acca5` |

The first maintained-source run failed only on eighteen style warnings
about `letI` in proposition proofs. Replacing those bindings with `let`
gave the final passing source without changing its statement or argument.
The first audit failed on an unused extensionality pattern, an unnecessary
`simpa`, and missing explicit modulo-two cast normalization in the scratch
controls. The second audit retained one natural-cast versus numeral
normalization error in the unit control; adding `Nat.cast_ofNat` repaired
it. The six axiom queries passed in all three audit attempts. No audit
repair changed the maintained source or weakened a checked endpoint.
No attempt timed out or was interrupted.

A separate read-only reviewer checked the full mathematics, the source
objects and quantified interfaces, the primary tensor/reducedness
arguments, the hostile examples, and the saved execution evidence. This
review is not another Lean execution or an independently implemented
kernel replay. All eight relative documentation destinations resolve,
and the maintained source and record have no trailing whitespace.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the external consumer are **NOT_RUN**. Read-only
mathematical/source review is distinct from a second compiler or kernel
execution. Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[et]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/EtHolds.lean
[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[ft]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/FtHolds.lean
[point]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[finite]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Unramified/Finite.lean
[field]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Unramified/Field.lean
[fixed]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/Fixed.lean
[localization]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Localization/Defs.lean
