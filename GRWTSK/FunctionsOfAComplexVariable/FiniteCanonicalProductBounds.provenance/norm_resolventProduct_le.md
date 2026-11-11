# Finite resolvent product: dimension-free growth control

Local attribution: grwtsk contributors.

Source: [FiniteCanonicalProductBounds.lean](../FiniteCanonicalProductBounds.lean).
Main declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct.norm_resolventProduct_le`.
Supporting declarations: `GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct.norm_finiteProduct_le`, `GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct.resolvent_square_sum_eq_anchorMass`, and `GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct.finiteProduct_anchor`.
Exact source pins and digest: [elementary-factor provenance](norm_elementaryFactor_le.md).
Issue: https://github.com/grwtsk/math/issues/1805 ; research https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/53 .

## Exact objects and primary proof

For a finite family `v : ι → ℂ`, an anchor `a`, and a complex slope `c`, set

`F(z)=exp(c(z-a)) product_j E1((z-a)v_j)`.

The source proves `F(a)=1` and

`norm(F(z)) <= exp(norm(c) norm(z-a) + (norm(z-a)^2/2) sum_j norm(v_j)^2)`.

Apply the elementary-factor inequality to every indexed factor, use multiplicativity of the complex norm, multiply the nonnegative scalar inequalities, and rewrite the product of exponentials as the exponential of their sum. The factor `norm(z-a)^2/2` factors out of that sum. The exponential prefactor is bounded using `Re(c(z-a)) <= norm(c) norm(z-a)`.

For real roots `λ_j` and `a=β I`, choose `v_j=(λ_j-a)^(-1)`. The identity

`sum_j norm(v_j)^2 = sum_j 1/(λ_j^2+β^2)`

is proved termwise from the complex norm-square and inverse identities. Substitution gives the final bound. Roots are indexed, so repeated values contribute with their full finite multiplicity.

## Comparison, consumer and unresolved bridges

This is the standard finite genus-one product bound used by the written RP-OC-08 reconstruction argument. It is a finite product, not a claimed definition or formalization of an infinite-dimensional regularized determinant. No matrix spectral theorem or equality with `det_2` is supplied here.

Combining this bound with uniform slope and anchor-mass bounds gives the estimates one would use to prove local boundedness of a sequence. Montel compactness, logarithmic-derivative error integration, real-zero limit preservation, divisor multiplicity recovery, and the actual arithmetic source residual remain separately unproved in this tranche.

A hostile case is unbounded slope or unbounded reciprocal-square mass; the estimate retains these quantities instead of discarding them. An escaping lattice tail may leave a nonconstant zero-free factor; that infinite-product example and the schedule obstruction are only written research results, not conclusions of these Lean declarations.

The consumer is the compactness step before the source-identification theorem in `NormalizedLogDerivativeRigidity.lean`. All arithmetic data, the full pole-inclusive Weil form, conductor/gamma/parity terms and all prime powers still require an exact arithmetic adapter. No finite auxiliary product is identified with that form by this estimate.

Source proof candidate; novelty `UNASSESSED`, no novelty claim. Elaboration, fresh kernel replay, transitive axiom audit, independent analytic review, and arithmetic certification: `NOT_RUN`. The same analytical proof underlies the Lean candidate; it is not an independent proof.
