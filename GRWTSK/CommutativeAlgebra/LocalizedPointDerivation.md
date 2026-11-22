# Point derivations are determined before localization

Local attribution: grwtsk contributors.

Maintained source: [LocalizedPointDerivation.lean](LocalizedPointDerivation.lean).
Namespace: `GRWTSK.CommutativeAlgebra.LocalizedPointDerivation`.

## Actual mathematical objects

Let `R,C,K` be commutative rings, let `S` be a multiplicative submonoid
of `R`, and suppose that the actual algebra map

\[
\iota:R\longrightarrow C
\]

makes `C` a localization of `R` at `S`. In Lean these are
`[Algebra R C]` and `[IsLocalization S C]`.

Let `O` be a commutative coefficient ring, with `O`-algebra structures
on `C` and `K`. Fix an actual algebra homomorphism `ψ:C→ₐ[O]K` and an
actual linear map `D:C→ₗ[O]K` satisfying the point Leibniz rule

\[
D(xy)=\psi(x)D(y)+\psi(y)D(x).
\]

The principal theorem proves

\[
\boxed{
\bigl[\forall r\in R,\ D(\iota(r))=0\bigr]
\quad\Longrightarrow\quad D=0.
}
\]

The generic statement does not require an `O`-algebra structure on
`R`: its premise concerns the values on the actual image of `R`.
Consequently no scalar-tower compatibility with `R` is silently assumed.
The quotient specialization below has the ordinary compatible algebra
structures supplied by an `O`-algebra `A`.

The target `K` may have zero divisors. The proof cancels a unit in `K`,
not an arbitrary nonzero element. No field, domain, characteristic,
finite-generation, or injectivity assumption occurs in the generic
statement. A submonoid containing zero is permitted; any resulting
trivial-ring case remains a valid instance of the same proof.

The module exposes the raw linear maps and the displayed Leibniz rule.
It introduces no substitute definition of a point derivation or
unspecified localization predicate.

## Complete primary argument

### 1. Express an arbitrary element using a genuine denominator

For any `z∈C`, the localization property supplies `r∈R` and `s∈S`
such that

\[
z\,\iota(s)=\iota(r).
\]

This is the actual `IsLocalization.surj` product identity. It is not
surjectivity of `ι`: an element of a localization generally requires
a denominator and need not be the image of an element of `R`.

### 2. Differentiate the product identity

The assumed vanishing on the original ring gives both

\[
D(\iota(r))=0,\qquad D(\iota(s))=0.
\]

Applying the Leibniz rule to the product identity therefore yields

\[
0=D\bigl(z\iota(s)\bigr)
 =\psi(z)\,0+\psi(\iota(s))D(z)
 =\psi(\iota(s))D(z).
\]

### 3. Cancel the actual unit

Since `s∈S`, the element `ι(s)` is a unit in `C`. Algebra
homomorphisms preserve units, so `ψ(ι(s))` is a unit in `K`.
Multiplication by this unit is injective even if `K` has zero divisors.
Cancelling it gives `D(z)=0`. As `z` was arbitrary, `D=0`.

No injectivity or surjectivity of the original algebra map was used.
The exact product representation and invertibility of the represented
denominator are the substantive localization properties.

### 4. Equality from equal pullbacks

If two point derivations `D,E` are based at the same `ψ` and agree on
the image of `R`, their difference is again an `O`-linear point
derivation at `ψ`. Expanding the two Leibniz identities gives

\[
(D-E)(xy)=\psi(x)(D-E)(y)+\psi(y)(D-E)(x).
\]

Their difference vanishes on the original image. The preceding theorem
gives `D−E=0`, hence `D=E`. The maintained proof checks this difference
identity in the actual linear-map space.

## Exact quotient-localization return

Let `A` be a commutative `O`-algebra, let `J` be an ideal, and choose
`s∈A/J`. The specialization uses the actual ring

\[
C=(A/J)[1/s]=\operatorname{Localization.Away}(s).
\]

Its endpoint is

```lean
theorem eq_zero_of_quotient_away
    (J : Ideal A) (s : A ⧸ J)
    (ψ : Localization.Away s →ₐ[O] K)
    (D : Localization.Away s →ₗ[O] K)
    (hD : ∀ x y, D (x * y) = ψ x * D y + ψ y * D x)
    (hzero : ∀ a : A,
      D (algebraMap (A ⧸ J) (Localization.Away s)
        (Ideal.Quotient.mk J a)) = 0) :
    D = 0
```

Every element of `A/J` has an actual preimage under the quotient map.
The displayed premise consequently gives vanishing on the entire
image of `A/J` in `C`. Apply the general localization theorem to the
multiplicative set of powers of `s`. This quotient-surjectivity step
is proved explicitly; it does not assert that `A→C` is surjective.

The fourth theorem gives equality of two derivations from equality on
this same composite map. Both specialization statements preserve the
actual ideal quotient, Away localization, and original algebra `A`.

## Source comparison and consumer

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | Exact role | SHA-256 |
|---|---|---|
| [SliceHolds.lean][slice] | Final denominator argument in the `hder` proof inside `UpperTheory.V.Alg.M.slice_holds`, immediately before `et_holds` is applied. | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |

This file was read at the pinned source and matched byte for byte to
its Git object. The source chooses

\[
J=I+(f-1),\qquad
s=\overline\pi\,\overline g\in A/J,\qquad
C=(A/J)[1/s],
\]

and writes the canonical composite as `φ:A→ₐ[O]C`. Given a point
`ψ:C→ₐ[O]K` and a point derivation `D`, the Euler/tangent argument
first proves `D(φ(a))=0` for every `a∈A`. The final denominator
argument must then establish `D=0` on all of `C`. That is exactly the
return supplied by `eq_zero_of_quotient_away` here.

