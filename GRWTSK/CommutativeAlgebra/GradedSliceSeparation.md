# Normalized graded slices, point separation, and homogeneous reduction

Local source attribution: grwtsk contributors.

Maintained source: [GradedSliceSeparation.lean](GradedSliceSeparation.lean).
Its namespace is `GRWTSK.CommutativeAlgebra.GradedSliceSeparation`.
The file has **nine public theorems**, **zero private mathematical helpers**,
and **zero new mathematical definitions**. Its local notation expands to
actual ideals, quotients, localizations, and algebra homomorphisms.

The module proves the complete normalized-slice conclusion corresponding to
the pinned `slice_holds`: finitely many normalized points, and a
denominator-cleared ideal relation for every element vanishing at those
points. Finite type, invertibility of nonzero coefficients, and point
separation are supplied by actual earlier theorems rather than left as
premises of the final graded statement. The ninth theorem then proves the
source's local `red` property for an actual homogeneous element and an actual
degree-zero point. The implementation uses only maintained root-Mathlib
dependencies and does not import or copy the submitted implementation.

## 1. Actual objects and the three hypothesis layers

### Quotient and localization

For commutative rings `O` and `A`, an `O`-algebra structure on `A`, an ideal
\(I\subseteq A\), elements \(f,g\in A\), and \(\pi\in O\), set

\[
J=I+(f-1),\qquad B=A/J,\qquad
s=\operatorname{image}(\pi)\operatorname{image}(g)\in B,
\qquad C=B[1/s].
\]

Let \(q:A\to B\), \(\ell:B\to C\), and \(\varphi=\ell\circ q\)
be the canonical `O`-algebra maps. The exact Lean objects are

```lean
J := I ⊔ Ideal.span ({f - 1} : Set A)
s : A ⧸ J := algebraMap O (A ⧸ J) π * Ideal.Quotient.mk J g
C := Localization.Away s
φ := (IsScalarTower.toAlgHom O (A ⧸ J) C).comp
  (Ideal.Quotient.mkₐ O J)
```

The first six theorems concern these literal objects. The kernel criterion
needs only the commutative-ring and algebra structures. Point statements
add a field `K` with `[Algebra O K]`. Extending every normalized point
requires only
\(\operatorname{algebraMap}_{O,K}(\pi)\ne0\), not a domain structure on
`O` or faithfulness of the entire coefficient map.

The normalized point set is

\[
\mathcal N=\{\xi:A\to_O K\mid \xi(I)=0,\ \xi(f)=1,\ \xi(g)\ne0\}.
\]

It is not a set of representatives modulo a torus action. No orbit quotient
or global orbit-coverage conclusion is introduced here.

### The full graded supplier

For `slice_holds`, `O` is a domain and a DVR, `K` is an algebraically closed
field, and the `O`-action on `K` is faithful. The algebra `A` has an actual
integer grading `𝒜 : ℤ → Submodule O A`. The assumptions are:

- `I.IsHomogeneous 𝒜`.
- A finite set generates `A` together with the actual degree-zero algebra:
  `∃ s : Finset A, Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤`.
- The literal `M2` condition:
  `((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG`.
- The literal tangent-dependence content of `M4`. At every `O`-algebra point
  killing `I` where some negative-degree and some positive-degree element
  have nonzero values, any two `O`-linear maps to `K` satisfying the point
  Leibniz rule and killing `I` are linearly dependent over `K`.
- Homogeneous elements \(f\in\mathcal A_d\), \(g\in\mathcal A_e\),
  with \(d<0<e\) and with the image of the integer \(d\) in `K` nonzero.

