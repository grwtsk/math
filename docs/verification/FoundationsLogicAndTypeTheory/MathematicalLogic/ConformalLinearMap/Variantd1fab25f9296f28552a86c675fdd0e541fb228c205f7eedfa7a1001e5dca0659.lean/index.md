# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ConformalLinearMap.Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "068091b76b3380b5817300ee791a338fc2e8b68b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `068091b76b3380b5817300ee791a338fc2e8b68b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConformalMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/isconformalmap--72cba61d6d35400cbc9d0b7f.md) | 48 | `declaration-track:72cba61d6d35400cbc9d0b7f8aa24ed4208e0e4599fbce945511db79ac34a4a1` |
| 2 | `theorem` | [isConformalMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/isconformalmap-id--24e27228f7210176928a708f.md) | 56 | `result-track:24e27228f7210176928a708fb4aa00bd339c830555cb8cab5f891e112f3be9f9` |
| 3 | `theorem` | [IsConformalMap.smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/isconformalmap-smul--eabd4903a3f17d6175701819.md) | 59 | `result-track:eabd4903a3f17d61757018192bea5adc44a38ed0013ed3020e88c66cb012c477` |
| 4 | `theorem` | [isConformalMap_const_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/isconformalmap-const-smul--55d59b155950c196fab37644.md) | 64 | `result-track:55d59b155950c196fab37644ab194059d844e4e34e10958e7ecc489e4a6cfd6e` |
| 5 | `theorem` | [LinearIsometry.isConformalMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/linearisometry-isconformalmap--075d006d6ec7d401e9aab12a.md) | 67 | `result-track:075d006d6ec7d401e9aab12a3884fdf583782d9264ad17b60f8349277bbc141a` |
| 6 | `theorem` | [isConformalMap_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/isconformalmap-of-subsingleton--321a7826aefe5093993de597.md) | 72 | `result-track:321a7826aefe5093993de597b27e0e71046761bff4cb1b51ff20777507be9638` |
| 7 | `theorem` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/comp--d92e74d35f62b545091da0c5.md) | 77 | `result-track:d92e74d35f62b545091da0c514951d3702d167d7d65af34d594755d5f2b7f4a6` |
| 8 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/injective--371e08876d0d0266ecdd9e2a.md) | 84 | `result-track:371e08876d0d0266ecdd9e2aad57bcdccc374ee0ef4846c993dcb300f27c7d6d` |
| 9 | `theorem` | [ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantd1fab25f9296f28552a86c675fdd0e541fb228c205f7eedfa7a1001e5dca0659.lean/declarations/ne-zero--cdbe5537b70f1a2403207b22.md) | 88 | `result-track:cdbe5537b70f1a2403207b228d6b7d644bb79de4e0c8d9915f8f1b992cc086ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
