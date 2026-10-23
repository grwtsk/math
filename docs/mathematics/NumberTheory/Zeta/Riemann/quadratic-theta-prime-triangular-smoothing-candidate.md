# Triangular smoothing candidate

The smoothing branch now has one explicit finite-frequency candidate.

For cutoff (N>0), define

[
w_N(n)=
egin{cases}
rac{N-n}{N}, & n<N,\\
0, & nge N.
end{cases}
]

This is the triangular coefficient profile underlying classical Fejér
averaging, defined directly in the repository without claiming a formalized
Fejér theorem.

The new source proves:

[
w_N(n)=0 quad (nge N),
]

[
0le w_N(n)le1,
]

and

[
sum_{n<N} w_N(n)^2le N.
]

Therefore the coefficient side of the previously declared smoothing packet is
now concrete.  `triangularPrimeIntervalSmoothingPacket` instantiates
`PrimeIntervalSmoothingPacket` with this proved (L^2) budget and the target
inverse-cutoff boundary scale (1/N).

The remaining analytic theorem is isolated as
`TriangularBoundaryApproximationClaim`: the triangular kernel must actually
approximate each interval prefix with boundary error (O(X/N)).  No such
majorant/minorant or convolution estimate is claimed yet.

This is the first point where an explicit smoothing family replaces the prior
abstract packet.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
TRIANGULAR_COEFFICIENT_PACKET_CONSTRUCTED / BOUNDARY_APPROXIMATION_OPEN`.
