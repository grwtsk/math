# A source-exact topological cone and continuous map into the radial polygon filling

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED — 2026-10-22.** This is a source-level Lean proof candidate. No Lean elaboration, kernel qualification, generated declaration/type inventory, transitive axiom audit or executable hostile replay occurred.

Owner: [grwtsk/math#970](https://github.com/grwtsk/math/issues/970). Exact direct parent: [draft PR #962](https://github.com/grwtsk/math/pull/962) head \`582b6daf33cc32bce547934c1a6bb748376cfa92\`. New source: \`GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean\`.

## 1. Previously completed source candidates versus this incremental dependency

The existing polygon topology work starts with the same genus-\(g\) source \(g=k+2\ge2\) and the same \(4g\) original directed edge intervals.

- #868 defined the unpaired cyclic perimeter \(P_k\) by identifying only the true adjacent endpoints, and the authentic attaching-direction map \(a_k:P_k\to B_k\) into the paired one-skeleton \(B_k\). It gave an explicit noninjectivity witness using distinct opposite-edge midpoints.
- #946 built a source-script homeomorphism \(P_k\simeq_{\mathrm{top}}\operatorname{UnitAddCircle}\) through exact finite index normalization, an additive-circle angle map and compact-to-Hausdorff. This is not qualified by Lean's kernel.
- #951 transported the attaching map to the standard unit circle.
- #859 constructed a *real topological quotient* \(F_k\) of radial unit-square sectors, identifying true polygon seams at all radii, collapsing radius zero, and pairing opposite sides at radius one only.
- #959 defined the joint map \(J_k:P_k\times I\to F_k\) and proved its continuity conditional on the literal product projection being a quotient map.
- #962 supplied that missing product-quotient condition at source-script level via compactness of the original disjoint interval source and Hausdorffness of the target perimeter, yielding an **unconditional** source-script joint continuity theorem for \(J_k\).

That makes a new, narrow topology theorem available: **descend \(J_k\) through an actual cone quotient** of \(P_k\times I\), and characterize precisely what information is lost at the outer boundary. This is the selected increment.

## 2. The actual cone quotient, and its exact equivalence classes

Define \(I=[0,1]\) with its genuine Mathlib topology, \(C_k=P_k\times I\), and a single primitive family of equivalence generators:

\[
(x,0)\sim(y,0)\qquad(x,y\in P_k).
\tag{C1}
\]

There are **no generators** pairing points of distinct perimeter source IDs at \(r>0\). Let \(\mathcal R_k=\operatorname{Relation.EqvGen}(\operatorname{PerimeterConeStep}(k))\). The cone is the actual Mathlib quotient with coinduced topology:

\[
\boxed{\operatorname{Cone}(P_k)=C_k/\mathcal R_k.}
\tag{C2}
\]

The new source does not simply assume noncollapse. Its central relation theorem candidate \`coneConnected_iff\` identifies the entire reflexive/symmetric/transitive closure:

\[
\boxed{
(p,r)\sim(q,s)
\iff
\big((p,r)=(q,s)\big)
\ \lor\
(r=0\land s=0).
}
\tag{C3}
\]

The forward direction inducts on the actual \`EqvGen\` constructors; the reverse direction uses exactly the primitive cone-apex generator. Equation (C3) proves that every positive-radius class is a singleton original product-source point. It also yields the continuous well-defined radial coordinate \(\rho_{\mathrm{cone}}:\operatorname{Cone}(P_k)\to I\).

Mathlib's \`TopologicalSpace\` quotient construction gives a true coinduced topology, a continuous cone projection and an \`IsQuotientMap\`. The source uses imported \`Quotient.compactSpace\` and the imported parent compactness theorem to prove the cone itself is compact; this is a genuine topological property of a real quotient, not a cardinality claim.

## 3. Descent of the actual already-continuous radial filling map

The prior joint map \(J_k:P_k\times I\to F_k\) was already source-matched:

\[
J_k(\operatorname{perimeterProjection}(p),r)
=
\operatorname{radialProjection}(p,r)
\tag{C4}
\]

for **every** original directed interval point \(p\) and radius \(r\).

The parent also proved \(J_k(x,0)=A_k\), the *same actual filled apex* for every \(x\in P_k\). Thus it respects the equivalence (C3). A new quotient lift defines

\[
\boxed{
\Phi_k:\operatorname{Cone}(P_k)\longrightarrow F_k,
\qquad
\Phi_k([(x,r)])=J_k(x,r).
}
\tag{C5}
\]

The new theorem candidate \`coneToFilled_continuous\` uses the full prior **joint** continuity theorem from #962 and Mathlib \`Continuous.quotient_lift\`. This avoids the invalid inference that separately continuous fixed-radius maps automatically define a jointly continuous function.

The map is also **surjective**: every target \(F_k\) point has a representative \((p,r)\) in the original radial square source; the cone class of \((\operatorname{perimeterProjection}(p),r)\) maps to it by (C4). That is \`coneToFilled_surjective\`, a real source-representative proof, not an unproved quotient-space generality.

The radial functions commute:

\[
\rho_{F_k}\circ\Phi_k=\rho_{\mathrm{cone}}.
\tag{C6}
\]

All original radius-zero points are the one cone apex and map to the already constructed filled apex.

## 4. A genuine outer boundary, with strict noninjectivity after attaching

The map \(\beta_k:P_k\to\operatorname{Cone}(P_k)\) given by \(\beta_k(x)=[(x,1)]\) is continuous and **injective**. Injectivity uses (C3): positive-radius cone quotient classes cannot identify different \(P_k\) source points. No claim that \(\beta_k\) is an *embedding* is made here, though that may be proved subsequently.

For every \(x\in P_k\), the original exact outer attachment diagram commutes:

\[
\boxed{
\Phi_k(\beta_k(x))
=\iota_k(a_k(x)).
}
\tag{C7}
\]

The circle-to-cone boundary map through the source-specific \(\operatorname{UnitAddCircle}\simeq P_k\) from PR #946 is continuous and has the same exact diagram with the UnitAddCircle attaching map from PR #951.

Importantly, \(\Phi_k\) is **not injective**. The parent #868 already proves that a specific first-handle a-edge midpoint and its opposite a⁻¹ midpoint are different unpaired perimeter points but are identified by the true attaching map \(a_k\). Equation (C3) preserves their distinction at radius one in \(\operatorname{Cone}(P_k)\); equation (C7) identifies their images in \(F_k\).

Thus, for all \(k\ge0\), the source candidate proves

\[
\boxed{
\Phi_k:\operatorname{Cone}(P_k)\twoheadrightarrow F_k
\quad\text{continuous, surjective, not injective.}
}
\tag{C8}
\]

This is the expected direction of the topological operation: attach the one face by **quotienting the cone boundary according to the original side-pairing map**. It is not a homeomorphism between the unpaired cone and the *already paired* filled quotient.

The module retains genus-two and genus-three hostile instances and proves compactness of the filled quotient as the quotient of the original finite union of genuine unit squares. No Hausdorffness of the filled quotient is asserted from compactness alone.

## 5. What remains OPEN after this source-level increment

The central still-missing topological theorems are separate:

1. Prove \(\operatorname{Cone}(P_k)\) is homeomorphic to the **standard closed two-disk** \(D^2\), using the source-specific \(P_k\simeq S^1\) and an explicit polar or cone-to-disk equivalence. The present source does **not** construct that homeomorphism.
2. Prove the exact **fiber equivalence** of \(\Phi_k\): away from the cone outer boundary it should identify no new points, while at radius one it identifies precisely points having equal \(a_k\)-images. This is the critical missing converse to the relation-inclusion already used for surjectivity.
3. Prove \(\Phi_k\) is the **topological quotient map** for that boundary identification, and establish the adjunction/pushout universal property \(F_k\simeq B_k\cup_{a_k}D^2\). Surjective and continuous alone do **not** suffice without appropriate compact/Hausdorff or quotient-topology arguments.
4. Construct a genuine compact, oriented closed genus-\(g\) CW/manifold structure on \(F_k\), with characteristic maps and source-exact boundary word. Then compare its *actual cellular chain complex* and singular \(H_1\) to PR #823's abstract algebraic candidate complex.
5. Independently discharge source-preserving topological van Kampen and Hurewicz, then genuine marked hyperbolic geometry, primitive geodesics/lengths, Selberg/Weil–Petersson trace or average, sofic/GUE, growing-shift Chowla/Möbius, zeta divisor and RH-facing criteria.

There is no formal or mathematical implication from the present cone comparison directly to those analytic claims.

External topology source: Allen Hatcher, *Algebraic Topology*, §§1.2/2.2, official electronic text https://pi.math.cornell.edu/~hatcher/AT/ATpage.html. The cone, attaching-map and CW theorems in Hatcher are established mathematical context, not hidden Lean proofs in this increment.

## 6. Trust/operational boundaries

Exactly one isolated Lean module, this documentation note and a passive SHA-bound TOML are added as a child of PR #962. The new source reuses Mathlib \`Relation.EqvGen\`, \`Quotient\`, \`Quotient.compactSpace\`, \`Continuous.quotient_lift\` and the true parent joint-continuity theorem, crediting upstream Mathlib authors. No existing parent sources, \`GRWTSK.lean\` global root imports, pinned toolchain, Lake packages, CI, workflows, caches, native/VM/F06 or executors are modified.

Hostile checks include: an added positive-radius gluing relation should fail (C3), a false claim that the cone is the filled quotient should fail the distinct opposite-edge witness, collapsing only one selected apex source is insufficient, relying on separately continuous radial slices should fail, using the already paired \(B_k\) instead of the unpaired \(P_k\) destroys the intended cone source, and confusing a continuous surjection with a quotient/homeomorphism is forbidden.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Static source inventory, no textual local proof holes and Git hashes do not replace exact-head Lean elaboration, generated declarations/types, transitive axiom/unsafe/import audit or hostile fixture replay under the #100 trust gate. Keep draft/unmerged and issue open until accepted immutable qualification.
