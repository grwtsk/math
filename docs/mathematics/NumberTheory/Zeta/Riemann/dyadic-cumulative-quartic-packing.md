# Cumulative dyadic quartic volume packing

The prior per-stage renormalization packet is now rejected as a constructive target. For an off-line zero it asks for a positive normalized coefficient while the same scaled envelope dominating that coefficient tends to zero. Its own endpoint therefore proves the packet uninhabited.

The corrected volume-packing architecture is cumulative.

For an actual hypothetical off-line zero, let A_j^D and T_j^D be the nonnegative normalized axial/transverse dyadic Gram coefficients and let

Q_j^D = a^4 A_j^D + 3 a^2 t^2 T_j^D.

Seek a nonnegative common lower source weight lambda_j such that

lambda_j <= A_j^D,
lambda_j <= T_j^D,

and

sum_{j<N} lambda_j -> +infinity.

Separately prove one finite total source budget B with

sum_{j<N} Q_j^D <= B

for every N.

Then

sum_{j<N} Q_j^D
 >= (a^4+3a^2t^2) sum_{j<N} lambda_j.

For a!=0 the quartic factor is strictly positive, so the right side diverges while the left side stays bounded. Contradiction.

This is a genuine packing argument: infinitely much positive occupied mass cannot fit inside one finite source volume.

The source program therefore splits cleanly into two non-tautological tasks:

1. Upper/volume task: derive a uniform finite cumulative budget. The existing safe-half-plane Green envelopes and unconditional Chebyshev/von-Mangoldt estimates are candidates.
2. Lower/packing-density task: derive a common lower weight for the normalized axial/transverse Gram coefficients with divergent total mass.

The second task is now the decisive positivity-density obstruction. It cannot be supplied by upper bounds alone.
