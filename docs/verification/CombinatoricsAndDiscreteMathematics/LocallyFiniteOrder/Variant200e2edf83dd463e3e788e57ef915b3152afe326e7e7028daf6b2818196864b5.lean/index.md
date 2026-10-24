# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocallyFiniteOrder.Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0675be29429bd3576a788557de7ec9886fdc421e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0675be29429bd3576a788557de7ec9886fdc421e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Finset.card_Ico_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/finset-card-ico-mul-right--875acd5af7f1a96c2183ffac.md) | 44 | `result-track:875acd5af7f1a96c2183ffac6fbea7f39bf258924eafd9ff565aad2d84741c23` |
| 2 | `lemma` | [card_Ico_one_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/card-ico-one-mul--77bca0e14839a896667de008.md) | 58 | `result-track:77bca0e14839a896667de008978b61649ea807dfb27124043835a3266b950b0a` |
| 3 | `def` | [LocallyFiniteOrder.addMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-addmonoidhom--de355d3365fc1eac325846f6.md) | 75 | `declaration-track:de355d3365fc1eac325846f60363cf8248b53a5ef9bf3266c936b85f49000921` |
| 4 | `def` | [LocallyFiniteOrder.orderAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidhom--06b0ae37ddd0559463c62da0.md) | 103 | `declaration-track:06b0ae37ddd0559463c62da0486b8d88a7d698d5987a833541d2afa31e02929a` |
| 5 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_toAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidhom-toaddmonoidhom--dba4d2cf46059b543ba61578.md) | 113 | `result-track:dba4d2cf46059b543ba61578b40c60774b51ac5068d7967b3e2680b14d7b4838` |
| 6 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidhom-apply--ff3402675a2df58b91c8ad49.md) | 117 | `result-track:ff3402675a2df58b91c8ad49e05e577571573aff88c6b978a99e1b13beaadc34` |
| 7 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidhom-strictmono--2fdb152276e5f64fd766d0ba.md) | 120 | `result-track:2fdb152276e5f64fd766d0ba8d6b4e8c07c6e1f05e1f1763ab7cdac07f27ec4f` |
| 8 | `lemma` | [LocallyFiniteOrder.orderAddMonoidHom_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidhom-bijective--18e4686f4d131651b2f91307.md) | 126 | `result-track:18e4686f4d131651b2f913074d7d01aa73f9aaf794e16dc825957512052a7227` |
| 9 | `def` | [LocallyFiniteOrder.orderAddMonoidEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidequiv--fde4c04a2cf0d570facbf163.md) | 153 | `declaration-track:fde4c04a2cf0d570facbf163fcbf18483a7fe6eb7bde8635d7e1de827760df89` |
| 10 | `lemma` | [LocallyFiniteOrder.orderAddMonoidEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-orderaddmonoidequiv-apply--429a6670db927ad5fa337fac.md) | 164 | `result-track:429a6670db927ad5fa337fac8134b4afa817e3c61d450236b6c67e3f155b81aa` |
| 11 | `def` | [LocallyFiniteOrder.orderMonoidEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidequiv--1cd391c2d4e0649582259c63.md) | 169 | `declaration-track:1cd391c2d4e0649582259c6367d3384ad38b64016eecbccd8831ec5c08331db6` |
| 12 | `def` | [LocallyFiniteOrder.orderMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidhom--96977dda5e4aacbb798b0548.md) | 177 | `declaration-track:96977dda5e4aacbb798b0548d1781073132ab29afa37aabe878ab3fa3f7b7ca3` |
| 13 | `lemma` | [LocallyFiniteOrder.orderMonoidHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidhom-strictmono--983d3029e4629c656c41690e.md) | 183 | `result-track:983d3029e4629c656c41690e5d861711c58a25be8aca0c99aa8edde288ce35bf` |
| 14 | `def` | [LocallyFiniteOrder.orderMonoidWithZeroEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidwithzeroequiv--900d10157834e1944ad19ff0.md) | 193 | `declaration-track:900d10157834e1944ad19ff0978709a46e077476e8248a14a684d56baba51ec4` |
| 15 | `def` | [LocallyFiniteOrder.orderMonoidWithZeroHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidwithzerohom--ffce532e0343172e300d377b.md) | 200 | `declaration-track:ffce532e0343172e300d377b6e5d7ffc2c604890c012bcce7ef61b5dc5e90e58` |
| 16 | `lemma` | [LocallyFiniteOrder.orderMonoidWithZeroHom_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/declarations/locallyfiniteorder-ordermonoidwithzerohom-strictmono--3155fb699cbe4cc4a267ccee.md) | 206 | `result-track:3155fb699cbe4cc4a267cceeb0400a39e011e58ad963f7055f3350b6d69306d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
