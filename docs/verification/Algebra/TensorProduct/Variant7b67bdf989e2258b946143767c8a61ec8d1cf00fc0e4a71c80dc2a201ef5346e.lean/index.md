# Verification target: GRWTSK.Algebra.TensorProduct.Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27489bd59e6309d5f95600e389fc02ab2a87273e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/index.md) · [Full source](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27489bd59e6309d5f95600e389fc02ab2a87273e`.

Source path: `GRWTSK/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean.json)

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
| 1 | `abbrev` | [mulActionBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/mulactionbasechange--c74941e9849d7e466eda8e83.md) | 46 | `declaration-track:c74941e9849d7e466eda8e835e3089c462ea52dad8e1f0e7df1c50bcb126cb9b` |
| 2 | `lemma` | [mulActionBaseChange_smul_tmul](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/mulactionbasechange-smul-tmul--3b0e96cc9f12a22271c47724.md) | 52 | `result-track:3b0e96cc9f12a22271c4772479c92071d94284dc7dcf37478f40115dc3552421` |
| 3 | `lemma` | [mulActionBaseChange_smul_zero](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/mulactionbasechange-smul-zero--8cee2824adaaae402cfc12a5.md) | 56 | `result-track:8cee2824adaaae402cfc12a510a2dcb11b0a6a7931193a167a3d00f9b721dcaf` |
| 4 | `lemma` | [mulActionBaseChange_smul_add](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/mulactionbasechange-smul-add--52aa65cf3a0782e26bfa0104.md) | 61 | `result-track:52aa65cf3a0782e26bfa010441d2578a1010844e5724b54598f9d92bc3d1702f` |
| 5 | `abbrev` | [moduleBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/modulebasechange--a128fd1158a920ca970cb960.md) | 69 | `declaration-track:a128fd1158a920ca970cb9602cec8d02192f0a35cbeb7bfb62520de5d76dad99` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/instance--6b3d714603e8632ae4fdd265.md) | 79 | `declaration-track:6b3d714603e8632ae4fdd265739e4906c07a8a769d96396048624e49859dee8c` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/instance--a820201691cd8afeb7738cb9.md) | 86 | `declaration-track:a820201691cd8afeb7738cb9181e51224c3c154547eede406c58b1105fe7f80e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/instance--533e1b23fa44bdf3bf2a1639.md) | 92 | `declaration-track:533e1b23fa44bdf3bf2a16396b79aae44ec3b5ed2e53dbf9803eca1fb2ae1c0c` |
| 9 | `def` | [moduleBaseChange'](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/modulebasechange--69b529228d88c95d52e2aa6e.md) | 97 | `declaration-track:69b529228d88c95d52e2aa6e621485073714c9bff641bacf78dcd0c176dc5685` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/instance--4bcca497f0e1da1189972776.md) | 104 | `declaration-track:4bcca497f0e1da11899727764e0525cda7c465ed3fb87077df24aec232b635f5` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/instance--649a01e9a0a3ba8eb7289706.md) | 113 | `declaration-track:649a01e9a0a3ba8eb728970621de144187029cc05b3d77d01d54a1181c10dedd` |
| 12 | `lemma` | [map_liftBaseChange_smul](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/map-liftbasechange-smul--7a6a0a22172da430ffa38fad.md) | 122 | `result-track:7a6a0a22172da430ffa38fad99b60cbc30d9aea04ea7b51304240de7f1cf3f9f` |
| 13 | `def` | [derivationTensorProduct](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/derivationtensorproduct--79a2186582ef0f323eba30b1.md) | 136 | `declaration-track:79a2186582ef0f323eba30b134b1b7a81025a0dadb2dd26e7e3e95fc0b27a4c4` |
| 14 | `lemma` | [derivationTensorProduct_algebraMap](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/derivationtensorproduct-algebramap--e88168c35f6bdf388840aa82.md) | 166 | `result-track:e88168c35f6bdf388840aa828b4040bfa9b8527ab1d073ba32ea417e0cbe8fc7` |
| 15 | `lemma` | [tensorKaehlerEquiv_left_inv](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequiv-left-inv--feace799c819a1cf63a5b447.md) | 171 | `result-track:feace799c819a1cf63a5b4478d459b3d0fe4f6d1e2b029bb517c80fba7aa7d70` |
| 16 | `def` | [tensorKaehlerEquivBase](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequivbase--4af3efe327781bed20c229e6.md) | 190 | `declaration-track:4af3efe327781bed20c229e66e6bfa6d9985dbbd1e484a4ac88b548de38c9f27` |
| 17 | `lemma` | [tensorKaehlerEquivBase_tmul](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequivbase-tmul--3f0718fed0f20e70cab55bea.md) | 213 | `result-track:3f0718fed0f20e70cab55bea62278068420a504629f997fa30c522b4f5f6f511` |
| 18 | `lemma` | [isBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/isbasechange--e315b9a7309157f746dfff7b.md) | 221 | `result-track:e315b9a7309157f746dfff7b213ae4d1acfedd56f537b6eb94c2538ac84a7663` |
| 19 | `instance` | [isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/islocalizedmodule--f59e6d10553cf2d5269ff334.md) | 230 | `declaration-track:f59e6d10553cf2d5269ff334b11963bf1fad47f35dc7d8808862f504433b0d2d` |
| 20 | `instance` | [isLocalizedModule_of_isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/islocalizedmodule-of-islocalizedmodule--d316d9ad48bffa80b58f0c4b.md) | 236 | `declaration-track:d316d9ad48bffa80b58f0c4b65b8a4a574463638cf9863a568da0fdd538d5bb1` |
| 21 | `def` | [tensorKaehlerEquiv](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequiv--95eaf8293dc42ed112052ffd.md) | 246 | `declaration-track:95eaf8293dc42ed112052ffdf250ce34b7d751d99d66f0c62fcc777175ac7646` |
| 22 | `lemma` | [tensorKaehlerEquiv_tmul_D](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequiv-tmul-d--00b3437fe9fe3bfc066df8a3.md) | 277 | `result-track:00b3437fe9fe3bfc066df8a36ced231bcf542cf506a10afad1d0b5826fc8e769` |
| 23 | `lemma` | [tensorKaehlerEquiv_symm_D_tmul](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequiv-symm-d-tmul--8e53d9f5d5f7bb434fff703c.md) | 290 | `result-track:8e53d9f5d5f7bb434fff703c9713e7fdb47e0bb4e2564fb7dd1dbf4efccd711e` |
| 24 | `lemma` | [tensorKaehlerEquiv_symm_D_tmul'](../../../../mathematics/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/declarations/tensorkaehlerequiv-symm-d-tmul--76ed206f6843c340a7dd7849.md) | 300 | `result-track:76ed206f6843c340a7dd7849a37be094fa6db8798f2034c8c6b1af5d9e44a475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
