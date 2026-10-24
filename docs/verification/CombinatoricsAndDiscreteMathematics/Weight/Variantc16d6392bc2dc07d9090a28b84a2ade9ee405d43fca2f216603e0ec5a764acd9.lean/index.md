# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Weight.Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c7faf82e3a88fe7b0d7f00f4a7eab31790126af",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c7faf82e3a88fe7b0d7f00f4a7eab31790126af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Pointwise` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight--1e1a377366ec5352f796d588.md) | 90 | `declaration-track:1e1a377366ec5352f796d588d40286b731f2d2080d8567278af8056c8cb7ac0a` |
| 2 | `theorem` | [weight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-apply--0c32833256a93be183c88c6f.md) | 93 | `result-track:0c32833256a93be183c88c6faecc50f4cd6a51ca875c46d9bd669e79e9709fb4` |
| 3 | `theorem` | [weight_single_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-single-index--f847aa5c0b4036403ce2341d.md) | 96 | `result-track:f847aa5c0b4036403ce2341d6900f953a4392062d21f0306bcffa557d508cc23` |
| 4 | `theorem` | [weight_single_one_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-single-one-apply--02be08f7e0d258bb0e499e15.md) | 100 | `result-track:02be08f7e0d258bb0e499e15916a2cf84e2c68e615de5903d6a9d245429844f4` |
| 5 | `theorem` | [weight_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-single--59159039276a88c701ee4dd5.md) | 104 | `result-track:59159039276a88c701ee4dd536eb7e29b5f6137e2d472182fe59c5625914ffa4` |
| 6 | `theorem` | [weight_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-eq-sum--3b4f5f2be31f9f8d20ddfe75.md) | 108 | `result-track:3b4f5f2be31f9f8d20ddfe75db92f1f55542d4b94d44175dbe3a8fa274d927b3` |
| 7 | `class` | [NonTorsionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/nontorsionweight--94cef804ddea94601766d860.md) | 113 | `declaration-track:94cef804ddea94601766d8608800acb5577767ad79523d020d9e97545006d840` |
| 8 | `theorem` | [nonTorsionWeight_of](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/nontorsionweight-of--0513131ef3c4db9af42a334c.md) | 118 | `result-track:0513131ef3c4db9af42a334c49bdb2c6ea47ddae98c6754a65c40874f10f9944` |
| 9 | `theorem` | [NonTorsionWeight.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/nontorsionweight-ne-zero--f0f171d76069c26ec9f36d3c.md) | 125 | `result-track:f0f171d76069c26ec9f36d3c5bb0315ba491448e0ba98c62d922053078e5a27a` |
| 10 | `lemma` | [weight_sub_single_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-sub-single-add--1124bc1490edc294b68bdb46.md) | 132 | `result-track:1124bc1490edc294b68bdb467ddf77edc15021697efe19675478530750da2e67` |
| 11 | `theorem` | [le_weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/le-weight--9bc57a086f698821b079531e.md) | 142 | `result-track:9bc57a086f698821b079531eb79490c51cd6ef6cfe2485bb28bf5998cf50845c` |
| 12 | `theorem` | [le_weight_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/le-weight-of-ne-zero--f49eec88b05c2146fa423e77.md) | 158 | `result-track:f49eec88b05c2146fa423e7748a2dddf06c19c1e2e71e66afef02e24f988e0dc` |
| 13 | `theorem` | [le_weight_of_ne_zero'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/le-weight-of-ne-zero--57e76a2ab4f0ae61f948298d.md) | 177 | `result-track:57e76a2ab4f0ae61f948298d9cf7213c7883ae682ab3169781f950aa5b8c6238` |
| 14 | `theorem` | [weight_eq_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/weight-eq-zero-iff-eq-zero--41875aaedc28486fa424442e.md) | 181 | `result-track:41875aaedc28486fa424442e5624aa54f88b939ec3d4a5bce8100e73178379e1` |
| 15 | `theorem` | [finite_of_nat_weight_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-nat-weight-le--e4c0100b1984e9a8ee536eba.md) | 195 | `result-track:e4c0100b1984e9a8ee536eba9b586b9c81df5203d28ae2570d257bf95d24d276` |
| 16 | `theorem` | [finite_of_nat_weight_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-nat-weight-lt--3ec01eb65a8e1c9fca6e8293.md) | 211 | `result-track:3ec01eb65a8e1c9fca6e8293f272db5581fd2011ad1a409e4e11b75d4a0db122` |
| 17 | `theorem` | [finite_of_nat_weight_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-nat-weight-eq--67b24ab6f01a1dd6887cb5ca.md) | 215 | `result-track:67b24ab6f01a1dd6887cb5ca0c7fd4d2afabfc36e36c15b01f30192c54ebe1a6` |
| 18 | `def` | [degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree--79029fb8fc72d53d3a042fc5.md) | 224 | `declaration-track:79029fb8fc72d53d3a042fc5a6711ab2f8155c78ae23b8bf90a8f85dbab70f67` |
| 19 | `theorem` | [degree_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-apply--703fa71a0fb43efb52059ae9.md) | 229 | `result-track:703fa71a0fb43efb52059ae9e12f792640d0f01131087b791c7794f43e8adb07` |
| 20 | `theorem` | [degree_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-eq-sum--87e762a67e594ad8a88fbe63.md) | 231 | `result-track:87e762a67e594ad8a88fbe6362388c2636757bc4fa28619aecbe9a3c817f5683` |
| 21 | `theorem` | [degree_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-single--98fdd14a4282570d3bf4a456.md) | 235 | `result-track:98fdd14a4282570d3bf4a4569dd3970e8961f9790b539683478fc2039a3c6214` |
| 22 | `lemma` | [degree_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-eq-zero-iff--144aab3abc8fe3433759e74e.md) | 238 | `result-track:144aab3abc8fe3433759e74e04cfdad5d5a4545252f140ade572ab254a19abff` |
| 23 | `theorem` | [le_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/le-degree--25aa9a100b0aadbfe1e6b0d8.md) | 245 | `result-track:25aa9a100b0aadbfe1e6b0d88a22a61df70c12d82e667b534de065406d086220` |
| 24 | `theorem` | [degree_eq_weight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-eq-weight-one--faede46e52c77e00b7db50d3.md) | 254 | `result-track:faede46e52c77e00b7db50d3ce66136a9a0c1d5f01db0369423e6afc60dccd65` |
| 25 | `theorem` | [finite_of_degree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-degree-le--0e9cf55dd645b0f29885a6a0.md) | 259 | `result-track:0e9cf55dd645b0f29885a6a08b691dfc810d38d2aac595b86159cb55a5c78e2c` |
| 26 | `lemma` | [finite_of_degree_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-degree-lt--38e910ce82c17443c56c7b25.md) | 266 | `result-track:38e910ce82c17443c56c7b254d7a4d53abb33c488cf797a4ba1cf18555c9cb56` |
| 27 | `lemma` | [finite_of_degree_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/finite-of-degree-eq--0f03336a36575727ed6ea32d.md) | 269 | `result-track:0f03336a36575727ed6ea32db3d9ca8508f4edef7ec79f042782cf0388973a5a` |
| 28 | `lemma` | [range_single_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/range-single-one--5bb5c749816eab2ac9ed5367.md) | 272 | `result-track:5bb5c749816eab2ac9ed53673e5185ab4d049b92f2ebced80822da9780b36324` |
| 29 | `theorem` | [degree_mapDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-mapdomain--c40351ed2cd2f81f68b72812.md) | 281 | `result-track:c40351ed2cd2f81f68b72812257504bbd9ad60a2825396c30c9ce43b49526a10` |
| 30 | `theorem` | [degree_comapDomain_le_of_canonicallyOrderedAdd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-comapdomain-le-of-canonicallyorderedadd--8dfd67b158aceb53fb971c39.md) | 290 | `result-track:8dfd67b158aceb53fb971c3936ad1a78eb6d179fed8e11ec0543a006df2d789b` |
| 31 | `lemma` | [degree_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-mono--a6631bd964e91480ce1f67c7.md) | 297 | `result-track:a6631bd964e91480ce1f67c781d26e23a429a47184790eb36c2c4c4c1c216c88` |
| 32 | `lemma` | [exists_le_degree_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/exists-le-degree-eq--01d94dbb9cde47d36db51df4.md) | 302 | `result-track:01d94dbb9cde47d36db51df40b7966abb32ef4179cbe9b4d07906c38a52dcf69` |
| 33 | `lemma` | [degree_preimage_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-preimage-add--844a31163f62840942fd05cd.md) | 313 | `result-track:844a31163f62840942fd05cdf314fe2ff206e38cbe4e8a9e9836e7916e947417` |
| 34 | `lemma` | [degree_preimage_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/degree-preimage-nsmul--500a45af7f47799e9921aeaa.md) | 322 | `result-track:500a45af7f47799e9921aeaaf6232775d7f7c4830a35b30cddc9442d6adb84b3` |
| 35 | `lemma` | [nsmul_single_one_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/nsmul-single-one-image--9b9d5da5f7ed6bd08a1a7ff9.md) | 328 | `result-track:9b9d5da5f7ed6bd08a1a7ff942d02735f681a1b5d6df105a9a7e1fe584bdaa20` |
| 36 | `theorem` | [image_pow_eq_finsuppProd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/declarations/image-pow-eq-finsuppprod-image--d8fc567a36c3b6e910ba5a1b.md) | 344 | `result-track:d8fc567a36c3b6e910ba5a1bdbac2d6365b35213e8cda2aaa77ec0ffa91300d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
