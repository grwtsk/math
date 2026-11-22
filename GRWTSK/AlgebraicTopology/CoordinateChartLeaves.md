# A concrete foliation chart: coordinate leaves in dimension sixteen

Source: [CoordinateChartLeaves.lean](CoordinateChartLeaves.lean).
Mathematical target: genuine, independently useful geometric
leaf/stratum structure for the 16-dimensional computational architecture.
Coordination: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Argument and scope

The real chart is `Fin 16 → ℝ`. The level map evaluates coordinate
zero. Its fibers are the affine hyperplanes with constant first
coordinate, geometrically fifteen-dimensional affine spaces. The
closed cube is the subset where each coordinate belongs to `[0,1]`.
Theorems prove that every point has its unique leaf label; every
level exists in the ambient chart; and every level in `[0,1]` meets
the closed cube. A map preserving the first-coordinate level takes
points within leaves, and these maps are closed under composition.

These results establish exact set-level leaf partition identities.
The familiar smoothness and dimension of the affine hyperplane are
not formalized as manifold/submanifold declarations here. Cube
boundary leaves have a stratified geometry; no claim that the entire
closed cube is a boundaryless smooth manifold is made.

The binary frozen-beacon space and real chart are independent types.
A canonical interpolation, triangulation and compatibility map
between them remain separate future obligations. In particular,
neighborhood ownership fibers are *not* identified with geometric
leaves by this file.

## Existing source comparison and evidence

The module imports root Mathlib only. It does not change the existing
cubical, raster, graph or homology representations in GRWTSK.

SOURCE_PROOF_CANDIDATE; Lean compilation, full fresh kernel replay,
transitive axioms and independent review: **NOT_RUN**. No inference
to RH/GRH or to prismatic cohomology is attempted.
