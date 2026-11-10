# `GRWTSK.NumericalAnalysis.PolynomialCircuit.Path.uniqueTrace`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [PolynomialCircuitSheaf.lean](../PolynomialCircuitSheaf.lean), line 260; Git blob `dc4a33cd7972eb1268c32df2695c243c00ed1dad`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/NumericalAnalysis/PolynomialCircuitSheaf.lean#L260).
- Paper: Robert Ghrist, Hans Riess, *Cellular Sheaves of Lattices and the Tarski Laplacian*, arXiv:2007.04099v1, 8 July 2020.
- [Exact paper edition](https://arxiv.org/abs/2007.04099v1); [PDF](https://arxiv.org/pdf/2007.04099v1).
- Downloaded versioned PDF digest: `sha256:d2b00c304d36e986b7a3fd75c4779b14eb9733c9d88cfe5b087ad16baf3dee7d`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Section 2.5, global-section compatibility equation (5); local path specialization.
- Relation: `local_consequence`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem uniqueTrace {step : Fin (n + 1) → Port → Port → Prop}
    (witness : (g : Fin (n + 1)) → GateWitness step g)
    (matching : Compatible (fun g => (witness g).toSection)) :
    ∃! trace : Trace step,
      ∀ g, trace.toSection.restrict (starCover.inside g) = (witness g).toSection
```

## Argument, changes and consumer

Matching exact gate witnesses on the path star cover glue by uniqueGlue. Convert between a global section and a trace; the inverse conversions transfer the unique-gluing property to traces.

This path-trace result is local work using the cited method, not a named theorem claimed to occur in the paper. No lattice, Hodge or diffusion theorem is imported.

Consumer: Exact verification of a supplied compatible path witness.

## Boundaries and evidence

The result assumes exact matching witnesses. It does not construct witnesses or prove existence of a root or algorithmic termination.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
