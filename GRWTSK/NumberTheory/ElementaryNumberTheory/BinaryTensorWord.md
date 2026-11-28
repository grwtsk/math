# Binary tensor word: mathematical source record

Attribution: grwtsk contributors.

## Identity and consumer

- Repository: `grwtsk/math`.
- Path: `GRWTSK/NumberTheory/ElementaryNumberTheory/BinaryTensorWord.lean`.
- Namespace: `GRWTSK.NumberTheory.BinaryTensorWord`.
- Source SHA-256: `55ebb0186b56b991855bc19bdb561a45377def9d42af9dfd2ce023fd0697fc9f`.
- Consumer: PGATN AT-001; the canonical 8×16 bit-array storage interpretation, preceding the Rust word codec refinement.

## Statements and hypotheses

`Tensor` is precisely `(Fin 8 × Fin 16) → Fin 2`. `gridIndex` sends `(i,j)` to `16*i+j` in `Fin 128`, with inverse division/remainder by 16. `digits` is the corresponding least-significant-first list of 128 binary digits, and `valuation` uses the canonical `Nat.ofDigits 2` decoder.

For every T of this exact type, `digits_bounded` proves that each digit is below 2, `valuation_lt` proves `valuation T < 2^128`, and `valuation_formula` proves the actual double sum `sum_i sum_j T(i,j)*2^(16*i+j)`. `encode` packages that value in `Fin (2^128)`; `encode_injective` and `encode_bijective` prove the required bijection for this very map. No hypothesis asserts the conclusion or assumes a bijection exists.

## Complete analytical argument and comparison

Division by 16 proves the grid index and its inverse. Flattening preserves exactly the bit entries and the positional exponents. Mathlib's digit-decoder uniqueness says that equal-length bounded digit lists with equal decoded values are identical. Applying this to the actual flattened arrays proves injectivity. The source and target both have cardinality 2^128, so that injective map is surjective. The weighted-sum theorem separately establishes the required source formula; equal cardinality is not used to substitute a different arbitrary map.

The direct analytical inverse is repeated binary Euclidean division: the remainder determines the low bit, and the quotient determines the remaining bits by induction. Its range bound follows from the geometric sum `1+2+...+2^127=2^128-1`. This is the comparison argument for the same map, with the same low-bit convention. The present formal source proves existence/surjectivity of the fixed map; executable Rust bit-extraction correspondence remains separate.

A bit permutation with weights left fixed does not preserve integer value: moving a single bit from position 0 to position 1 changes 1 to 2. Binary arrays are not closed under entrywise integer addition, and the bijection does not assert an integer-ring structure on the finite word space. Structural word atomicity is an interface property, not primality or tensor indecomposability.

## Canonical sources

Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`: `Data/Nat/Digits/Defs.lean` (`Nat.ofDigits_inj_of_len_eq`, `Nat.ofDigits_lt_base_pow_length`); `Data/Nat/Digits/Lemmas.lean` (`Nat.ofDigits_eq_sum_mapIdx`); `Data/List/OfFn.lean`; `Data/List/Indexes.lean`; `Data/Fintype/EquivFin.lean` (`Fintype.bijective_iff_injective_and_card`); and `Algebra/BigOperators/Fin.lean`. The source adds the requested geometry and source-preserving composition of these established facts. No novelty claim is made.

## Observed verification

On 2026-11-28 the exact source compiled at the canonical module path with Lean 4.34.1, binary commit `5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib pin above. The transitive axiom audit observed only `propext`, `Classical.choice` and `Quot.sound`. No placeholder axiom occurred. Fresh kernel replay of the five-module PGATN bundle exited 0.

The detailed package verification manifest has SHA-256 `8c47a3c1016ccd44d83cf53a881788f03141de41e731f31d913c89a876967b5f`. This is Lean kernel replay, not a second independently implemented verifier or a Rust execution proof. Source-level bijection is established; complete AT-001 implementation refinement remains open.
