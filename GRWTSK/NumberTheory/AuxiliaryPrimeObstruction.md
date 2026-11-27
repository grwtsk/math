# A checked obstruction at a ramified input

Local source attribution: grwtsk contributors.

The [Lean module](AuxiliaryPrimeObstruction.lean) proves the unconditional
statement
`GRWTSK.PrimeFieldFactoring.no_auxiliary_prime_two_two (l : ℕ) :
¬ AuxiliaryPrime 2 2 l`.
Its consumer is the scope review of the
[analytic existence theorem](AuxiliaryPrimeAnalyticExistence.md). It rules out
all auxiliary primes for this input, independently of any finite search cap.

## Primary source correspondence

The auxiliary predicate comes from OpenAI, *Deterministic Polynomial
Factorization over Prime Fields*, October 4, 2026, the auxiliary-prime table
and Proposition 11.3 (`analytic:auxiliary`), at revision
`3344da59991ed94f9ba711217b29c1d760badfa6`.
[Auxiliary table](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/01-table.tex)
· [Analytic proposition, blob `21081c288d68760167d2d94a34247ba61240dddf`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex).
The counterexample is a local consequence of classical supplementary quadratic
reciprocity. It is not an upstream theorem imported under a new name, and it
does not contradict the proposition's retained large-characteristic hypothesis.

The precise formal dependencies are Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`:

| Upstream declaration | Role in the local theorem |
| --- | --- |
| `ZMod.exists_sq_eq_two_iff` | For an odd prime $\ell$, identifies squareness of $2$ with $\ell\equiv1,7\pmod8$. |
| `ZMod.euler_criterion` | Converts squareness of the nonzero class $2$ to $2^{\lfloor\ell/2\rfloor}=1$ in $\mathbf F_\ell$. |
| `ZMod.prime_ne_zero` | Uses distinct primes $\ell$ and $2$ to discharge the nonzero-class hypothesis. |
| `Nat.mod_mod_of_dvd` | Transfers $\ell\equiv1\pmod{24}$ to congruences modulo eight and two. |

The supplementary law is in
[QuadraticReciprocity.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LegendreSymbol/QuadraticReciprocity.lean),
whose retained source bylines are Chris Hughes and Michael Stoll. Euler's
criterion is in
[LegendreSymbol/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LegendreSymbol/Basic.lean).
No upstream source was modified by this local development.

## Argument and boundary

Assume an admissible $\ell$ exists. Its predicate gives primality,
$\ell\ne2$, and $\ell\equiv1\pmod{24}$. Hence $\ell\equiv1\pmod8$,
so $2$ is a square modulo $\ell$. The class is nonzero because the primes
are distinct. Euler's criterion gives $2^{\lfloor\ell/2\rfloor}=1$.
The congruence modulo two makes $\ell$ odd, so
$\lfloor(\ell-1)/2\rfloor=\lfloor\ell/2\rfloor$. This contradicts the
last conjunct of `AuxiliaryPrime 2 2 l`.

This is a proof about every natural $\ell$, not evidence from an exhausted
finite scan. It shows why the unramified-input and genuine extension-degree
conditions in the field argument cannot be removed indiscriminately.
The theorem has no zero-free, explicit-formula, field-splitting or bounded
existence premise. It does not claim every excluded input behaves the same way.

## Exact-source evidence

Source Git blob: `18f51b4ba3a2ad7c2c50b584af84f90aaf33bd00`.
Source SHA-256: `d41e8f4310a25ccc7118081f7e93aa853466075fa8dde3ce1db1f92e0727b0a1`.
Lean 4.34.1, build `5045d0056413266e57c625dcd7c365b10e377c52`, and the pinned
Mathlib compiled the source with exit 0 and no diagnostics. The direct
`#print axioms` audit reports exactly `propext`, `Classical.choice` and
`Quot.sound`; no `sorry` or additional axiom occurs. The [source-bound group replay](AuxiliaryPrimeAnalyticExistence.md#exact-source-verification-2026-11-27)
passed for all 46 public declarations and 45,786 transitive constants using
exactly those three axioms. The supplement and Euler
criterion are shared established dependencies, rather than independent proofs
of one another or of the positive analytic existence theorem.
