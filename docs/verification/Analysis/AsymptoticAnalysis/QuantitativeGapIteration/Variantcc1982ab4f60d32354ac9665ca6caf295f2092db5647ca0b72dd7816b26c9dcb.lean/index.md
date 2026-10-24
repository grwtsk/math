# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuantitativeGapIteration.Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6415ce2a2d53996a197cb1779d5657ac2c40d32",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6415ce2a2d53996a197cb1779d5657ac2c40d32`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lossProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/lossproduct--8e98a8984d8ede10ceff4318.md) | 20 | `declaration-track:8e98a8984d8ede10ceff4318cb44f4bc85325ab1032b7612b699cb4fd6c9467f` |
| 2 | `theorem` | [lossProduct_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/lossproduct-zero--f4026c3d85c41d427b7f26ed.md) | 23 | `result-track:f4026c3d85c41d427b7f26edb35c79436ec892706f74d0908faf824a410fe2a9` |
| 3 | `theorem` | [lossProduct_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/lossproduct-succ--7425287505ee48099a5ec516.md) | 26 | `result-track:7425287505ee48099a5ec5164c219581b3394570a5303f73b5374942c71c54a6` |
| 4 | `theorem` | [lossProduct_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/lossproduct-pos--fc0377715b1c4274914a440a.md) | 30 | `result-track:fc0377715b1c4274914a440abede4bb3d3876c2f3aa4b2732eb3c998163d7690` |
| 5 | `def` | [refinementBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/refinementbudget--806568191c52f0ea4d54f08d.md) | 35 | `declaration-track:806568191c52f0ea4d54f08d49af06229bca5057b410ff2e86bf8649328eae38` |
| 6 | `theorem` | [refinementBudget_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/refinementbudget-eq--24cf56c2b44e801e26b99308.md) | 40 | `result-track:24cf56c2b44e801e26b99308f991978171edb541c773f3dc8e8022ed80fec1e3` |
| 7 | `theorem` | [refinement_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/refinement-lower-bound--cab5109d92d1ae19df4c589d.md) | 54 | `result-track:cab5109d92d1ae19df4c589d6e88df8512456e8a14c3753cba1dd27226825c61` |
| 8 | `theorem` | [refinement_iteration](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/refinement-iteration--d2d0a8d79d820fde00a67c6c.md) | 63 | `result-track:d2d0a8d79d820fde00a67c6c9064db2da7d4bcf70331aa61641404cbc2c36246` |
| 9 | `theorem` | [uniform_of_prefix_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/uniform-of-prefix-budget--03c980927d73b07388946cd6.md) | 71 | `result-track:03c980927d73b07388946cd66090debec52b9dbba074ce6a8eadb8f497341510` |
| 10 | `theorem` | [uniform_of_summable_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/declarations/uniform-of-summable-budget--dedcfbb28bbee06fac2c0c0f.md) | 85 | `result-track:dedcfbb28bbee06fac2c0c0f51214a378dc3979577652f95104dc3d2419eb3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
