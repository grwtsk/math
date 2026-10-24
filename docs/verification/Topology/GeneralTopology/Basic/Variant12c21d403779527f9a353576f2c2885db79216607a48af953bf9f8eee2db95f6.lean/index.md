# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "896790902782eb7544f66d2e058bd8df325f9cf1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `896790902782eb7544f66d2e058bd8df325f9cf1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Grpd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/refltranssymmaux--0ad65b104b3470aa26e23d51.md) | 49 | `declaration-track:0ad65b104b3470aa26e23d51b3f223db12c7595b6831d1415b20fd068ec6f567` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/continuous-refltranssymmaux--d7f8517a746f43eed72701c3.md) | 54 | `result-track:d7f8517a746f43eed72701c32c642f3502f047c578667b4f06f7ca5ba6377dae` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/refltranssymmaux-mem-i--f13492101309fc7f109ae39e.md) | 64 | `result-track:f13492101309fc7f109ae39e8b701b4ff53a53c01b746442c47e01e060840581` |
| 4 | `def` | [reflTransSymm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/refltranssymm--a8a82b6e60c55cf80e620a2e.md) | 93 | `declaration-track:a8a82b6e60c55cf80e620a2e794300c09ea9fa07a201c1eb6eba32d3accd1101` |
| 5 | `def` | [reflSymmTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/reflsymmtrans--dcfdd3899e75900688d3f55b.md) | 124 | `declaration-track:dcfdd3899e75900688d3f55b4af4f217b41b2f02208d9e512aaf1e77ecdc66e4` |
| 6 | `def` | [transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transreflreparamaux--0c424d60cde41b7f97383895.md) | 133 | `declaration-track:0c424d60cde41b7f973838955474086267e9512556b8862a1cd7a22ed6b0c6be` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/continuous-transreflreparamaux--97189f760f8fce187ab7323a.md) | 138 | `result-track:97189f760f8fce187ab7323a9735db5ea2901f25110e3ce560e4f70a05d9784a` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transreflreparamaux-mem-i--21508218b5a0e97fcfdef7ea.md) | 145 | `result-track:21508218b5a0e97fcfdef7ea8b8c31f6dad23520e84acf4ef0443929ade8e96d` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transreflreparamaux-zero--62db9126653fd7c467755040.md) | 151 | `result-track:62db9126653fd7c4677550403cc105abb759c6130c741e41d9b3fd7924241c17` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transreflreparamaux-one--8ecd10fb35ff206552071ce4.md) | 155 | `result-track:8ecd10fb35ff206552071ce4cd301d714049adb2a33018d6111be4a9651e82ed` |
| 11 | `theorem` | [trans_refl_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/trans-refl-reparam--6588b415ae9ece3b90e85b8c.md) | 159 | `result-track:6588b415ae9ece3b90e85b8c86a78fa056c20a81d566a0ed5760fe3c1eba1605` |
| 12 | `def` | [transRefl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transrefl--8ab429f801e13ff340d8f145.md) | 174 | `declaration-track:8ab429f801e13ff340d8f14581e61fb7a1b295d188843380cdace694bc77e5d7` |
| 13 | `def` | [reflTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/refltrans--4bbc02fe2275d5189edc02eb.md) | 182 | `declaration-track:4bbc02fe2275d5189edc02eb8f4d966a93953e659e5a216219d84821812711e0` |
| 14 | `def` | [transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transassocreparamaux--a1c2d12fd9568ff1d49ab830.md) | 191 | `declaration-track:a1c2d12fd9568ff1d49ab830365cbd8c72ce5950a73d0f67a9e0327b57a35074` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/continuous-transassocreparamaux--ac424ecdda38968aa32807cc.md) | 196 | `result-track:ac424ecdda38968aa32807cc87cf766d9a1facd3430cc69f43b2ba6434a710f9` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transassocreparamaux-mem-i--7f9982d61d13855932ff9692.md) | 206 | `result-track:7f9982d61d13855932ff969289446ce4b384f03a7b3054e728f78046b67ad6db` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transassocreparamaux-zero--e7ef5a515c613f1b8ec8ff15.md) | 212 | `result-track:e7ef5a515c613f1b8ec8ff1517c86ca131471ab5f6cacc0051ac93624e3fc584` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transassocreparamaux-one--0ee0e023538b309ee4d11203.md) | 216 | `result-track:0ee0e023538b309ee4d1120315d8e3064500235254164de6d5a9575b955a90d3` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/trans-assoc-reparam--ef12da590c9e39dd367eddd2.md) | 220 | `result-track:ef12da590c9e39dd367eddd2db3a163f6ec544d575e85d85490ce31c14db46ef` |
| 20 | `def` | [transAssoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/transassoc--8f22c663d3432f6c52ae85ad.md) | 263 | `declaration-track:8f22c663d3432f6c52ae85adcc79ffc72320415f1a26cb23fc10b31c36a7bdbe` |
| 21 | `def` | [FundamentalGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/fundamentalgroupoid--621ca52206292757f771d92f.md) | 279 | `declaration-track:621ca52206292757f771d92f33e94ae31374810321d80f1ac615788502673ea2` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/instance--ae702786de678e9421cc52d4.md) | 284 | `declaration-track:ae702786de678e9421cc52d4ef0b5b37ed66a8c29c411603fc81176e966d078d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/instance--98d9b7af63d1a1f15d6b9d12.md) | 290 | `declaration-track:98d9b7af63d1a1f15d6b9d12f1cecd3cb74e808fdf6497dd0f5a76e57db7c259` |
| 24 | `theorem` | [comp_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/comp-eq--1f382a7d6b30eec36276a747.md) | 321 | `result-track:1f382a7d6b30eec36276a7474fcec47ac5976abaecd50f1332e9a68e84b041ff` |
| 25 | `theorem` | [id_eq_path_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/id-eq-path-refl--48db5cecf2086aa61d078f0c.md) | 324 | `result-track:48db5cecf2086aa61d078f0c228a3670348f5d24a59d1398227cd34e0d63cc75` |
| 26 | `def` | [fundamentalGroupoidFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/fundamentalgroupoidfunctor--c37723cf44a81cf69fb45ae6.md) | 328 | `declaration-track:c37723cf44a81cf69fb45ae643759396d595dd238701e1dcd35f8119a5b01f19` |
| 27 | `theorem` | [map_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/map-eq--1e7c84c31867080641960d6f.md) | 358 | `result-track:1e7c84c31867080641960d6ff879c8eba64c5b79bbb663adfa79a4166e1476d0` |
| 28 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/totop--644bb1439f6b168c492b76a0.md) | 365 | `declaration-track:644bb1439f6b168c492b76a0da37893f7d07929d2b61d28255b2e89cbe056b34` |
| 29 | `def` | [fromTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/fromtop--a21d045b2ad6c11dff372426.md) | 371 | `declaration-track:a21d045b2ad6c11dff372426a4b7e81e952d8e7ce7516949c9fff86c5f2a1629` |
| 30 | `def` | [toPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/topath--1ee3cde936b075a9cc7dd8f6.md) | 378 | `declaration-track:1ee3cde936b075a9cc7dd8f6a9eaaf6873ecf13849d25fba5f8f981b7f968d26` |
| 31 | `def` | [fromPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/declarations/frompath--cc2ee5f9526e0ad6dc8dd098.md) | 384 | `declaration-track:cc2ee5f9526e0ad6dc8dd0989c34444ea4cf783870cdb8c1197e87be224490ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
