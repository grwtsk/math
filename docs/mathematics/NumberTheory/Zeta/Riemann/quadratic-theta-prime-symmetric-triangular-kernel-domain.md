# Symmetric triangular kernel domain correction

The closed-form interface previously used only the hypothesis (t
e0).
That is too broad for a periodic kernel: nonzero integers represent the zero
point on the unit circle, while (sin(pi t)=0).

The downstream decay argument never needs that global statement.  Its exact
domain is

[
0<|t|le rac12.
]

The new source therefore introduces
`SymmetricTriangularKernelClosedFormOffBoundaryClaim` on precisely this
interval.

Using Jordan's inequality, it also proves

[
|sin(pi t)|ge 2|t|>0,
]

so the sine denominator is automatically nonzero throughout the corrected
domain.

The source then proves that this corrected closed form is sufficient for the
same pointwise kernel decay

[
|K_N(t)|le rac{1}{4Nt^2}.
]

The geometric-block sine conversion interface is corrected in parallel to
`TriangularGeometricBlockSineNormOffBoundaryClaim`.

Thus the closed-form branch no longer carries an unnecessarily global domain
assumption.  The remaining finite algebra is still the autocorrelation
partition and the off-boundary sine conversion.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CLOSED_FORM_DOMAIN_CORRECTED / AUTOCORRELATION_PARTITION_AND_SINE_CONVERSION_OPEN`.
