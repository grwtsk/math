# Polygon perimeter circle recognition: exact source bijection

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**, October 22, 2026. This note documents mathematical arguments and Lean proof scripts, not a successful Lean build or kernel receipt.

Issue: [#916](https://github.com/grwtsk/math/issues/916). Pinned parent: [draft PR #901](https://github.com/grwtsk/math/pull/901), head `e08b2826f99c21c62b51b07a8b383109f424cd60`. New module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean`.

## Source and mathematical input

For each k≥0 and g=k+2, PR #868 builds the actual topological unpaired polygon perimeter P_k from N=4g directed real unit intervals by identifying exactly the four cyclic endpoint seams. PR #889 builds a continuous map `perimeterAngle k : P_k → AddCircle N` with exact source formula

\[
\Theta_k([c,t])=[\operatorname{directedSideOrdinal}(k,c)+t]\in\mathbb R/(N\mathbb Z).
\]

Mathlib's existing `finSumFinEquiv` and `finProdFinEquiv` provide the generic finite index isomorphisms; the source-specific work constructs an exact equivalence `PolygonCorner k ≃ Fin N` and proves that its value is **the inherited polygon side ordinal**. Neither source IDs nor the orientation order are replaced by arbitrary numbers.

## Injectivity: normalize the actual original seam relation

For every source point (c,t), define a canonical source representative: if t=1, move to the actual successor side with parameter 0; otherwise retain (c,t). All four successor cases consume the **existing** `PerimeterSeamStep` constructors, including the final handle-to-first-handle wraparound. The new source proves that normalization does not change the class in the original unpaired quotient and makes the parameter strictly less than one.

Every normalized real angle lies in the true half-open interval [0,N). Pinned Mathlib `AddCircle.coe_eq_coe_iff_of_mem_Ico` then shows that two equal circle classes give equal normalized real angles. Their natural floors recover their integer directed side ordinals exactly; the finite ordinal equivalence recovers the **same original source edge**, and subtraction recovers the original real tangential coordinate.

Thus the intended exact new kernel theorem is

\[
\boxed{\operatorname{sourceAngularAddress}(p)=\operatorname{sourceAngularAddress}(q)
\iff p\sim_{\mathrm{four\ seams}}q.}
\]

The source declaration `angle_eq_iff_perimeterConnected` has both directions. `perimeterAngle_injective` consumes this equivalence with actual representatives of the Mathlib `Quotient`.

## Surjectivity: the half-open circle representative

For any theta∈AddCircle N, pinned Mathlib `AddCircle.equivIco N 0` provides a representative x∈[0,N). Let n=Nat.floor x. The established `Nat.floor_le` and `Nat.lt_floor_add_one` give n<N and 0≤x-n<1. The inverse of the genuine side ordinal equivalence identifies the old directed side c with ordinal n. Its interval parameter t=x-n is a valid unitInterval point and maps to theta under `perimeterAngle`.

This is a source-specific, complete-surjectivity construction, not a finite enumeration or a new assumption of completeness.

Combining the two sourced directions gives the proposed `perimeterAngle_bijective k`. The unpaired perimeter is the quotient of a finite disjoint union of compact intervals, so Mathlib's `Finite.compactSpace`, `Quotient.compactSpace`, and `Continuous.homeoOfEquivCompactToT2` supply the imported compact/Hausdorff route. The new source consequently authors

\[
\boxed{
P_k\simeq_{\mathrm{top}}\operatorname{AddCircle}(4g)
\simeq_{\mathrm{top}}\operatorname{UnitAddCircle}=\mathbb R/\mathbb Z.
}
\]

The `Homeomorph` has the **exact previous angle formula** on every original signed side point.

## Negative controls and nonimplications

The previous true attaching map `perimeterAttach k : P_k → B_k` remains *surjective but not injective*. In particular a and a-inverse edge interiors remain distinct in P_k even after the source perimeter is recognized as a circle, but are identified in B_k under actual reversed full-side gluing. No conclusion that the attaching map itself is a homeomorphism is permitted.

The source also names genus-two (8 directed sides) and genus-three (12 directed sides) bijectivity fixtures. Hostile controls require preserving all original side labels and the last-to-first seam, excluding the false real equation N=0, and verifying both injectivity and surjectivity rather than inferring a homeomorphism from continuity alone.

**Still open:** construction and jointly continuous realization of the cone P_k×I/(P_k×{0}), its homeomorphism to the closed 2-disk, the actual disk-boundary attaching map into B_k and CW pushout, genuine genus-g oriented surface/manifold structure, actual surface cellular/singular H1 and van Kampen/Hurewicz, marked hyperbolic geometry/geodesic lengths, Selberg–Weil–Petersson, sofic/GUE, growing-shift Chowla/Möbius, zeta divisor and RH. External topology: Hatcher, *Algebraic Topology*, §§1.2 and 2.2, [official electronic text](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). None of these missing results has been inserted as an axiom.

## Verification and provenance

The source imports pinned Mathlib's genuine finite-sum/product equivalences, real floor, additive-circle fundamental domain, compactness and compact-to-Hausdorff homeomorphism. Their mathematical contributions belong to Mathlib authors. The new work is the exact source-specific composition and its two-direction interval classification.

This increment is one new isolated Lean module, this note and a passive source-bound TOML. No root import, parent mathematical source, dependency/toolchain pin, CI, workflow, cache or native/VM/F06 executor is modified. Source text and named declaration inventory are insufficient as proof acceptance.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Full immutable-head #100 Lean elaboration, generated declarations/theorem types, complete transitive import/axiom/unsafe audit and executable hostile fixture replay remain prerequisites to merging or closing issue #916.
