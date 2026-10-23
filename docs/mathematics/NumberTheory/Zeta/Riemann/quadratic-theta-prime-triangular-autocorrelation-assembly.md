# Triangular autocorrelation assembly

The autocorrelation has now been assembled through the zero, positive, and
negative offset pieces.

The repository Fourier convention is verified explicitly:

[
e^{2pi i d t}
=
operatorname{fourier}(d,t),
]

and

[
overline{e^{2pi i d t}}
=
operatorname{fourier}(-d,t).
]

The zero diagonal is evaluated exactly:

[
sum_{a=b<N}
e^{2pi iat}overline{e^{2pi ibt}}
=
N.
]

After inserting the previously proved positive and negative diagonal formulas,
the normalized geometric autocorrelation is reduced to

[
1
+
sum_{1le d<N}
rac{N-d}{N},operatorname{fourier}(d,t)
+
sum_{1le d<N}
rac{N-d}{N},operatorname{fourier}(-d,t).
]

This expression is named `triangularAssembledFrequencySum`.

The remaining autocorrelation obligation is now only the finite integer-index
rewrite

[
oxed{
	exttt{triangularAssembledFrequencySum}
=
	exttt{symmetricTriangularKernel}.
}
]

No analytic estimate remains in this step.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
AUTOCORRELATION_ASSEMBLED_SOURCE_WRITTEN / FINAL_INTEGER_FREQUENCY_REWRITE_OPEN`.
