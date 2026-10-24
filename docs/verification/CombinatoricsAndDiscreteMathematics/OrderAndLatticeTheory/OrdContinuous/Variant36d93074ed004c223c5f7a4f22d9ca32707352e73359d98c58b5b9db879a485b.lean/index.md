# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdContinuous.Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf431885a46a602e9033b2bc1ba5e0759fa58ed",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf431885a46a602e9033b2bc1ba5e0759fa58ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/leftordcontinuous--2596fab8a7e29c6ef287cdeb.md) | 44 | `declaration-track:2596fab8a7e29c6ef287cdebc5cceb69ae5c7a4776f62c64cc6944e1cd2ad512` |
| 2 | `def` | [RightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/rightordcontinuous--2ce691ca2ed9872e9ab2af1f.md) | 50 | `declaration-track:2ce691ca2ed9872e9ab2af1f2dc2a830b0e5a43c07bbed31a754c86ec64993e1` |
| 3 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/id--cc6e5b26527dbfcaad0659a7.md) | 59 | `result-track:cc6e5b26527dbfcaad0659a76332807f0813237755d1a9e7655349cf6e7ef12e` |
| 4 | `theorem` | [rightOrdContinuous_dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/rightordcontinuous-dual--84b666bd8d7f925c0085e28e.md) | 64 | `result-track:84b666bd8d7f925c0085e28ef19f941c67f0f43a470cbe64041d49b2ab42c933` |
| 5 | `theorem` | [map_isGreatest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-isgreatest--03d980db92fd83ca80133c54.md) | 71 | `result-track:03d980db92fd83ca80133c541677758a05b997c176c9e5b221c37222d8b1ed47` |
| 6 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/mono--776119d21c25771e7944eb68.md) | 75 | `result-track:776119d21c25771e7944eb68617d03f069eb56ee3cf5bdb96712b028fd60b2ea` |
| 7 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/comp--accbbf78b8955c8fe8bef0eb.md) | 79 | `result-track:accbbf78b8955c8fe8bef0eb633cd088d085fa9c9e297209dde65a1a29161e8d` |
| 8 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/iterate--c5cfb4f9442cef1cbee6dab4.md) | 82 | `result-track:c5cfb4f9442cef1cbee6dab4100ce54ebd165024722dd46834b93aa9026ccd77` |
| 9 | `theorem` | [map_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-sup--27fbb4f2f4bd049c21f54b66.md) | 94 | `result-track:27fbb4f2f4bd049c21f54b66c8a3b1838ee300e6a80642ca31aab924da76d791` |
| 10 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/le-iff--287a2f38d4f0538cc7b7864f.md) | 97 | `result-track:287a2f38d4f0538cc7b7864f022af2faabbc7df4ad12ebd2b6985ef7ef063202` |
| 11 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/lt-iff--33048ae34ee68de3d5d3aad5.md) | 100 | `result-track:33048ae34ee68de3d5d3aad592eebf3065bf112b1293835c2770087045644f07` |
| 12 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/toorderembedding--92e409c6ec179d61aa508f5c.md) | 106 | `declaration-track:92e409c6ec179d61aa508f5c2ff26a107a3c67a659bc12f8dd7acc27c9614bff` |
| 13 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/coe-toorderembedding--7b6170edc5f19ab982a05d6c.md) | 112 | `result-track:7b6170edc5f19ab982a05d6cf844d5bcb0a8f0a4191c1cb0b1dd42ff59db63bb` |
| 14 | `theorem` | [map_sSup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-ssup--4cad9159208841e2d1b6154e.md) | 122 | `result-track:4cad9159208841e2d1b6154e7f2af05b78e83b90107899d8a5f91ab5f190c579` |
| 15 | `theorem` | [map_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-ssup--e312b7d48286f41b17bd11c0.md) | 125 | `result-track:e312b7d48286f41b17bd11c0cd41e6e35aaea89e0d9bd5e71a597f8045b2f7ee` |
| 16 | `theorem` | [map_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-isup--e68fb891033befc84d2df014.md) | 128 | `result-track:e68fb891033befc84d2df0144e4876bd42b82aaf7d63d6ee87b601ac2887e366` |
| 17 | `theorem` | [map_csSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-cssup--9fc3bc696f88170ea07bf1f4.md) | 138 | `result-track:9fc3bc696f88170ea07bf1f4d32a691522d0ed441f9bb2a8dc2cbb32da33202b` |
| 18 | `theorem` | [map_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-cisup--84deab91c3de063ee4199899.md) | 142 | `result-track:84deab91c3de063ee4199899e173a9fea99fce82ea2785dbb5e9cb0b2ae30427` |
| 19 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/id--99af19db79a5154aaa29f514.md) | 157 | `result-track:99af19db79a5154aaa29f514c006aa28fc81edbb884b8e6960fdd8177f7bac2d` |
| 20 | `theorem` | [orderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/orderdual--449242f51eff6c918c5093ef.md) | 162 | `result-track:449242f51eff6c918c5093ef7331e635833f1fd1358ac92549ee2caf341ff33a` |
| 21 | `theorem` | [map_isLeast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-isleast--b6adaebbcc1df0ddd74c5731.md) | 165 | `result-track:b6adaebbcc1df0ddd74c57311c45aa249807bedf9f38c620b0cdeafff2c3b5eb` |
| 22 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/mono--8df646bcd971c8822ee55450.md) | 169 | `result-track:8df646bcd971c8822ee5545093623898e39e2ffdfec8a7049bc5bb1ca5286fcd` |
| 23 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/comp--d080aed005bc81b732fd70f2.md) | 172 | `result-track:d080aed005bc81b732fd70f2569c35725c78999eef9926b212bf341e9e07ea87` |
| 24 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/iterate--58a0f43beffc9f6f3b814e14.md) | 175 | `result-track:58a0f43beffc9f6f3b814e14c9fcf111ff01249e3147255c48ceaba61af1b84a` |
| 25 | `theorem` | [map_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-inf--093db6ed66cbaf171ee97542.md) | 185 | `result-track:093db6ed66cbaf171ee97542277dac44050e5d9675a73a67bdcdfd913ad12ff6` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/le-iff--4fc2fa352eb9cbd109fe5644.md) | 188 | `result-track:4fc2fa352eb9cbd109fe5644d8a75672f9650df66377e9da966f92dac17ae558` |
| 27 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/lt-iff--47827204adf798a85a245467.md) | 191 | `result-track:47827204adf798a85a2454676aa371693492300b4d06167e4c4799d6bb02ce90` |
| 28 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/toorderembedding--f7a5797e7f532b3b607d0516.md) | 197 | `declaration-track:f7a5797e7f532b3b607d051693423c6dde32939189a441c72515f612c0df041d` |
| 29 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/coe-toorderembedding--8c8a040fc2bc5b328c30997e.md) | 203 | `result-track:8c8a040fc2bc5b328c30997e25c7363efe3859807d38e39d7cec8524c797938a` |
| 30 | `theorem` | [map_sInf'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-sinf--b15a1cd1a3258e588ff60fd6.md) | 213 | `result-track:b15a1cd1a3258e588ff60fd614706a04eda38d8e8e6e66467a1c25b74b5e9404` |
| 31 | `theorem` | [map_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-sinf--8c7395369396d374b3c11e49.md) | 216 | `result-track:8c7395369396d374b3c11e497bdcce658f8a968f28e075a28d5a6a33df724144` |
| 32 | `theorem` | [map_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-iinf--81f94502c6efc40bccce44d8.md) | 219 | `result-track:81f94502c6efc40bccce44d806edf8ff758922af368d707d4d823c9cf4b94796` |
| 33 | `theorem` | [map_csInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-csinf--b0110836bc33f253f5db5f9a.md) | 228 | `result-track:b0110836bc33f253f5db5f9a4f42e82afd8285fbbb77b62c3e999ec8e988bb47` |
| 34 | `theorem` | [map_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/map-ciinf--408e2c27b52550d9097fc128.md) | 232 | `result-track:408e2c27b52550d9097fc128fcbae596b586287aa3bf1f99a58e2d1bb10938fb` |
| 35 | `lemma` | [leftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/leftordcontinuous--e281004384afb8fabf067100.md) | 244 | `result-track:e281004384afb8fabf067100a9c87a558b64436df0217cb5803a78d1ba35f46d` |
| 36 | `lemma` | [rightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/rightordcontinuous--b6a55f0c41146c8730c7dbf5.md) | 248 | `result-track:b6a55f0c41146c8730c7dbf5d43b589b6407c1603bd7b3a74287e12a6abf8924` |
| 37 | `lemma` | [leftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/leftordcontinuous--21845ceff76ee17796e7bf6c.md) | 256 | `result-track:21845ceff76ee17796e7bf6cb27827c8d5d97da352d8374cc7051d8d0071701c` |
| 38 | `lemma` | [rightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant36d93074ed004c223c5f7a4f22d9ca32707352e73359d98c58b5b9db879a485b.lean/declarations/rightordcontinuous--ec940f41be8a83c95b42af4d.md) | 258 | `result-track:ec940f41be8a83c95b42af4de7ed4d470134a9d32bb0678f1e7b2b83bf8a50e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
