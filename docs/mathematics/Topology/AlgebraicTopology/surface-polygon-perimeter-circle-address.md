# An angular coordinate on the unpaired genus-g polygon perimeter

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** The new Lean module is an authored proof candidate, not an accepted kernel theorem. The mathematical circle and its fundamental-domain theorems below already exist in pinned Mathlib; the new work identifies the repository's exact polygon source with a specific circle-valued map.

- Owner: [grwtsk/math#889](https://github.com/grwtsk/math/issues/889).
- Parent: [draft PR #872](https://github.com/grwtsk/math/pull/872), immutable head \`ee12e3e28b496d907802515628c84d4de0d37cb2\`.
- New module: \`GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean\`.
- Source inputs: #868 supplies the actual unpaired cyclic perimeter quotient \`UnpairedPerimeter k\`, the four seam generators and the continuous noninjective attaching map to the paired boundary; #859 supplies the filled radial quotient; #845/#834 supply the genuine directed side source IDs and original cyclic order; #745 supplies the signed polygon word and its genus-dependent handle pairs.

## 1. What Mathlib has already proved

The pinned Mathlib sources \`Topology/Instances/AddCircle/Defs.lean\` (Oliver Nash and Mathlib contributors) and \`Topology/Instances/AddCircle/Real.lean\` define the genuine additive circle

\[
\operatorname{AddCircle}(T)=\mathbb R/(T\mathbb Z)
\]

and its topological structure. They provide the continuous real quotient map, the equality of one full period with zero, the fundamental-domain description and the rescaling homeomorphism

\[
\operatorname{AddCircle}(T)\simeq_{\mathrm{top}}
\operatorname{UnitAddCircle}=\mathbb R/\mathbb Z
\qquad (T\ne0).
\]

In particular, \`AddCircle.homeoIccQuot\` already proves that \(\operatorname{AddCircle}(T)\) is homeomorphic to a real interval of length \(T\) with its endpoints identified.

These facts are **imported Mathlib results**, not the new theorem of this PR. They are not by themselves a homeomorphism from the source-specific polygon perimeter \(P_k\) to a circle.

## 2. Source-exact cyclic ordinals and real angular addresses

Fix \(k\ge0\), set \(g=k+2\) and \(N=4g=4(k+2)\). The parent \`Handle k\` consists of the original first two handles and \(k\) additional handles:

\[
\operatorname{Handle}(k)
=\operatorname{Fin}(2)\sqcup\operatorname{Fin}(k).
\]

The new source assigns each handle its ordinal \(0,1,2,\ldots,k+1\), without changing or deleting its original generator identity. Each of its four directed sides \(i=0,1,2,3\) receives the exact ordinal

\[
j(h,i)=4\,\operatorname{handleOrdinal}(h)+i,
\qquad 0\le j(h,i)<N.
\tag{A1}
\]

These are source-position indices; they are **not** the \(\operatorname{GenusLetter}(k)\) labels. In particular \(N=4g\) counts directed boundary sides, while the inherited one-cell generator carrier has cardinality \(2g\). The two quantities must never be conflated.

For a point \(p=((h,i),t)\) in the original disjoint union of directed source intervals \(E_k=\operatorname{BoundaryPoint}(k)\), define

\[
\theta_k(p)=[j(h,i)+t]\in\mathbb R/N\mathbb Z,
\qquad t\in[0,1].
\tag{A2}
\]

The source theorem \`handleOrdinal_next_or_wrap\` proves the exact cyclic successor behavior: moving to the next handle increments the handle ordinal, except at the last handle, which wraps to the first. Consequently the first three adjacent side seams of a handle have literally equal real endpoint coordinates.

For the final side of a handle, the seam is either an ordinary real equality or the equality of \(N\) and \(0\) **in the genuine additive circle quotient**. The source consumes Mathlib's \`AddCircle.coe_period\`, not the false real equation \(N=0\). That gives

\[
\theta_k(\text{end of edge }j)
=\theta_k(\text{start of edge }j+1)
\tag{A3}
\]

for every one of the FOUR source seam constructors, including the final last-to-first seam.

The real angular formula is continuous on each source interval, and because the finite side index is given a discrete topology it is continuous on their disjoint union. Source-level \`sourceAngularAddress_continuous\` and \`sourceAngularAddress_respects_connected\` establish the precise prerequisites for quotient descent.

## 3. A genuine continuous comparison with the additive circle

The parent PR #872 constructed the unpaired perimeter as

\[
P_k=E_k/\operatorname{EqvGen}(\text{four cyclic endpoint seams}),
\]

with the true Mathlib quotient topology. Because (A3) has been proved for every generator and its equivalence closure, \`Quotient.lift\` gives a genuine map

\[
\boxed{\Theta_k:P_k\longrightarrow\operatorname{AddCircle}(N).}
\tag{A4}
\]

The new source candidate \`perimeterAngle_continuous\` proves this map is continuous using Mathlib's actual quotient universal property. For every original source interval point \(p\), it records the exact commuting equation

\[
\Theta_k(\operatorname{perimeterProjection}(p))
=[j(p)+t(p)].
\tag{A5}
\]

There is no arbitrary map labelled "angle"; its source values are defined from the same original handle ordinal, side index and real tangential parameter.

The imported \`AddCircle.homeomorphAddCircle\` then produces a full homeomorphism between the circle of period \(N\) and \(\operatorname{UnitAddCircle}=\mathbb R/\mathbb Z\), allowing the source to define a continuous **standard additive-circle coordinate**

\[
\overline{\Theta}_k:
P_k\longrightarrow\operatorname{UnitAddCircle}.
\tag{A6}
\]

**Crucial scope:** \(\Theta_k\) and \(\overline{\Theta}_k\) are continuous circle-valued maps. The source does **not** prove them globally bijective or construct an inverse, and therefore it does **not** claim \(P_k\simeq_{\mathrm{top}}S^1\). A map landing in a circle is not itself a homeomorphism.

## 4. A strict source-sensitive negative test

The first handle's first directed side begins at ordinal zero, so its source corner has angle \([0]\). The next directed side begins at ordinal one, so its source corner has angle \([1]\). Since the true period \(N=4(k+2)\ge8\), Mathlib's fundamental-domain injectivity yields

\[
[0]\ne[1]\quad\text{in }\operatorname{AddCircle}(N).
\tag{A7}
\]

The source proves this as \`distinct_first_corner_angles\` using the actual imported \`AddCircle.coe_eq_zero_iff_of_mem_Ico\` and \(0<1<N\), not by assuming an angular coordinate is injective.

Yet the *paired* one-skeleton from #845 identifies all the original polygon corners by its genuine orientation-reversing side pairings. The parent #868 attaching map therefore has

\[
a_k(q_k(c_0))=a_k(q_k(c_1))
\tag{A8}
\]

for these same source corners \(c_0,c_1\), despite their different angular addresses before attachment.

The combined theorem \`distinct_angles_same_attached_vertex\` exhibits the exact information lost in moving from the unpaired perimeter into the paired graph. It also prevents a vacuous constant angular-coordinate implementation.

Explicit source fixtures record \(N=8\) for genus two and \(N=12\) for genus three.

## 5. The next mathematical supplier is now precise

To upgrade (A4) into the desired perimeter-to-circle homeomorphism, the next step must prove that \(\Theta_k\) is both injective and surjective on the **whole** quotient. That demands source-exact finite interval decomposition and the fact that modulo \(N\), two representatives among the ordered sides are equal only when they coincide or are the legitimately glued cyclic endpoints.

The pinned Mathlib offers \`AddCircle.equivIco\`, \`AddCircle.coe_image_Icc_eq\`, \`AddCircle.coe_eq_coe_iff_of_mem_Ico\`, and \`Continuous.homeoOfEquivCompactToT2\` for a potential final homeomorphism argument. These are available imported lemmas, not completed new source proofs.

Only after a real homeomorphism \(P_k\simeq_{\mathrm{top}}S^1\) can the geometric program identify the unpaired perimeter with the boundary of a standard disk, prove a cone-to-disk homeomorphism and obtain the actual attaching map

\[
\partial D^2\longrightarrow B_k.
\]

Further independent obligations are a CW pushout/adjunction property, compact oriented genus-\(g\) manifold structure, source-preserving cellular/singular chain-complex comparison to #823, van Kampen/Hurewicz, marked hyperbolic primitive geodesic lengths, Selberg/Weil–Petersson, sofic/GUE, growing-shift Chowla and any zeta divisor or RH-facing theorem.

Nothing in this circle-coordinate increment proves a geometric or arithmetic conjecture. The parallels with #722 Heisenberg versus abelianization, #653 modular Fourier aliases, #198 Čech/Hodge, #205/#545 signed forms and #121/#168 GUE remain information-loss comparisons unless separate typed source maps are actually proved.

## 6. Trust and operations

This increment adds one isolated Lean module, this mathematical note and a passive verification TOML target on a direct child branch of the immutable PR #872 head. It does not alter any parent/root sources, pinned mathlib/toolchain files, Lake package dependencies, CI, workflows, caches, native/VM/F06 workers or executor settings.

The replay target must inventory all authored and generated declarations, exact parent/source/doc Git blobs and strict hostile cases: wrong handle numbering, wrong source-label order, missing final cyclic seam, treating the real period as zero, collapsing the angular address to a constant, reusing the paired perimeter rather than the unpaired source, and falsely promoting a continuous angular map to a homeomorphism.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** No Lean/Lake execution or kernel audit has occurred. Authorized immutable-head #100 elaboration, generated theorem type/import/axiom/unsafe reconciliation and executable hostile fixture replay are required before merging, closing #889 or declaring accepted formalization.
