# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bcb70192a84359815c44e513b80041ea4334461",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bcb70192a84359815c44e513b80041ea4334461`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/one--91dc752bd74c68e5b12a292d.md) | 57 | `declaration-track:91dc752bd74c68e5b12a292ddf18d119fe994a7c1b7aaca96a2060944da8f4e6` |
| 2 | `lemma` | [one_eq_mrange](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/one-eq-mrange--2d0c83bf0e5aecc14bf76851.md) | 61 | `result-track:2d0c83bf0e5aecc14bf76851b88df0aa50c7801d3ea0755827873041e3fcd754` |
| 3 | `lemma` | [natCast_mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/natcast-mem-one--5d37e070153b7a56dcfc122f.md) | 63 | `result-track:5d37e070153b7a56dcfc122fc28963ee7df525734926db5ae3836f327ce20b8d` |
| 4 | `lemma` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mem-one--f180a28ff9fe7478545aa1d2.md) | 65 | `result-track:f180a28ff9fe7478545aa1d2bd7a980e81c09a6fd0f5882e37755fce078e4366` |
| 5 | `lemma` | [one_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/one-eq-closure--1d83a10fae78308a26aec1d6.md) | 67 | `result-track:1d83a10fae78308a26aec1d652238abc954454a5aab03efc0db4386de587ae92` |
| 6 | `lemma` | [one_eq_closure_one_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/one-eq-closure-one-set--b4f75a31bb7e05dc37458fc1.md) | 70 | `result-track:b4f75a31bb7e05dc37458fc1a0f3c941ab42736b1a67a6444864e595a2354f0f` |
| 7 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul--f36019fbcabed997c85ecdcf.md) | 79 | `declaration-track:f36019fbcabed997c85ecdcf94ad0893f557099e86740b0dd9528c4b0ec263df` |
| 8 | `lemma` | [smul_mem_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-mem-smul--edb6ef620a5cb236da23ee75.md) | 86 | `result-track:edb6ef620a5cb236da23ee7537f26396291972ca1cb526e3fcf32c3b7f8eb4e1` |
| 9 | `lemma` | [smul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-le--2a5d9f0a52b8942854d5eb92.md) | 89 | `result-track:2a5d9f0a52b8942854d5eb92793543b324d51b69b66627051a4a4286d1708048` |
| 10 | `lemma` | [smul_induction_on](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-induction-on--85e286b3f5e67d33d5620713.md) | 94 | `result-track:85e286b3f5e67d33d5620713219052f975f03b775eb07f2fa20340b15c4f82bd` |
| 11 | `lemma` | [addSubmonoid_smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/addsubmonoid-smul-bot--ce8405f4e910457fd2c6ebc1.md) | 100 | `result-track:ce8405f4e910457fd2c6ebc155b5cfa2b37a48f03f4e29f45b764818d9ab68f2` |
| 12 | `lemma` | [smul_le_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-le-smul--6051e0d8ece0c1fd9d2bc690.md) | 104 | `result-track:6051e0d8ece0c1fd9d2bc690b77d775e3abf56118077a6d9bcd27253bab947e1` |
| 13 | `lemma` | [smul_le_smul_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-le-smul-left--2d3111b4c6353a0588fb7642.md) | 107 | `result-track:2d3111b4c6353a0588fb7642099011f1468165a90dd0cba90d43f0400a1bc0b5` |
| 14 | `lemma` | [smul_le_smul_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-le-smul-right--1a784f702d4e8cfe7d079d22.md) | 108 | `result-track:1a784f702d4e8cfe7d079d22dfbda4fad4f25b671df54d39030a5f8da0440271` |
| 15 | `lemma` | [smul_subset_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-subset-smul--cd8fa9fc0920aeb475c1b29a.md) | 110 | `result-track:cd8fa9fc0920aeb475c1b29a746e1adab29337ac4d5fc33ea43f7848a73f5d1c` |
| 16 | `lemma` | [addSubmonoid_smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/addsubmonoid-smul-sup--b8aa5def0444e61b9d927960.md) | 113 | `result-track:b8aa5def0444e61b9d9279602961bad60d00238f19eaa0aedc41c90bd588ffe8` |
| 17 | `lemma` | [smul_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/smul-isup--e1e26f3096f37c2c5bc144e0.md) | 125 | `result-track:e1e26f3096f37c2c5bc144e003eca28b518d6e3747a0ece5fa9d526feb5d41a2` |
| 18 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul--4b6765b6554b4b0b88d168b0.md) | 138 | `declaration-track:4b6765b6554b4b0b88d168b033c336cadb3265cd6a2e5714869b6625d23efc5a` |
| 19 | `lemma` | [mul_mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-mem-mul--5b24c3967e4e457a5fd92ed2.md) | 142 | `result-track:5b24c3967e4e457a5fd92ed290fe95fa067cfdea978bd5a50de01695d430bf83` |
| 20 | `lemma` | [mul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-le--70ef3cab17a04bce8e298ba9.md) | 144 | `result-track:70ef3cab17a04bce8e298ba9091fa4f3eb39253b312261cb3b5332f7d503b19d` |
| 21 | `lemma` | [mul_induction_on](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-induction-on--4bf04ec8b4dedc592a67c6ae.md) | 147 | `result-track:4bf04ec8b4dedc592a67c6ae8f466ce2945a3defc7e367a27af5dd3922fdac1a` |
| 22 | `lemma` | [closure_mul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/closure-mul-closure--ce8e5e2313fa60b02d02802f.md) | 152 | `result-track:ce8e5e2313fa60b02d02802f2bcd7b745a510e4a54d1f29d8033830f2710aab4` |
| 23 | `lemma` | [mul_eq_closure_mul_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-eq-closure-mul-set--7c2340bb9ed12176c2835f33.md) | 165 | `result-track:7c2340bb9ed12176c2835f334b7fc1e5a2532d3ad92642fd515adee8a38e9460` |
| 24 | `lemma` | [mul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-bot--db62a333a759acb2e4877d93.md) | 168 | `result-track:db62a333a759acb2e4877d93c50840ad61dc733fe6be0cf8020888011cf3a10f` |
| 25 | `lemma` | [bot_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/bot-mul--dec2916f6e37fa8e8d4a2e3b.md) | 172 | `result-track:dec2916f6e37fa8e8d4a2e3bd914f5eb9587d30bd509d27d1ff4b85a407cd16f` |
| 26 | `lemma` | [mul_le_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-le-mul--2e0a466000a345c3a851b6a9.md) | 177 | `result-track:2e0a466000a345c3a851b6a9f626b56eade4536edadcb5596910fbf2fff7c4a1` |
| 27 | `lemma` | [mul_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-le-mul-left--8c985ff0fb677ffe76a2c901.md) | 179 | `result-track:8c985ff0fb677ffe76a2c901ea93fd9f6d9870fd2cd9d4d621db34a38fc22c29` |
| 28 | `lemma` | [mul_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-le-mul-right--f91248c8aa74b8b3d95c4b16.md) | 180 | `result-track:f91248c8aa74b8b3d95c4b16176b5029651f3c9294aea6d7428a68472e51999a` |
| 29 | `lemma` | [mul_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-subset-mul--5470185a853e6dcc72a2c822.md) | 182 | `result-track:5470185a853e6dcc72a2c822c7d519e019519ca253c220fc8099b5865b7c7138` |
| 30 | `lemma` | [mul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-sup--7cc0643a8757b245bd798063.md) | 184 | `result-track:7cc0643a8757b245bd798063532ed3c548eacdb0570177774f36576d068c3df0` |
| 31 | `lemma` | [sup_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/sup-mul--314ef35e67ce72a74d1dc987.md) | 187 | `result-track:314ef35e67ce72a74d1dc987fed1d7ee590542a95a1e85170fdf0a669754118d` |
| 32 | `lemma` | [iSup_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/isup-mul--0e5cc8fc522ff73ddef2190b.md) | 196 | `result-track:0e5cc8fc522ff73ddef2190b2a80b8bbb9a6d779227dc080521669d8f570bf3e` |
| 33 | `lemma` | [mul_iSup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-isup--40b4620cb5a1ffaee424ee09.md) | 202 | `result-track:40b4620cb5a1ffaee424ee0924d951302e4354dbcdeb7e3b80ef28d461253f7e` |
| 34 | `lemma` | [mul_comm_of_commute](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/mul-comm-of-commute--6ba8f922420be0948e5e58f6.md) | 205 | `result-track:6ba8f922420be0948e5e58f6a5250f9d0068897440684e6d5d332bb5c1e047f9` |
| 35 | `def` | [hasDistribNeg](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/hasdistribneg--f9696894b978f6a9e3b19e54.md) | 217 | `declaration-track:f9696894b978f6a9e3b19e54a14df6e0fc9cb7dc4fc6b7cdd25c3753504eb077` |
| 36 | `def` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/muloneclass--b8fe0a0b04791f9ffbd88b78.md) | 239 | `declaration-track:b8fe0a0b04791f9ffbd88b7812c1c1abd9e41e04fb9e8c8746a47ea94ede02ba` |
| 37 | `def` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/semigroup--fc5f42d8722a38041ae398ab.md) | 251 | `declaration-track:fc5f42d8722a38041ae398ab8a5373a913801d841645a895231cb9a60b0f2baf` |
| 38 | `def` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/monoid--5323cc82de5b72d91003a14c.md) | 269 | `declaration-track:5323cc82de5b72d91003a14c885f3472971e6c2dcbc267c181bb6cf4c9e8a3f4` |
| 39 | `lemma` | [closure_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/closure-pow--e65e577b369e69b197890fe4.md) | 273 | `result-track:e65e577b369e69b197890fe437e0a59f98cfc811f6fc0963622d82c129ca02ff` |
| 40 | `lemma` | [pow_eq_closure_pow_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/pow-eq-closure-pow-set--857e8703c0f2d4d8532e2013.md) | 277 | `result-track:857e8703c0f2d4d8532e2013c49c07075db5bda922ff5e7959c8bee3870c73fd` |
| 41 | `lemma` | [pow_subset_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/declarations/pow-subset-pow--ce855e6b6f59794365dc952f.md) | 281 | `result-track:ce855e6b6f59794365dc952fce8e92fddad143e1a93ec2950fe3a1feaf095021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
