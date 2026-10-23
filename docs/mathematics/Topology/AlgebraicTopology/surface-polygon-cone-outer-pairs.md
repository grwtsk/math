# Outer pairing kernel — first source-exact half

Parent: PR #977, head `61f1cdafca5e4c48d60f995309ba77da3dcd7ebd`. Owner: #981.

This module defines `ConeOuterPairStep` on the **existing unpaired topological cone**. Its two constructors are the original reversed a/a⁻¹ and b/b⁻¹ side pairings at radius 1, transported through the authentic original `BoundaryPoint k` and `coneProjection`. The full `Relation.EqvGen` and setoid introduce no new primitive identifications.

The source proves the **soundness** direction
```lean
ConeOuterConnected k x y → coneToFilled k x = coneToFilled k y
```
by consuming the old `RadialGluingStep.outerA` and `.outerB` generators and EqvGen induction. Therefore `outerPairedConeToFilled` is a well-defined surjective map from the new outer-paired cone quotient into the inherited filled quotient. It is not claimed injective.

It separately proves the outer relation preserves radial coordinate. In particular the new primitive generators act only at the outer boundary, not at intermediate positive radii.

**Next supplier:** prove the reverse implication by lifting all seven original `RadialGluingStep` constructors to the new cone outer relation. The four perimeter seam generators and apex generator should become reflexive cone equalities, and outerA/outerB should become the two new constructors. Then apply EqvGen induction and the surjectivity of `radialSourceToCone` to characterize every fiber of `coneToFilled`. Only then attempt a quotient equivalence and homeomorphism.

This does not establish a standard closed disk, a CW pushout, a genus-g manifold, authentic homology/π₁, or any hyperbolic or arithmetic theorem.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**. This is a source candidate only; no Lean/Lake, kernel audit, generated declaration reconciliation, or hostile replay has occurred.