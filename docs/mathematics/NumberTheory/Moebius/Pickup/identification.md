# Equivalent signed pickup integrals

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Mathlib retains its upstream authorship and license.

`OriginalPickupIdentification.lean` compares two separately defined integrals:
the ProofHorizon material pickup over `(1, exp T]` with density
`M(x) / x^(3/2)`, and the time-coordinate pickup over `0..T` with density
`exp(-u/2) M(exp u)`. Their independently proved closed finite formulas give
literal equality at every nonnegative real time, including integer arrival
endpoints. The shared inventory is `Icc 1 (floor (exp T))`.

The kernel adapter converts `n^(-1/2)` to the reciprocal real square root.
It preserves the arrival gate and keeps the actual signed Möbius coefficient
outside the unsigned kernel. Native Gram set integrals agree with CCC ordered
interval integrals with the hypothesis `0 <= T`. The full Gram, diagonal,
and complete ordered cross sums agree; erasing the diagonal in the inner
inventory has exactly the same effect as the CCC off-diagonal conditional.
Both distinct-pair orders and all signs survive.

The energy and local return energy agree after the absolute-square and endpoint
normalizations are paid. The literal complete signed residual
`wholePickup u - ArithmeticPickupSource.pickup u` vanishes for `u >= 0`.
Its energy is zero at every nonnegative time, and consequently has a proved
upper estimate at every positive exponential rate.

Polynomial waveform, signed cross, return and joint budget propositions transfer
in both directions. The actual main-energy all-rate proposition and the
integrability proposition for every positive damping rate also transfer in both
directions. These are identities of the same arithmetic observable. They do
not supply an independent main-energy estimate, the original supplier estimate,
a Sturmian observable identification, a determinant bound, or RH.

The next arithmetic obligation is an independent all-rate upper estimate on the
now identified complete signed pickup energy or cross term, retaining both
cutoff endpoint sums and any full signed finite-prime-product debt. The existing
zero residual settles representation normalization only. No arithmetic growth
witness is assumed or claimed.

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimitiveIdentification.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimitiveIdentification.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimitiveIdentification.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 21 |
| Theorem/lemma commands | 20 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
