# The unpaired polygon perimeter and the correct attaching-map direction

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** This note documents authored Lean proof scripts. No Lean/Lake elaboration, kernel replay, generated declaration audit or completed CW-surface formalization is claimed.

- Owner: [grwtsk/math#868](https://github.com/grwtsk/math/issues/868).
- Exact direct parent: [draft PR #864](https://github.com/grwtsk/math/pull/864), head `9f623c04671939a3cdd502edd1bf994a6f0e50a2`.
- New source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean`.
- Pinned dependencies within the stack: #745 provides the exact genus-\(g\) oriented polygon boundary word; #834 supplies true finite corners and cyclic handle successor; #845 builds a *paired* topological one-skeleton \(B_k\); #859 builds a true quotient \(F_k\) of radial unit-square sectors receiving a continuous map \(B_k\to F_k\). The earlier #823 categorical homology is of a **candidate algebraic chain model**, not the verified cellular chains of a surface.

## 1. An essential distinction between the two topological boundary spaces

Write \(g=k+2\ge2\). The unchanged source type

\[
E_k=\operatorname{BoundaryPoint}(k)
=\operatorname{PolygonCorner}(k)\times I,\qquad I=[0,1]
\]

is the genuine disjoint union of \(4g\) directed unit intervals. Each index retains the original source generator ID, orientation and position in the cyclic polygon word.

The previous #845 quotient

\[
B_k=E_k/\mathcal R_{\mathrm{paired}}
\]

imposes **both** endpoint adjacency and the opposite-oriented side pairings. That space is a candidate one-skeleton with \(2g\) source-labelled unoriented edges and a common polygon vertex.

But the source of the standard attaching map of the 2-cell is the polygon's **unpaired** boundary circle: the perimeter traverses each of the \(4g\) directed intervals consecutively *before* the \(a/a^{-1}\) and \(b/b^{-1}\) identifications.

The new source defines only four primitive seam relations, for every original handle \(h\):

\[
\begin{aligned}
((h,0),1)&\sim((h,1),0),\\
((h,1),1)&\sim((h,2),0),\\
((h,2),1)&\sim((h,3),0),\\
((h,3),1)&\sim((\operatorname{nextHandle}(h),0),0).
\end{aligned}
\tag{P1}
\]

The last seam is the correct cyclic wraparound when there are zero extra handles and advances through all additional handles otherwise. **No opposite-side interior pairing occurs in (P1).**

Define

\[
\mathcal R_{\mathrm{seam}}
=\operatorname{EqvGen}(\operatorname{PerimeterSeamStep}(k)),
\qquad
P_k=E_k/\mathcal R_{\mathrm{seam}}.
\tag{P2}
\]

The new Lean `UnpairedPerimeter k` is a real Mathlib `Quotient` on genuine unit-interval source points with the actual coinduced **quotient topology**. The source declares the authentic quotient projection \(q_k:E_k\to P_k\) and establishes candidate proofs that \(q_k\) is continuous and an `IsQuotientMap\), and each original signed edge parametrization \(I\to P_k\) is continuous.

Classically \(P_k\) is a topological circle, but **an explicit homeomorphism \(P_k\simeq_{\mathrm{top}}S^1\) or \(\operatorname{AddCircle}\) has NOT been proved in this increment**. The phrase "unpaired cyclic perimeter" records a concrete gluing construction, not an already accepted circle theorem.

## 2. Construct and prove the actual attaching-direction map

The inclusion of relations

\[
\mathcal R_{\mathrm{seam}}\subseteq\mathcal R_{\mathrm{paired}}
\tag{P3}
\]

is not inserted as an axiom or inferred from matching word lengths. The source matches *each* constructor of `PerimeterSeamStep k` with the exact corresponding `BoundaryGluingStep k` from #845 and lifts that match through the full Mathlib `Relation.EqvGen` by induction.

The real `Quotient.lift` universal property then supplies

\[
\boxed{
a_k:P_k\longrightarrow B_k
}
\tag{P4}
\]

with no extra quotient assumptions. It is `perimeterAttach k` in Lean.

The source candidate `perimeterAttach_continuous` proves continuity using Mathlib `Continuous.quotient_lift`. Crucially, for **every** original directed polygon side point \(p\in E_k\), its complete commuting equation is

\[
\boxed{
a_k(q_k(p))=\operatorname{boundaryProjection}_k(p).
}
\tag{P5}
\]

The proof also establishes that \(a_k\) is **surjective**: every point of the paired boundary has a representative from the same original signed edge source, and therefore lies in the attaching map's image. A separate uniqueness proposition says that any function agreeing with (P5) on the entire original source equals \(a_k\).

This is the **correct attaching-map direction**. The earlier continuous `boundaryInclusion k:B_k\to F_k` from #859 goes *into the filling*, and it must not be mistaken for \(S^1\to B_k\). Once \(P_k\) is identified with a standard circle, (P4) becomes a genuine circle-to-one-skeleton attaching map.

## 3. A strict negative witness: opposite edge interiors are NOT identified prematurely

There is an important mathematical risk: if the "unpaired" perimeter accidentally included the \(a/a^{-1}\) or \(b/b^{-1}\) identifications, then (P4) might be injective or degenerate, so the attaching-map source would no longer be a valid polygon perimeter.

The source therefore proves an **interior immobility theorem**. Every generator in (P1) relates *endpoints only*, with tangential parameter 0 or 1. The endpoint predicate is invariant under these generators and their reflexive, symmetric and transitive closure. A stronger induction shows:

\[
\boxed{
p\sim_{\mathrm{seam}}q,\quad
p\text{ a strict edge-interior point}
\quad\Longrightarrow\quad p=q
\text{ in the ORIGINAL edge-copy source }E_k.
}
\tag{P6}
\]

This is stronger than merely asserting different edge indices: no equivalence chain formed from endpoint seams can move a strict interior point at all.

Let \(h\) be the original first handle, and take its \(a\)-edge midpoint \(p=((h,0),\tfrac12)\) and corresponding \(a^{-1}\)-edge point \(q=((h,2),1-\tfrac12)\). The true source side indices 0 and 2 are different, so by (P6)

\[
q_k(p)\ne q_k(q)
\quad\text{in }P_k.
\tag{P7}
\]

Nevertheless #845's actual reversed a-side relation gives

\[
a_k(q_k(p))=a_k(q_k(q)).
\tag{P8}
\]

Thus the newly constructed map is **genuinely noninjective for every \(k\ge0\)**:

\[
\boxed{
a_k\text{ is continuous and surjective, but not injective.}
}
\tag{P9}
\]

The contrast is a precise topological instance of the information-loss discipline running through #722/#734 (nonabelian Heisenberg versus abelian characters): a projection can identify distinct source objects, so source identity and its correct quotient must be tracked explicitly. **This is not a new Torelli or Hodge theorem.**

The named source tests cover both \(k=0\), with eight directed sides, and \(k=1\), with twelve directed sides. The source also records the exact general count \(4(k+2)\), not \(2(k+2)\) (which counts unoriented one-cell generator IDs instead).

## 4. The perimeter, paired boundary and radial filling commute

The previous radial quotient \(F_k\) has a continuous map \(\iota_k:B_k\to F_k\) satisfying

\[
\iota_k(\operatorname{boundaryProjection}(p))
=\operatorname{radialProjection}(p,1).
\]

The new source explicitly constructs the composite

\[
\boxed{P_k\xrightarrow{\,a_k\,}B_k
\xrightarrow{\,\iota_k\,}F_k}
\tag{P10}
\]

and proves its continuity. For every original source edge point, this is exactly the radius-one point of the prior filled quotient:

\[
(\iota_k\circ a_k)(q_k(p))
=\operatorname{radialProjection}(p,1).
\tag{P11}
\]

There is an additional useful compatibility at **all fixed radii**. The four original endpoint seams of \(P_k\) are present in #859's radial relation for every \(r\in[0,1]\). Thus for each fixed \(r\), the new source constructs a genuine continuous map

\[
f_{k,r}:P_k\to F_k,\qquad
f_{k,r}(q_k(p))=\operatorname{radialProjection}(p,r).
\tag{P12}
\]

The two exact endpoint cases are

\[
f_{k,0}\equiv\text{apex},
\qquad
f_{k,1}=\iota_k\circ a_k.
\tag{P13}
\]

The composed radial invariant from #859 satisfies

\[
\rho_k(f_{k,r}(x))=r.
\tag{P14}
\]

These are **fixed-radius** continuous maps. The source does **not** yet prove joint continuity of the induced function \(P_k\times I\to F_k\), the universal property of a cone on \(P_k\), or any cone-to-disk homeomorphism. Those require further topological comparison and are not inferred from separately continuous slices.

## 5. What remains open before a true 2-cell/CW surface

Although (P4)–(P14) close a real **topological map** from the unpaired perimeter into the paired boundary, the next true geometric suppliers are still:

1. **Circle recognition:** a concrete homeomorphism \(P_k\simeq S^1\) or to an appropriate \(\operatorname{AddCircle}\), with the original side order and basepoint transport.
2. **Disk recognition:** prove the cone on that unpaired perimeter is homeomorphic to a standard closed 2-disk; construct the jointly continuous map \(P_k\times I\to F_k\) and the cone's equivalence relation.
3. **Adjunction/pushout:** prove the filled quotient has the universal property of \(B_k\cup_{a_k}D^2\). The previously defined \(\iota_k\) is a map \(B_k\to F_k\), not the attaching map itself, and must not be used with its arrow reversed.
4. **Cellular source comparison:** verify the resulting space is a compact oriented closed genus-\(g\) CW surface, with exact cells, characteristic maps and cellular chains matching the candidate \(\operatorname{ChainComplex}(\operatorname{ModuleCat}\mathbb Z)\) in PR #829.
5. **Further separate geometry/analysis:** authenticate \(\pi_1\) and Hurewicz via van Kampen/cellular theory, then marked hyperbolic metrics, true geodesic classes/lengths, Selberg/Weil–Petersson and any RH-facing spectral application.

Allen Hatcher, *Algebraic Topology* (2002), §§1.2 and 2.2, is established external mathematical context for these constructions; [official edition](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). It is **not** an imported kernel proof of this new Lean module.

The parallels with #198 Čech/Hodge, #205/#545 signed Hodge, #653 finite Fourier aliases, #121/#168 sofic/GUE, #516 growing-shift Möbius/Chowla, and canonical RH #15 are **nonimplication comparisons**; the present topological map does not supply their missing arithmetic, operator, metric or trace interfaces.

## 6. Source attribution, replay and trust

Imported Mathlib ingredients: true `unitInterval` topology, `TopologicalSpace` coinduced quotient structure, `Relation.EqvGen`, `Quotient.lift`, `Continuous.quotient_lift`, `continuous_quotient_mk'`, and `isQuotientMap_quotient_mk'`. The new mathematical supplier is their composition on the **exact** polygon side-source relation, the source comparison to #845/#859 and the proof-relevant noninjectivity witness. No claim is made that these Mathlib APIs were invented locally.

The change adds exactly one isolated Lean file, this mathematical note and one passive verification TOML, stacked on the immutable head of PR #864. It leaves parent sources, global root imports, `lean-toolchain`, Lake dependencies, CI/workflows, caches, native/VM/F06 and executor configuration untouched.

The manifest records all named authored declarations, generated inductive/quotient candidates requiring exact-head audit, source SHA bindings and hostile controls for **missing final seam**, incorrect reversal, accidental opposite-side relation in the unpaired perimeter, false injectivity, false circle homeomorphism, the wrong attaching-map direction, false jointly continuous cone and unsupported CW/spectral/RH conclusions.

**Trust status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Authored Lean text and a matching static manifest are not theorem proof acceptance. Exact-head authorized #100 elaboration, complete generated declaration/type/import/axiom/unsafe audit and executable hostile replay remain necessary before merging, closing #868 or promoting any Lean theorem claim.
