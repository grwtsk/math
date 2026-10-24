# Verification target: GRWTSK.Algebra.Derivative.Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "805c815fc13fdec82abd648bc1a1074530e0275b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/index.md) · [Full source](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `805c815fc13fdec82abd648bc1a1074530e0275b`.

Source path: `GRWTSK/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pderivFun](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun--3ed457b410730f5e7fb283cc.md) | 52 | `declaration-track:3ed457b410730f5e7fb283cccd5c67c6120397b1f7fb66814421f3e73003749b` |
| 2 | `theorem` | [coeff_pderivFun](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/coeff-pderivfun--935f6a1b1fd796f7e42293bc.md) | 55 | `result-track:935f6a1b1fd796f7e42293bce125cff557e503fecdb82cd6cab6348f6a202dca` |
| 3 | `theorem` | [pderivFun_add](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-add--e86ce719b4cb25f83774d639.md) | 59 | `result-track:e86ce719b4cb25f83774d6399498003d5c63cd54b2927941897dc7eeea652c18` |
| 4 | `theorem` | [pderivFun_C](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-c--43f63c6d2caa3267e8da4e98.md) | 64 | `result-track:43f63c6d2caa3267e8da4e98905ed3850edc60a67500a6c1f58390cde1e97f1c` |
| 5 | `theorem` | [pderivFun_one](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-one--c5ef682aef1a7087e1a543ec.md) | 68 | `result-track:c5ef682aef1a7087e1a543ec5b20f307ae6b6f845dc96c396bd3c82a875c6ff6` |
| 6 | `theorem` | [pderivFun_coe](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-coe--bfca95adf53fc55a5089ed23.md) | 77 | `result-track:bfca95adf53fc55a5089ed23fea7d4bf742f642afc80450c36cb23de01c4169c` |
| 7 | `theorem` | [trunc_pderivFun](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/trunc-pderivfun--50ccafb82881c2fef7ff85e3.md) | 82 | `result-track:50ccafb82881c2fef7ff85e3c3179286e7b5a4821f48626bd1c10e60cb5097b4` |
| 8 | `theorem` | [pderivFun_coe_mul_coe](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-coe-mul-coe--6e795c742a0b8398c17b8c27.md) | 91 | `result-track:6e795c742a0b8398c17b8c279f28302727a72d656b9003026583b221174ede2a` |
| 9 | `theorem` | [pderivFun_mul](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-mul--b29ce04d5b4e167d4416042b.md) | 96 | `result-track:b29ce04d5b4e167d4416042bb68bb785d7a81301f7b83ac311c1b86ca320d398` |
| 10 | `theorem` | [pderivFun_smul](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderivfun-smul--94818b18fa4c5ffea50a0ab7.md) | 110 | `result-track:94818b18fa4c5ffea50a0ab7b7cd3b9f02f753172de8b82ef1a01db540dd273a` |
| 11 | `def` | [pderiv](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv--45de2305674d7a007ec19f93.md) | 117 | `declaration-track:45de2305674d7a007ec19f93abfb390ee97fcd89d00080ab8206b730211436e4` |
| 12 | `theorem` | [pderiv_C](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-c--6fe1313def43b9bca4282c98.md) | 124 | `result-track:6fe1313def43b9bca4282c986470ba449f65c631f068ae7c8eae9b05cabe878e` |
| 13 | `theorem` | [pderiv_one](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-one--7a050a4c89b8fd4f580f1843.md) | 126 | `result-track:7a050a4c89b8fd4f580f18431d1dfb7f25e9493184ea39f30814de3a34ec51e4` |
| 14 | `theorem` | [coeff_pderiv](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/coeff-pderiv--709a626daaac49712c308391.md) | 128 | `result-track:709a626daaac49712c3083917dffa2fbfe5dfecb7e809100b2d57c3f9b1afa49` |
| 15 | `theorem` | [pderiv_coe](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-coe--5ecaa90f86651a19bbeea045.md) | 132 | `result-track:5ecaa90f86651a19bbeea0450f8ab585de91de52110fadd3de04fcf031ceaa37` |
| 16 | `theorem` | [pderiv_X_self](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-x-self--c505184259e7ba6ad3cafe5a.md) | 136 | `result-track:c505184259e7ba6ad3cafe5afc82d5b997211a3cc8e508aa9abbbf28439afdde` |
| 17 | `theorem` | [pderiv_X_of_ne](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-x-of-ne--577352f5f913dcf42bca1e03.md) | 143 | `result-track:577352f5f913dcf42bca1e0398bb377e41cec08422d1e2daa3aa4a101f829f71` |
| 18 | `theorem` | [pderiv_X](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-x--0983bdc6394150ddce522142.md) | 149 | `result-track:0983bdc6394150ddce5221424bdcb18a680d43458635e07eeead914367cf5712` |
| 19 | `theorem` | [trunc_pderiv](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/trunc-pderiv--528cceddf7633756af3f1959.md) | 155 | `result-track:528cceddf7633756af3f19591aa23e92a745ca0057377117af5fcc07bb19b372` |
| 20 | `theorem` | [pderiv_pow](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-pow--ad9886b7d09ec22515acb8a8.md) | 160 | `result-track:ad9886b7d09ec22515acb8a8cbc71e0c793340b53c389e76764004ae849cdd74` |
| 21 | `theorem` | [pderiv.ext](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-ext--59209ef05456b640f463ef41.md) | 170 | `result-track:59209ef05456b640f463ef414c5ff3056aaebec1d362f1ecf6e7115280f13e5b` |
| 22 | `theorem` | [pderiv_inv](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-inv--7c5c2a20cf64b1c3515bca3f.md) | 184 | `result-track:7c5c2a20cf64b1c3515bca3fc4b65620655624b85875d4fa83b767a0e0c63036` |
| 23 | `theorem` | [pderiv_invOf](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-invof--0e18355e58168dd0d9b70651.md) | 189 | `result-track:0e18355e58168dd0d9b70651393166687f290a89f1f220b2c353935eec8ccdb6` |
| 24 | `theorem` | [pderiv_inv'](../../../../mathematics/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/declarations/pderiv-inv--7a4d231b34c6ed6475363b6b.md) | 199 | `result-track:7a4d231b34c6ed6475363b6bf91f0dde4d3867a28e9bf262f1b7bc49e2d8f6a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
