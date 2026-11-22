# CRT control coordinates: mathematical argument and provenance

Local source attribution: grwtsk contributors.

Maintained source: [Riemann95ControlCoordinates.lean](Riemann95ControlCoordinates.lean).
Namespace: `GRWTSK.ComputerScience.Riemann95ControlCoordinates`.
Status of every new Lean declaration: **SOURCE_PROOF_CANDIDATE**.
Coordination: [math #1838](https://github.com/grwtsk/math/issues/1838).

## Exact arithmetic and consumer

For a finite control label `s : Fin 95`, `decode s` is the pair
`(s mod 5, s mod 19)`. For `a : Fin 5` and `b : Fin 19`, `encode (a,b)`
is `(76*a + 20*b) mod 95`. The coefficients satisfy

- `76 = 1 mod 5` and `76 = 0 mod 19`;
- `20 = 0 mod 5` and `20 = 1 mod 19`.

Therefore decoding an encoded pair returns the given residues. Conversely,
the reconstruction and `s` have equal residues modulo both relatively prime
moduli. Their difference is divisible by 95, and their representatives both
lie between 0 and 94, so they are equal. These are `decode_encode` and
`encode_decode`; `controlCoordinates` packages their exact inverse maps.
The Lean candidates use finite decision procedures for these two fixed
95-element statements. They introduce no claimed transition factorization.

The coefficient order in the original proposal fails: `(20*1 + 76*0) mod
95` is 20, whose residues are `(0,1)` instead of `(1,0)`.
`swapped_coefficients_fail` records this counterexample.

The literal Cryptids machine enters label 48 on its first blank-tape step.
`decode_forty_eight` computes `(3,10)`. Holding the first residue at 3 while
forcing the second to 1 reconstructs label 58, not 48;
`forced_phase_one_changes_label` records both values.
[Riemann95Instrumentation.lean](Riemann95Instrumentation.lean) connects
these arithmetic facts to the actual imported transition-table cell.
The numeric counterexample in this file alone does not assert which label
any source machine reaches.

The correct encoding is an isomorphism of finite label types. It gives no
reason for the second residue to advance by one, for the first residue to
be an independent five-state machine, or for any clock to choose the tape
head. An external nineteen-phase clock needs its own metadata coordinate.
Machine control labels, arithmetic stage slots `95*w+j+2`, prime-base slots,
and scheduler phases remain distinct mathematical objects.

## Comparison, provenance, and open boundaries

These declarations are local elementary CRT specializations. No external
paper theorem or novel CRT result is claimed. The primary modular argument
above supplies the mathematical proof; direct enumeration is a different
finite check of the fixed instance, not an independent analytic theory.

An ordinary JavaScript check in this authoring session enumerated all
95 input labels and all 95 residue pairs. Both round trips returned the
inputs. It also returned `(0,1)` for the reversed-coefficient example,
`(3,10)` for label 48, and 58 for the forced pair `(3,1)`.
These are finite arithmetic observations, **not Lean or kernel evidence**.

Concrete consumers are the native adapter beside this file and the
control/state distinctions in [math #1813](https://github.com/grwtsk/math/issues/1813)
and [math #1820](https://github.com/grwtsk/math/issues/1820).
No source-observation authentication, all-stage certificate existence,
scheduling fairness, or RH/GRH conclusion follows from the bijection.

The local baseline is `grwtsk/math@749e1706a21a4fe07fda373fb58d5ed15800591c`.
Root pins are Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. A per-file link and target in
the existing isolated Cryptids environment allow the literal-machine
consumer to use the same source under its existing Lean `4.35.0-rc4` /
Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb` pins.

Parsing/elaboration: **NOT_RUN**. Targeted kernel replay: **NOT_RUN**.
Fresh dependency replay: **NOT_RUN**. Transitive axiom audit: **NOT_RUN**.
Independent review: **NOT_RUN**. No Lean or Lake executable was available.
The following is a proposed targeted check from the repository root, not an
executed receipt:

```sh
lake env lean --trust=0 -DwarningAsError=true GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/Riemann95ControlCoordinates.lean
```

The public claims to check are `encode_decode`, `decode_encode`,
`controlCoordinates`, `swapped_coefficients_fail`, `decode_forty_eight`,
and `forced_phase_one_changes_label`, qualified by the namespace above.
