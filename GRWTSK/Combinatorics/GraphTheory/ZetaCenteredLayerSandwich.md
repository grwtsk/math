# Actual Zeta-Zero Center and Composable Graph-Sandwich Layers

**Lean file:** [ZetaCenteredLayerSandwich.lean](ZetaCenteredLayerSandwich.lean)  
**Mathematical consumer:** [math #1847](https://github.com/grwtsk/math/issues/1847) and the source-typed graph-layer architecture of [grwtsk/sofic PR #1](https://github.com/grwtsk/sofic/pull/1).

## Original source identities and precise scope

The original zero predicate is Mathlib's ACTUAL \`riemannZetaZeros : Set ℂ\`, not a numerical approximation or the spectrum of a graph:

- Upstream pinned Mathlib revision: \`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
- Upstream file \`Mathlib/NumberTheory/LSeries/ZetaZeros.lean\`, Git blob \`a061262f567eb33cac8ef5f52e5212246254e708\`, authorship Huanyu Zheng (Mathlib Apache-2.0).
- Original mathematical theorems: \`mem_riemannZetaZeros\`, \`isClosed_riemannZetaZeros\`, \`isDiscrete_riemannZetaZeros\`, \`IsCompact.inter_riemannZetaZeros_finite\`.
- Local existing source: \`GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/RelationSandwich.lean\`, Git blob \`9761b5dd5d6ada7344031c07386586c72c1d970a\`.
- Required toolchain: Lean \`v4.34.1\`, pinned root Mathlib above. The file is NOT a source of a new proof that the first nontrivial positive-height zeta zero exists, or that the zero is on the critical line.

The proposed \`ZetaZeroCenter\` has an \`ℂ\` value together with **explicit proofs** that it is an actual Riemann-zeta zero in \`0 < Re(s) < 1\`. No constructor makes up those proofs. An \`IsCompact\` window has finitely many *actual* zeros by the published Mathlib theorem. This is a nontrivial analytic-source result, although it does not give a computable enumeration or a validated table of heights.

## Graph-theoretic statement and proof

Let \`L ⊆ M ⊆ U\` be the existing exact directed \`Sandwich\` on a vertex carrier \`V\`. A centered layer \`A\` additionally has a source root \`r_A\`, observation \`o_A: V→ℂ\`, and exact anchor equality \`o_A(r_A)=z_A\` for its original zeta-zero record \`z_A\`.

For another centered layer \`B\` with carrier \`W\`, a \`LayerMap A B\` requires:

1. A vertex map \`f:V→W\`;
2. \`z_A=z_B\`, \`f(r_A)=r_B\`, and **pointwise** \`o_B(f(x))=o_A(x)\`;
3. Preservation of all three directed edge relations: \`L_A(x,y)⇒L_B(fx,fy)\`, similarly for \`M\` and \`U\`.

A path transports by induction on its actual finite edge list: a certified one-edge path is mapped using the lower-edge proof; a final-edge extension appends the image of that certified edge to the inductively transported path. This proves \`Path(L_A,x,y) → Path(L_B,fx,fy)\` exactly. Composing the maps composes each source identity, edge condition and observation equality. Therefore a *finite sequence* of source-justified layer changes preserves the source-zero identity and all certified directed paths, regardless of whether its intermediate vertex types differ.

The source's certified path is also a candidate and admissible target path by composing the existing lower→middle→upper edge inclusions.

**Acyclicity direction:** If \`U_B\` is acyclic then \`U_A\` is acyclic: any directed cycle in the source would be sent to a directed cycle in the target. The reverse is not inferred. Also, mapping a path forward does not prove that every target path can be lifted backward.

**Exact center return:** At the mapped root, \`riemannZeta(o_B(f(r_A))) = riemannZeta(o_A(r_A)) = riemannZeta(z_A)=0\` by the source membership proof and exact observation equality. This proves source-identity preservation, **not** that the graph has a spectral determinant equal to \`ζ\`.

## Analytic obstructions and independent criticism

A user can supply any graph and an observation map constant at a genuine zero. Therefore a graph sandwich with a zeta-center anchor is **insufficient** to derive RH or graph/zeta spectral equivalence; an exact source-to-operator functor, its spectral determinant/zero divisor, multiplicity and analytic normalization would be necessary. A center in the critical strip is not proved to be on the critical line by the anchor contract.

The center proof does not use an imported RH/GRH theorem; the source zero's existence is an explicit premise. Mathlib's compact-finiteness conclusion is a genuine existing theorem for actual zeros, not a model-generated finite-sampling hypothesis.

## Verification, applications, and limitations

The source builds on existing math sources that have their own separate verification histories. New Lean elaboration/kernel replay/transitive axiom audit: **NOT_RUN** (no local Lean/Lake executable in the authoring environment). Complete mathematical review by an independent external expert: **NOT_RUN**. The sibling focused manifest records the exact Git blob and declarations.

The intended application is a graph-layer source-revision contract: an AI may transform and optimize a directed graph representation, but any accepted source path, mathematical origin and observation must be proved compatible. Candidate/upper edges retain only discovery authority. The verified graph structure is not automatically a number-theoretic zeta-graph realization.

**Next proof obligations:** formalize spectral/source-zero determinant equality, the original signed Weil form with all prime-power and archimedean terms, genuinely quantitative continuous heat comparison, source-complete finite zero enumeration with error bounds, and independent checker evidence. Do not promote any of these as obtained here.
