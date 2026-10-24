# Verification target: GRWTSK.Analysis.ComplexAnalysis.Linear.Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f29a895e7f0293f071b37c2ed3928105db29198d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f29a895e7f0293f071b37c2ed3928105db29198d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.CPolynomialDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fpowerSeries_radius](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseries-radius--c83eb49115b9d4892b995270.md) | 31 | `result-track:c83eb49115b9d4892b995270e5bdc49f3719359943f09f3fc9afaccb59ae23a6` |
| 2 | `theorem` | [hasFiniteFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/hasfinitefpowerseriesonball--b98dc08816ac37adbe0f52f8.md) | 34 | `result-track:b98dc08816ac37adbe0f52f8d01413a3ee6a2f09542984e277429e6f08afd4aa` |
| 3 | `theorem` | [hasFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/hasfpowerseriesonball--9f926babd139ba5fed229b5b.md) | 46 | `result-track:9f926babd139ba5fed229b5b6b974da662b71fae3ad851dcfd24ae157b717f96` |
| 4 | `theorem` | [hasFPowerSeriesAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/hasfpowerseriesat--040996668784341ef2728de6.md) | 50 | `result-track:040996668784341ef2728de686bc64dec2bf8c21a9595e4642e5aaf484c01cc5` |
| 5 | `theorem` | [cpolynomialAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/cpolynomialat--0abfe7dfd87383f5e1dfc2d7.md) | 54 | `result-track:0abfe7dfd87383f5e1dfc2d752c87771dae06f93c91d31bb8111d833b42f3c1d` |
| 6 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat--88ae40f23ad05b0c80534e24.md) | 57 | `result-track:88ae40f23ad05b0c80534e24372953f1832dfddaa6f06947b7f353f0c13fc829` |
| 7 | `theorem` | [cpolynomialOn](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/cpolynomialon--f70c64fd771d5e286244fe90.md) | 60 | `result-track:f70c64fd771d5e286244fe90aac9e224bd8e66f0695cb04d619181ae903f829e` |
| 8 | `theorem` | [analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd--f93ade3ce2fba2d1b7d42299.md) | 66 | `result-track:f93ade3ce2fba2d1b7d42299de9bcc4cc05bc0e4e79531152be4ca045fdc8dc1` |
| 9 | `theorem` | [analyticWithinAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat--059a60bc6655e30d6838cd03.md) | 69 | `result-track:059a60bc6655e30d6838cd031af83cdbe35865d1c0f19afe8367cab1afc9fa6b` |
| 10 | `theorem` | [analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon--7e158610d7158ff1730578f1.md) | 72 | `result-track:7e158610d7158ff1730578f1a80932e663942de96aa278269ffaba66897b1695` |
| 11 | `def` | [uncurryBilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/uncurrybilinear--e5b846b2849c4539451d95e6.md) | 79 | `declaration-track:e5b846b2849c4539451d95e6e159e4cec8e7d94d085c06da4f4b0edca9c426dc` |
| 12 | `theorem` | [uncurryBilinear_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/uncurrybilinear-apply--5ef638e371789bb202108afe.md) | 85 | `result-track:5ef638e371789bb202108afec63c9e7a75a623ad768a062561584f8c42e77b94` |
| 13 | `def` | [fpowerSeriesBilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear--506bc71fbff1385cee77ceb9.md) | 90 | `declaration-track:506bc71fbff1385cee77ceb97cf2f51b81ea057ed5072a137016aff48b7a7c7c` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear-apply-zero--5687b3449df3357ab7c7d398.md) | 97 | `result-track:5687b3449df3357ab7c7d39812c685af2543458f09e47a50749da494db71b27e` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_one](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear-apply-one--362638bf2a264d66d92cae42.md) | 102 | `result-track:362638bf2a264d66d92cae422f88d256607a0f589e3e193b737689c963379189` |
| 16 | `theorem` | [fpowerSeriesBilinear_apply_two](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear-apply-two--c7350922f2c4d1eae16605c9.md) | 107 | `result-track:c7350922f2c4d1eae16605c9e5622101ab200bc9656d1365146581afc68edc51` |
| 17 | `theorem` | [fpowerSeriesBilinear_apply_add_three](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear-apply-add-three--8ba636944dcba77912bd4220.md) | 112 | `result-track:8ba636944dcba77912bd422066422043a988f99d1f3e3a73a8d7f62917901656` |
| 18 | `theorem` | [fpowerSeriesBilinear_radius](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/fpowerseriesbilinear-radius--8e81ba3a8be65f1b5c6dfe82.md) | 117 | `result-track:8e81ba3a8be65f1b5c6dfe821ee26d885451ffb4aaeed752d7c082661fa32f00` |
| 19 | `theorem` | [hasFPowerSeriesOnBall_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/hasfpowerseriesonball-bilinear--967c23d94c5fb8cca502275e.md) | 121 | `result-track:967c23d94c5fb8cca502275ec6b2e36234e6a07c96542d2f6b29b48afb2a2151` |
| 20 | `theorem` | [hasFPowerSeriesAt_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/hasfpowerseriesat-bilinear--a20d5797375737af7ee27dea.md) | 131 | `result-track:a20d5797375737af7ee27dea863c2b536fa99fa9aafbc2c73113f3b6b630a0f1` |
| 21 | `theorem` | [analyticAt_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat-bilinear--c28ca519af730762b667c5db.md) | 135 | `result-track:c28ca519af730762b667c5db83e0696f7d0b941445fab8b101bf1def6eb38157` |
| 22 | `theorem` | [analyticWithinAt_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat-bilinear--dda88f2436dd677950fa40d4.md) | 139 | `result-track:dda88f2436dd677950fa40d460d7a9a3845a2f0c42374bbb7850d37e90d74e0b` |
| 23 | `theorem` | [analyticOnNhd_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd-bilinear--e1c237cb860c099cf1c9d756.md) | 143 | `result-track:e1c237cb860c099cf1c9d756caa57c0a23e412139f0a388b752880c641e29e2d` |
| 24 | `theorem` | [analyticOn_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon-bilinear--180887243d11abfadcfb9b75.md) | 147 | `result-track:180887243d11abfadcfb9b751a0e3ba270636cdbb89961438bcf6aed5e717b43` |
| 25 | `lemma` | [analyticAt_id](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat-id--a0904b4a6eb6001b3b2ef984.md) | 156 | `result-track:a0904b4a6eb6001b3b2ef984597caa36e08984150067f0b90a4d1ba7b62f6583` |
| 26 | `lemma` | [analyticWithinAt_id](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat-id--4ebf13c22141b6abe04560c6.md) | 159 | `result-track:4ebf13c22141b6abe04560c6a3b396274427668ae8cbb2bb7858a945fc667982` |
| 27 | `theorem` | [analyticOnNhd_id](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd-id--db13c70d60bf60578f72a3da.md) | 163 | `result-track:db13c70d60bf60578f72a3dac32b70704568502427512d50898a327936e0c586` |
| 28 | `theorem` | [analyticOn_id](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon-id--cd1fc2ba390cb16be815f4f4.md) | 166 | `result-track:cd1fc2ba390cb16be815f4f4a0cf56ac18f24306c371683d1854ad0db1d71730` |
| 29 | `theorem` | [analyticAt_fst](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat-fst--733fe784d33561989a246222.md) | 170 | `result-track:733fe784d33561989a24622231da94d7eaf5acbade66f6a887ce4db758fe6351` |
| 30 | `theorem` | [analyticWithinAt_fst](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat-fst--21e3523f4fa007eb9412d42e.md) | 173 | `result-track:21e3523f4fa007eb9412d42ee3951804ed21270c23ee0659366f6b8f939ee75b` |
| 31 | `theorem` | [analyticAt_snd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat-snd--e211ccd504798511caa932d4.md) | 177 | `result-track:e211ccd504798511caa932d4d3f63ad88762bed83bcba306cf398d208c73e0bd` |
| 32 | `theorem` | [analyticWithinAt_snd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat-snd--ffd3db6b7c3461162bf5429e.md) | 180 | `result-track:ffd3db6b7c3461162bf5429e085635789efd20771c723e7a930908756e80c6b6` |
| 33 | `theorem` | [analyticOnNhd_fst](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd-fst--b08c44d19909ff3468de5ff5.md) | 184 | `result-track:b08c44d19909ff3468de5ff5b5b8a42a617038ad1040f807d78ca76abb8ffa5a` |
| 34 | `theorem` | [analyticOn_fst](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon-fst--4aff84000ebf1a976b00b4c4.md) | 187 | `result-track:4aff84000ebf1a976b00b4c4ab92cfc3584c5b1d5ff1bd8363a5818395549a61` |
| 35 | `theorem` | [analyticOnNhd_snd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd-snd--62612ddae0a83e9097897e94.md) | 191 | `result-track:62612ddae0a83e9097897e94ca4f728cfb839a87331167f975208201acf1e14c` |
| 36 | `theorem` | [analyticOn_snd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon-snd--c9d300a777281c653f0c18b5.md) | 194 | `result-track:c9d300a777281c653f0c18b53b2e08d3ea2931de2261ccc7e1df4ad86871fa5c` |
| 37 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat--862634c9cc41bc69405f665a.md) | 201 | `result-track:862634c9cc41bc69405f665a91e05d0e43d7b25a45dcdd334307fab9683f3a48` |
| 38 | `theorem` | [analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd--2d54a1395424483dcd3689dc.md) | 204 | `result-track:2d54a1395424483dcd3689dc0b680013e2b53688c486179b74ceec828d425a15` |
| 39 | `theorem` | [analyticWithinAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat--2faeeb2b746a80d0f381fa1f.md) | 207 | `result-track:2faeeb2b746a80d0f381fa1fb2ca10f6643730dafcbca6f4847cd5a73e906c30` |
| 40 | `theorem` | [analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon--b101d1f27c470e8352bcb514.md) | 210 | `result-track:b101d1f27c470e8352bcb5146293a514112d54af0501f00ea18719188dc8d74f` |
| 41 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticat--9cfa7dd52be3f58f1b54ab81.md) | 219 | `result-track:9cfa7dd52be3f58f1b54ab8110c04aaa05bdd5880f600f27f1ec7be783b83e30` |
| 42 | `theorem` | [analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticonnhd--3d827d517fa88dd8f9529958.md) | 222 | `result-track:3d827d517fa88dd8f9529958d07b691863d82e83e0f9bdaf7d3c72a91249d2cd` |
| 43 | `theorem` | [analyticWithinAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticwithinat--c2d0b3c4794b9e0951f510b5.md) | 225 | `result-track:c2d0b3c4794b9e0951f510b578a8979d5eb5917f2538314ba5f60b6572f585d9` |
| 44 | `theorem` | [analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean/declarations/analyticon--76b46fd19a754380cb7b913d.md) | 228 | `result-track:76b46fd19a754380cb7b913d5948f5df878985394a3c4400067326e02d61ddc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
