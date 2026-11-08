# Elliptic prime-residue samplewise transport references

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.

## Classification

This increment is a local elementary construction over the repository's actual integral Mathlib `WeierstrassCurve ℤ` sources. It does not import a paper theorem and makes no historical-priority claim.

## Primary source chain

- `grwtsk/math@4ecb4e571664b05e4b5f032dc71e22dd668cdcee`
  - `EllipticPrimeResidueFiberPorts.lean`
  - actual affine residue-fiber equivalence from equality of all five reduced Weierstrass coefficients;
  - full finite point-count equality, including the point at infinity;
  - compilation, fresh kernel replay and transitive axiom audit `NOT_RUN`.
- `EllipticPrimeResidueFiberCounting.lean`
  - occurrence-preserving three-sector ordered packet;
  - exact signed route-plus-defect identity;
  - finite local reciprocal window.
- `EllipticFiniteEulerWindow.lean`
  - `GoodPointCountCertificate`;
  - `integralModelCount`;
  - source Frobenius traces and reciprocal local factors.
- pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`
  - `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean`;
  - `WeierstrassCurve.map` and `WeierstrassCurve.map_Δ`;
  - the discriminant is functorial under the residue map.

## New source role

`EllipticPrimeResidueSamplewiseTransport.lean` derives:

1. equality of reduced curves from the five coefficient congruences;
2. equality of discriminants modulo the selected prime;
3. equivalence of good-reduction conditions;
4. target `GoodPointCountCertificate` construction;
5. global all-prime `ChannelPort` construction;
6. finite occurrencewise routing requiring congruence only at observed primes;
7. exact preservation of trace packets, all direct local coefficients and finite local reciprocal products;
8. an exact signed samplewise kernel defect;
9. finite-prime `a₆` deformations preserving every selected local fiber and Euler factor.

## Hostile boundary

For a finite prime set `S`, the model

\[
a_6\longmapsto a_6+\left(\prod_{p\in S}p\right)t
\]

has the same selected reductions for every integer `t`. A nonzero `t` gives a different integral model. Therefore finite exact local point counts or Euler factors do not establish global curve isomorphism, isogeny, global `L`-function equality or equality of zero sets.

## Verification

- analytical derivation: `WRITTEN`;
- Lean source candidate: `WRITTEN`;
- compilation: `NOT_RUN`;
- exact expected types: `NOT_RUN`;
- fresh kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- global elliptic `L`-function comparison: `NOT_PROVED`;
- Möbius endpoint kernel comparison: `NOT_PROVED`;
- RH: `UNPROVED`.

## Next bridge

Construct the affine-fiber equivalence induced by an integral Weierstrass variable change whose scaling parameter is a unit modulo the selected prime. That result would cover genuine minimal-model changes, rather than only identity-coordinate coefficient congruence, and would feed the existing native local-power-series model-transport seam.
