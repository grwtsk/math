# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PImage.Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702abe9489fa0f9aacedeb56c045a1d40b770089",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702abe9489fa0f9aacedeb56c045a1d40b770089`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/tofinset--e0479a4d2a4ec2df512e6b1b.md) | 35 | `declaration-track:e0479a4d2a4ec2df512e6b1b6f1ac95e7b68e9c94314bd8016225c519652895c` |
| 2 | `theorem` | [mem_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/mem-tofinset--3cef5bf28aa07549b5a7e5ed.md) | 39 | `result-track:3cef5bf28aa07549b5a7e5ed033c0f484f4447df2e68048a08754695672603f7` |
| 3 | `theorem` | [toFinset_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/tofinset-none--f4e2373ee8da5668b46279b7.md) | 43 | `result-track:f4e2373ee8da5668b46279b7fbec401be311b134364668bee8f6511616be7e58` |
| 4 | `theorem` | [toFinset_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/tofinset-some--55114e1f9210409b5b36a287.md) | 47 | `result-track:55114e1f9210409b5b36a28777bcdd8865a2c7b5e8049feb3c6d0a4a7866671c` |
| 5 | `theorem` | [coe_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/coe-tofinset--71aa2b97ee00ecbd4a26a3fd.md) | 51 | `result-track:71aa2b97ee00ecbd4a26a3fd5d96cde9b8c069697e97ff5e096e3de8e724746e` |
| 6 | `def` | [pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage--86f111832cc94185f94e32f6.md) | 62 | `declaration-track:86f111832cc94185f94e32f63c094d32204047729fadf1dbac779a1b20e12480` |
| 7 | `theorem` | [mem_pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/mem-pimage--22dbbdb4fdf5753a40112075.md) | 66 | `result-track:22dbbdb4fdf5753a4011207565cc549a4fa6ed10d3706a39683ac21be2e18d43` |
| 8 | `theorem` | [coe_pimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/coe-pimage--e24b7218470483747795e9ad.md) | 70 | `result-track:e24b7218470483747795e9ad728ca22f582b91fe1eac16c0bc3aaac304a32c23` |
| 9 | `theorem` | [pimage_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-some--55be4800cf7cb87e7829e7e8.md) | 74 | `result-track:55be4800cf7cb87e7829e7e81599294fd62a254baa405b23bf41c4f7b2b46d74` |
| 10 | `theorem` | [pimage_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-congr--258023714715b3fa33ba17e5.md) | 79 | `result-track:258023714715b3fa33ba17e5e8b89da830f6d1fc91799ad92703590af36602d4` |
| 11 | `theorem` | [pimage_eq_image_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-eq-image-filter--4b8f3616df401260fec9dede.md) | 83 | `result-track:4b8f3616df401260fec9dede1e673008918e688a3ebe6c67d94620d2f340dcca` |
| 12 | `theorem` | [pimage_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-union--b74ce69ef10189e98c2b8e8c.md) | 89 | `result-track:b74ce69ef10189e98c2b8e8c9b3ca7a787856f0f56ebe5510e1c341ccb697521` |
| 13 | `theorem` | [pimage_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-empty--c6ba30d4b2b4530bef315c27.md) | 94 | `result-track:c6ba30d4b2b4530bef315c277288cfe14af771c451674865297c3fed5f952587` |
| 14 | `theorem` | [pimage_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-subset--8cf855baae270115423f751a.md) | 98 | `result-track:8cf855baae270115423f751a4a654c3bd1a2dd43267c2c1f9a379f0b30304637` |
| 15 | `theorem` | [pimage_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-mono--22687133a5266e30690a45ac.md) | 102 | `result-track:22687133a5266e30690a45acb298daf9a34e0bf1cb5ad238af93ea823b96aba6` |
| 16 | `theorem` | [pimage_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PImage/Variant35df9dee281a6bf1a3463a3151b6029cc99a7b25962c4ff131cfc82790c3e729.lean/declarations/pimage-inter--7884de5831853787873ed047.md) | 105 | `result-track:7884de5831853787873ed047c71413052ca71cd3495a5c68cc13a7adf99cb52f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
