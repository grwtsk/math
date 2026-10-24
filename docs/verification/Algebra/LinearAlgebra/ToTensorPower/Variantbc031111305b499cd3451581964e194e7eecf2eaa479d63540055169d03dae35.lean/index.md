# Verification target: GRWTSK.Algebra.LinearAlgebra.ToTensorPower.Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53eeb4bea22a54355d5b214805b4036a8817808b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53eeb4bea22a54355d5b214805b4036a8817808b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/totensoralgebra--ec6eab2a3430cf157887bf9c.md) | 25 | `declaration-track:ec6eab2a3430cf157887bf9c58f688354cb44f461ab86bdb3d9815df7a970c12` |
| 2 | `theorem` | [toTensorAlgebra_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/totensoralgebra-tprod--0875f2846c466a36242a8db4.md) | 29 | `result-track:0875f2846c466a36242a8db40005e02641e4912a0bd7cd480226c740fcbf4e32` |
| 3 | `theorem` | [toTensorAlgebra_gOne](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/totensoralgebra-gone--c42a57bdc97f6cff140d59f8.md) | 34 | `result-track:c42a57bdc97f6cff140d59f8168367969e794a194d37030cdcd2bc3d3ecb5afc` |
| 4 | `theorem` | [toTensorAlgebra_gMul](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/totensoralgebra-gmul--94f0e27ae705f31c85ecba8e.md) | 39 | `result-track:94f0e27ae705f31c85ecba8e385be468d1864d9ee7cff5cf55832fd29c269d87` |
| 5 | `theorem` | [toTensorAlgebra_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/totensoralgebra-galgebra-tofun--a4dbfdce4fdee48a24a22492.md) | 62 | `result-track:a4dbfdce4fdee48a24a224926a50223f37737a821fcd379c0a14813d803b65dc` |
| 6 | `def` | [ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/ofdirectsum--bde7b2ffd698556ea9ec5441.md) | 73 | `declaration-track:bde7b2ffd698556ea9ec54417de3a24ddd5387676c7096d054772b92a1b2a5f3` |
| 7 | `theorem` | [ofDirectSum_of_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/ofdirectsum-of-tprod--05ba9da5bd65528db802fa25.md) | 78 | `result-track:05ba9da5bd65528db802fa25817a04ca759a28a3a9dcdd39e92a03c01a982cab` |
| 8 | `def` | [toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/todirectsum--50aba1af7510b3ade924d4b0.md) | 85 | `declaration-track:50aba1af7510b3ade924d4b0a08abe3702609e83ff6da5d2b08f94fc2d86d35d` |
| 9 | `theorem` | [toDirectSum_ι](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/todirectsum--a50411682f74683c6030c1b5.md) | 91 | `result-track:a50411682f74683c6030c1b5ed99e41b57b55e981cc596b118da98b08afa5a6c` |
| 10 | `theorem` | [ofDirectSum_comp_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/ofdirectsum-comp-todirectsum--b2a823bf9d748ab298df660b.md) | 96 | `result-track:b2a823bf9d748ab298df660b7a9ac34ceb545fa331555cd3c9f9b145893c85f2` |
| 11 | `theorem` | [ofDirectSum_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/ofdirectsum-todirectsum--8c9aab1b458f87a8a430c4b2.md) | 102 | `result-track:8c9aab1b458f87a8a430c4b28be2fe2f1968f58411de3a59497082942479371d` |
| 12 | `theorem` | [mk_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/mk-reindex-cast--233e167009db00e216adf04b.md) | 109 | `result-track:233e167009db00e216adf04bf6e795e3a9779fcff8e9b6cf99410cb0d0fa2a36` |
| 13 | `theorem` | [mk_reindex_fin_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/mk-reindex-fin-cast--489363d46e8ce59183539904.md) | 116 | `result-track:489363d46e8ce591835399047ed67842a2fcff5514e31393e8753f1487273338` |
| 14 | `theorem` | [_root_.TensorPower.list_prod_gradedMonoid_mk_single](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/root-tensorpower-list-prod-gradedmonoid-mk-single--2113714b7b79aa12dcfb486e.md) | 123 | `result-track:2113714b7b79aa12dcfb486e26aa238dfed355701accfb190944b88d1ef57abd` |
| 15 | `theorem` | [toDirectSum_tensorPower_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/todirectsum-tensorpower-tprod--dba8fc95c47370c970f5811f.md) | 141 | `result-track:dba8fc95c47370c970f5811f99888e2de3e264bdd961ce1d913985a668c4db06` |
| 16 | `theorem` | [toDirectSum_comp_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/todirectsum-comp-ofdirectsum--350c0b2a1e5224b6f7565279.md) | 150 | `result-track:350c0b2a1e5224b6f75652792269f715a4b8d071e01f720918cc537c7ee1078a` |
| 17 | `theorem` | [toDirectSum_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/todirectsum-ofdirectsum--8ba665f813f142f968193615.md) | 156 | `result-track:8ba665f813f142f9681936152e39ea3c43c9ced2d2e8e8dcd49317143adc35e6` |
| 18 | `def` | [equivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.lean/declarations/equivdirectsum--592f8535e2513d9d3e61a2f1.md) | 162 | `declaration-track:592f8535e2513d9d3e61a2f1f4af49fa9701657a3eadc21d5d53fc242fbe59af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
