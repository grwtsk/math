# Explicit smoothing packet frontier

Mathlib does not currently expose a ready-made Fejer theorem/kernel in the
searched Fourier library, so the next step is expressed as an explicit source
contract instead of importing a nonexistent theorem.

A `PrimeIntervalSmoothingPacket` records exactly the data a concrete positive
trigonometric smoothing construction must provide:

1. a finite frequency cutoff (N);
2. an (L^2) coefficient budget bounded by (O(N));
3. a boundary-width budget bounded by (O(1/N)).

A `DyadicPrimeIntervalSmoothingFamily` then specifies how the cutoff grows
with the dyadic scale:

[
N_X lesssim X^eta.
]

The previously proved exponent window applies unchanged:

[
rac14leetalerac12.
]

The balanced choice

[
eta=rac13
]

puts both schematic costs at

[
rac23,
]

leaving power slack before the (3/4) target.

The remaining theorem is now
`PrimeDFTSmoothingPacketReadoutAt family rho`: it must prove that a concrete
packet family, together with the existing prime-only Fourier energy bound,
controls the finite partial-prime discrepancy.

This increment does not construct the smoothing coefficients or claim a Fejer
formalization. It turns the heuristic smoothing route into a finite,
reviewable supplier interface.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXPLICIT_SMOOTHING_PACKET_TYPED / SMOOTHING_PACKET_CONSTRUCTION_OPEN`.
