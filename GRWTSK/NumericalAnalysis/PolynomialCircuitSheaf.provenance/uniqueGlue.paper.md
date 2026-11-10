# `GRWTSK.NumericalAnalysis.PolynomialCircuit.uniqueGlue`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [PolynomialCircuitSheaf.lean](../PolynomialCircuitSheaf.lean), line 162; Git blob `dc4a33cd7972eb1268c32df2695c243c00ed1dad`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/NumericalAnalysis/PolynomialCircuitSheaf.lean#L162).
- Paper: Robert Ghrist, Hans Riess, *Cellular Sheaves of Lattices and the Tarski Laplacian*, arXiv:2007.04099v1, 8 July 2020.
- [Exact paper edition](https://arxiv.org/abs/2007.04099v1); [PDF](https://arxiv.org/pdf/2007.04099v1).
- Downloaded versioned PDF digest: `sha256:d2b00c304d36e986b7a3fd75c4779b14eb9733c9d88cfe5b087ad16baf3dee7d`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Section 2.5, cellular incidence restrictions and global sections, equation (5).
- Relation: `local_consequence`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem uniqueGlue {U : Open C} {family : I → Open C} (cover : Cover U family)
    (patch : (i : I) → Section (family i)) (matchLocal : Compatible patch) :
    ∃! candidate : Section U, ∀ i, candidate.restrict (cover.inside i) = patch i
```

## Argument, changes and consumer

For an incidence-open cover and compatible exact wire assignments satisfying each local gate relation, choose a covering patch for each wire. Compatibility makes the choice independent; a patch covering a gate checks its relation. Wirewise equality proves uniqueness.

The implementation uses typed sets and arbitrary local gate relations, not the paper’s lattice-valued category. It is a concrete local-to-global application of the cited incidence convention, not a formalization of the Tarski Laplacian or a proved categorical equivalence.

Consumer: PolynomialCircuit.Path.uniqueTrace.

## Boundaries and evidence

A cover missing a wire or agreement weakened to a lossy sign observation cannot justify exact unique gluing. No solver termination or polynomial-root existence follows.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
