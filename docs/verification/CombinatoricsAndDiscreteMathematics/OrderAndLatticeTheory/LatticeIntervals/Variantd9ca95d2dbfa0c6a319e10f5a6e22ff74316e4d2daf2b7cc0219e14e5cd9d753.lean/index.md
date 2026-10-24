# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeIntervals.Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e592a04fd0d2be4c40398a6098448ec6f93d1883",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e592a04fd0d2be4c40398a6098448ec6f93d1883`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/semilatticeinf--49e2c6ca71a4ecc2bca655e6.md) | 48 | `declaration-track:49e2c6ca71a4ecc2bca655e6155212d2a5a824e20a2c4734b1026ceda8835786` |
| 2 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-inf--61dfe436b79fa71f83cc862b.md) | 54 | `result-track:61dfe436b79fa71f83cc862bb169d6d63f9743a6c674ee655f0450f489efc1fe` |
| 3 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/orderbot--1f19d482d69809c86992986f.md) | 61 | `declaration-track:1f19d482d69809c86992986f8b96099b1c02636969050bb10d83ca36c9212766` |
| 4 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-bot--9ecf7d413510afcac329fe87.md) | 65 | `result-track:9ecf7d413510afcac329fe872527f91de31839a61957b2aedd880b6dd42c8254` |
| 5 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/disjoint-iff--5cd1a3f605e40d7279143718.md) | 68 | `result-track:5cd1a3f605e40d72791437184bc0c49c2935061902ad86b34caeba99a2f3658d` |
| 6 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/semilatticeinf--5a82edb3a7a5d51aeed3a10d.md) | 77 | `declaration-track:5a82edb3a7a5d51aeed3a10d9d8a5ed5b8be0f394f40a8e8049581af717af3a0` |
| 7 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-inf--4d3739aa34f3a67cb80b39bf.md) | 81 | `result-track:4d3739aa34f3a67cb80b39bf0c37c6c8fc1ee38a66865bbb9531ddf0cbf896e8` |
| 8 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/semilatticeinf--38f74d92fc25cd23029e1889.md) | 92 | `declaration-track:38f74d92fc25cd23029e1889b0f012061662475522a29070316b3ae945416309` |
| 9 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-inf--460a2a3547ec51fa9a0a4561.md) | 96 | `result-track:460a2a3547ec51fa9a0a4561acc65fb46861eb6182225249b4e91b6b2e8ef187` |
| 10 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/semilatticesup--c433cce2082267462a38b2b7.md) | 101 | `declaration-track:c433cce2082267462a38b2b71325fa3dea96dabfb81fe4b8f167f6612f9082cc` |
| 11 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-sup--70e14eb0eb82bea7b00ce08e.md) | 105 | `result-track:70e14eb0eb82bea7b00ce08e11f0ff5211ed845b451a0e6f12d072fd5c33bad1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/instance--96c5ab2ecf85e5a62e4e7c4f.md) | 110 | `declaration-track:96c5ab2ecf85e5a62e4e7c4fe4dec6bb373e6bffc5c8f2fd7a8e650f4ef8dbbf` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/instance--7967d637803878f7dd57cf8e.md) | 113 | `declaration-track:7967d637803878f7dd57cf8e4c169b5b58fea170c0fbaf2244cf6589b089506f` |
| 14 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/ordertop--e29cdbd941c49536a2fe048f.md) | 117 | `declaration-track:e29cdbd941c49536a2fe048f47646a847d3101d5ef3070898181f8442c89ab85` |
| 15 | `lemma` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-top--78c44a4da1935a1566987745.md) | 122 | `result-track:78c44a4da1935a1566987745c73c0ee9d5bcdae97c03106f9f4d901e23dbce82` |
| 16 | `lemma` | [eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/eq-top-iff--f793f41311622153e1eec9a6.md) | 125 | `result-track:f793f41311622153e1eec9a6a97abf11b829cb6a19294928b085f0b0924d41fe` |
| 17 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/orderbot--97124c4799cb7443e29ae6e8.md) | 130 | `declaration-track:97124c4799cb7443e29ae6e83829c5ab43e66fcd8a810e779ee03fcfd8eec651` |
| 18 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-bot--80475c855bc1f908eb4838ab.md) | 135 | `result-track:80475c855bc1f908eb4838ab19156df48eb2c40fe4776c87e476b8317c6fe53d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/instance--1de3118d18415987cf3a1db8.md) | 138 | `declaration-track:1de3118d18415987cf3a1db8208e70b1c5196e2a59285276c99cb480548878e8` |
| 20 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/disjoint-iff--4a67be94852835b8abdc27bd.md) | 141 | `result-track:4a67be94852835b8abdc27bd4990b5749f10d882e2b92b0247ae858cfef9a8f2` |
| 21 | `lemma` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/codisjoint-iff--c9aa3dc3d3b9da1844235732.md) | 146 | `result-track:c9aa3dc3d3b9da18442357323e0579db6b488d5e7fe07e16958329301b58bcf1` |
| 22 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/iscompl-iff--633b6eb1034d3913578c5e5a.md) | 151 | `result-track:633b6eb1034d3913578c5e5a8cde61ae9c0e19c71557e8fa30735864bb3207f7` |
| 23 | `lemma` | [complementedLattice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/complementedlattice-iff--91e11878a329b235424c8a88.md) | 156 | `result-track:91e11878a329b235424c8a889b5689bba8ecb82aad9e754c7ea2fb4c95d25fa5` |
| 24 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/semilatticeinf--332729fa2e36ee396d854c2b.md) | 168 | `declaration-track:332729fa2e36ee396d854c2bfca2a7a0e1974c849a4e162f113cb203804a76fa` |
| 25 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-inf--1935652b7f17b382492dd80b.md) | 174 | `result-track:1935652b7f17b382492dd80b99df504365b09b0cf3379a00c6ea4d4068c79d7c` |
| 26 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/lattice--6f2dd7da8ca56674f8bed092.md) | 179 | `declaration-track:6f2dd7da8ca56674f8bed09256bd9d091ae1b39d042a16608a155029d85ff746` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/instance--4f99a6b5667e386d6c830b50.md) | 184 | `declaration-track:4f99a6b5667e386d6c830b5032f92e08f563616ef91f46aa3fb24cdf9424cb64` |
| 28 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/coe-bot--f2ee0676de3505b8813b253a.md) | 188 | `result-track:f2ee0676de3505b8813b253aef69c844e7c9e2ddf6d0025d9e31fe089a3e2a58` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/instance--b9833aa4d2090b30f9bb69ef.md) | 192 | `declaration-track:b9833aa4d2090b30f9bb69ef60576372e00dd6f19d5a31494a13aa10db696e26` |
| 30 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/disjoint-iff--456d5bdb4ec6572f93475cec.md) | 195 | `result-track:456d5bdb4ec6572f93475ceca3b47440a6daf06c241a2c1761a3752a97085e6d` |
| 31 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantd9ca95d2dbfa0c6a319e10f5a6e22ff74316e4d2daf2b7cc0219e14e5cd9d753.lean/declarations/iscompl-iff--40249c7ce7c709b9ec8ccbee.md) | 200 | `result-track:40249c7ce7c709b9ec8ccbeefbf4b5cfb8822f7eef26002b94f70ae03d687657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