The source carries its field, DVR, completeness, characteristic-zero,
finite-image, and rigidity hypotheses throughout the larger theorem.
They are not needed in this denominator-return leaf. The original
proof uses nonzero denominator values in a field. The local proof
uses the stronger unit property, which permits an arbitrary
commutative target ring and isolates the localization mechanism.

The imported audit retypes the source-shaped composite

```lean
(IsScalarTower.toAlgHom O (A ⧸ J) (Localization.Away s)).comp
  (Ideal.Quotient.mkₐ O J)
```

and checks its return under the source's scalar Leibniz convention.
It also instantiates the literal `J=I+(f−1)` and `s=π̄ḡ` expression.

This module supplies the last algebraic step from a zero pulled-back
derivation to a zero slice derivation. It does not produce the Euler
derivation, prove the tangent dependence premise, or establish the
finite/reduced algebra and field-point separation results that follow.
The [arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records those consumers and their current evidence separately.

The implementation is original MIT-licensed source attributed to
`grwtsk contributors`. It imports root Mathlib only. It does not copy or
import the submitted implementation. The comparison repository locates
the submitted mathematics; its verification maintainers are not thereby
identified as authors of the submitted mathematical argument. Mathlib's
upstream attribution and license remain with its imported source.

## Hostile controls and alternative organization

An injective algebra map cannot replace the localization hypothesis.
Take `R=ℚ`, `C=ℚ[X]`, `ψ=eval₀`, and

\[
D(p)=p'(0).
\]

The constant map `ℚ→ℚ[X]` is injective, with evaluation at zero as
a left inverse. The displayed map is an actual linear point derivation,
vanishes on every constant, and sends `X` to one. Thus it is nonzero.
The imported audit constructs this derivative/evaluation composite and
checks its Leibniz rule, vanishing on constants, and nonvanishing on `X`.

Conversely, a localization map need not be surjective. The audit proves
that `ℤ→ℚ` is not surjective by using `1/2`, then consumes the general
theorem with the actual `IsFractionRing ℤ ℚ` instance. No surjectivity
hypothesis is smuggled into that specialization.

In `ℤ/4ℤ`, the nonzero element `2` satisfies `2·2=0`. The audit checks
this exact arithmetic control. It explains why, for the general
commutative target ring, cancellation must use a unit rather than a
merely nonzero element.

One may instead begin with the inverse formula for a point derivation
of a unit,

\[
D(u^{-1})=-\psi(u)^{-2}D(u),
\]

and compute the derivative of each fraction from its numerator and
denominator. This is an alternative organization of the same product
identity and unit-cancellation argument, not a claimed independent
proof. The maintained proof avoids introducing an inverse-derivative
API because the single product relation already gives the exact
consumer.

## Declaration provenance

All declaration suffixes below have the namespace stated at the start.

| Declaration | Established statement |
|---|---|
| `eq_zero_of_isLocalization` | Vanishing on the original ring forces a point derivation on the actual localization to vanish. |
| `ext_of_isLocalization` | Equality on the original ring determines equality at the same point. |
| `eq_zero_of_quotient_away` | Actual quotient-away return from vanishing on the original algebra. |
| `ext_of_quotient_away` | Actual quotient-away equality return from equal original-algebra values. |

The module contains four public theorem bodies, no private helpers, and
no new definitions. The localization product representation and unit
properties come from Mathlib's actual
[localization definitions][mathlib-localization], at the unchanged root
Mathlib revision.

## Exact-source verification

Source base: `grwtsk/math@06a747e6244febf917e797a672c5ea8f6e07064a`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Both completed checks used stock Lean with
`--trust=0 -DwarningAsError=true` and the saved pinned dependency
environment.

| Check | Actual result |
|---|---|
| Exact maintained source, `source1` | **PASS**, exit 0, 7.065 seconds, no diagnostics. |
| Imported endpoints, axioms, and hostile controls, `audit1` | **PASS**, exit 0, 4.506 seconds. |

These were the first source and imported-audit attempts for this module.
No failed, interrupted, or timed-out Lean attempt occurred in this
bounded module development. Exact snapshots, command lines, logs, times,
and identities are retained under the scratch evidence directory
`tmp/euler_localization`.

The transitive axiom reports distinguish the two exact sets:

| Declarations | Reported axioms |
|---|---|
| `eq_zero_of_isLocalization`, `ext_of_isLocalization` | `propext`, `Quot.sound` |
| `eq_zero_of_quotient_away`, `ext_of_quotient_away` | `propext`, `Classical.choice`, `Quot.sound` |

| Final artifact | SHA-256 |
|---|---|
| Maintained source and successful source snapshot | `fb556fbf8ee8ae48899cc225eb529a2093a3573d91a0a67d2b878f90dc15d17f` |
| Produced and imported `.olean` | `a70fbd14669919510c00b3fc922f69b8e05af49bd46e36f6cb61b8d909116de2` |
| Imported endpoint/control audit and snapshot | `19f45d84cfccf4095e99822c10280d45b63fe2d1c79dc61f4e968001ed50f370` |
| Imported audit log | `a9c2419f1e1fc144a32af2ea46d1abafbb112c158a823582180c9f0a7578edc8` |
| Saved verification environment | `470cd18cdb19d12e1462dcb2195d94e25bdd7ca1968746104478fd1d9e7c8301` |

The source and object were unchanged across the checks. No root import
or dependency pin was changed. Fresh full-dependency replay, checking
with an independently implemented kernel, and substitution into the
external geometric consumer are **NOT_RUN**. A source review or a
review of these saved observations is not a second kernel execution.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[mathlib-localization]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Localization/Defs.lean
