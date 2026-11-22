# HS-95 lane 06 · Prime-field reduction of the original window polynomial

Local source attribution is grwtsk contributors. Formalization and checking assistance by OpenAI Codex.

[PrimeWindowGoodReduction.lean](PrimeWindowGoodReduction.lean) reduces the coefficients of the original integer window polynomial modulo a prime q. Its nodes are the residues in ZMod q of the 95 canonical addresses. The proof preserves the existing integer address list, slot order, and polynomial. [Integer window and rational routing](PrimeWindowPolynomial.lean)

## Exact criterion and reconstruction

For every prime q and every window k, a field element is a root of the reduced polynomial iff it is the residue of some original slot. The derivative at a slot is the product of its differences from all the other slots. Therefore all reduced slot roots have nonzero derivative iff reduction of the addresses is injective. The field has no zero divisors, so a single equal pair makes the derivative vanish and a product of distinct differences stays nonzero.

Under injectivity, every field root selects a unique original slot by `reducedWindow_root_unique`. Lagrange interpolation evaluates back to every original slot value for a payload in the chosen field. `first_representative_exact` gives a second return for the first window when q > 499. In that case the canonical natural representative of an address residue is the original ordinary prime.

## First-window classification and controls

For prime q, the first window has distinct residues iff **q ≥ 251 and there is no prime q+2 at most 499**. The largest original node is 499, and every prime through it occurs. The proof has two parts.

- For each prime q < 251, a kernel-checked finite certificate supplies two first-window primes a and a+2q with a < 32. They coincide modulo q.
- For q ≥ 251, two different first-window roots with the same residue must differ by exactly q. Their positive difference is at most 497, below 2q. Since q is odd, the two primes cannot both be odd. The smaller prime must be 2, leaving q+2 as the only possible partner.

Thus 251 is the least prime characteristic preserving distinct roots. Here 251+2 = 253 = 11·23. The larger prime 269 still fails because 2 and 271 collide. In characteristic 17, the two source roots 2 and 19 merge, and both the reduced polynomial and its derivative vanish at residue 2. These are exact controls on the actual first window.

A monic linear factor X−C(r) has nonzero constant iff its reduced address r is nonzero. Every prime q ≤ 499 is itself in the first window and reduces to zero. The least prime characteristic with both injectivity and nonzero constants is therefore **503**. The canonical lift at 503 recovers each original prime exactly.

## Arithmetic return and remaining obligations

The number 503 describes a direct linear representation with the nonzero-constant constraint. The existing Alexander incidence construction uses the fixed field ZMod 17. A rational-prime address transfer into that construction needs a different encoding and a proof that it respects actual knot divisibility incidences and the required arithmetic observations. A finite field interpolation inverse recovers field-valued slot data. The fixed-point criteria of the waveform and routing models depend on their specified phase or slot action. The original character-weighted prime-power return has its own exact coefficients. [Alexander vertex and incidence](../OperatorTheory/PrimeKnotAlexanderSpectralTriple.lean) · [Linear address obstruction](../OperatorTheory/PrimeKnotLinearAddressObstruction.lean) · [Waveform model](../OperatorTheory/FinitePhaseWaveformPolynomial.lean) · [Character-weighted source return](ZetaAndLFunctionsAnalyticTheory/PrimeOrbitCharacterReturn.lean)

```text
Original integer window polynomial + coefficient reduction → exact reduced root set
Distinct residues ↔ simple roots → unique slot and field-valued interpolation
q > 499 → original natural address via the canonical representative
Actual knot incidence map and arithmetic readout bridge → remaining source-return obligation
```

## Exact sources

The local namespace is `GRWTSK.NumberTheory.PrimeWindowGoodReduction`. The preceding canonical window source `PrimeWindowPolynomial.lean` was checked at Git blob `bc7440e58b8bf216bbe1f1ca80da9e6aff82dd04`. This is a local finite arithmetic and polynomial consequence of that source and Mathlib's prime-field and Lagrange identities. The new source SHA-256 is `e0f68d3580acb98beb3d7b7fb77c07eca527ecdfc75369422a97a8b6ad8b9cd0`.

## Verification

The targeted build, direct compilation with `--trust=0` and warnings as errors, and targeted kernel replay passed on Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. A transitive audit of ten principal declarations found only `propext`, `Classical.choice`, and `Quot.sound`. The full import-closure replay, knot realization and independent scholarly review are `NOT_RUN`.
