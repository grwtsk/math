# Joint radial descent through the actual perimeter product quotient

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**

Issue #955. Pinned parent draft PR #951, head `6d688e18ef047f94cfb7b633e4b8ebb99943eef7`.

The existing source supplies continuous fixed-radius maps `perimeterRadialSlice k r` from the true unpaired polygon perimeter into `FilledPolygonQuotient k`. This does not by itself imply continuity of `(x,r) ↦ perimeterRadialSlice k r x`.

A new jointly defined function `perimeterJointRadialMap` has the exact source equation
`perimeterJointRadialMap k (perimeterProjection k p,r) = radialProjection k (p,r)`.
Consequently its composition with the literal product projection is the already continuous radial quotient projection.

The conditional theorem `perimeterJointRadialMap_continuous_of_productQuotient` consumes the **explicit missing supplier**
`IsQuotientMap (perimeterProductProjection k)`, rather than silently assuming that products preserve arbitrary quotient maps. The original perimeter projection comes from a finite union of compact unit intervals, suggesting a closed/proper quotient route, but that argument and any necessary Hausdorff separation must be verified in the pinned Mathlib environment.

The zero slice equals the apex; the one slice equals the original perimeter-to-filling composite; and the radial coordinate equals the supplied radius. The source also defines a corresponding unit-additive-circle product map, with conditional continuity and the exact outer attaching factorization.

The supplier is **not** discharged. There is no assertion of an unconditional continuous map on the product, cone-to-closed-disk homeomorphism, genuine adjunction pushout, CW surface, singular-homology comparison, or any RH-facing result. Both this source and its parent remain unelaborated; no kernel audit has been run.

Trust gate: immutable-head Lean/Lake elaboration, theorem-type and generated-declaration audit, full transitive axiom/unsafe/import audit, hostile tests and reconciliation of competing perimeter homeomorphism drafts.
