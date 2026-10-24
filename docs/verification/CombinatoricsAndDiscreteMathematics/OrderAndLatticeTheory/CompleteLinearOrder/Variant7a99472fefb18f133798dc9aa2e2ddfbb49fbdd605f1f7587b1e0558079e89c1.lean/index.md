# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLinearOrder.Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16816b7f097dd6f36a597442e932632d2a9aab71",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16816b7f097dd6f36a597442e932632d2a9aab71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [csSup_mem_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/cssup-mem-of-not-issuccprelimit--f220ba53d3fb7c8301cd5aef.md) | 30 | `result-track:f220ba53d3fb7c8301cd5aef554477625b7a751ebb546ee8407fb087c42cf6ce` |
| 2 | `lemma` | [csInf_mem_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/csinf-mem-of-not-ispredprelimit--a7e27f8b1240f303d95425c6.md) | 36 | `result-track:a7e27f8b1240f303d95425c680cb6495f2fa9d390f5f1d69020739572bfca7e5` |
| 3 | `lemma` | [exists_eq_ciSup_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/exists-eq-cisup-of-not-issuccprelimit--920e38c4f437d5ab44c5c4f7.md) | 42 | `result-track:920e38c4f437d5ab44c5c4f70e4b18169da3b25f0b35ca84a7f5dd865d4943c2` |
| 4 | `lemma` | [exists_eq_ciInf_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/exists-eq-ciinf-of-not-ispredprelimit--f6dd2933f23e08dbd1fcf265.md) | 46 | `result-track:f6dd2933f23e08dbd1fcf265c2993d26737bcee060cd4660be9b05bc1eaae59e` |
| 5 | `lemma` | [IsLUB.mem_of_nonempty_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/islub-mem-of-nonempty-of-not-issuccprelimit--7e4161d205e36162c3125a52.md) | 50 | `result-track:7e4161d205e36162c3125a526f2431e84560de2f05072d8b6bddc3c271b382b7` |
| 6 | `lemma` | [IsGLB.mem_of_nonempty_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/isglb-mem-of-nonempty-of-not-ispredprelimit--081277268cd88b73e88ddbfd.md) | 54 | `result-track:081277268cd88b73e88ddbfd468ade06c72f919d85369c7ed998386c55b4190c` |
| 7 | `lemma` | [IsLUB.exists_of_nonempty_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/islub-exists-of-nonempty-of-not-issuccprelimit--ed6ed58a8f2df17d86e50bb7.md) | 58 | `result-track:ed6ed58a8f2df17d86e50bb763c1a71d2d920a36aafe97d2c15d06a3e879ca78` |
| 8 | `lemma` | [IsGLB.exists_of_nonempty_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/isglb-exists-of-nonempty-of-not-ispredprelimit--abc67f06a869c7c8664e652e.md) | 62 | `result-track:abc67f06a869c7c8664e652e48b78fdf61e732d6c46fc8eae2fd9b288f22174c` |
| 9 | `def` | [ConditionallyCompleteLinearOrder.toSuccOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/conditionallycompletelinearorder-tosuccorder--8d1d1898309af41993bd7c14.md) | 69 | `declaration-track:8d1d1898309af41993bd7c142c2f101be68fa45774850abd2b5a932fb0678412` |
| 10 | `lemma` | [csSup_mem_of_not_isSuccPrelimit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/cssup-mem-of-not-issuccprelimit--449f411f0c47c95ff0f42521.md) | 93 | `result-track:449f411f0c47c95ff0f42521d102e3cfedbfc73e80e2bd75de38919acf59d7d6` |
| 11 | `lemma` | [exists_eq_ciSup_of_not_isSuccPrelimit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/exists-eq-cisup-of-not-issuccprelimit--7216b64ee6f7b7ed4ace1375.md) | 101 | `result-track:7216b64ee6f7b7ed4ace13755536b69085e32bb20bab7a6a0b43797328359676` |
| 12 | `lemma` | [IsLUB.exists_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/islub-exists-of-not-issuccprelimit--be4914710dbaaef18bc0fa6f.md) | 106 | `result-track:be4914710dbaaef18bc0fa6ff5001f7500409851d81d6f3573d095a3b558249a` |
| 13 | `theorem` | [Order.IsSuccPrelimit.sSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/order-issuccprelimit-ssup-iio--be76768ef3b3221e1c4fd1eb.md) | 110 | `result-track:be76768ef3b3221e1c4fd1eb3c0c74829fe031f442dce594fd15f3deb4fe7255` |
| 14 | `theorem` | [Order.IsSuccPrelimit.iSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/order-issuccprelimit-isup-iio--e03205051c7ff1e7b23ec732.md) | 115 | `result-track:e03205051c7ff1e7b23ec732f5d23a76255413c33ebe2a79efb424e0293a194c` |
| 15 | `theorem` | [Order.IsSuccLimit.sSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/order-issucclimit-ssup-iio--8602fa4b3ce48e08239dd322.md) | 118 | `result-track:8602fa4b3ce48e08239dd32294c790e308515f31736d0aec7e955e2925df8fe1` |
| 16 | `theorem` | [Order.IsSuccLimit.iSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/order-issucclimit-isup-iio--afe809e634d5547812475f27.md) | 121 | `result-track:afe809e634d5547812475f27b763b484e96e53f26a527d948b1ed8ef8b40a527` |
| 17 | `theorem` | [sSup_Iio_eq_self_iff_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/ssup-iio-eq-self-iff-issuccprelimit--d21e653d2a87ee5f10caf7cc.md) | 124 | `result-track:d21e653d2a87ee5f10caf7cc5216a3ada470c90da94e37c6ab836c6b7ea0caf2` |
| 18 | `theorem` | [iSup_Iio_eq_self_iff_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/isup-iio-eq-self-iff-issuccprelimit--e461eec61fd70d5622c4b510.md) | 130 | `result-track:e461eec61fd70d5622c4b5102c14e11d59611ebf1d7ffec6719b06750e8a14dc` |
| 19 | `theorem` | [iSup_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/isup-succ--64e2fd49ba4d7b74d3b8c447.md) | 133 | `result-track:64e2fd49ba4d7b74d3b8c447bdcd5c6eebd250ed40e9351c497381023e3e966a` |
| 20 | `lemma` | [sSup_mem_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/ssup-mem-of-not-issuccprelimit--83ab8e92ffdf02e0aaf24204.md) | 147 | `result-track:83ab8e92ffdf02e0aaf242048a7c54939c52f3394864eb5a5b05e3f22b92a761` |
| 21 | `lemma` | [sInf_mem_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/sinf-mem-of-not-ispredprelimit--5a4709a1b3886e3b9caed199.md) | 152 | `result-track:5a4709a1b3886e3b9caed199dc0eadf03f647902caf2ec9b92a9a92e8ab16fa6` |
| 22 | `lemma` | [exists_eq_iSup_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/exists-eq-isup-of-not-issuccprelimit--288758a11c3a707025806b55.md) | 157 | `result-track:288758a11c3a707025806b556bd11b380f25f924f08ce0bc426eb23d87017cef` |
| 23 | `lemma` | [exists_eq_iInf_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/exists-eq-iinf-of-not-ispredprelimit--e9c22e8bb3fb0f201ea2b406.md) | 161 | `result-track:e9c22e8bb3fb0f201ea2b4060e505c053af65980955a601f51419a22c3e8c67e` |
| 24 | `lemma` | [IsGLB.exists_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/declarations/isglb-exists-of-not-ispredprelimit--caa642599190ca254bffd17b.md) | 166 | `result-track:caa642599190ca254bffd17bf9aa4e9bbe6316b4c162367e5cdafd2ed587a9e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
