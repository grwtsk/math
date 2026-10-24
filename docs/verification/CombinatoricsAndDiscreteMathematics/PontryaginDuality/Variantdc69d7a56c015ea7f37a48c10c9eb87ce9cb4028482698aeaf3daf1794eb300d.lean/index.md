# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PontryaginDuality.Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "822dc3b8ead8313ed51f1a1b7e4323d4e5a7a2c6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `822dc3b8ead8313ed51f1a1b7e4323d4e5a7a2c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ModEq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zmod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod--cbab9cb6c50dfff4af235163.md) | 55 | `declaration-track:cbab9cb6c50dfff4af2351633f12135465a1f8b7ad5aeecdece10450b2bd8753` |
| 2 | `lemma` | [zmod_intCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod-intcast--d94ecf461e0ed99019dbc681.md) | 59 | `result-track:d94ecf461e0ed99019dbc68149897dc7f03d74ba0cc086423911ecbb82fba6c2` |
| 3 | `lemma` | [zmod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod-zero--da7b8ff1783d835799bbde39.md) | 63 | `result-track:da7b8ff1783d835799bbde39f61861ceef386de41509869478be141eea613799` |
| 4 | `lemma` | [zmod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod-add--82c2158bca9ca9d117fcbafb.md) | 68 | `result-track:82c2158bca9ca9d117fcbafbe3326c21514662b27e72661acfa803bf5882f117` |
| 5 | `lemma` | [zmod_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod-injective--09a606eab4a4dd989979917c.md) | 71 | `result-track:09a606eab4a4dd989979917cc3725d0e47749b4da3148052b09a8e4d10edd028` |
| 6 | `lemma` | [zmod_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmod-inj--e50764d4791bfa66c5318f21.md) | 79 | `result-track:e50764d4791bfa66c5318f211f9f87029e67c3e13f940612db35ccf2a2b51a8f` |
| 7 | `def` | [zmodHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmodhom--5ec8fabb7fbc1befb4f0e96b.md) | 82 | `declaration-track:5ec8fabb7fbc1befb4f0e96bef39b8a4df9347027063c7f917f4e1cadced3f65` |
| 8 | `def` | [mkZModAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/mkzmodaux--7ee15e6452c69ae37b035547.md) | 88 | `declaration-track:7ee15e6452c69ae37b035547917c8863ba0e6e3dcc2598aa2d1557f9bbc1eef5` |
| 9 | `lemma` | [mkZModAux_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/mkzmodaux-injective--42c592a833bea50340954da9.md) | 92 | `result-track:42c592a833bea50340954da9bd3b52af60518f335e4b6d1ae1ffca1fcd3df70b` |
| 10 | `def` | [circleEquivComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/circleequivcomplex--cd6fe37999129dc18bb94297.md) | 99 | `declaration-track:cd6fe37999129dc18bb9429722ef05f51e034d22e6caddd99acb76df83106edc` |
| 11 | `lemma` | [card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/card-eq--0375a8a2c165a84a19388000.md) | 109 | `result-track:0375a8a2c165a84a19388000663838b7819fc76f0a1945f588c5bb85b1082f6b` |
| 12 | `def` | [zmodAddEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmodaddequiv--fedb04a0abe5d282467f5cd6.md) | 120 | `declaration-track:fedb04a0abe5d282467f5cd652c810c5e783207c0cccf4c9cf423edb1e0c3e39` |
| 13 | `lemma` | [zmodAddEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/zmodaddequiv-apply--26da5fd3b972491d0f34ce86.md) | 126 | `result-track:26da5fd3b972491d0f34ce86371dc73a8a2278da1b5461f144365269a5c40ae7` |
| 14 | `def` | [complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/complexbasis--09219c48c179928d411c5929.md) | 133 | `declaration-track:09219c48c179928d411c5929d6bd2a13d935318080b7a1a4665c4ce6280200b4` |
| 15 | `lemma` | [coe_complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/coe-complexbasis--bafac36e80900d0044083e61.md) | 138 | `result-track:bafac36e80900d0044083e61131d9bf6f28b7a6d7556e01a6802880c83de9709` |
| 16 | `lemma` | [complexBasis_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/complexbasis-apply--e1705debba409e04e152bb32.md) | 144 | `result-track:e1705debba409e04e152bb322f8e38a32e670a6a80978bf53879cc1a17099a8c` |
| 17 | `lemma` | [exists_apply_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/exists-apply-ne-zero--559d21b21dff045fbf50d3cf.md) | 146 | `result-track:559d21b21dff045fbf50d3cf55803d020df89ad2b8804839e02a558ab414efe2` |
| 18 | `lemma` | [forall_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/forall-apply-eq-zero--59ebed5bb785f4ea7e70e1f8.md) | 159 | `result-track:59ebed5bb785f4ea7e70e1f8509c924690a5e3440aa4d5f799e92dfca7efffd6` |
| 19 | `lemma` | [doubleDualEmb_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-injective--41d8c2d49296d59583ed4a97.md) | 162 | `result-track:41d8c2d49296d59583ed4a979700e6cb7a98a9fba85c71893bb5075790eddec5` |
| 20 | `lemma` | [doubleDualEmb_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-bijective--15d25f80635c3737cee992e6.md) | 166 | `result-track:15d25f80635c3737cee992e61a51e6b190e2b3ff2d048d931f1f592e5d13396c` |
| 21 | `lemma` | [doubleDualEmb_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-inj--da5a5787c7ce738eb9164318.md) | 172 | `result-track:da5a5787c7ce738eb9164318a4a2ac7a07730b3900c4b2d6586399aa999db137` |
| 22 | `lemma` | [doubleDualEmb_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-eq-zero--a9f4eb6da216a3fc869ab116.md) | 175 | `result-track:a9f4eb6da216a3fc869ab11698455e99899a8de0606558e4841eb812751227bf` |
| 23 | `lemma` | [doubleDualEmb_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-ne-zero--46f16e36cb71234cade0d86d.md) | 178 | `result-track:46f16e36cb71234cade0d86dc90197a905dcf4207268554961d58f2378150cfc` |
| 24 | `def` | [doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualequiv--bfa6d7622f3694e896076d7f.md) | 182 | `declaration-track:bfa6d7622f3694e896076d7f8acb68577787b124cc7c13928f564929cfa9ceb7` |
| 25 | `lemma` | [coe_doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/coe-doubledualequiv--47ff797c6d216c918d777af0.md) | 185 | `result-track:47ff797c6d216c918d777af01776bcff7dddf8f058d85cbd75b78d230b3bc93b` |
| 26 | `lemma` | [doubleDualEmb_doubleDualEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualemb-doubledualequiv-symm-apply--bb5452f324670187ce09d434.md) | 187 | `result-track:bb5452f324670187ce09d4343fcff99c069d8d14bdcc6c2caee389d588463367` |
| 27 | `lemma` | [doubleDualEquiv_symm_doubleDualEmb_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/doubledualequiv-symm-doubledualemb-apply--c83fc54f2ca017818e7794bb.md) | 191 | `result-track:c83fc54f2ca017818e7794bb1c54c26a250748e5df30048b086a59c7af30fe5f` |
| 28 | `lemma` | [sum_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/sum-apply-eq-ite--739435b039d492393f89b6d6.md) | 196 | `result-track:739435b039d492393f89b6d68c3e79ebcddcaa3ba97f0cb80f67cd39696b4b9c` |
| 29 | `lemma` | [expect_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/expect-apply-eq-ite--178d4128e8087962de5dd213.md) | 200 | `result-track:178d4128e8087962de5dd2136b1d48c2921f422e544d1147fa036630fd0d927a` |
| 30 | `lemma` | [sum_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/sum-apply-eq-zero-iff-ne-zero--c9a64450cb8945375e987c04.md) | 204 | `result-track:c9a64450cb8945375e987c046e0edbf2511b69b5bdd789c8f973409ca12986b4` |
| 31 | `lemma` | [sum_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/sum-apply-ne-zero-iff-eq-zero--3a840a07a715eb7007d94001.md) | 210 | `result-track:3a840a07a715eb7007d94001f34bbae7abf305345daead3a4b3321d1fbabb488` |
| 32 | `lemma` | [expect_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/expect-apply-eq-zero-iff-ne-zero--efcd1262bbb40978ec1d7d24.md) | 213 | `result-track:efcd1262bbb40978ec1d7d24dc0f8b3717b084846baa63248fd2a403e2ca43a9` |
| 33 | `lemma` | [expect_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantdc69d7a56c015ea7f37a48c10c9eb87ce9cb4028482698aeaf3daf1794eb300d.lean/declarations/expect-apply-ne-zero-iff-eq-zero--8da6bf141aa61cd010de1648.md) | 218 | `result-track:8da6bf141aa61cd010de1648b32a126db108e7086c0c9c9b2347406d6e77ef25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
