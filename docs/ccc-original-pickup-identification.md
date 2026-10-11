# Original CCC pickup identification

Human mathematical direction: R.A. Jacob Martone. Formalization assistance:
OpenAI Codex. Mathlib retains its upstream authorship and license.

`OriginalPickupIdentification.lean` compares two separately defined integrals:
the ProofHorizon material pickup over `(1, exp T]` with density
`M(x) / x^(3/2)`, and the CCC time pickup over `0..T` with density
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

Run `python3 scripts/check_original_pickup.py` for a fresh pinned source replay
of the selected project import closure, literal contract checks, and native
axiom audits of the original source, original energy and new adapter modules.
The six negative controls retain the nonnegative-time contract, the main-energy
premise, the distinction between main and residual energy, the actual sign at
prime two, the inventory atom at one, and both signed cross orders. The last
cross-order control uses a two-atom algebraic Gram fixture; it supplies no
arithmetic asymptotic estimate. Mathlib dependency objects are pinned and used,
not independently source-replayed. Independent acceptance remains **PENDING**.

The next arithmetic obligation is an independent all-rate upper estimate on the
now identified complete signed pickup energy or cross term, retaining both
cutoff endpoint sums and any full signed finite-prime-product debt. The existing
zero residual settles representation normalization only. No arithmetic growth
witness is assumed or claimed.
