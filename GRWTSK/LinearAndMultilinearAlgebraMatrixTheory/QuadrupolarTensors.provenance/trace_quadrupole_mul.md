# `GRWTSK.QuadrupolarTensors.trace_quadrupole_mul`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local file: [QuadrupolarTensors.lean](../QuadrupolarTensors.lean).
- Fully qualified declaration: `GRWTSK.QuadrupolarTensors.trace_quadrupole_mul`.
- Primary repository: `masakioshikawa/rp2-rp3-lean`, author-maintained RP² formalization.
- Exact revision: `ab120db3ae50756b2f640400aeca757a0ff9dbb5`.
- Source file: [`RP2/Model.lean`](https://github.com/masakioshikawa/rp2-rp3-lean/blob/ab120db3ae50756b2f640400aeca757a0ff9dbb5/RP2/Model.lean).
- Source blob: `45550288529bcce25e9c16d4666fd72d050fadb7`.
- Source declaration: `RP2.trace_Q_mul`, using `RP2.Q`, `RP2.qPair`, and `RP2.spin_squares`.
- Role: local reproof of the finite algebraic contraction identity in coordinate-vector form.

## Statement, assumptions, and mathematical consumer

For `n m : Fin 3 → ℝ` satisfying `n ⬝ᵥ n = 1` and `m ⬝ᵥ m = 1`,
the theorem proves

\[
\operatorname{tr}((nn^{\mathsf T}-I/3)(mm^{\mathsf T}-I/3))
=(n\cdot m)^2-1/3.
\]

Both unit-sphere assumptions are retained as explicit equations. The local
formalization uses matrix outer products and Mathlib's rank-one multiplication
and trace lemmas, followed by scalar algebra; the upstream proof expands the
three coordinates. The local proof does not import or invoke the upstream
target theorem. Both routes share elementary real algebra.

The consumer is the exact quadrupolar tensor feature and its five-coordinate
weighted contraction. This theorem says nothing about tensor training quality,
Gibbs correlations, decay, RH, or GRH. Without the unit conditions the two norm
correction terms in `trace_quadrupole_mul_general` remain.

## Actual evidence

Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:
elaboration/typechecking passed. The transitive axiom audit returned
`propext`, `Classical.choice`, and `Quot.sound` only.

Fresh Lean kernel replay with `leanchecker --fresh` passed for the complete local
module, including imported constants. This is a replay using Lean's own kernel;
independent external kernel checking is `NOT_RUN`. A separate AI-assisted source
review checked the exact upstream statement and the retained unit hypotheses.
Rust execution and floating-point error bridges remain
separate obligations. This is a finite algebraic reproof, not an adaptation
of the upstream analytic decay endpoint.
