# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b51cdfe51cf69da244542279bdaea8c45c1760d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b51cdfe51cf69da244542279bdaea8c45c1760d`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/smul--1b894e05e996b26ac744864c.md) | 49 | `declaration-track:1b894e05e996b26ac744864cfd5ce4edb7028922c8cc16e9298933f7566aef68` |
| 2 | `theorem` | [_root_.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-const-smul--f9937f7a168d3936b9f187f1.md) | 55 | `result-track:f9937f7a168d3936b9f187f158882c5ec06054ed6033a6b94291093c7514e629` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-smul--a810880d748691f2f9bbd477.md) | 59 | `result-track:a810880d748691f2f9bbd477f98c543374764d05371aa40413aa04077ea3eb83` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/smul--fcca4393b6c34f69c1410a44.md) | 64 | `declaration-track:fcca4393b6c34f69c1410a447dd814cfabcf68170df7b442ba39ee9b1049fc9b` |
| 5 | `lemma` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/coe-smul--f2baa2085fe5c18bb8a745f8.md) | 67 | `result-track:f2baa2085fe5c18bb8a745f871b3b9f97ea282891f692f64a35540593056dbb6` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-smul--b42c422ef10ee1474aa215bd.md) | 70 | `result-track:b42c422ef10ee1474aa215bd5f211e8eeeaae6d77c22778b8c7687ab7560c736` |
| 7 | `theorem` | [_root_.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-const-smul--4f75d7cedbec93a6126c9203.md) | 74 | `result-track:4f75d7cedbec93a6126c920399bec58c1c389de17779a9bb327d4a486911496e` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/mulleft--0e33b7d62e793884c145dabb.md) | 89 | `declaration-track:0e33b7d62e793884c145dabb7a0a9f12c2d98c02af2eb24b78926eded35b3143` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/coe-mulleft--38921702e8f46d1ad71c877d.md) | 93 | `result-track:38921702e8f46d1ad71c877d2b0135e920c4f304ca4d3bf1ede300ff259c3b0a` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-mulleft--a4852d21e23295a6c0d47190.md) | 97 | `result-track:a4852d21e23295a6c0d47190ef01c007d76387551e50ed14ce69081fd8d5ef75` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/toequiv-mulleft--6f8588b38cc060a53a59fbd0.md) | 101 | `result-track:6f8588b38cc060a53a59fbd00b87852ae300ad04d18883f19c36c52a75acd7b2` |
| 12 | `theorem` | [_root_.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-mulleft--b9e4825758a55011d7566fb9.md) | 105 | `result-track:b9e4825758a55011d7566fb9a50323bf20cf7ff4c23b8d6ebb1801ca33c91642` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/mulright--723ce0ea8e5842497f40e706.md) | 113 | `declaration-track:723ce0ea8e5842497f40e706512adbd2ed7324722d13b122a29757d5d7755776` |
| 14 | `theorem` | [_root_.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-mulright--23a7a4473f96aa2f591a491c.md) | 119 | `result-track:23a7a4473f96aa2f591a491c3d205cb11f817b0f0939c7a38c5df95e66e0cd46` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/coe-mulright--4bb953c191ee372ef234c9c0.md) | 123 | `result-track:4bb953c191ee372ef234c9c014b91bf7928e191b75e68198ecb6ae71acb32f0b` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-mulright--cbcdf466401a907bed26ad71.md) | 127 | `result-track:cbcdf466401a907bed26ad71b5ce6bde390555f52ca28d855baa90b44dc5045a` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/toequiv-mulright--887601ed96fd5fdeb01f86d4.md) | 131 | `result-track:887601ed96fd5fdeb01f86d4615b25225f7d0f7bf84d42e76d3b6bb0badc251e` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/mulleft--1879f620893eb6a16d11faf9.md) | 136 | `declaration-track:1879f620893eb6a16d11faf93ef52b8100b5bfdfedf2edf8347dc41e1221cb36` |
| 19 | `theorem` | [_root_.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-mulleft--90daec777ac0527d7b968356.md) | 139 | `result-track:90daec777ac0527d7b9683568685310c6cd1706ba6e7d0a1751f9b44f55720f2` |
| 20 | `lemma` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/coe-mulleft--a3b81cd6d157306b5f3fd4a2.md) | 143 | `result-track:a3b81cd6d157306b5f3fd4a24872283e40e4a0556ed6f10e80f2f4ae1c4b22f6` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-mulleft--bfc03a86ccfb98e030100772.md) | 146 | `result-track:bfc03a86ccfb98e0301007722028854b2b77853d861bd991232f3eafa5820146` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/toequiv-mulleft--bb87bc847067b3546e8d4f5f.md) | 151 | `result-track:bb87bc847067b3546e8d4f5faaae3ee184fcffd48cf55a9167eb8d55dab49ca4` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/mulright--0e937f6e53ddfbd71c56a3c2.md) | 156 | `declaration-track:0e937f6e53ddfbd71c56a3c2b5d420d112e02b7ac7c36e40daf4ecd5a0e75d39` |
| 24 | `theorem` | [_root_.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-mulright--8e1227e2bd8e2ada543a3573.md) | 161 | `result-track:8e1227e2bd8e2ada543a3573103986c28e631391c33fa0c8db831b14e34b8be7` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/coe-mulright--f27e0b90d19f3717d709598a.md) | 166 | `result-track:f27e0b90d19f3717d709598a3c9609bd845bd3bfe14bf65f68f589d52dd091f2` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-mulright--1ea41405ef1d277c53dc95e9.md) | 170 | `result-track:1ea41405ef1d277c53dc95e90a7fd5fde4d03dcde3a9e19c8ef352de824ecbda` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/toequiv-mulright--daaf6381fa1c18df0ce442a9.md) | 175 | `result-track:daaf6381fa1c18df0ce442a9579656d069b0f670f601311de057e0312a8097dd` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/inv--34e331aa679ef11e6853c0ff.md) | 183 | `declaration-track:34e331aa679ef11e6853c0ff2cbcda82cafd114cc70f6c857d987dd249c3aa16` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/symm-inv--433ee9b6e4bc5d4c778360c5.md) | 189 | `result-track:433ee9b6e4bc5d4c778360c56ca072a6a19eb6bdcfef5e62d07a2d85c71562b0` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/divright--614c296e9268e551ee7ee7b1.md) | 195 | `declaration-track:614c296e9268e551ee7ee7b1ca5c17bc0e495045225f6b16a50446236f7407ce` |
| 31 | `lemma` | [_root_.measurableEmbedding_divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-divright--024cb78962496ef8153e87db.md) | 201 | `result-track:024cb78962496ef8153e87db2b46c4b7a51e87e7d1bc6a0f9f6324c02ba5e110` |
| 32 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/divleft--a7c2b65d36b0ffbf882c80c2.md) | 207 | `declaration-track:a7c2b65d36b0ffbf882c80c2cbe948a097879f781ce056fb01626d07c5e32156` |
| 33 | `lemma` | [_root_.measurableEmbedding_divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/root-measurableembedding-divleft--b44a5602e6384589c0c86fc8.md) | 213 | `result-track:b44a5602e6384589c0c86fc8e7a8e3db9973a7be4d87d54f0886a08f68713e65` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/instance--72b9d97062c58e6d968462ac.md) | 223 | `declaration-track:72b9d97062c58e6d968462acb47860745c60e073b85745ed12fb3dc989ecc3e9` |
| 35 | `lemma` | [dmaSMul_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/dmasmul-apply--b540687fe02bf5bfa440fe20.md) | 235 | `result-track:b540687fe02bf5bfa440fe20698bc693c584a36148085fd5a047f11c73361683` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/instance--25e10096d0942bbf5c6a6692.md) | 241 | `declaration-track:25e10096d0942bbf5c6a66926db3241622bcebd87ce50752f011a76a27ea3d32` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.lean/declarations/instance--0bae698584864dc290ff0581.md) | 244 | `declaration-track:0bae698584864dc290ff0581288f46e050b08c92773ad40f8a2d443e691586bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
