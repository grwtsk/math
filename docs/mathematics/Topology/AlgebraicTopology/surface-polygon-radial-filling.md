# Radial filling of the signed polygon: a genuine two-dimensional topological quotient

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** The new Lean file is a committed source-level proof candidate. No Lean/Lake elaboration, generated type audit, kernel check, native VM or F06 replay has occurred.

Owner: [grwtsk/math#859](https://github.com/grwtsk/math/issues/859). Immutable direct parent: [draft PR #852](https://github.com/grwtsk/math/pull/852), head `5144a80402288e780107e2432748bc4c12744f28`.

New source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean`.

**Exact parent sources:** #845 builds `PolygonBoundaryOneSkeleton k`, a real quotient of 4g directed unit intervals using the source `BoundaryGluingStep k` and its Mathlib `Relation.EqvGen` closure. #834 supplies the finite corner IDs, their original cyclic next-handle order and the full opposite-edge/corner gluing relation. #745 supplies the same oriented polygon word and the one-relator surface presentation. #823 separately builds a genuine **candidate** ModuleCat chain complex for the finite signed-cell profile; its comparison with the actual cellular chains of a surface is not established.

## 1. A source-bound two-dimensional topological space

For \(k\ge0\), put \(g=k+2\), and use the unchanged polygon side-ID type

\[
\mathcal C_k=\operatorname{PolygonCorner}(k)
=\operatorname{Handle}(k)\times\operatorname{Fin}(4).
\]

The parent #845's real boundary source is \(E_k=\mathcal C_k\times I\), where \(I=[0,1]\) is Mathlib's actual `unitInterval` with its usual subspace topology. The new source space is

\[
S_k=E_k\times I=\mathcal C_k\times I_t\times I_r.
\tag{R1}
\]

The \(t\)-coordinate parametrizes an oriented source edge; \(r\) parametrizes an honest radial interval, with \(r=0\) at the cone apex and \(r=1\) at the polygon boundary. As a topological space, \(S_k\) is the disjoint union of **\(4g\) genuine closed unit-square sectors**, not merely a finite set of positions.

The source uses exactly the seven families of primitive gluing relations \(\operatorname{RadialGluingStep}(k)\):

| Identification on square sectors | Radius |
| --- | --- |
| \(((h,0),1,r)\sim((h,1),0,r)\) | Every \(r\in I\) |
| \(((h,1),1,r)\sim((h,2),0,r)\) | Every \(r\in I\) |
| \(((h,2),1,r)\sim((h,3),0,r)\) | Every \(r\in I\) |
| \(((h,3),1,r)\sim((\operatorname{next}(h),0),0,r)\) | Every \(r\in I\) |
| \((p,0)\sim(\text{selected apex},0)\) | Only \(r=0\) |
| \(((h,0),t,1)\sim((h,2),1-t,1)\) | Only \(r=1\) |
| \(((h,1),t,1)\sim((h,3),1-t,1)\) | Only \(r=1\) |

Here \(h\) has the exact old first, second and extra-handle IDs, and \(\operatorname{next}(h)\) is the old cyclic successor. The opposite sides are paired **only at the outer boundary**, and the direction reversal is `unitInterval.symm t`, a genuine continuous reflection. This distinction prevents silently collapsing all interior radial sectors along the nonabelian boundary-side pairings.

Set

\[
\mathcal R_k=\operatorname{Relation.EqvGen}
\left(\operatorname{RadialGluingStep}(k)\right),
\qquad
F_k=S_k/\mathcal R_k.
\tag{R2}
\]

The Lean declarations `radialSetoid` and `FilledPolygonQuotient` construct a true `Setoid` and **Mathlib Quotient**. With `Mathlib.Topology.Constructions`, \(F_k\) carries the actual coinduced quotient topology, not a new indiscrete topology or a formally asserted manifold structure.

The source constructs \(q_k:S_k\to F_k\), proves that \(q_k\) is continuous and `IsQuotientMap`, and gives for **every** directed polygon side a continuous square-sector map

\[
I_t\times I_r\longrightarrow F_k.
\tag{R3}
\]

These are the first genuine topological two-parameter characteristic-map *candidates* in this exact stack, but they are not yet verified CW characteristic maps or maps from a single disk.

## 2. Precise consumption of the previous boundary topology

A major new mathematical obligation is to connect the real quotient \(B_k=\operatorname{PolygonBoundaryOneSkeleton}(k)\) from #845 to the **same** outer boundary of \(F_k\).

For every true source point \(p\in E_k\), define its radius-one lift

\[
\iota_k^{\mathrm{source}}(p)=q_k(p,1).
\tag{R4}
\]

The source proves all six generators of the parent `BoundaryGluingStep k` are respected by (R4): the two full a/b side pairings become the last two outer-radius relations, while the four parent endpoint seams become the same radial seams evaluated at \(r=1\). Induction on the parent Mathlib `Relation.EqvGen` establishes the equality on the **whole** parent relation, not only on a handful of selected corners.

Hence (R4) descends by the actual quotient universal property to a map

\[
\boxed{\iota_k:B_k\longrightarrow F_k.}
\tag{R5}
\]

The new theorem candidate `boundaryInclusion_continuous` establishes that \(\iota_k\) is continuous, and `boundaryInclusion_projection` proves the exact commuting square

\[
\iota_k\bigl(\operatorname{boundaryProjection}(p)\bigr)
=q_k(p,1)
\qquad(\text{every }p\in E_k).
\tag{R6}
\]

Combining (R6) with the inherited parent corner theorem shows that **all original polygon corners have one common image in the new outer topological boundary**. Their identity, cyclic order and orientation are retained by the construction.

**Important distinction:** (R5) is a continuous map *from the already paired one-skeleton into the filled space*. The present source has **not yet proved injectivity or a topological embedding** of \(B_k\) into \(F_k\), nor has it constructed the classical *attaching map* from the unpaired perimeter circle \(\partial D^2\) into \(B_k\). Those are further obligations. They must not be inferred from the word "inclusion" in a declaration name.

## 3. An explicit continuous radial invariant prevents collapse

Each of the seven primitive gluing families preserves the radial coordinate \(r\) exactly. The source first proves this by cases on the actual `RadialGluingStep` constructors, then extends equality of radii through their reflexive-symmetric-transitive closure. This gives a well-defined map

\[
\boxed{
\rho_k:F_k\to I,\qquad
\rho_k(q_k(p,r))=r.
}
\tag{R7}
\]

The `radialCoordinate` declaration is obtained through **`Quotient.lift`**, using the proved relation compatibility. The source candidate `radialCoordinate_continuous` proves it is continuous by Mathlib's quotient topology universal property, not by postulating a coordinate on a new product space.

An apex \(A_k\) comes from radius \(r=0\); an outer vertex \(V_k\) comes from radius \(r=1\); a genuine sector interior point \(M_k\) uses \(r=\tfrac12\). Therefore,

\[
\rho_k(A_k)=0,\qquad
\rho_k(M_k)=\tfrac12,\qquad
\rho_k(V_k)=1,
\]

and the strong noncollapse theorem candidate is

\[
\boxed{
A_k\ne M_k,\quad M_k\ne V_k,\quad V_k\ne A_k.
}
\tag{R8}
\]

This is not merely a numerical experiment. It is a proof plan using a quotient-invariant continuous function to distinguish three explicitly sourced equivalence classes. Source-script fixtures instantiate \(k=0\) (genus two) and \(k=1\) (genus three), retaining the correct original \(2g\) undirected one-cell generator IDs.

The additional theorem `radius_zero_is_apex` proves every source point with \(r=0\) is identified with the selected apex through an actual generating gluing relation. Together (R7)–(R8) reject an always-true or PUnit quotient that would collapse the radial interior and original boundary.

## 4. Exact topology, geometry and homology boundaries

The new \(F_k\) **is a genuine point-set topological quotient of radial square sectors**. It has a continuous outer-boundary map from the parent \(B_k\), a true quotient map from the sector source, continuous individual square maps and a continuous radial coordinate. These are strictly stronger concrete topological structures than the earlier finite corner relation or boundary interval quotient.

Nevertheless, **not yet proved**:

1. The unpaired polygon perimeter is homeomorphic to \(S^1\), and the quotient of its cone is homeomorphic to a standard closed two-disk. Those are needed to certify that the radial sectors and apex form a bona fide two-cell.
2. The continuous perimeter-circle *attaching map* \(\partial D^2\to B_k\) is explicitly defined and proven to restrict to the parent signed-edge parameterizations, with exact cyclic endpoint transitions.
3. The pushout/adjunction-space universal property identifies \(F_k\) with the correct closed disk attached along that map. The present R5 map \(B_k\to F_k\) is not interchangeable with the map in item 2.
4. A CW structure identifies \(F_k\) as an actual closed orientable genus-\(g\) surface, including regularity of characteristic maps and a correct manifold orientation/classification argument.
5. The actual cellular chain complex and categorical homology of \(F_k\) are compared, with exact source generators and differentials, to the earlier candidate `ChainComplex (ModuleCat ℤ) ℕ` of issue #823. No such topological chain equivalence has been proved here.
6. A separate van Kampen theorem identifies \(\pi_1(F_k)\) with the literal genus-\(g\) presented group and the marked first-handle commutator. A Hurewicz/cellular-to-singular comparison is also missing.
7. Any actual marked hyperbolic metric, primitive closed-geodesic length/trace, Selberg/Weil–Petersson/GUE, sofic spectral limit, arithmetic Chowla/Möbius supplier, zeta divisor or RH implication is **independent and still open**.

External classical mathematical context: Allen Hatcher, *Algebraic Topology* (2002), §§1.2 and 2.2, including the polygon surface construction, CW attaching maps and cellular homology. Official electronic text: https://pi.math.cornell.edu/~hatcher/AT/ATpage.html. These classical results are not consumed as hidden Lean axioms.

## 5. Audit obligations and allowed operations

This increment adds exactly one isolated `GRWTSK/Topology/AlgebraicTopology` Lean file, this source-provenance note, and one **passive** TOML verification target on an immutable child of PR #852. It does not modify an earlier parent file, any public root import, `lean-toolchain`, `lake-manifest.json`, native/VM/F06 executor, workflows, CI, caches or deployment state.

The passive target must bind the actual source/note blobs and immutable parent revision, inventory named and compiler-generated declarations, and require hostile controls for: missing/wrong cyclic seam; pairing opposite sides at an interior radius by mistake; collapsing distinct radial levels; falsely making \(F_k\) one point; treating (R5) as a disk attaching map; and inventing any CW/singular-homology or RH implication.

**Trust status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Static source review is not an elaboration or soundness receipt. Authorized exact-head #100 Lean elaboration, generated declaration/type/import/axiom/unsafe audit and hostile fixture execution remain required before merge, closing #859, or promotion of the source scripts to accepted formalization.
