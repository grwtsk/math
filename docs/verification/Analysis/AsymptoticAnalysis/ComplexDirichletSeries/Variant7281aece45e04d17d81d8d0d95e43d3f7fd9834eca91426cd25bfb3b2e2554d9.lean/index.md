# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ComplexDirichletSeries.Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7540aab9d95b6222ad12d00e0893f765c752019",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7540aab9d95b6222ad12d00e0893f765c752019`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexWeights` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexDirichletTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexdirichletterm--d52a3072d1363e11b2c1ab92.md) | 17 | `declaration-track:d52a3072d1363e11b2c1ab92475cb8e8b91fc014c71028ef12f46fe78ce40d95` |
| 2 | `def` | [ComplexDirichletAbsSummable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexdirichletabssummable--2b8f9d7d588de4ac7cb719d6.md) | 23 | `declaration-track:2b8f9d7d588de4ac7cb719d6e229c76d67ac52fc85fa1ab78f55b58e68f18649` |
| 3 | `def` | [complexDirichletSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexdirichletseries--6248fbe5a9c02422808e2a7d.md) | 28 | `declaration-track:6248fbe5a9c02422808e2a7ddf3da8a121c87432681db975a9c56ef662d9cdf7` |
| 4 | `theorem` | [complexDirichletSeries_absSummable_of_bounded_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexdirichletseries-abssummable-of-bounded-coeff--b3fef955eda22b0a1ea16e43.md) | 33 | `result-track:b3fef955eda22b0a1ea16e43c31979763370cdaa3f55e3a39299b44ea5b3eb41` |
| 5 | `def` | [oneArithFnComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/onearithfncomplex--98603ad8bc9cd2763a58b4c9.md) | 54 | `declaration-track:98603ad8bc9cd2763a58b4c9af79368e65eb55c8ce20220280550723bb26e33d` |
| 6 | `theorem` | [complexZeta_terms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexzeta-terms-summable--a718490347ce87351fb2c509.md) | 57 | `result-track:a718490347ce87351fb2c5099c6beb81a079a05414bea0764fe54b40d9bc0008` |
| 7 | `theorem` | [complexDirichletSeries_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9.lean/declarations/complexdirichletseries-add--3897af39d61560645e16d196.md) | 72 | `result-track:3897af39d61560645e16d19626c900ece0cb9f8a27bfc0ed1622f71e81b05e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
