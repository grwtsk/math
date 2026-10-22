# Sobolev threshold collision in the Fourier route

The next standard way to remove the raw (sqrt N) maximalization loss is to
weight high Fourier frequencies.

For a one-dimensional Fourier series, the elementary Cauchy--Schwarz argument

[
sum_k |c_k|
le
left(sum_k (1+|k|)^{2s}|c_k|^2ight)^{1/2}
left(sum_k (1+|k|)^{-2s}ight)^{1/2}
]

requires

[
s>rac12
]

for the second factor to converge.  This is the ordinary Sobolev-to-supremum
threshold.

The exact Green source is built from arithmetic step atoms plus a smooth
logarithmic background.  For the model Fourier behavior of one jump,

[
|c_k|asymp |k|^{-1},
]

the weighted square series behaves as

[
sum_k |k|^{2s-2}.
]

Its p-series convergence condition is

[
2s-2<-1
iff
s<rac12.
]

The new Lean module formalizes this algebraic threshold collision:

[
oxed{
s>rac12
quad	ext{and}quad
2s-2<-1
quad	ext{cannot both hold}.
}
]

It also defines the exact weighted arithmetic object
`greenPrimeOnlySobolevHead s X N` and the all-scale supplier
`AllDyadicPrimeOnlySobolevBoundAt s`.

A successful weighted route would need a theorem

[
	exttt{AllDyadicPrimeOnlySobolevBoundAt}(s)
Longrightarrow
	exttt{DyadicThetaErrorOscillationAt}(ho),
]

recorded as `PrimeSobolevMaximalReadoutAt s rho`.

The threshold collision is intentionally limited in scope.  The module does
not prove that every actual repository coefficient has an exact (1/k)
asymptotic.  It therefore does not rule out arithmetic cancellation, an
endpoint logarithmic inequality, bounded variation/Besov machinery, a
Carleson-type maximal estimate, or another non-Sobolev mechanism.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SOBOLEV_THRESHOLD_COLLISION_TYPED / WEIGHTED_ARITHMETIC_SUPPLIER_OPEN`.
