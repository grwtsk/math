# Compact-to-Hausdorff product quotient for the polygon radial map

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**

Owner #961. Direct child of draft PR #959, pinned at `2cd7e77d11c65ac582e1467f935942655f0d3a32`.

The source candidate proves the exact missing supplier `IsQuotientMap (perimeterProductProjection k)` by applying Mathlib's `Topology.IsQuotientMap.of_surjective_continuous`. Source compactness follows from finite `PolygonCorner k` and the compact real interval factors. The target `UnpairedPerimeter k × unitInterval` is Hausdorff because the already proposed `perimeterAngle k` is a continuous injection into genuine `AddCircle N`; the interval is Hausdorff. Product projection continuity is componentwise, while surjectivity follows from the actual `perimeterProjection` quotient.

This avoids the invalid assertion that an arbitrary quotient map remains quotient after taking a product. The resulting `perimeterJointRadialMap_continuous` and `unitCircleJointRadialMap_continuous` are unconditional *source-level theorem candidates*, and remain dependent on unelaborated parent branches.

No Lean/Lake execution, kernel audit or hostile replay occurred. Do not claim a disk homeomorphism, CW adjunction pushout, surface-manifold theorem, or RH consequence.