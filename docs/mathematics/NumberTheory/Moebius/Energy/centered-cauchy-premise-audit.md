# Centered Cauchy premise-strength audit

Issue: #929  
Parent: draft PR #926 at `21116a806e1e43e50af8c65368f629e2a6d294c5`.

Inspected local dependency stack:
- `RegularOrbitZeroWindingAdditiveEnergy`;
- `RegularOrbitZeroWindingFiberEnergy`;
- centered winding zero/nonzero-frequency modules;
- PR #926's second-moment aggregation.

The zero-winding modules currently prove:
1. exact reindexing into the half-index additive-energy equation;
2. exact signed-fiber square expansion;
3. equality of the zero-winding quartic with the fiber energy;
4. nonnegativity of that energy.

They do **not** provide a quantitative bound of the form
```text
Z(b) <= b^epsilon.
```

Therefore the Cauchy route has the following disposition:

```text
EXACT_IDENTITY_LAYER_PRESENT
SUBPOLYNOMIAL_ZERO_WINDING_ENERGY_OPEN
CIRCULARITY_NOT_ESTABLISHED_ON_THIS_STACK
CRITICAL_ENERGY_IMPLICATION_NOT_BOUND
RH_EQUIVALENCE_NOT_CLAIMED
```

This route is not presently shown circular, but it also does not close the analytic obstruction. It replaces the centered-wrap estimate by the explicit signed additive-energy theorem
```lean
SubpolynomialRegularCenteredZeroWindingEnergy.
```

Other repository notions called critical energy must not be identified with this specific fiber energy without a formal implication theorem.
