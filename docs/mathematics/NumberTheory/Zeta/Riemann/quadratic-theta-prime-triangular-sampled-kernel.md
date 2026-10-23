# Triangular sampled-kernel propagation

The kernel estimate is now transferred to the discrete (X)-lattice before
introducing any prime weights.

First, the source exposes the non-existential form of the already-proved Fejer
decay:
[
|K_N(t)|lerac1{4Nt^2},
qquad
0<|t|lerac12.
]

Define the naturally normalized sampled kernel
[
widetilde K_{X,N}(d)
=
rac1X
left|K_N!left(rac dXight)ight|.
]

For
[
1le d,qquad 2dle X,
]
the source derives
[
oxed{
widetilde K_{X,N}(d)
le
rac{X}{4Nd^2}.
}
]

This is sharper than the earlier schematic (1/d) harmonic leakage model:
after the (1/X) convolution normalization, the kernel itself has a
square-summable (d^{-2}) tail on the principal half-circle.

No prime-prefix smoothing identity is inferred from this alone.  The remaining
arithmetic supplier is now isolated as
`PrimePrefixSampledKernelTailPropagationClaim`: identify the actual
prime-prefix tail error with a logarithmically weighted sum of these sampled
kernel values.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAMPLED_KERNEL_SQUARE_DECAY_SOURCE_WRITTEN /
PRIME_PREFIX_CONVOLUTION_IDENTIFICATION_OPEN`.
