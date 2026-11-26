# Euclidean tensor geometry and complexity

Local attribution: grwtsk contributors.

This package binds the seven subject interfaces to the same upstream source revision. It shares the root Lean and Mathlib pins and keeps the additional upstream dependencies isolated. The canonical Lean files are under `GRWTSK/`. The package's relative links resolve to those files. See [issue #1856](https://github.com/grwtsk/math/issues/1856) for the outstanding obligations and source-bound verification evidence.

- [Source audit](SourceAudit.md) records all seven editions, the November 23 precursor, earlier supporting theorems, Comparator challenges, declared gaps and dependency pins.
- [Corpus correspondences](CorpusCorrespondences.md) identifies existing definitions and consumers by exact source and states the required return maps.
- [Signed network contractions](../../../../GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/SignedNetworkContractions.md) gives the conditional clique shape and covering calculations and their finite model limits.
- [Apache-2.0 upstream license](../../../../LICENSES/upstream/openai-math/Apache-2.0.txt) covers the pinned upstream files. This package refers to the upstream dependency and papers at immutable source URLs.

## Reproduction

From this isolated package, run the source census against an available native clone of `openai/math` with commit `3344da59991ed94f9ba711217b29c1d760badfa6`.

```sh
python3 source-closure.py /path/to/openai-math /tmp/family-379-closure.json
```

Use the package's Lean `v4.34.1`, its Lake lock and the pinned upstream package instructions for dependency patches. In a clean isolated environment, build one subject at a time with `lake build --wfail +<module>`. Use `lake env leanchecker --fresh <module>` and `#print axioms` for each exact declaration. Compare declaration types and the definitions they reach to the original challenge and solution. Run each upstream JSON challenge with the tool and sandbox dependencies in the [upstream Comparator instructions](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/README.md). The challenge files have admitted placeholders for the statements being compared and belong only in the challenge environment.

The subject modules are source candidates. The initial local attempt used a byte-identical source slice and the pinned Mathlib cache. The combined matrix and chart build was interrupted after one upstream module completed. A successful cache download attests to available dependencies. Exact statement comparison, full dependency compilation, replay, axiom checks and mathematical review are declaration-specific, as recorded alongside the sources and in the issue. The independent published [matrix Comparator reconstruction](https://lilting.ch/en/articles/matrix-multiplication-exponent-nine-fourths-openai) reports matching dependency types and fresh kernel replay at the same upstream pins, with its own tool scope.
