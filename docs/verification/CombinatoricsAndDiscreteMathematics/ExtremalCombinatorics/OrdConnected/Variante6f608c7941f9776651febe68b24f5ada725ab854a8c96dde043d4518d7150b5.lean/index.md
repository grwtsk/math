# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.OrdConnected.Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4ed9d61fa1c9c05d2249dddec1815e78e0818d5",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4ed9d61fa1c9c05d2249dddec1815e78e0818d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.UnorderedInterval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrdConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected--9a6d53863b65b09b4609fa49.md) | 46 | `declaration-track:9a6d53863b65b09b4609fa498b49efb0fb698485a02f9e3121b3c07545485c16` |
| 2 | `theorem` | [OrdConnected.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-out--b456ffcfd5165b6c80c2f37a.md) | 51 | `result-track:b456ffcfd5165b6c80c2f37a434a8d7a9405a3796e1b158ae8d80c34f0423c6a` |
| 3 | `theorem` | [ordConnected_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-def--cad8853abdf890316ae3de29.md) | 55 | `result-track:cad8853abdf890316ae3de293047a6e2cebb68acd96b011de2b600c14ef14920` |
| 4 | `theorem` | [ordConnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iff--2b8ce60430c6b35f8c5c163d.md) | 60 | `result-track:2b8ce60430c6b35f8c5c163df4bfe2ab7b88bdca5e8816ad72086b183df3afa6` |
| 5 | `theorem` | [ordConnected_of_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-of-ioo--02563472b922e7498d7a3219.md) | 65 | `result-track:02563472b922e7498d7a32190b4acbb63365695315cbd266d9bd6ea5181e534d` |
| 6 | `theorem` | [OrdConnected.preimage_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-preimage-mono--ef22fc12f9271220245953bb.md) | 74 | `result-track:ef22fc12f9271220245953bbf665f0bfec3210ba8c35f4341a06814581a4fc47` |
| 7 | `theorem` | [OrdConnected.preimage_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-preimage-anti--26f901e1332da434ad47a4ad.md) | 79 | `result-track:26f901e1332da434ad47a4ad997f4327787cb8fad3276d8804189d43fbe449a3` |
| 8 | `theorem` | [Icc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/icc-subset--039ade80adede7177a714814.md) | 84 | `result-track:039ade80adede7177a7148145dca0d0c84c09dc9966df275b80ea602e522e6d1` |
| 9 | `theorem` | [OrdConnected.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-inter--a880ca01612d5bd3e1a6f370.md) | 89 | `result-track:a880ca01612d5bd3e1a6f3706e979c4b09a556f81fc3f3793684534e0e839f38` |
| 10 | `instance` | [OrdConnected.inter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-inter--6147ebcabadcbfd2217a1a36.md) | 94 | `declaration-track:6147ebcabadcbfd2217a1a364b22272f19305070e6deee1ac55e71db58042dee` |
| 11 | `theorem` | [OrdConnected.dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-dual--95cd450986bf7cfef8d2686f.md) | 99 | `result-track:95cd450986bf7cfef8d2686f6b7451e3787e8c24538a154f8b9292d7450cf2a7` |
| 12 | `theorem` | [ordConnected_dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-dual--55e7e979564f25bb0401bc17.md) | 104 | `result-track:55e7e979564f25bb0401bc17c7e88f884ac455fa5431b5dbf51f25fc9583c0e4` |
| 13 | `theorem` | [ordConnected_sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-sinter--9b4dcbd6d55c0387fe688dc4.md) | 108 | `result-track:9b4dcbd6d55c0387fe688dc43aa61a793a11fb5b4a4570628d61030d48cfa87c` |
| 14 | `theorem` | [ordConnected_iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iinter--824dd42fee2ae3e1acbfbc4e.md) | 113 | `result-track:824dd42fee2ae3e1acbfbc4e1054f806e9cf560d879f10178ecce13ba78fb9c1` |
| 15 | `instance` | [ordConnected_iInter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iinter--66866bbcc7fd99e56b79ddf8.md) | 118 | `declaration-track:66866bbcc7fd99e56b79ddf86aa9a81085fd1b30014d5eb88776f3aada75df06` |
| 16 | `theorem` | [ordConnected_biInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-biinter--d5592d06a7f651504eaf1903.md) | 124 | `result-track:d5592d06a7f651504eaf1903ac3702d0fdfdebd62e02abab669655c594938a64` |
| 17 | `theorem` | [ordConnected_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-pi--c362f79f6e2bb83dc8e4c51c.md) | 129 | `result-track:c362f79f6e2bb83dc8e4c51c6f95dc2d917af8d8c2865bd484d473c51815bf7e` |
| 18 | `instance` | [ordConnected_pi'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-pi--9f7daf715f435c78e915cf44.md) | 134 | `declaration-track:9f7daf715f435c78e915cf4439d2aa2b1ae5769f479ff6b7955b511af61057c4` |
| 19 | `theorem` | [ordConnected_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-ici--dfd30ce938f4df457831581b.md) | 140 | `result-track:dfd30ce938f4df457831581bbf4bed05b16f1204083b1663abb1cee00faad703` |
| 20 | `theorem` | [ordConnected_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iic--2c946922477abc878e4cd3f5.md) | 145 | `result-track:2c946922477abc878e4cd3f5c3f2d49c789a0fc8b57ebf565e01bd2d1fb5e981` |
| 21 | `theorem` | [ordConnected_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-ioi--ac93bfa5e115e9de4b8509a9.md) | 150 | `result-track:ac93bfa5e115e9de4b8509a9b6a03f63172848928eaafca9bd1b9ce96b732ad8` |
| 22 | `theorem` | [ordConnected_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iio--1470e162a26646361cc0f725.md) | 155 | `result-track:1470e162a26646361cc0f725fc62c1b4cf6411e47e33e659138822a1a25f26e5` |
| 23 | `theorem` | [ordConnected_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-icc--a71f296d2f744acb062d9ba2.md) | 160 | `result-track:a71f296d2f744acb062d9ba2e7d7691ea94d5b7f903d885fc1192887a53daa41` |
| 24 | `theorem` | [ordConnected_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-ico--17606e868435af190055a2dc.md) | 165 | `result-track:17606e868435af190055a2dc203faa426bd995019b587e63fd7038209e2152d7` |
| 25 | `theorem` | [ordConnected_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-ioc--59b05562d43776aae2850305.md) | 170 | `result-track:59b05562d43776aae2850305113d4374edbf53d241c403397c4267c6b98589cd` |
| 26 | `theorem` | [ordConnected_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-ioo--aa20fdd80986579d81d3f530.md) | 175 | `result-track:aa20fdd80986579d81d3f530dff081d9883df7aeaa73e4255d19c4d54c417292` |
| 27 | `theorem` | [ordConnected_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-singleton--d07b5c1e2d652fd57993aa77.md) | 180 | `result-track:d07b5c1e2d652fd57993aa77a029e63d0924c70b1771cc342edbccd4b450d9d6` |
| 28 | `theorem` | [ordConnected_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-empty--5adaed5d130e97dad813a12d.md) | 187 | `result-track:5adaed5d130e97dad813a12d00a4231aedf86a715ed9a154246d39d01fc8d935` |
| 29 | `theorem` | [ordConnected_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-univ--76466ae47535086e015a0980.md) | 192 | `result-track:76466ae47535086e015a09805f76f573422653160f430e169fccc0876fbe1681` |
| 30 | `instance` | [instDenselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/instdenselyordered--9341faba4536a28de765345d.md) | 197 | `declaration-track:9341faba4536a28de765345d111b72c9f34f69091d420751a6d6e439dd87f438` |
| 31 | `theorem` | [ordConnected_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-preimage--d1e340a1916e102c3cef342d.md) | 204 | `result-track:d1e340a1916e102c3cef342d4dc5c153c3d153ecd990249f5bdf8af213b284b6` |
| 32 | `theorem` | [ordConnected_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-image--9521727b8526686c46c5a404.md) | 210 | `result-track:9521727b8526686c46c5a4044417edec8377f9f4a72a2537de24acb48e765c33` |
| 33 | `theorem` | [ordConnected_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-range--033b042a3845fed40c2f007e.md) | 218 | `result-track:033b042a3845fed40c2f007e19d0de4d1499a244d12a80f3b535ed90b6f1ff39` |
| 34 | `theorem` | [dual_ordConnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/dual-ordconnected-iff--d204e306513a1a46c72266f2.md) | 224 | `result-track:d204e306513a1a46c72266f2df830d9aa2daa1392ac9f77082f76a57c12a7bbf` |
| 35 | `theorem` | [dual_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/dual-ordconnected--c3f1d34e07850507eb604ad8.md) | 230 | `result-track:c3f1d34e07850507eb604ad842dd06579f0e9d7db67da3421e220ca0ffe39524` |
| 36 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.OrdConnected.Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.IsAntichain.ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-or--2341189131a2acf9ad644142.md) | 240 | `result-track:2341189131a2acf9ad644142594f7ec8558c3ce4795edd47c6443973fece712c` |
| 37 | `theorem` | [ordConnected_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-uicc--a8cbb2011292c6d72140a1aa.md) | 254 | `result-track:a8cbb2011292c6d72140a1aa12b323b3e1fd291d15625b236a40ab4a8451d1d3` |
| 38 | `theorem` | [ordConnected_uIoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-uioc--dce4db8b1b2532f3fe2bbaad.md) | 259 | `result-track:dce4db8b1b2532f3fe2bbaad0f0aebf4c44da814fb750487fb7512337b6caa52` |
| 39 | `theorem` | [OrdConnected.uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-uicc-subset--30ce5e589a83887a93b023e5.md) | 263 | `result-track:30ce5e589a83887a93b023e58b18c919705cd0115c37f8b1ad527b3e571c0ef4` |
| 40 | `theorem` | [OrdConnected.uIoc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-uioc-subset--65b4e1dceb9bdc485fe683db.md) | 268 | `result-track:65b4e1dceb9bdc485fe683db7234d7c5ba44b7f8a1b793c56d747be355bf8343` |
| 41 | `theorem` | [ordConnected_iff_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iff-uicc-subset--809aca3f7bdbead46154149c.md) | 273 | `result-track:809aca3f7bdbead46154149c02d658cdc03b267078b09d6e20e366bb8911076a` |
| 42 | `theorem` | [ordConnected_of_uIcc_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-of-uicc-subset-left--5b8531af58543c075cb45760.md) | 278 | `result-track:5b8531af58543c075cb457609277d2c2a73b7a04c7dd51eaeaf08d5e148c90d8` |
| 43 | `theorem` | [ordConnected_iff_uIcc_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iff-uicc-subset-left--e6408a8024f0aae61c100058.md) | 286 | `result-track:e6408a8024f0aae61c100058c807111de0753e910ed837aa1f43efd19ee8c54b` |
| 44 | `theorem` | [ordConnected_iff_uIcc_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variante6f608c7941f9776651febe68b24f5ada725ab854a8c96dde043d4518d7150b5.lean/declarations/ordconnected-iff-uicc-subset-right--fba3bcc1c93494a3c1f784fc.md) | 291 | `result-track:fba3bcc1c93494a3c1f784fcd7979f41218a6090ad98d671bb4785db10f4f081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
