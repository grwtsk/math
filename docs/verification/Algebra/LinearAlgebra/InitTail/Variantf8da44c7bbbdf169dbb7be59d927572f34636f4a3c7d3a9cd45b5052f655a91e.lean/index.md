# Verification target: GRWTSK.Algebra.LinearAlgebra.InitTail.Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf9918bff47dbabff4710d2ac122304e44370cb8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf9918bff47dbabff4710d2ac122304e44370cb8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/select--65e99abb0da4e7cd81fb97c7.md) | 63 | `declaration-track:65e99abb0da4e7cd81fb97c7ea7f191754b917c0b3ad8a8bf38f12ea89aac9bf` |
| 2 | `def` | [selectPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/selectpoly--afe97fdac6a7c5d170047bbc.md) | 73 | `declaration-track:afe97fdac6a7c5d170047bbc671f11064ab7294039998b56c7a01bf767b5b46c` |
| 3 | `theorem` | [coeff_select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/coeff-select--69c892b10ac7f982fd341124.md) | 76 | `result-track:69c892b10ac7f982fd341124e1a4effc127a7348e98a3caf01e50d2626337299` |
| 4 | `instance` | [select_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/select-ispoly--90a3c3bc1e5c39f3ccd234df.md) | 84 | `declaration-track:90a3c3bc1e5c39f3ccd234df2dd4a60e719316acff626e93ef64adb859653e83` |
| 5 | `theorem` | [select_add_select_not](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/select-add-select-not--390fe086e88d57341795859b.md) | 92 | `result-track:390fe086e88d57341795859b4d39a06e2fde2a03a8438755042700b9babd2858` |
| 6 | `theorem` | [coeff_add_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/coeff-add-of-disjoint--7589890b276823859ed1b2b1.md) | 115 | `result-track:7589890b276823859ed1b2b19ecfab6b7ea0ba899b53b56fa9298f85476dd8ad` |
| 7 | `def` | [init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init--cea3ffaf0c9a3e6982d17eb5.md) | 146 | `declaration-track:cea3ffaf0c9a3e6982d17eb573fb023afcbf2e46ce908a1c7fba9066aebe2e32` |
| 8 | `def` | [tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/tail--4c6ac4394992701ba82d7f61.md) | 152 | `declaration-track:4c6ac4394992701ba82d7f61bb909b552ce59f1118b661a5de8e164f7d46ab95` |
| 9 | `theorem` | [init_add_tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-add-tail--92aa597ad6e56c927fc61d34.md) | 156 | `result-track:92aa597ad6e56c927fc61d34d1c1a547f7479ed51011efb29eb07df6f02ff763` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/syntax--5ff8d1dd331f470df5d9494f.md) | 164 | `declaration-track:5ff8d1dd331f470df5d9494fd232aed4d260ec78da29b38ca37a670bc0933e53` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/elab-rules--9722ab33a29837b0b8b0ac78.md) | 169 | `declaration-track:9722ab33a29837b0b8b0ac78b8f3536bad15365547b653023fe41a907addad40` |
| 12 | `theorem` | [init_init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-init--4eae324b502ac0cb1feb6521.md) | 195 | `result-track:4eae324b502ac0cb1feb652176ba9879fe6590ffcf162e60f3a64b73d3b345d6` |
| 13 | `theorem` | [init_add](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-add--6b0e87f1e58f56c60c27b6ec.md) | 204 | `result-track:6b0e87f1e58f56c60c27b6ec2de32e57eab6cc2657912f79e9f8ae30d7c8b2e1` |
| 14 | `theorem` | [init_mul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-mul--64ae41946855f58a0c8f79f5.md) | 207 | `result-track:64ae41946855f58a0c8f79f59d577646a11305a05493d3a9a7e4523a03f2916d` |
| 15 | `theorem` | [init_neg](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-neg--2f6875d1295830236cfb9d31.md) | 210 | `result-track:2f6875d1295830236cfb9d317439c8b87b4ad41c73ed2425bfa536f5f807ebfc` |
| 16 | `theorem` | [init_sub](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-sub--ec408c026eb45d3f8ea0aaea.md) | 213 | `result-track:ec408c026eb45d3f8ea0aaeac0b416ebb26abe15674adcd5e3a41cdbfc723190` |
| 17 | `theorem` | [init_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-nsmul--7226a6116d70c138a9964fe8.md) | 216 | `result-track:7226a6116d70c138a9964fe8259f1fd3b53b3094c076af8bb6c59ce8bc68ae03` |
| 18 | `theorem` | [init_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-zsmul--2f539e644c45119c2e2bd7f6.md) | 219 | `result-track:2f539e644c45119c2e2bd7f6eb8e6244174ee62550d551e8f776fb9be20f58c3` |
| 19 | `theorem` | [init_pow](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-pow--91cdd41e608479bfca8e4b63.md) | 222 | `result-track:91cdd41e608479bfca8e4b63d8f41d5fd9fc40bb2d2c15d062b438eed4d1f7e9` |
| 20 | `theorem` | [init_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/declarations/init-ispoly--ccf159970855397d26e929f0.md) | 231 | `result-track:ccf159970855397d26e929f093a3bea7fa66e8cd442d144e42a2e80285011b4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
