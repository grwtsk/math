# Verification target: GRWTSK.Topology.GeneralTopology.Equiv.Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0e8ade863e26ac5818ad67b152e445ca6cfd409",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0e8ade863e26ac5818ad67b152e445ca6cfd409`.

Source path: `GRWTSK/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuousalgequiv--380552b952d3f70d8eb94009.md) | 48 | `declaration-track:380552b952d3f70d8eb94009b08a66756358b266e222eceb0b5e41e995fa6967` |
| 2 | `class` | [ContinuousAlgEquivClass](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuousalgequivclass--45ea59435e55c621ac8d5afb.md) | 62 | `declaration-track:45ea59435e55c621ac8d5afb08528435492f2140b5ed584d0329013d90e4a95b` |
| 3 | `def` | [toContinuousAlgHom](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/tocontinuousalghom--5dfb3918be82e1f69ae8fd42.md) | 77 | `declaration-track:5dfb3918be82e1f69ae8fd4262cbd904ef2e1de957b13bc8b929db32a4818c20` |
| 4 | `instance` | [coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe--e2f9df1a06cf36a74164616c.md) | 81 | `declaration-track:e2f9df1a06cf36a74164616c3c274629081d304b47d96511e65bb4ec6e6913ff` |
| 5 | `instance` | [equivLike](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/equivlike--6f9549572ab1d445cb468999.md) | 83 | `declaration-track:6f9549572ab1d445cb468999830c5137d72421d9b67d124b74d73f7134d36f0c` |
| 6 | `instance` | [continuousAlgEquivClass](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuousalgequivclass--54c28af1d21ac1b1ee988dcb.md) | 95 | `declaration-track:54c28af1d21ac1b1ee988dcb4cceb2593472870811345f373b7e0f8e056bc481` |
| 7 | `theorem` | [coe_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-apply--efc0887ac04e90c69f8c325c.md) | 102 | `result-track:efc0887ac04e90c69f8c325ca1e5cf9eee24699f79bf7ff349c84309e27a6a3e` |
| 8 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-coe--70be7be297676c355b41f3e8.md) | 105 | `result-track:70be7be297676c355b41f3e8f501cbb61aec583658c33d74451aa43b64b7e530` |
| 9 | `theorem` | [toAlgEquiv_injective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/toalgequiv-injective--7a5c78bd571cb970fedadee9.md) | 107 | `result-track:7a5c78bd571cb970fedadee9dfbb1e6defd89c57056f4b93697d47c66596c95c` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/ext--cfebc57d6276f27f3d3c1d34.md) | 112 | `result-track:cfebc57d6276f27f3d3c1d3444be77a10059f44b3601bfe49304d2840c0d43cf` |
| 11 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-injective--c2ce2d449fc7d49e9d30bfa2.md) | 115 | `result-track:c2ce2d449fc7d49e9d30bfa29c66fd2357bfb0bf55693ee0923f00e3eb967815` |
| 12 | `theorem` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-inj--a53fc38bd1ec74216c587ab9.md) | 119 | `result-track:a53fc38bd1ec74216c587ab95d0520125cf26691453384d29b9d370e8ae69d18` |
| 13 | `theorem` | [coe_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-toalgequiv--1ae5a1242304ba1ef096d416.md) | 123 | `result-track:1ae5a1242304ba1ef096d41608391d64843b43a3c6377db3e3939a3bbac75985` |
| 14 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/isopenmap--3dcd178ab46e2acb179a4615.md) | 125 | `result-track:3dcd178ab46e2acb179a461585e8a85b3aeb6b80725326d7b8e865c5cf72f310` |
| 15 | `theorem` | [image_closure](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/image-closure--8e9c3aa3e0dfeb70ad2f3835.md) | 128 | `result-track:8e9c3aa3e0dfeb70ad2f3835563f815ba973d90f0ccefc5a7aca062c0a5fe5c8` |
| 16 | `theorem` | [preimage_closure](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/preimage-closure--6b44a76d69fa89ff4e04eec9.md) | 131 | `result-track:6b44a76d69fa89ff4e04eec9363376722491815a6b80a1639caf83f98c69c5d1` |
| 17 | `theorem` | [isClosed_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/isclosed-image--12c639e22bc6468800ee38a9.md) | 135 | `result-track:12c639e22bc6468800ee38a971489270fb8ece0ed6859ab9912d9ce26666caad` |
| 18 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/map-nhds-eq--889205fb0d1e69189ffd8026.md) | 138 | `result-track:889205fb0d1e69189ffd80263f60c84360ff0ab8bb9304e103e4ffe9bc6eefb6` |
| 19 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/map-eq-zero-iff--30b52764243441e0cb1f7cbf.md) | 141 | `result-track:30b52764243441e0cb1f7cbf1e9a6430f685320f145492989fe38208af35e2f9` |
| 20 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuous--849c9f05b6f86c51504a0d07.md) | 148 | `result-track:849c9f05b6f86c51504a0d07243d0f87e2c634c8b5b60d35fa4a7fd91e5dddcf` |
| 21 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuouson--36ad4b295ee6c5b21cc77ffa.md) | 150 | `result-track:36ad4b295ee6c5b21cc77ffa3b2d333b97a13265d34d80ea8240815d58f47e39` |
| 22 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuousat--fb94f1f394272184a6c83334.md) | 153 | `result-track:fb94f1f394272184a6c83334592b8cf377978dcb5d2c3bf8501f79883171ccbe` |
| 23 | `theorem` | [continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/continuouswithinat--728e76fc1ba63e36b7d4a20a.md) | 156 | `result-track:728e76fc1ba63e36b7d4a20a4473e94585fab10627a2b41f0fe97f538ba74f13` |
| 24 | `theorem` | [comp_continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/comp-continuous-iff--35e6db5cc342c93c9f64692f.md) | 160 | `result-track:35e6db5cc342c93c9f64692f4a2b874b225071a2e20d24a58568d84750e27eda` |
| 25 | `theorem` | [comp_continuous_iff'](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/comp-continuous-iff--ecc3c6f4be994fbdc0776e52.md) | 164 | `result-track:ecc3c6f4be994fbdc0776e529cdfb1471e8d424dc5ac3abe0992e2e37c9e8607` |
| 26 | `def` | [refl](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/refl--9a5254c6373d906a312bff6f.md) | 172 | `declaration-track:9a5254c6373d906a312bff6f46bcf9548688197fd1fe86c22ed46345fd5330db` |
| 27 | `theorem` | [refl_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/refl-apply--dfc2c30a70e9a9b17248a894.md) | 178 | `result-track:dfc2c30a70e9a9b17248a8940fe5d45722e490fcba9d31af789229561bd93b28` |
| 28 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-refl--f6a21aa6ff253eca5dedca61.md) | 181 | `result-track:f6a21aa6ff253eca5dedca61d7777f98d968194f386a44040011ffb453d8c375` |
| 29 | `theorem` | [coe_refl'](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-refl--dbba07a336e51eab736ac51d.md) | 184 | `result-track:dbba07a336e51eab736ac51d6cb9585e47bc3f69e354e4ac3487fab59348f286` |
| 30 | `def` | [symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm--d181c73f87d5eaf675efa92e.md) | 190 | `declaration-track:d181c73f87d5eaf675efa92e9f2a5cd94e8b4fc2c6030f01c3bb8fa0bcb11724` |
| 31 | `theorem` | [apply_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/apply-symm-apply--dc7ec5606ab58415a835328c.md) | 196 | `result-track:dc7ec5606ab58415a835328cc463767362ce97ff1911bbdc72731336a3734edc` |
| 32 | `theorem` | [symm_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-apply-apply--25bb3ea858c6cffe196f0b2a.md) | 200 | `result-track:25bb3ea858c6cffe196f0b2af67db455f1c4c08e2361de2798f8f378ca29f8ec` |
| 33 | `theorem` | [symm_image_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-image-image--0e992995fe3e7de75c829c6e.md) | 204 | `result-track:0e992995fe3e7de75c829c6e34db9ca8e23d84dfc92b2821214283d68ffa12e2` |
| 34 | `theorem` | [image_symm_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/image-symm-image--9be433e79c07068a76e3c3a0.md) | 208 | `result-track:9be433e79c07068a76e3c3a0374d5fe5a78151dfe17cce493a5a40413d320d6a` |
| 35 | `theorem` | [symm_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-toalgequiv--3f329e5d4a99c2fd32e30c32.md) | 212 | `result-track:3f329e5d4a99c2fd32e30c32561594156c106d21c0a5cc25292329abb11fcbf8` |
| 36 | `theorem` | [symm_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-tohomeomorph--b37984e1fe9894f004a10c34.md) | 215 | `result-track:b37984e1fe9894f004a10c341d9e450e6c9ef80b7507b900356d8b252745aab2` |
| 37 | `theorem` | [symm_map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-map-nhds-eq--a9fe23e5d5953f289a6bc5e4.md) | 217 | `result-track:a9fe23e5d5953f289a6bc5e448e661e03941d7d8dc4524abc69efc647bbc7e91` |
| 38 | `def` | [trans](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/trans--21198c3c5d5a7e3a72a31ce8.md) | 222 | `declaration-track:21198c3c5d5a7e3a72a31ce81697d3603d5d25690ae61f1512dd5b9f9662a861` |
| 39 | `theorem` | [trans_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/trans-toalgequiv--f7190f5f1d07df281c65c29a.md) | 228 | `result-track:f7190f5f1d07df281c65c29a77fd64d9be7a3a2971b7cccfe5b4794b2192a619` |
| 40 | `theorem` | [trans_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/trans-apply--72b2aec59d93b20ccea3e8f9.md) | 233 | `result-track:72b2aec59d93b20ccea3e8f9b69970ccdbbb972fdbfe709845a3193d6f6d352d` |
| 41 | `theorem` | [symm_trans_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-trans-apply--a2e77dc9ecdc986b52aa3128.md) | 238 | `result-track:a2e77dc9ecdc986b52aa312852c66920b07ad2f1cbdc60581a19fd927880708c` |
| 42 | `theorem` | [comp_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/comp-coe--b99279c43edee599f099ea5e.md) | 242 | `result-track:b99279c43edee599f099ea5e92a3797402c69bc71afb2deb40a0ae578e27f3b5` |
| 43 | `theorem` | [coe_comp_coe_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-comp-coe-symm--b320b7e4136737de27aefc09.md) | 247 | `result-track:b320b7e4136737de27aefc09b1fca39de8fa252997b6c09c96603ac2829af26e` |
| 44 | `theorem` | [coe_symm_comp_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/coe-symm-comp-coe--e76c6d46870ebe3a945f75ef.md) | 252 | `result-track:e76c6d46870ebe3a945f75efdb70c704ecb0956a1968dbd929544c01b0b1ce3e` |
| 45 | `theorem` | [symm_comp_self](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-comp-self--612b5efa8b9a1b82dd1b8433.md) | 257 | `result-track:612b5efa8b9a1b82dd1b8433c98b35ceb025aea0cb9adbc567724b1abe9771ba` |
| 46 | `theorem` | [self_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/self-comp-symm--98572fd120e9bed1f895228f.md) | 261 | `result-track:98572fd120e9bed1f895228fdc50766d4c94a0a7241a49fc976180a00303ec0f` |
| 47 | `theorem` | [symm_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-symm--aa9b5aa7fbcbbd6a6bdc56fe.md) | 265 | `result-track:aa9b5aa7fbcbbd6a6bdc56fe3c9fd0d2888a5d11f25facca8ae13edbdca7388a` |
| 48 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-bijective--45c41ef6c898f951c0bd0a62.md) | 267 | `result-track:45c41ef6c898f951c0bd0a629df141e238004ff28aba085ff2fd847058bc0883` |
| 49 | `theorem` | [refl_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/refl-symm--bc4d4452b6b95a99475c4dd6.md) | 271 | `result-track:bc4d4452b6b95a99475c4dd6c7ba44a17f908dea1b311c26f421bfbbbaf09574` |
| 50 | `theorem` | [symm_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-symm-apply--2f2871f103aa621f5bca1c90.md) | 273 | `result-track:2f2871f103aa621f5bca1c901a69cf9e8d9aebd36d2ff0f034ac5f05532de9a8` |
| 51 | `theorem` | [symm_apply_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-apply-eq--cef72b18a70c0fa21ed960b5.md) | 275 | `result-track:cef72b18a70c0fa21ed960b55d0a0d0b0527cc2fe1b4f8a7454b92075b78c60e` |
| 52 | `theorem` | [eq_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/eq-symm-apply--c54fb780a30d2827f37af2c5.md) | 278 | `result-track:c54fb780a30d2827f37af2c51fe7955043fd34974683a77ad3fd9187224861f0` |
| 53 | `theorem` | [image_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/image-eq-preimage--1523db6ff792ee8bf2af1a5a.md) | 281 | `result-track:1523db6ff792ee8bf2af1a5acb551bef620c57d8ee665ddcd8d6ebd50e60b18e` |
| 54 | `theorem` | [image_symm_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/image-symm-eq-preimage--3d12a1b85939fb3337c81fd9.md) | 284 | `result-track:3d12a1b85939fb3337c81fd94f85168c8a898c0717c34eb108f92a636a5b46ce` |
| 55 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/symm-preimage-preimage--f9dba0ba685e1f1aa78d2f79.md) | 288 | `result-track:f9dba0ba685e1f1aa78d2f7982b61c7f72d625325788e04222c1cbabc79f4e99` |
| 56 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/preimage-symm-preimage--de5680dbf261b7579ef32ac5.md) | 292 | `result-track:de5680dbf261b7579ef32ac5b82f4d8c8e3e2d80d00366716ca80f8881b7ee5c` |
| 57 | `theorem` | [isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/isuniformembedding--148de198bfac3a0369b6696b.md) | 295 | `result-track:148de198bfac3a0369b6696b0f764cb6380f098d71e9fff0638b91b3302fe21b` |
| 58 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgEquiv.Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.AlgEquiv.isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean/declarations/root-grwtsk-topology-generaltopology-continuousalgequiv-variantec2bd8ae9--05f36d0d6b21866cf08afb4a.md) | 301 | `result-track:05f36d0d6b21866cf08afb4aa667d94c2604ed843210b54bb46d336382fbda0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
