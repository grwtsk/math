# Canonical binary address code and prime labeling

Source: [CanonicalPrimeBeaconIndex16.lean](CanonicalPrimeBeaconIndex16.lean).
Consumer: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Construction and mathematical argument

The field element `ZMod 2` is mapped to its explicit numerical
representative `Fin 2`. Pinned Mathlib's
`finFunctionFinEquiv` then codes each of the four bits of a port
as an integer in `Fin 16`, and all 16 port-ordered address bits
as an integer in `Fin 65536`.

The address code is an equivalence, so it is injective. The existing
frozen subtype `Beacon 4` embeds into the 16-bit address range.
Its image has exactly 4096 members by the already checked
`beacon_card_four`. `Finset.orderIsoOfFin` assigns each beacon the
rank of its numeric code in the *increasing* sequence of frozen codes.
The rank map is injective and bijective by equal cardinalities.

The resulting `canonicalPrimeLabel` uses the actual zero-indexed
nth prime. Its primality and injectivity are obtained from the
existing verified `indexedPrime_prime` and
`indexedPrime_injective`; numerical range uses the explicit
finite cutoff premise `PrefixFits16` until the independent prime
count certificate has been compiled and audited.

No arbitrary `Fintype.equivFinOfCardEq` supplies this canonical
layout. The bit orientation (little endian), port order and frozen
code sorting are explicit and reproducible. Implementation of this
mapping in a Rust/Metal runtime still requires source-verified
correspondence rather than assuming memory layout from a Lean type.

## Limitations and audit

- This is a source-level Lean proof candidate; compilation, kernel
  replay, and axiom audit have NOT_RUN status.
- The 59 previously checked theorem endpoints are unchanged.
- Memory page placement, APFS sector assignments, physical GPU
  threading and local processor cache behavior are not mathematical
  properties of the code.
- Full lossless decoding is supplied by the explicit `addressCode`
  equivalence. Runtime serialization should agree on endianness.

Pinnned Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
No new axioms, sorry, admit, unsafe or native_decide.
