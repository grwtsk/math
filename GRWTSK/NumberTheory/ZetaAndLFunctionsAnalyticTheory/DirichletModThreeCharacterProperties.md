# Native modulo-three character data for the Weil source

Local source attribution: grwtsk contributors.

Maintained source:
[DirichletModThreeCharacterProperties.lean](DirichletModThreeCharacterProperties.lean).

## Exact source and consumer

The source character is the existing
`GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction.modThreeQuadratic`
from
[DirichletModThreeCharacter.lean](DirichletModThreeCharacter.lean),
pinned initially at
[`grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`](https://github.com/grwtsk/math/commit/5624239ab1a35db87d6eb8aa7771f68ad7117b74).
No replacement character or primitive-character assumption is introduced.

The consumer is the arithmetic return from the conductor-three integrated
kernel. That kernel has real signed prime coefficients, whereas the literal
`twistedPrime` source retains the real part of a product of complex character
and correlation values. The conversion needs real-valuedness of this
particular quadratic character. Its primitive conductor and gamma parity
are additional, distinct source facts.

## Complete mathematical argument

The character is defined by composing the integer-valued quadratic
character of the finite field `ZMod 3` with `Int.castRingHom Complex`.
Every value therefore has zero imaginary part and is fixed by complex
conjugation. This argument includes the value zero on nonunits.

The existing source proves that the character takes the value minus one
at two. Since minus one equals two in `ZMod 3`, the character is odd.
Oddness refers to the character argument: `chi(-a) = -chi(a)`.
It imposes no parity restriction on the waveform.

Mathlib proves that a character's conductor divides its level and that a
character has conductor one exactly when it is principal. Here the level
is the prime three, so its conductor is either one or three. The existing
nonprincipal theorem excludes one. The actual conductor is therefore
three, which is precisely the definition of `IsPrimitive` in the pinned
Mathlib API. This proves genuine primitivity instead of taking it as a
hypothesis.

The source's `gammaParity` is zero when the character takes value one at
minus one and one otherwise. The proved value minus one therefore yields
`gammaParity modThreeQuadratic = 1`.

Finally, for any complex number `z`, the imaginary component of the
character is zero, so the ordinary complex multiplication identity gives

\[
\operatorname{Re}(\overline{\chi_3(a)}z)
=
\operatorname{Re}(\overline{\chi_3(a)})\operatorname{Re}z.
\]

Applying that exact equality to every summand of the maintained prime
inventory gives

\[
\operatorname{twistedPrime}(T,\chi_3,C)
=
2\sum_{n\in\operatorname{activePrimePowers}(T)}
\operatorname{primeWeight}(n)
\operatorname{Re}(\overline{\chi_3(n)})
\operatorname{Re}(C(n)).
\]

The original strict cutoff, all prime-power weights, character signs and
factor two remain unchanged. This finite algebraic statement holds for
every supplied complex sequence `C`; an application still has to identify
that sequence with the actual waveform correlation.

## Source comparison and hostile check

For a general complex coefficient, taking real parts separately is wrong:
with `c = i` and `z = i`,
`Re(conj(c) * z) = 1`, whereas
`Re(conj(c)) * Re(z) = 0`. Character oddness alone does not remove this
imaginary coupling. The new factorization uses the proved zero imaginary
part of the native character.

The conductor argument is independently understandable through the
elementary classification of the divisors of three. Its formal proof uses
Mathlib's actual conductor and factorization API. These are complementary
explanations of one proof, not independent external verification.

This is a local consequence of existing definitions and library theorems.
No external theorem is imported as a new axiom, and no novelty claim is made.

## Declaration correspondence

All declarations are in the unchanged native character namespace.

| Declaration | Exact contribution |
| --- | --- |
| `modThreeQuadratic_im` | Zero imaginary component of every native value. |
| `modThreeQuadratic_conj` | Conjugation fixes every value. |
| `modThreeQuadratic_odd` | Genuine odd Dirichlet parity. |
| `modThreeQuadratic_neg` | Character argument negation law. |
| `modThreeQuadratic_conductor` | Actual conductor equals three. |
| `modThreeQuadratic_isPrimitive` | Primitivity derived from that conductor. |
| `modThreeQuadratic_gammaParity` | Exact arithmetic gamma parity equals one. |
| `modThreeQuadratic_conj_mul_re` | Real-part factorization for the native coefficient. |
| `modThreeQuadratic_twistedPrime_eq` | Return to the literal finite arithmetic prime term. |

## Primary dependencies and remaining return

The native definition uses Mathlib's quadratic character and its ring-hom
composition. The conductor step uses
`DirichletCharacter.conductor_dvd_level`,
`DirichletCharacter.eq_one_iff_conductor_eq_one`, and
`Nat.dvd_prime`, at Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`:

- [Dirichlet character definitions and conductor](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean).
- [Quadratic character](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LegendreSymbol/QuadraticChar/Basic.lean).
- [Native gamma data](WeilGammaData.lean).
- [Literal prime source](CharacterWeilWindowBounds.lean).

These facts discharge the character-side prerequisites of the
conductor-three arithmetic return. The
[return module](WeilConductorThreeKernelReturn.md) separately establishes
integrability, gamma interchange, integration by parts, and support/domain
return. A finite comparison with physical energy and useful sign
certificates remain separate obligations. Neither primitivity nor the
coefficient identity proves RH/GRH.

## Verification

The exact source compiled with no diagnostics under Lean `4.34.1` and
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, using the pinned
`lake env lean` command and producing its own `.olean`. All nine new
theorem declarations passed transitive axiom auditing; every reported
axiom set contains only `propext`, `Classical.choice`, and `Quot.sound`.
The audit exited successfully in 23.522 seconds.

Lean source SHA256:
`f11edfe53665b406d9ef45e0b6f58d28773319e1597b8c6ccfbbc1c2657b722a`.

The combined source build and all-54-public-declaration axiom audit also
passed. Separate fresh-replay attempts remained operationally incomplete:
one timed out during dependency import, and the other encountered Lean's
legacy/module-system compatibility guard. Neither reached a new-declaration
replay verdict. The complete evidence is recorded at the delivered source
in [issue #1839](https://github.com/grwtsk/math/issues/1839) and the
[return record](WeilConductorThreeKernelReturn.md).
Independent external mathematical review and an independently implemented
kernel checker are **NOT_RUN**.
