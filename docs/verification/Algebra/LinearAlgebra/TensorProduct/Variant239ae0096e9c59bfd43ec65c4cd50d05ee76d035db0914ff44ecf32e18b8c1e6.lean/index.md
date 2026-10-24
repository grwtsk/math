# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d32e8333a14343a3f45d1b9e5f949f49d15a6987",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d32e8333a14343a3f45d1b9e5f949f49d15a6987`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasBracketAux](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/hasbracketaux--e039a8db2236a80020c8236f.md) | 53 | `declaration-track:e039a8db2236a80020c8236f27445e7b959542332e7710b504f840fd85144c08` |
| 2 | `instance` | [lieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/lieringmodule--f477182614c9103e71a0c02b.md) | 57 | `declaration-track:f477182614c9103e71a0c02b52f991f13a42c9b835d43e9a66fcead144b8bc4b` |
| 3 | `instance` | [lieModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/liemodule--1eb5ad1285cc6b35e70caed0.md) | 76 | `declaration-track:1eb5ad1285cc6b35e70caed089d73eae4a05c4d7bc90854d5ecbb06073a91733` |
| 4 | `theorem` | [lie_tmul_right](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/lie-tmul-right--cceb3836214d3aafcf071953.md) | 84 | `result-track:cceb3836214d3aafcf0719530c1e766f7562f40138685e0db4eaef4bf729895b` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/lift--bc7655284147df30ce544ed6.md) | 93 | `declaration-track:bc7655284147df30ce544ed6fdd2bd2440da895622c17128a5d76ee9bd941e68` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/lift-apply--01628555f1c6a666a6913819.md) | 103 | `result-track:01628555f1c6a666a69138198a21a7efa505d5090b9bf64e458f8a764ff44152` |
| 7 | `def` | [liftLie](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/liftlie--899333f5d6a9e12a1a1a2799.md) | 110 | `declaration-track:899333f5d6a9e12a1a1a279982cf2f586c0d1ee492b88c03adc696dd4ab584e3` |
| 8 | `theorem` | [coe_liftLie_eq_lift_coe](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/coe-liftlie-eq-lift-coe--dc7ad9a52fe6ccbf9510ace3.md) | 115 | `result-track:dc7ad9a52fe6ccbf9510ace3148122f006fa46c6cea04b782f3ec02c83557083` |
| 9 | `theorem` | [liftLie_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/liftlie-apply--df5b88d6d745fe3acb07b9bc.md) | 124 | `result-track:df5b88d6d745fe3acb07b9bcdbc701c247e8fe5a342d49ddb20c40038a00ca94` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/map--64ff5fe461a4bafc90d1a19a.md) | 132 | `declaration-track:64ff5fe461a4bafc90d1a19a829b2e0b06058e864f8de38ebb2a1ed5d69d5993` |
| 11 | `theorem` | [toLinearMap_map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/tolinearmap-map--9a4afe48f3e862959537ed93.md) | 144 | `result-track:9a4afe48f3e862959537ed93ce45bce543be4ca707711776a134d30a3da0edd0` |
| 12 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/map-tmul--902ee7e14d07e4f79e171483.md) | 151 | `result-track:902ee7e14d07e4f79e1714835e9b6a7b44960af002e4825c325c8bba51d277a8` |
| 13 | `def` | [mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/mapincl--cf651edb5ae2c434cb4f8956.md) | 156 | `declaration-track:cf651edb5ae2c434cb4f8956c4de3a4d3a9d47db6841da57db685ff95164a76e` |
| 14 | `theorem` | [mapIncl_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/mapincl-def--b1728273701312f1b5eb6e89.md) | 160 | `result-track:b1728273701312f1b5eb6e8963907bd1863c4b9ebcc24d4baf8ec81c3b8a1757` |
| 15 | `def` | [toModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/tomodulehom--9a005aab567999c39808a051.md) | 177 | `declaration-track:9a005aab567999c39808a051b02bca9da050a063ef7cb5d48c02b79e7f429bf4` |
| 16 | `theorem` | [toModuleHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/tomodulehom-apply--f76354330d7d641ca410a5ab.md) | 183 | `result-track:f76354330d7d641ca410a5ab2dc6dae2ecb84b379d6cbb161409105acc322ad7` |
| 17 | `theorem` | [lieIdeal_oper_eq_tensor_map_range](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/declarations/lieideal-oper-eq-tensor-map-range--0f140031079f359dc97997ed.md) | 208 | `result-track:0f140031079f359dc97997ed9cc7d9a4c6e1ea252f90f7de40b75b6acb58f466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
