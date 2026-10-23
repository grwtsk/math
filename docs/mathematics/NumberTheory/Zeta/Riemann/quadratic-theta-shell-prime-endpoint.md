# Prime endpoint form of dyadic shell cancellation

The first nonlinear supplier can now be aligned exactly with the existing
prime-only arithmetic coordinates.

For every positive natural scale (X),

[
	heta(2X)-	heta(X)-X
=
Xigl(operatorname{primeOnlyMass0}(X)
      +operatorname{primeOnlyMass1}(X)igr).
]

This follows from the already formalized literal identity

[
operatorname{primeOnlyMass0}(X)+operatorname{primeOnlyMass1}(X)
=
rac{	heta(2X)-	heta(X)}{X}-1.
]

Hence the new theta-shell error at the left endpoint (u=X) is not a new
analytic object: it is exactly the endpoint direction of the prime-only witness.

The important limitation is quantification.  The quadratic recurrence requires

[
|	hetaError(u)+	hetaShellError(u)|+1
lesssim A^2/X+X^{2ho-1+eta/2}
]

for **every** (uin[X,2X]).  The current endpoint coordinate gives only the
special point (u=X).

The Lean module therefore introduces:

- `QuadraticThetaShellAnchorCancellationAt rho`: the recurrence estimate only
  at the dyadic anchor;
- `QuadraticPrimeEndpointCancellationAt rho`: the same statement written
  exactly in prime-only endpoint coordinates;
- a proof that those two statements are equivalent;
- `ThetaShellAnchorUniformizationAt rho`: the explicit missing theorem
  upgrading anchor cancellation to uniform cancellation.

Thus the (7/8	o3/4) supplier is now split into two auditable obligations:

1. prove the prime endpoint cancellation estimate at (7/8);
2. prove the endpoint-to-uniform shell extension on each octave.

No uniformization, exponent improvement, or RH claim is proved here.

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ENDPOINT_SHELL_IDENTITY_EXACT / UNIFORM_SHELL_EXTENSION_OPEN`.
