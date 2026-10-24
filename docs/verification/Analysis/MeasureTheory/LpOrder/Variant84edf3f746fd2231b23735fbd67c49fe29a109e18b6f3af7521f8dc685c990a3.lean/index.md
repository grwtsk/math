# Verification target: GRWTSK.Analysis.MeasureTheory.LpOrder.Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "278207a6d6813783314fb75346f73c7783ba016d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `278207a6d6813783314fb75346f73c7783ba016d`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeFn_le](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/coefn-le--52ca82475a9c8ab9c4362d87.md) | 51 | `result-track:52ca82475a9c8ab9c4362d87e5a5e4e15513d5c2d4fc88e7915afc7facf655e8` |
| 2 | `theorem` | [coeFn_nonneg](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/coefn-nonneg--9735671f4f17d8acfd083087.md) | 54 | `result-track:9735671f4f17d8acfd0830878558921566d097576331187f56f4beda6524603f` |
| 3 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/instaddleftmono--0d17988d23182d71711b1d07.md) | 63 | `declaration-track:0d17988d23182d71711b1d07f691b3e182465b5454b9e931723c0635d34b3693` |
| 4 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/instisorderedaddmonoid--ebfd5c24113d0335e36a2e4b.md) | 70 | `declaration-track:ebfd5c24113d0335e36a2e4b7aad523340f315bd74f88c96b9c7834d9c8c72ad` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/instance--f0dd4db8ddbec244b93b6b26.md) | 73 | `declaration-track:f0dd4db8ddbec244b93b6b26490c1490044a114d36d8ac0e94b1cc3ef07dd4b9` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.MeasureTheory.MemLp.sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant58e6fc3a22b9c0bfc6b357--0093b79ffe8b2da8f49a80b3.md) | 87 | `result-track:0093b79ffe8b2da8f49a80b3a6fcce1d94acc9660814aa4982fd7699f57cddd2` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.MeasureTheory.MemLp.inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant58e6fc3a22b9c0bfc6b357--b3c83b54cdd429e0fc900b3d.md) | 95 | `result-track:b3c83b54cdd429e0fc900b3d31a75578c3c1ae67f2ca05e275593b7b9f131c9c` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.MeasureTheory.MemLp.abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant58e6fc3a22b9c0bfc6b357--42e8620066ad0a0a4f129c81.md) | 103 | `result-track:42e8620066ad0a0a4f129c8182ac507d62dfccf0e97bd75aea4934225c6c44ee` |
| 9 | `instance` | [instLattice](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/instlattice--da0efd7456fe5dbbdbe03b35.md) | 109 | `declaration-track:da0efd7456fe5dbbdbe03b357ae5ce67fce884d5947f396231e275cadcb21d10` |
| 10 | `theorem` | [coeFn_sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/coefn-sup--b6d96eaf856f0078f91f86a2.md) | 118 | `result-track:b6d96eaf856f0078f91f86a2afd329411dacc87fe513b7414635e0f55a2e6936` |
| 11 | `theorem` | [coeFn_inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/coefn-inf--adbe6061889690c14abd80ec.md) | 121 | `result-track:adbe6061889690c14abd80eca174d26133160a4d9ff328f721d0ec2401418b8b` |
| 12 | `theorem` | [coeFn_abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/coefn-abs--a5e35b62bd121d8c0e83efc0.md) | 124 | `result-track:a5e35b62bd121d8c0e83efc0405e8ca6f726f98f400643d642e25365b7f6cb5c` |
| 13 | `instance` | [instHasSolidNorm](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean/declarations/insthassolidnorm--cd6b7c1e90f7a441b5f817fb.md) | 127 | `declaration-track:cd6b7c1e90f7a441b5f817fbf25be0d967000c3c9f61d7f5714a336ebdf2fde9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
