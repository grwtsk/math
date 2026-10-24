# Verification target: GRWTSK.Analysis.MeasureTheory.Lemmas.Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70af40b732335ab1ace6eb8b6d01fbe50521c6f7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70af40b732335ab1ace6eb8b6d01fbe50521c6f7`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.ParallelComp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [parallelComp_comp_copy](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-comp-copy--996d14a30a41b578a0f65f50.md) | 37 | `result-track:996d14a30a41b578a0f65f50d8fbb5234f03d14d2485b3212a7bd6780d9e2857` |
| 2 | `lemma` | [swap_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/swap-parallelcomp--29ab12d06e1910782b6d07c6.md) | 49 | `result-track:29ab12d06e1910782b6d07c66aaf0a58728ddb36156996adca83322cd75ef9d9` |
| 3 | `lemma` | [deterministic_comp_copy](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/deterministic-comp-copy--8732c317434e4e1e1a7ab031.md) | 67 | `result-track:8732c317434e4e1e1a7ab031aadbc3ae78ae95cfe9c7650e30362c6d0a06d8f9` |
| 4 | `lemma` | [compProd_eq_parallelComp_comp_copy_comp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/compprod-eq-parallelcomp-comp-copy-comp--8b221939018bb99ae97ba47b.md) | 76 | `result-track:8b221939018bb99ae97ba47b59bdc466dc192a91572b3ddb2e4d786ade2eda56` |
| 5 | `lemma` | [prod_comp_right](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/prod-comp-right--5a28180b3c42b4e2bd03a5a9.md) | 82 | `result-track:5a28180b3c42b4e2bd03a5a90cdd3072bc016c0d02e87bf1fcd370960880c45d` |
| 6 | `lemma` | [prod_comp_left](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/prod-comp-left--557b1405e94bd9de9c843988.md) | 94 | `result-track:557b1405e94bd9de9c843988a9f9d370d2fb5265ce99529c607bd773c20bfb38` |
| 7 | `lemma` | [parallelComp_id_left_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-id-left-comp-parallelcomp--573148ae7a15045406baa198.md) | 116 | `result-track:573148ae7a15045406baa198c0837b42802bea994fe9b2a0f71d1bfb981a7619` |
| 8 | `lemma` | [parallelComp_id_right_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-id-right-comp-parallelcomp--22d4c196ba3b7a7593d0b9fb.md) | 124 | `result-track:22d4c196ba3b7a7593d0b9fb879b14ee1f5e9d6782f86dc96cdeaf4e378a08fc` |
| 9 | `lemma` | [parallelComp_comp_parallelComp](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-comp-parallelcomp--bf5b0aa0aac27ecf0284a13e.md) | 132 | `result-track:bf5b0aa0aac27ecf0284a13ed2ea7ff4268cf1bf38bbe82002aea1b4d62c5c41` |
| 10 | `lemma` | [parallelComp_comp_prod](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-comp-prod--e79c1df9277a3dcd185a0751.md) | 138 | `result-track:e79c1df9277a3dcd185a0751b6a4380e39ffde774a83bd53ba35a29bc7d787f9` |
| 11 | `lemma` | [parallelComp_comm](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/parallelcomp-comm--172dfd8f2dca9224de66d719.md) | 144 | `result-track:172dfd8f2dca9224de66d7198daba91eded4b5806f46a0118237dcb64c9b2a75` |
| 12 | `lemma` | [MeasureTheory.Measure.parallelComp_comp_compProd](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/declarations/measuretheory-measure-parallelcomp-comp-compprod--a8c3dfb90dc8fb86b36f99ce.md) | 155 | `result-track:a8c3dfb90dc8fb86b36f99ce6a2e881421db804d9687d0f634c415da22a5afe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
