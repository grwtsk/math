# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LiouvilleNumber.Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96179b6407c95900907c0ffc5d82006ec14517b1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96179b6407c95900907c0ffc5d82006ec14517b1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/liouvillenumber--e737aca2566962674e664c1e.md) | 47 | `declaration-track:e737aca2566962674e664c1e52c14098ff9952515624435e07f62d7948c4b5e5` |
| 2 | `def` | [partialSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/partialsum--cd680606f551673713b096e1.md) | 58 | `declaration-track:cd680606f551673713b096e10fc31e0f1b98093ac777a904e649a7b6568314e2` |
| 3 | `def` | [remainder](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/remainder--9d0737c5c6b75325cec2d1bf.md) | 67 | `declaration-track:9d0737c5c6b75325cec2d1bf81fe9c7774fa7e0daf0ba38cc89e72f016a199a8` |
| 4 | `theorem` | [summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/summable--7495fa311515ba30b90846b3.md) | 75 | `result-track:7495fa311515ba30b90846b36ce94112ffc7c69b21c8f15c1ef0a55beb68979f` |
| 5 | `theorem` | [remainder_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/remainder-summable--44ef27e915dab43a7f5b5b06.md) | 78 | `result-track:44ef27e915dab43a7f5b5b06b3d6b6e1ef480d80cd11b842d6537e1898dafa71` |
| 6 | `theorem` | [remainder_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/remainder-pos--ca5fb82550a47b9578417d03.md) | 82 | `result-track:ca5fb82550a47b9578417d035daaf2b13b8aa7d72597eb0e257b0bcd1e27f295` |
| 7 | `theorem` | [partialSum_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/partialsum-succ--805cce3531ea3f902f8d3393.md) | 85 | `result-track:805cce3531ea3f902f8d3393df67e114b8753f4600abb92a433fc37caa871da2` |
| 8 | `theorem` | [partialSum_add_remainder](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/partialsum-add-remainder--77f48c34746263589cf7bcf9.md) | 90 | `result-track:77f48c34746263589cf7bcf9911b31c5a4fdda5d1d4fa9179d2272fbc9fef025` |
| 9 | `theorem` | [remainder_lt'](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/remainder-lt--5774a62ecf8faed6e6cbf6c6.md) | 100 | `result-track:5774a62ecf8faed6e6cbf6c6bb9101a147163b5f01dc428238211c42b42828f6` |
| 10 | `theorem` | [aux_calc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/aux-calc--5539361d3855b0a41bf6dec3.md) | 126 | `result-track:5539361d3855b0a41bf6dec3255eb983d3b6f6420c59800baa3e9667d2559c6f` |
| 11 | `theorem` | [remainder_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/remainder-lt--ae91c10c5f5dfe5340f4d73c.md) | 146 | `result-track:ae91c10c5f5dfe5340f4d73cc4c9457a7497f1299fdb2c4e565162053b4bc3a9` |
| 12 | `theorem` | [partialSum_eq_rat](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/partialsum-eq-rat--86bdcb0e3b23a7f554399a0f.md) | 154 | `result-track:86bdcb0e3b23a7f554399a0f7a9f5c49754e631505367cca030a12c9b87cb2b0` |
| 13 | `theorem` | [liouville_liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/liouville-liouvillenumber--b0b3358e9864d8ac12996eed.md) | 172 | `result-track:b0b3358e9864d8ac12996eed77c801eab9883de4c288b6a70e9a8cd5cbf13881` |
| 14 | `theorem` | [transcendental_liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variantff6315c597839ce6928f5f7f5c137eb212f7f1eed1af5c52c28b4c620798b4a5.lean/declarations/transcendental-liouvillenumber--11c0eac803731a126ea40514.md) | 187 | `result-track:11c0eac803731a126ea40514e3e874df39c92a7a730e074955795cde455c3c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
