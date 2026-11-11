# Dense nonnegative approximation

Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

Research source: grwtsk contributors, OCERT-1, `oc10-backchain-v1.md`,
sections 5 and 6, at
`e19563adbaf29d08c6b2e17761f78b96adb9e247` in
`grwtsk/knot-linked-number-systems-and-their-geometry`.
Research-note SHA-256:
`4ac95baaa95bbcb77510a2a30f29018ac28b849f47827e7f2a3179e21b590085`.
[Exact research source](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md).
[Formal coordination](https://github.com/grwtsk/math/issues/1807).
[Research coordination](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/47).

Formal base inspected: `6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is newly authored source, not imported upstream proof code. Standard
order/topology arguments and existing checker contracts are not claimed novel.

Source: `GRWTSK/FunctionalAnalysis/DenseNonnegativeApproximation.lean`.
Source SHA-256: `d33c9675e895bbe9d1e0fec79c350d5f28718531abc895423a79b82ac1a42899`.

## Declaration correspondence

- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.nonneg_of_small_error_lower_bounds`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.dyadic_errors_arbitrarily_small`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.nonneg_of_dyadic_lower_bounds`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.nonneg_of_dense_range`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.nonneg_iff_on_dense_range`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.exists_negative_on_dense_range`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.exists_negative_upper_endpoint`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.eventually_negative_upper_endpoint`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.exists_negative_at_surjective_schedule`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.finite_prefix_counterexample`
- `GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.constant_error_counterexample`

## Argument and exact scope

For a negative value a, an error smaller than -a contradicts the asserted lower
bound. Mathlib's `exists_pow_lt_of_lt_one` supplies the dyadic specialization.
For continuous q, its nonnegative locus is closed. `closure_minimal` and density
extend positivity from the entire encoded range. Negating this implication gives
a negative encoded test whenever q has a negative value. If l <= a <= u and
u-l < -a with a < 0, then u < 0. A vanishing width gives this eventually.
A surjective schedule reaches the particular test/accuracy pair so obtained.

The dictionary is a parameter; construction and effectiveness of rational bump
codes are not asserted. Each use concerns a single specified topology, so
supportwise continuity is not strengthened to a global uniform estimate. The
positive implication needs no countability assumption; the negative scheduling
statement explicitly assumes a surjection from the naturals. Total mathematical
enclosure functions do not establish executable evaluation or termination.

The named finite-prefix and fixed-error counterexamples are scalar countermodels,
not arithmetic zeros. The closure proof is the closed-locus version of the
research note's sequential continuity proof, not an independent reviewed proof.

Upstream comparison: mathlib `Topology/Closure.lean` (`closure_minimal`,
`Dense.induction`), `Topology/Order/OrderClosed.lean` (`isClosed_le`), and
`Analysis/SpecificLimits/Basic.lean` at the pinned revision. Upstream authors and
Apache-2.0 obligations remain in those imports.

## Verification boundary and reproduction specification

Source publication is a candidate, not mathematical acceptance. Elaboration,
fresh kernel replay, transitive axiom audit, independent mathematical review and
runtime refinement: **NOT_RUN**. Novelty: **UNASSESSED**. No default-library
import or dependency pin is changed.

After the repository's verification prerequisites are available, the module can
be submitted to the pinned environment with:

```sh
lake env lean GRWTSK/FunctionalAnalysis/DenseNonnegativeApproximation.lean
```

This command was not executed in this authoring pass. A successful elaboration
must be reported separately from a fresh kernel replay and transitive axiom
audit. The source includes no newly declared axioms or unfinished proof commands;
that textual observation is not a dependency audit. No operational receipts or
execution scripts are installed in the mathematical repository.