More explicitly, the dependence conclusion supplies \(c,c'\in K\), not
both zero, with \(cD+c'E=0\). The point Leibniz rule is
\(D(ab)=\xi(a)D(b)+\xi(b)D(a)\). These are the original linear maps and
their actual point-derivation conditions, not formal dimension labels.

The `slice_holds_of_charZero` specialization uses degrees `−2,+2` and
`[CharZero O]`. Faithfulness gives characteristic zero in `K`, hence
\((-2:K)\ne0\). Neither theorem assumes adic completeness, an augmentation,
`IsCO O (𝒜 0)`, or restrictions on the degrees of the finite generators.

### The homogeneous reduction return

The final theorem adds an `O`-algebra point
\(\sigma:A_0\to K\), where \(A_0=\mathcal A_0\), and an actual
\(\tau\in A_0\) with underlying element \(\tau=fg\) and
\(\sigma(\tau)\ne0\). For a homogeneous \(h\in\mathcal A_w\), a
degree-zero element \(b\) with \(\sigma(b)\ne0\), and any
\(n\in\mathbb N\), it proves

\[
bh^n\in I
\quad\Longrightarrow\quad
\exists b'\in A_0,\quad \sigma(b')\ne0\ \text{and}\ b'h\in I.
\]

There is no assumption that `σ` extends to a point of `A` or of `A/I`.
The integer `n` may be zero. The conclusion is a concrete multiplier
statement for the specified homogeneous element.

## 2. Complete primary analytical proof

### The kernel is a power-denominator condition

The defining property of localization gives

\[
\ell(q(h))=0
\quad\Longleftrightarrow\quad
\exists n\ge0,\quad s^nq(h)=0\text{ in }B.
\]

The set of denominators is exactly the powers of `s`, so no arbitrary
denominator has been substituted. Since quotient maps preserve products,
powers, and coefficients,

\[
s^nq(h)=q\bigl(\pi^n\mathbin{\cdot}(g^nh)\bigr).
\]

The right side vanishes exactly when
\(\pi^n\cdot(g^nh)\in J\). This proves the stronger equivalence
`sliceMap_eq_zero_iff`, including both directions. It remains valid when
the localization is the zero ring, when `s` is a zero divisor, and when
`n = 0`. It does not assert that `φ` is injective.

### Every localized point is normalized

The map `φ` kills `J`, hence kills `I`. It also kills `f−1`, so
\(\varphi(f)=1\). In `C`, the product
\(\operatorname{image}(\pi)\varphi(g)=\ell(s)\) is a unit. A factor of
a unit product in a commutative ring is a unit, so \(\varphi(g)\) is a
unit. Any algebra map \(\psi:C\to_O K\) sends that unit to a nonzero
element of the field `K`. Consequently \(\psi\circ\varphi\in\mathcal N\).

This proves `slicePoint_restricts`. It does not require a separate nonzero
image hypothesis on `π`: if such a `ψ` exists, the necessary invertibility
is already forced by the localization.

### Every normalized point extends uniquely when the denominator survives

Suppose \(\xi\in\mathcal N\) and the image of `π` in `K` is nonzero.
The equations \(\xi(I)=0\) and \(\xi(f)=1\) give
\(J\subseteq\ker\xi\). The quotient universal property therefore gives
a map \(\bar\xi:B\to_O K\) with \(\bar\xi\circ q=\xi\).

The denominator has value

\[
\bar\xi(s)=\operatorname{algebraMap}_{O,K}(\pi)\,\xi(g)\ne0.
\]

It is a unit in the field `K`, so the localization universal property gives
\(\psi:C\to_O K\) extending \(\bar\xi\). In particular,
\(\psi\circ\varphi=\xi\).

For uniqueness, two maps from `C` agreeing after composition with `φ` agree
on all elements of `B`, because the quotient map `q` is surjective. Maps
out of a localization agreeing on the original ring agree everywhere:
the image of each inverse is already determined. This is
`slicePoint_ext`, used in `existsUnique_slicePoint`.

Combining restriction and existence gives the exact range identity

\[
\operatorname{range}(\psi\mapsto\psi\circ\varphi)=\mathcal N.
\]

Together with uniqueness, it is the actual point correspondence, not just
an injection into an unspecified finite set.

### Finite separating localized points return to the original algebra

Assume the set of `O`-algebra maps `C → K` is finite, and assume these points
separate zero:

\[
\bigl(\forall\psi:C\to_O K,\ \psi(z)=0\bigr)\Longrightarrow z=0.
\]

The range identity makes \(\mathcal N\) finite. If \(h\in A\) vanishes
at every point in \(\mathcal N\), restriction shows that every point of
`C` kills \(\varphi(h)\). Separation gives \(\varphi(h)=0\). The
kernel criterion then supplies an actual exponent `n` with
\(\pi^n\cdot(g^nh)\in J\).

Set \(c=\pi^n\). Its image in `K` is a nonzero power of the nonzero image
of `π`, so \(c\ne0\) already in `O`. Thus

\[
\exists n\in\mathbb N,\ \exists c\in O\setminus\{0\},\qquad
c\cdot(g^nh)\in I+(f-1).
\]

This proves `normalized_points_and_denominator_of_slice_points`. Its
coefficient-nonvanishing argument needs no domain assumption on `O`. The
generic theorem does keep finite localized points and separation as explicit
premises; the full graded theorem supplies both as follows.

### Supply finite type, coefficient units, and tangent rigidity

Choose an irreducible element `π` of the DVR `O`.

First, the actual degree-zero image in `A/I` is a finite `O`-module by `M2`.
Together with the finite extra generators from `hgen`, this makes `A/I`
finite type over `O`. Its further quotient `A/J` is finite type, and
adjoining the inverse of one element preserves finite type. This is exactly
`FiniteTypeGradedQuotient.finiteType_sliceAway`; its complete argument is in
[FiniteTypeGradedQuotient.md](FiniteTypeGradedQuotient.md).

Second, `π` becomes a unit in `C`, because it is a factor of the inverted
product `s`. Every nonzero element of a DVR is a unit times a power of the
chosen irreducible element. Hence every nonzero coefficient from `O`
becomes a unit in `C`. This is
`DVRLocalizedCoefficients.slice_coefficients_are_units`, proved in
[DVRLocalizedCoefficients.md](DVRLocalizedCoefficients.md).

Third, consider a point \(\psi:C\to_O K\) and a point derivation `D` on
`C`. Its pullback `D′` to `A` kills `I`. Since `f` becomes `1` in `C`,
\(D'(f)=D(1)=0\). The Euler point derivation `E` acts on a homogeneous
element of degree `j` as \(E(a)=j\xi(a)\), where
\(\xi=\psi\circ\varphi\). Homogeneity of `I` makes `E` kill `I`.
The normalized nonzero values of `f` and `g` make `ξ` two-signed.

The `M4` dependence equation therefore gives \(cD'+c'E=0\), with
\(c,c'\) not both zero. Evaluating at `f` yields \(c'd=0\). The
hypothesis \((d:K)\ne0\) forces \(c'=0\), hence \(c\ne0\) and
\(D'=0\). The Leibniz rule on a fraction then forces `D = 0`, because
its denominator has nonzero value at `ψ`. The preceding checked theorem
`GradedSlicePointDerivation.slice_point_eq_zero` supplies exactly this
argument; see [GradedSlicePointDerivation.md](GradedSlicePointDerivation.md).

The already established finite-type rigidity theorem now applies to the
literal algebra `C`. Its argument uses residue-field points and the finite
module of Kähler differentials to obtain formal unramifiedness. With
compatible `FractionRing O` scalar structures on the same rings, finite type and formal
unramifiedness give a finite reduced algebra; finite points and Jacobson
separation return to the original `O`-algebra points. Those exact bridges
are recorded in [FiniteTypePointRigidity.md](FiniteTypePointRigidity.md),
[PointDerivationUnramified.md](PointDerivationUnramified.md), and
[FiniteTypeResiduePoints.md](FiniteTypeResiduePoints.md).

Thus `FiniteTypePointRigidity.slice_finite_points_and_separation` provides
the two premises of the generic transport theorem. Faithfulness sends the
nonzero `π` to a nonzero element of `K`, so the lift/range theorem also
applies. This completes `slice_holds`. The characteristic-zero specialization
supplies the source degrees `−2,+2` and their nonzero degree cast.

### From a homogeneous power relation to a multiplier nonzero at `σ`

Assume \(bh^n\in I\), with `h` homogeneous and \(\sigma(b)\ne0\).
Take any normalized point `ξ` of `A`. Applying it to the relation gives

\[
\xi(b)\,\xi(h)^n=0.
\]

There are two cases. If \(\xi(b)=0\), then \(\xi(bh)=0\) immediately.
Otherwise, the field has no zero divisors, so \(\xi(h)^n=0\), which
forces \(\xi(h)=0\), and again \(\xi(bh)=0\).

This argument never identifies `ξ` with an extension of `σ`.
In particular, \(\sigma(b)\ne0\) does **not** license cancellation of
\(\xi(b)\). It also covers `n = 0`: the evaluated relation then forces
\(\xi(b)=0\); the other branch would say \(1=0\) in a field. Directly,
when `n = 0` the original hypothesis is `b ∈ I`, so `bh ∈ I` is already
available.

Apply `slice_holds_of_charZero` to `bh`. It gives \(N\ge0\) and
\(c\ne0\) with

\[
z=c\cdot\bigl(g^N(bh)\bigr)\in I+(f-1).
\]

The element `z` is homogeneous of degree \(2N+w\). The nonzero-degree
dehomogenization theorem supplies \(m\ge0\) with \(f^m z\in I\).
Using \(\tau=fg\), define the actual degree-zero element

\[
b'=c\cdot\bigl(\tau^{N+m}b\bigr)\in A_0.
\]

The ring identity

\[
b'h=(f^Ng^m)\,\bigl(f^m\,c\cdot(g^N(bh))\bigr)
\]

puts `b′h` in `I`. Moreover,

\[
\sigma(b')=
\operatorname{algebraMap}_{O,K}(c)\,
\sigma(\tau)^{N+m}\sigma(b)\ne0,
\]

because the coefficient map is faithful and each displayed factor is
nonzero. The maintained theorem invokes the already checked
`GradedDehomogenizationLocalization.exists_point_multiplier_of_slice`,
which constructs this multiplier. See
[GradedDehomogenizationLocalization.md](GradedDehomogenizationLocalization.md)
and [GradedDehomogenization.md](GradedDehomogenization.md) for the homogeneous
dehomogenization proof and its precise hypotheses.

This proves `exists_point_multiplier_of_pow_mem` without assuming a point of
`A` lying above `σ`, without requiring `ξ(b) ≠ 0` at arbitrary normalized
points, and without excluding exponent zero.

## 3. Declaration correspondence and the length consumer

| Maintained declaration | Source correspondence or actual consumer |
|---|---|
| `sliceMap_eq_zero_iff` | The exact quotient/Away kernel calculation in the final denominator-clearing block of `slice_holds`; both directions are exposed locally |
| `slicePoint_restricts` | Source `hslice`: restriction kills `I`, sends `f` to one, and sends `g` to a nonzero value |
| `slicePoint_ext` | Localization and quotient uniqueness underlying point transport |
| `existsUnique_slicePoint` | Source normalized-point lifting, strengthened to a stated unique extension |
| `range_slicePoint_restriction` | Exact range equality; the source only needed one inclusion for finiteness |
| `normalized_points_and_denominator_of_slice_points` | The finite-point and ideal-membership return after `et_holds` |
| `slice_holds` | Full slice conclusion for arbitrary `d < 0 < e`, with the nonzero degree cast explicit |
| `slice_holds_of_charZero` | Full source conclusion for degrees `−2,+2` |
| `exists_point_multiplier_of_pow_mem` | The local `red` claim in `locLen_quotientWeightPiece_le_one` |

The last result gives vanishing of the specified homogeneous quotient class
after localization at \(P=\ker\sigma\): the multiplier `b′` lies outside
`P` and kills that class. It is not a new `IsReduced` instance for the
entire prime-localized algebra. No claim about arbitrary inhomogeneous sums
or the full ring's nilradical is substituted for the actual statement.

The subsequent length-one consumer is constructed separately in
[GradedPointLengthOne.md](GradedPointLengthOne.md). It uses this homogeneous
reduction property together with three further pieces of mathematics:

1. **Quadratic cyclicity of the chosen weight piece.** Choose a homogeneous
   `e` of degree `−2w` and `e′` with \(ee'=\tau^k\). Then
   \(hh'e\) has degree zero for `h,h′` of weight `w`. If every square
   value \(\sigma(h^2e)\) vanishes, the finite-image nilpotence supplier
   followed by `red` kills every localized class. Otherwise choose `h₀`
   with \(\sigma(h_0^2e)\ne0\); the identity
   \((h_0^2e)h=(hh_0e)h_0\) makes its class a local generator.
2. **Annihilation by the prime kernel.** The finite-image nilpotence
   supplier turns \(\sigma(p)=0\) into a relation
   \(bp^n\in I\) with \(\sigma(b)\ne0\). Apply the new homogeneous
   reduction property to `ph` to obtain a multiplier outside `P` killing
   `ph`. Thus the maximal ideal of the localized coefficient ring kills
   the localized weight piece.
3. **The residue-field length argument.** A cyclic module annihilated by
   that maximal ideal is a quotient of the residue field. The residue
   field has module length one, so the quotient has length at most one.

Their separate construction and formal evidence belong to that consumer's
record. None of these length statements is one of this module's nine
declarations. Likewise, finite normalized slice points do not by themselves
establish global orbit coverage, the later cotangent-length estimate, the
valuation bound, or the RH conclusion.

## 4. Pinned source comparison and retained assumptions

The mathematical comparison pin is
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
This repository pin identifies the submitted mathematical source; it does
not by itself attribute the submission's authorship to its verification
maintainers. No separate paper edition or individual theorem author is
established by these files. The complete cited files were read, and their
local bytes were compared with the pinned Git objects.

| Pinned source | Precise role | SHA-256 |
|---|---|---|
| [SliceHolds.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean) | `UpperTheory.V.Alg.M.slice_holds`; the actual quotient, localization, point correspondence, and denominator-cleared return | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [FtHolds.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/FtHolds.lean) | `ft_holds`, supplying finite type of the actual quotient from generation and `M2` | `f3934878da5e7bb158d2ba4571d0d4f22531a354151813dda2025e3d59e4f298` |
| [OrbitVanishingLocal.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean) | `IsWRing.gen`, `OnS`, `TwoSigned`, `M2`, and `M4` | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [LocLenQuotientWeightPieceLeOne.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean) | The `red` claim inside `UpperTheory.V.Alg.M.locLen_quotientWeightPiece_le_one`, and its subsequent cyclicity/kernel/length consumers | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |

The source's `IsWRing.gen` includes a finite set whose elements have degrees
`−2`, `−1`, `1`, or `2`. The finite-type proof uses only the remaining
adjoin equality; the imported audit explicitly projects that equality from
the stronger source-shaped premise. The augmentation, `IsCO`, adic
completeness, and the augmentation's fixed-point property are unused in this
slice argument and are omitted locally. The source's `Type` binders are
generalized to `Type*`.

The full graded theorem retains homogeneity of `I`, the actual `M2` image,
the actual `M4` dependence condition, algebraic closedness, and faithful
coefficients. The generic degree statement makes the nonzero cast visible;
the source-degree theorem derives it from characteristic zero. No premise
is silently replaced by an assumed finite point set, assumed zero
derivation space, assumed slice relation, or assumed localized vanishing.

The primary analytical argument shares the source's chain of finite type,
Euler/M4 rigidity, separating points, and dehomogenization. Splitting it into
reusable theorems and strengthening point transport to unique extension and
range equality are changes of formal organization and useful local
consequences, not claims of an independent proof of the submitted argument.
The controls below independently test the roles of several hypotheses.

## 5. Hostile and positive controls

### Compiled controls in the final imported audit

- **A coefficient nonzero in `O` can still disappear in `K`.** The audit
  takes `O = A = ℤ`, `K = ZMod 2`, `I = 0`, `f = g = 1`, and `π = 2`.
  The original normalized point exists and `π ≠ 0` in `O`, but no point
  exists on the actual localization, since the now-invertible `2` would
  map to zero. This tests the generic lifting theorem's nonzero-image
  hypothesis; it is not presented as a counterexample retaining the full
  graded theorem's faithful DVR assumptions.
- **The value of `g` must be nonzero.** Evaluation at zero on `ℚ[X]`, with
  `I = 0`, `f = 1`, `g = X`, and `π = 1`, is a point killing `I` and
  taking `f` to one. It cannot extend to the actual slice where `X` is
  inverted. The audit proves the failure of extension.
- **A positive denominator exponent can be necessary.** For `A = K × K`,
  `I = 0`, `f = 1`, `g = (1,0)`, `h = (0,1)`, and `π = 1`, the audit
  proves `φ h = 0`, `h ∉ J`, and the actual exponent-one membership
  `π ^ 1 • (g ^ 1 * h) ∈ J`. The kernel criterion cannot be replaced by
  membership before denominator clearing.
- **The localization may genuinely be zero.** With `A = K`, `I = 0`,
  `f = 1`, `g = 0`, and `π = 1`, the audit proves `φ 1 = 0` while
  `1 ∉ J`. Since `φ` is unital, this is the actual zero localized ring,
  not an assumption of inconsistency in `K`.
- **The point correspondence also has a nonvacuous positive case.** For
  `A = O = K`, `I = 0`, and `f = g = π = 1`, the identity point extends
  uniquely to the literal quotient/localization slice.

The audit also spells the source's actual point-derivation submodule of
linear maps satisfying scalar Leibniz, and uses its `M4` condition to obtain
the complete source-degree slice conclusion and the full homogeneous `red`
statement. These targets leave no finite-type, coefficient-unit,
point-separation, or slice-membership premise unresolved.

### Analytical controls for the full graded assumptions

These two polynomial examples are analytical checks of the full graded
scope; they were not compiled as grading instances in this pass.

**An empty normalized slice and a zero localization are legitimate.** Let
`O` be a characteristic-zero DVR faithfully embedded in an algebraically
closed field `K`. Give `A = O[x,y]` the degrees `deg x = −2`, `deg y = 2`,
and let `I = (xy)`, `f = x`, `g = y`. The algebra is generated by the finite
set `{x,y}` over degree zero; the degree-zero image in `A/I` is `O`, so
`M2` holds. A point killing `I` cannot have both `x` and `y` nonzero, so
there are no two-signed points on which `M4` needs to be checked.

Here `J = (xy,x−1) = (y,x−1)`, and `A/J ≅ O`. The image of `g` is zero,
so `C = 0` and the normalized point set is empty. For `h = 1`, the
vanishing premise is vacuous, but the theorem correctly gives the relation
`y ∈ J` with exponent one. Exponent zero and a nonzero coefficient cannot
work: evaluation at `x = 1, y = 0` kills `J` and fixes every coefficient
from `O`. This also shows why the conclusion permits an empty finite set
and does not assert existence of normalized points.

**Dropping `M4` allows invisible nilpotents.** Keep the same coefficient
conditions, and take

\[
A=O[x,y,\varepsilon],\qquad
\deg x=-2,\quad\deg y=2,\quad\deg\varepsilon=0,
\qquad I=(xy-1,\varepsilon^2).
\]

The ideal is homogeneous, the extra generators `x,y` are finite, and the
degree-zero image in `A/I` is the finite `O`-module
`O[ε]/(ε²)`. The normalized quotient for `f=x`, `g=y` is exactly that
dual-number algebra, and localization at `πg` yields
\((\operatorname{Frac} O)[\varepsilon]/(\varepsilon^2)\).
Every field-valued normalized point kills `ε`,
but no nonzero coefficient times any power of `y` kills `ε` in the
normalized quotient: `y = 1` there and the nonzero class of `ε` is a free
coefficient direction. Thus the denominator-cleared conclusion for
`h = ε` fails when `M4` is removed.

The obstruction is visible in tangent space: the torus direction and the
`ε` direction give independent point derivations. It also obstructs the
homogeneous reduction statement with `b = 1`, `n = 2`, and a degree-zero
point with `σ(xy) = 1`, `σ(ε) = 0`. This example is not a counterexample
to the actual theorem, whose `M4` hypothesis rules it out.

## 6. Exact formal evidence and all attempts

The source base is
`grwtsk/math@1d7d057d8c47c3d0535af91a1a746f8fbaaa0d20`. The selected
compiler is Lean **4.34.1**, revision
`5045d0056413266e57c625dcd7c365b10e377c52`. Root Mathlib remains pinned to
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Every listed source or audit execution used
`--trust=0 -DwarningAsError=true`. The source-bound checker retained each
attempt's exact source snapshot, complete log, command, elapsed time,
environment digest, outcome, and before/after source and dependency
identities outside the maintained source tree. The actual six attempts are:

| Attempt | Outcome | Elapsed seconds | Exact scope or failure |
|---|---|---:|---|
| `source1` | **FAIL**, exit 1 | 11.144070618 | Projection syntax inside the local `sliceMap` notation failed quotation prechecking and caused dependent elaboration failures. |
| `source2` | **FAIL**, exit 1 | 5.477119782 | A localization-unit fact lacked its explicit target type, leaving the `IsLocalization.Away` instance unresolved. |
| `source3` | **PASS**, exit 0 | 6.838490936 | Intermediate eight-theorem source: the complete transport and full graded slice results, before adding the homogeneous `red` consumer. |
| `source4` | **PASS**, exit 0 | 7.534493360 | Final nine-theorem maintained source, including `exists_point_multiplier_of_pow_mem`. |
| `audit1` | **FAIL**, exit 1 | 8.102286055 | All nine axiom reports and the source/full-`red` targets were accepted. Failures were confined to fixtures: identity-map definitional equality, explicit `ZMod 2` numeral normalization, noncomputable scratch abbreviations, an ambiguous polynomial coefficient type, and an unnecessary-`simpa` warning. |
| `audit2` | **PASS**, exit 0 | 7.631075385 | Final imported exact targets and all controls, after fixture-only repairs. Maintained source unchanged. |

Each attempt's recorded source and dependency bindings remained unchanged
during its run. No timeout or interrupted Lean attempt is present in this
module's six-record history. Intermediate success is not substituted for
final-source success, and the failed runs remain recorded as failures.

The final imported audit's nine `#print axioms` results, one for each public
declaration listed above, are exactly

```text
[propext, Classical.choice, Quot.sound]
```

The scratch `sourcePointSpace` is the genuine submodule of `O`-linear maps
to `K` satisfying scalar Leibniz. The source-shaped audit retains the
stronger generator-degree premise and adic completeness and projects only
the used data before applying the maintained theorems. It does not import
the external `IsWRing` implementation or assert a check of the external
repository's full dependency closure.

| Final evidence object | SHA-256 |
|---|---|
| Maintained Lean source / `source4.source.lean` | `70e49a88c4803d7d493321a5b3c3d501541350939232419214d9012981fe99d3` |
| Final maintained module `.olean` | `3efa4a4d315f6f772ec6269e1d0eaa2dfd6fcd27059b46feacad363bb4c2f8d2` |
| Final imported `EndpointAudit.lean` / `audit2.source.lean` | `d430a23eda11f564a146de9e27af967a09d49d41fabae7c5839abf8c0a33852a` |
| Final source log, empty | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Final imported audit log | `49e9cb9e2f3a13ded04c5e913f6ab47ba70ab0e6fc8dc6389fce60904158050b` |
| Exact checker environment | `237d578a8adb02cc0d5de73055e5cf1cfd5ecb15db4275e20f7077e3e543960f` |
| Fresh dependency identity record | `04984f33aea9498b059bf3338fa1066f0f7647c69bf4e7a811552deb25aaa3bf` |

| Earlier attempt | Source snapshot SHA-256 | Complete log SHA-256 |
|---|---|---|
| `source1` | `2e285278bd280de84a48791e164975cea7baf5f04c1353ae0c807309c56477a9` | `90a80f5ce0f8357de8caa485bd5d34f19bfbae730bf29e2b69440c0a95c71034` |
| `source2` | `3711c129e08b94aed886c6730bf6cb3c1cb6e4a21830ea9beb8a6e1a87a58ac7` | `31a4824264286f33a7a06f0ce24720698f924a1a9146af197c655d054e9ec928` |
| `source3`, eight theorems | `422642b6d6a4d2f637d4810f840bddbda2c0257bd4fa5383f2b8a4727e0b6fba` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `audit1` | `696dfbe0d7a4028f5e4c1cb6a39b6549cf54ba920dc3e8eaad184cbf9f95e50e` | `250c4d1e0fd101e04d69276a9627576fff52c6ba4e7ecc0d250af56b37929605` |

The fresh dependency identity check reports the actual Lean binary version
and compiler revision, all nine package revisions matching the root
manifest, clean tracked package sources, and byte-identical root import,
toolchain, lakefile, and manifest relative to the source base. It is an
identity/cleanliness check, not a proof rebuild of those packages.

The three prior dehomogenization objects used by the added `red` theorem
were copied with verified source/object bindings. Their copy record has
SHA-256 `55be5dfe12ac43b4e482adc5dda55dbe78d4b545450a2b075afdf95f0cf85e0c`.

| Reused maintained dependency | Source SHA-256 | Imported object SHA-256 |
|---|---|---|
| `GradedDehomogenization` | `663cd4bcb09681ff26de5eb57b871f9e7830178b8290bf97cc62f31b321f481b` | `910ae50e0776228ad834787122150dfbe0d2fa10b8ecbb0eae426a4e69c90df2` |
| `GradedDehomogenizationLocalization` | `1dcb30f4fcaf1a17b9be188a60f62daea285ae0586403d32c239ef657135e6cd` | `3300e661ff2b54056d98b4294337cba98673b42b0f9106166398e933a09effab` |
| `GradedQuotientExact` | `d493ae61a2bf01ae9b43dd44fb44ddd55877a1008e486f962eeabbf63bba2570` | `6987243d6bbf2ff45f4ca92894a54ef11ac4bd82396f77145d260a5afbba7aca` |

Those three dependencies were not freshly replayed in this pass. Earlier
finite-rigidity/Euler dependencies and Mathlib were likewise consumed via
their selected objects; the runner checked the recorded maintained
source/object bindings before and after each run. The new finite-type and
DVR-unit supplier records report their own separate source checks.

The frozen nine-theorem source and final imported audit received a separate
read-only mathematical/source review with **PASS**, no mathematical
findings, and no reviewer Lean execution. That review is distinct from the
stock Lean runs and does not establish an independent proof of the whole
submitted argument.

Fresh full-dependency proof replay, independent-kernel verification,
exhaustive regeneration or hashing of package objects, and substitution
into the external submitted build are **NOT_RUN**. The final source and
audit have the actual successful checks recorded above; those results do
not promote later length, global orbit, valuation, or RH claims beyond
their own separately recorded evidence.
