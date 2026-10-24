# Verification target: GRWTSK.Topology.GeneralTopology.Circle.Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bb07fd5c3a8df7065fbbdd590b0956c6999e951",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bb07fd5c3a8df7065fbbdd590b0956c6999e951`.

Source path: `GRWTSK/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/circle--e4ed2cc604f564ed7c1a4a54.md) | 56 | `declaration-track:e4ed2cc604f564ed7c1a4a54bddeb0cba6905ea11588eafbfe8d7488fe9047c5` |
| 2 | `instance` | [instCoeOut](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instcoeout--fee57b2d11a8090eb24d7f13.md) | 62 | `declaration-track:fee57b2d11a8090eb24d7f1335c1e7ab3c79d9ad57a30aaa19e926c44b7d753a` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instcommgroup--80fe4eb9270a323156966026.md) | 64 | `declaration-track:80fe4eb9270a323156966026d5bd15af83d50dc445e1dc6ae78af219bb7272fe` |
| 4 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instmetricspace--2bd3aaeb8b2dde32e5f5c54f.md) | 65 | `declaration-track:2bd3aaeb8b2dde32e5f5c54f18fe83d461907bf09bd86d75202af526be77ee1b` |
| 5 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/ext--0e764f24d26e4709c41c8ca6.md) | 67 | `result-track:0e764f24d26e4709c41c8ca6ffc763a85de660439a0a8ea25974074dda0d6abe` |
| 6 | `lemma` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-injective--fa3bd3e398e5aa251fbbda32.md) | 69 | `result-track:fa3bd3e398e5aa251fbbda3235f82e5345b4e84b903d5d618da9d2b3f18332e5` |
| 7 | `lemma` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-inj--df55aee03e3458ec92df39a2.md) | 72 | `result-track:df55aee03e3458ec92df39a27a85dc91f6574ebb879f5304cc2dd1565696328a` |
| 8 | `lemma` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/norm-coe--a702024a29c474c41585ccda.md) | 74 | `result-track:a702024a29c474c41585ccda6505cc42cdeb20d282c306d305bca2b16bcc4a8a` |
| 9 | `lemma` | [normSq_coe](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/normsq-coe--ef4adcf7b47171f44f9129a8.md) | 78 | `result-track:ef4adcf7b47171f44f9129a8f0efe96801a9fe6c6a4db3e906df0d4f877597c5` |
| 10 | `lemma` | [coe_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-ne-zero--a65b6730ba749ca925180042.md) | 79 | `result-track:a65b6730ba749ca9251800429f6f2dc9ed47dc80acb7d00ef250283188ec00c8` |
| 11 | `lemma` | [coe_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-one--8b8c8a59e32dc366a8ea279a.md) | 80 | `result-track:8b8c8a59e32dc366a8ea279a95f36ddcb32f4f5bb27e1053c9a1293ab5d28afd` |
| 12 | `lemma` | [coe_eq_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-eq-one--870fbf5f38c7f0bf2b388c0a.md) | 82 | `result-track:870fbf5f38c7f0bf2b388c0af8799ffbce9d8f0552a8c1e8c67bb5bee6d74141` |
| 13 | `lemma` | [coe_mul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-mul--b76d1d62ca2c88c1c04552f9.md) | 83 | `result-track:b76d1d62ca2c88c1c04552f9d299bc198f8a62841e6fd9982699e51e7c0381f7` |
| 14 | `lemma` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-inv--f347066721d361c23b60fb25.md) | 84 | `result-track:f347066721d361c23b60fb254e79302cc4d2b87a412f4eee69db4adce4a3e406` |
| 15 | `lemma` | [coe_inv_eq_conj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-inv-eq-conj--25b63e83a33883691469d1f1.md) | 85 | `result-track:25b63e83a33883691469d1f16d540731984f7801f366834ccd96fab4104c46d0` |
| 16 | `lemma` | [coe_div](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-div--96d2db907b22dd19e8c387f1.md) | 88 | `result-track:96d2db907b22dd19e8c387f19fc2d08df3e29bd0f514b8d699c861de659cdfcf` |
| 17 | `def` | [coeHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coehom--e6f3cdac56537292ebe433ea.md) | 92 | `declaration-track:e6f3cdac56537292ebe433ea90e99052e147ed2437468c8833074f24aa74c300` |
| 18 | `def` | [toUnits](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/tounits--c13890534abf14397afcd43a.md) | 98 | `declaration-track:c13890534abf14397afcd43ab25aafbb73605e99a2f14c16c6fa620d3490fb05` |
| 19 | `lemma` | [toUnits_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/tounits-apply--d400da52045dc9237c923042.md) | 101 | `result-track:d400da52045dc9237c9230423c464413f13f8b3656cf22e7c9b2651194dff5a2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instance--70726478ca6a7d916cee232d.md) | 103 | `declaration-track:70726478ca6a7d916cee232d80cecc6f2978d79aef9d6f1b4be65976ba020dac` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instance--e9c200e18b45059147f94101.md) | 104 | `declaration-track:e9c200e18b45059147f94101dac2171d1744f3fb14a8544208d3cf1833c2072b` |
| 22 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instuniformspace--8ac4162b8e0797a8d65ef9e8.md) | 105 | `declaration-track:8ac4162b8e0797a8d65ef9e829bda74ae5674f98081f0d317525041c7872ba5b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instance--32ff8c0bb36d0740b545e41b.md) | 106 | `declaration-track:32ff8c0bb36d0740b545e41bdc892a27bf11880fd815d618bf150d4398b14236` |
| 24 | `def` | [ofConjDivSelf](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/ofconjdivself--ecf5c2b58721417f8bdef9ce.md) | 112 | `declaration-track:ecf5c2b58721417f8bdef9ceab8a12c9049d0745d64318389d73ddc51dac16be` |
| 25 | `def` | [exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp--f2b3545f516c0eebf13cf7d9.md) | 118 | `declaration-track:f2b3545f516c0eebf13cf7d9696e54b0b49b970576ff4499397f15159333a7dc` |
| 26 | `theorem` | [coe_exp](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/coe-exp--aeb98e6f1892795f0298cd2b.md) | 124 | `result-track:aeb98e6f1892795f0298cd2ba10b41b91c67fe1a3dc642a4b0aa905e9d7e671b` |
| 27 | `theorem` | [exp_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp-zero--b260528c4a8a8ccd771abf6b.md) | 127 | `result-track:b260528c4a8a8ccd771abf6bc2d8ebcf6f9fa05026ca930e50135896ca7a7fd5` |
| 28 | `theorem` | [exp_add](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp-add--94a855f4e7f1de5594b223d0.md) | 131 | `result-track:94a855f4e7f1de5594b223d023fa4381a4e9ad32f99c67cb7501544933ddd184` |
| 29 | `def` | [expHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exphom--81dfdd7c6448b94b66807114.md) | 138 | `declaration-track:81dfdd7c6448b94b66807114a3c6ecdad2f0ed14ec7f69fabeccebe694b8692b` |
| 30 | `lemma` | [exp_sub](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp-sub--5b64c277031e82c1e5872a48.md) | 143 | `result-track:5b64c277031e82c1e5872a4801c1c95b5ed6e1b6ddde7ee22e7cdb735f8d0395` |
| 31 | `lemma` | [exp_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp-neg--dad11642ff58824c1b310166.md) | 144 | `result-track:dad11642ff58824c1b3101669be8661ed27f4fa6fec16e541c5a01e6b33e553e` |
| 32 | `lemma` | [exp_pi_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/exp-pi-ne-one--a5bf8991145a42bf0ca75a59.md) | 146 | `result-track:a5bf8991145a42bf0ca75a59e638fea462b37aeae44a8caf92790da5c1603f11` |
| 33 | `lemma` | [star_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/star-addchar--743da2106d8e660a50e3317a.md) | 155 | `result-track:743da2106d8e660a50e3317a6951945a01b9ffdf45c5b57573783874c49b50d2` |
| 34 | `lemma` | [starRingEnd_addChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/starringend-addchar--5bb9ffa01caa68efe552e487.md) | 162 | `result-track:5bb9ffa01caa68efe552e4872c1c7c5194dab5d28294e14de3b09ce9a9418128` |
| 35 | `instance` | [instSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instsmul--dfcc287a17c97168f435d9eb.md) | 166 | `declaration-track:dfcc287a17c97168f435d9ebafc335d9a1c2c58831f31a8e0de37d3550012166` |
| 36 | `instance` | [instSMulCommClass_left](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instsmulcommclass-left--31f3359ed5ba9a5faedfc096.md) | 168 | `declaration-track:31f3359ed5ba9a5faedfc0961327d07e83852908b01b85a0298cb62ea72febc5` |
| 37 | `instance` | [instSMulCommClass_right](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instsmulcommclass-right--b54dd3d7ab19f364985c9421.md) | 171 | `declaration-track:b54dd3d7ab19f364985c9421b17df203655f2b4218c1681028b766fed3362d56` |
| 38 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instisscalartower--fd5f0eecfc775278562f961e.md) | 174 | `declaration-track:fd5f0eecfc775278562f961e444aa228c9ab24bf71f92e0d0fe552cb75c0f36d` |
| 39 | `instance` | [instMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instmulaction--b88ef01d0dd99ee560ac937c.md) | 177 | `declaration-track:b88ef01d0dd99ee560ac937cc731bf706081a0ab428cc6ca126bf15d173dfb59` |
| 40 | `instance` | [instDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instdistribmulaction--60fa7670f60433ec623d7ddd.md) | 179 | `declaration-track:60fa7670f60433ec623d7ddda0e7570f0e53dba8796af6f9b473c540e24a3acb` |
| 41 | `lemma` | [smul_def](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/smul-def--f6127986a8bf9122e9420719.md) | 182 | `result-track:f6127986a8bf9122e9420719ef33b1627827b14155e53fb46f8340f30383dcea` |
| 42 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/instcontinuoussmul--5ca8a2fb3778f9dc039dcad6.md) | 184 | `declaration-track:5ca8a2fb3778f9dc039dcad67d90ca4ebd49dd33b4b83359f8872216e238f7c4` |
| 43 | `lemma` | [norm_smul](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/norm-smul--fd538e22c455d3ccb25a5577.md) | 188 | `result-track:fd538e22c455d3ccb25a5577a49616f9305b196c4ecea58d0da87241f3d45cbc` |
| 44 | `def` | [fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/fourierchar--4ed794453a6e87e57e4eba4f.md) | 200 | `declaration-track:4ed794453a6e87e57e4eba4f68929a3f49a3761cc017f4ad792aafc955a2840e` |
| 45 | `theorem` | [fourierChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/fourierchar-apply--af896652aa6da7d84c45bd0b.md) | 209 | `result-track:af896652aa6da7d84c45bd0b0a52bb843bcb64be7016a15665e9fa74ce68f8c6` |
| 46 | `theorem` | [fourierChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/fourierchar-apply--14e3137eef9bcf75922f6e5b.md) | 211 | `result-track:14e3137eef9bcf75922f6e5b0cf5b45fad77e7f4b37ab799838b3c6522ac24dd` |
| 47 | `theorem` | [continuous_fourierChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/continuous-fourierchar--73eb386535a640e0ebf593fa.md) | 214 | `result-track:73eb386535a640e0ebf593fa0d23370e3cec50db41fed5eeae2e350558f41ddb` |
| 48 | `theorem` | [fourierChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/fourierchar-ne-one--9d1555c1bcb50d5a3c18e139.md) | 216 | `result-track:9d1555c1bcb50d5a3c18e139acf2683a014cc2b936321760128ce80d170f03fb` |
| 49 | `def` | [probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/probchar--2b4ac10f49b327a3c23d80b5.md) | 225 | `declaration-track:2b4ac10f49b327a3c23d80b5117e3d0ddf99e9395de9ed7bc8717a1a68553980` |
| 50 | `theorem` | [probChar_apply'](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/probchar-apply--785068217dc9d2fd50f47bce.md) | 230 | `result-track:785068217dc9d2fd50f47bce650cde529b6ae2618eaf6f722440115d7eecc2b9` |
| 51 | `theorem` | [probChar_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/probchar-apply--724008265805e1031646bfb2.md) | 232 | `result-track:724008265805e1031646bfb2a265753a071fc20de173e451c5bc63a2eaed1551` |
| 52 | `theorem` | [continuous_probChar](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/continuous-probchar--8ac83dde438af18152f3df0d.md) | 235 | `result-track:8ac83dde438af18152f3df0d6472665a7dd37e08eff0f67a6558347a9e2baac1` |
| 53 | `theorem` | [probChar_ne_one](../../../../../mathematics/Topology/GeneralTopology/Circle/Variantfab0d3a2206e864c226775fd7bb3c664b46e787889e2222ca4e0254cdc3496a0.lean/declarations/probchar-ne-one--0e07f44808b8c2821dffa240.md) | 237 | `result-track:0e07f44808b8c2821dffa240c7ff666d79494e67eac41351791e9f8194659248` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
