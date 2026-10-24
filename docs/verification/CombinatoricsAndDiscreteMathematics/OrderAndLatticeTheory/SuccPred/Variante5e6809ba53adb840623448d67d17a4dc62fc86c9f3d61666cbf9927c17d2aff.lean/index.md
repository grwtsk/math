# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2855e633a9fd2d98747a1fc812d92a7f76c6f19c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2855e633a9fd2d98747a1fc812d92a7f76c6f19c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean.json)

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
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ico-succ-left-eq-ioo--b2e0e7ffcc486098415abb34.md) | 51 | `result-track:b2e0e7ffcc486098415abb34e96f9f68411cf93588aabdbee0ec23fb201349ea` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--87a16cbc15924c8b7997dca1.md) | 54 | `result-track:87a16cbc15924c8b7997dca10bf0a0a0d9864fc9cce1d535b23871b9f7750caf` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--b5bb3915a6374b5f7754dbc0.md) | 57 | `result-track:b5bb3915a6374b5f7754dbc0fcb2b757a4a38a9b7a610c06632e459a66856d4e` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--c8bf3d839f862772def1a16b.md) | 60 | `result-track:c8bf3d839f862772def1a16b89536011a04e6d347238602d04db940a25396b06` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--e39cb716170cff3a0e0ac38e.md) | 63 | `result-track:e39cb716170cff3a0e0ac38e88d93d3d3378ae717b25cf8b458e3b4de1772097` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-icc-succ-left-eq-icc--4e60fc9d97b7949b1c8d573b.md) | 69 | `result-track:4e60fc9d97b7949b1c8d573bd33bc08b53c354910420c2daa6a75b5d37587b3a` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-icc-right-eq-icc-succ--4564cdbfeacf9ac7b9ad9f32.md) | 72 | `result-track:4564cdbfeacf9ac7b9ad9f32e0780771cff884df5130916eb08273925bc2f74a` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--333dca093696eb652692b0e1.md) | 75 | `result-track:333dca093696eb652692b0e16d259e027f030b3ea936ca96f3eebfd0b31870ce` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-succ-left-eq-ico--5a11eb1789398c0a740eeaa8.md) | 79 | `result-track:5a11eb1789398c0a740eeaa8e7fa8053b930233b81883b470d56a6ea5ae7da8b` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--a1c2e489acfc86d446ef33cb.md) | 82 | `result-track:a1c2e489acfc86d446ef33cb0dbfc0e19d7d3169325174ef1b9accc21c48be08` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-succ-left-eq-ioc--c1d8bc1f61d461c313acaae4.md) | 86 | `result-track:c1d8bc1f61d461c313acaae45d196e7202da05e0a6d90f57c792ac08681aecfc` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/icc-succ-left-eq-ioc--7b4fdec82079cb0d50154984.md) | 97 | `result-track:7b4fdec82079cb0d50154984f2f8ba21bc69e9a1c8e21aee335d1a68d1b87338` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ico-succ-right-eq-icc--5852c4a3a61ea5e5818e1993.md) | 98 | `result-track:5852c4a3a61ea5e5818e199347e55d0055a18990b46a79d549f249df4029b587` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioo-succ-right-eq-ioc--d7ba6466db1ecd65aa39435e.md) | 99 | `result-track:d7ba6466db1ecd65aa39435e6461c30178016313f1c99b635bf065e041b45079` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ico-succ-succ-eq-ioc--85a869ecd6061f4fa10dfe7d.md) | 100 | `result-track:85a869ecd6061f4fa10dfe7d98e10abd9eab0a9008f1b5560e93004deff0ff4b` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-right-eq-ico-succ--2e35139c3ee1d023afc43baa.md) | 104 | `result-track:2e35139c3ee1d023afc43baa18b1e0d5a4ed0fd385226cd92a51161169336cb1` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-right-eq-ioc-succ--eca2968b5af736b72cead800.md) | 107 | `result-track:eca2968b5af736b72cead800c621c414f4b34309c5c56c9757da4e6a99f3a529` |
| 18 | `lemma` | [Ioc_pred_right_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioc-pred-right-eq-ioo--9f0f8e7931a7730679ef7a57.md) | 121 | `result-track:9f0f8e7931a7730679ef7a57ec1b07df9d1ee3a66787ea87b27d491308d3e861` |
| 19 | `lemma` | [Icc_pred_right_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/icc-pred-right-eq-ico-of-not-ismin--d2ef1b1795342613b209d35b.md) | 124 | `result-track:d2ef1b1795342613b209d35bc3e0313dd4edf25e967f61e5f87cbc26912695e7` |
| 20 | `lemma` | [Ioc_pred_left_eq_Icc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioc-pred-left-eq-icc-of-not-ismin--d3ec7606976bc9e5819149e6.md) | 127 | `result-track:d3ec7606976bc9e5819149e6d41aa0a9abf26052793511d08779b0a6819cd145` |
| 21 | `lemma` | [Ioo_pred_left_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioo-pred-left-eq-ico-of-not-ismin--aca79e82c7902f5b1a076ce1.md) | 130 | `result-track:aca79e82c7902f5b1a076ce1b4f882c3405d0ae79c0541e55c2f68dad830b460` |
| 22 | `lemma` | [Ioc_pred_pred_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioc-pred-pred-eq-ico-of-not-ismin--e8e34202c975f077a73f3d23.md) | 136 | `result-track:e8e34202c975f077a73f3d2360d024a817646d3cb31faf7388e49861728ecae1` |
| 23 | `lemma` | [insert_Icc_pred_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-icc-pred-right-eq-icc--a5a46adf73558c9493f6c833.md) | 142 | `result-track:a5a46adf73558c9493f6c833023873da2028bbca3bc48d6111b7eb72b71e8280` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-icc-left-eq-icc-pred--18339d5baa7102e021197ba4.md) | 145 | `result-track:18339d5baa7102e021197ba4f39da307df9a67f2a69038f0603a1557b93f94e3` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-left-eq-ioc-pred-of-not-ismin--de14a9bf3bfa4ed00a8c9e7b.md) | 148 | `result-track:de14a9bf3bfa4ed00a8c9e7b3a08de40da0c6e73f68a0aca71ef8fcef3e904ae` |
| 26 | `lemma` | [insert_Ioc_pred_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-pred-right-eq-ioc--3e3b6e27a0fa850e76923cbb.md) | 152 | `result-track:3e3b6e27a0fa850e76923cbb0858518fb3edaccfc1223d939886301051f11c34` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-left-eq-ico-pred-of-not-ismin--2f2168e0ae8b364e0495f9dc.md) | 155 | `result-track:2f2168e0ae8b364e0495f9dc1b726fa461e8475bb25fa200c41f7aef50374673` |
| 28 | `lemma` | [insert_Ico_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-pred-right-eq-ico--c032d2e895f75f7cf2880554.md) | 159 | `result-track:c032d2e895f75f7cf2880554cc8985b25cc0b3573dacdd0b4e20dff51bada018` |
| 29 | `lemma` | [Icc_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/icc-pred-right-eq-ico--9cd4570e352f7f51fe291fbe.md) | 170 | `result-track:9cd4570e352f7f51fe291fbeb540b86723674c3f3668882bfb8d0bb3b1bc9441` |
| 30 | `lemma` | [Ioc_pred_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioc-pred-left-eq-icc--3a18801439e53c895473107e.md) | 171 | `result-track:3a18801439e53c895473107eab88ec1a054f439ddbbd277d5dcf82fa1bd9709d` |
| 31 | `lemma` | [Ioo_pred_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioo-pred-left-eq-ico--9ca1906ab633c4fe7f73ea40.md) | 172 | `result-track:9ca1906ab633c4fe7f73ea40484aae18fd2c0a6e7d3f8e27eccc708879844529` |
| 32 | `lemma` | [Ioc_pred_pred_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioc-pred-pred-eq-ico--d836a013cce3ea63f7fae2a7.md) | 173 | `result-track:d836a013cce3ea63f7fae2a74d59f764352598753cd6754dafea3b1cf70474a3` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ioc-left-eq-ioc-pred--cd5aa4f420947091b846e1fc.md) | 179 | `result-track:cd5aa4f420947091b846e1fc01bb799ee57e89d5c966550c63de575858a3372b` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/insert-ico-left-eq-ico-pred--8f884d8efa3f841155d69edc.md) | 182 | `result-track:8f884d8efa3f841155d69edc6663be5c24ce31787aec6b9cbbaf77bae80d8213` |
| 35 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/icc-succ-pred-eq-ioo--fb66646097c0fa0ac060cc47.md) | 190 | `result-track:fb66646097c0fa0ac060cc47735ef66bdf3c721e9f65a6b1dd7f0c12f33a70be` |
| 36 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/iio-succ-eq-iic-of-not-ismax--396516080f12718ff24ed0d4.md) | 204 | `result-track:396516080f12718ff24ed0d4f71d0e5583c88f3ba0c13d7781269090ddb027df` |
| 37 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/iio-succ-eq-iic--fce682e269b498b1d0e19473.md) | 209 | `result-track:fce682e269b498b1d0e194735567748238f1430780fe6b2ee5d6239bd49ee7d5` |
| 38 | `lemma` | [Iic_pred_eq_Iio_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/iic-pred-eq-iio-of-not-ismin--f754cbaf97986fc2dc8b2746.md) | 216 | `result-track:f754cbaf97986fc2dc8b27468892c4cb14b0a3b49465d3cfd8e79a73ad387d38` |
| 39 | `lemma` | [Iic_pred_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/iic-pred-eq-iio--f41a04dd0182dd9f3ad6b52b.md) | 221 | `result-track:f41a04dd0182dd9f3ad6b52b275aaea89766d1ff46ac37abd813e1542919adeb` |
| 40 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ici-succ-eq-ioi-of-not-ismax--fc69dd1d153cb71562fddcb7.md) | 234 | `result-track:fc69dd1d153cb71562fddcb74727323c40f7feae8cb2210989253ec79e347a52` |
| 41 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ici-succ-eq-ioi--a82dcceb86e74960a6871bc9.md) | 239 | `result-track:a82dcceb86e74960a6871bc96d3c8dd9b561b4a7cecee164451fc5cda31deeb5` |
| 42 | `lemma` | [Ioi_pred_eq_Ici_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioi-pred-eq-ici-of-not-ismin--10bf6181032231dc5e96327c.md) | 246 | `result-track:10bf6181032231dc5e96327cac040e08cf8d865fc7650b67c67ad45b5555149d` |
| 43 | `lemma` | [Ioi_pred_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variante5e6809ba53adb840623448d67d17a4dc62fc86c9f3d61666cbf9927c17d2aff.lean/declarations/ioi-pred-eq-ici--256772a39765e3229391d455.md) | 251 | `result-track:256772a39765e3229391d4559b0916df5e63adb397ab39e81135e6f55a6b24aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
