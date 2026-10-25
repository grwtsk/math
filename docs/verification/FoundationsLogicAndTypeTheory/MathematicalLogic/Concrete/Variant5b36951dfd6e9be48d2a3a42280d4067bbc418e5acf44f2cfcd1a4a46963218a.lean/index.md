# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Concrete.Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d90b4452c24e09046210ea07c8be00150d8ad5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d90b4452c24e09046210ea07c8be00150d8ad5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Cycle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.List` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formPerm_disjoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-disjoint-iff--529c4bc17d4ca7e9ac97aad8.md) | 66 | `result-track:529c4bc17d4ca7e9ac97aad8efb3b4f719f6a8e1239484860444b9961bb60af4` |
| 2 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/iscycle-formperm--f7104ecac74f9aa414672243.md) | 82 | `result-track:f7104ecac74f9aa414672243ca275c11b6c26765e141ddbce40bba82c976092f` |
| 3 | `theorem` | [pairwise_sameCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/pairwise-samecycle-formperm--6e44572f3fb3bf4786d53683.md) | 97 | `result-track:6e44572f3fb3bf4786d5368357cd04600d4f86bfb928aa1c340c76c891ccdcf9` |
| 4 | `theorem` | [cycleOf_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/cycleof-formperm--9fdccaacdc88868a2ca8dcba.md) | 105 | `result-track:9fdccaacdc88868a2ca8dcba854a0a00328244ed16e44852a7f89068e29e4b92` |
| 5 | `theorem` | [cycleType_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/cycletype-formperm--cd19d4a7dd088d1de0f3b833.md) | 113 | `result-track:cd19d4a7dd088d1de0f3b833bc86d56ca2a8663a0261dbbf390503d7380be7ac` |
| 6 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-apply-mem-eq-next--f89b1f8198f09ede6c9a5cde.md) | 129 | `result-track:f89b1f8198f09ede6c9a5cde4d12290eb14036afb65d0927f7d3da5a83986980` |
| 7 | `def` | [formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm--0b8c3b52a0d9d08b8789b8b0.md) | 144 | `declaration-track:0b8c3b52a0d9d08b8789b8b06562b92d7bba6515996c3a0c798a775ee2d06fb3` |
| 8 | `theorem` | [formPerm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-coe--48a928443a2ea46e4f2d815c.md) | 154 | `result-track:48a928443a2ea46e4f2d815cc93b6173bfa0f777cf9d73c02e2851fdc241f644` |
| 9 | `theorem` | [formPerm_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-subsingleton--d807cda5eade8ea42abc7305.md) | 158 | `result-track:d807cda5eade8ea42abc730583a1a8ccfbcb7a4d77223591a980ff28fa91c584` |
| 10 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/iscycle-formperm--4d1cd897e00ef699dc0f53b3.md) | 168 | `result-track:4d1cd897e00ef699dc0f53b323dc4d6d3a178f5226add2f52485d440f85819a0` |
| 11 | `theorem` | [support_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/support-formperm--58e07f649ad94fc13840fad6.md) | 174 | `result-track:58e07f649ad94fc13840fad6b7e81b09f4d1f49774ecb4e6c02950d757d6a22d` |
| 12 | `theorem` | [formPerm_eq_self_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-eq-self-of-not-mem--8bd1a963499a0fa7a9d4ca48.md) | 182 | `result-track:8bd1a963499a0fa7a9d4ca48093ec85edf0414d6762efa5cb7f28ee66123fd09` |
| 13 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-apply-mem-eq-next--290982b2ad1d6fafb42774ee.md) | 188 | `result-track:290982b2ad1d6fafb42774eec09d3b4b2e9870912847f90600eaaf43835ec572` |
| 14 | `theorem` | [formPerm_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-reverse--d0284759d5d000e11e9f0907.md) | 194 | `result-track:d0284759d5d000e11e9f0907062d93f5ac076ffea0777f152cf898231953f1b8` |
| 15 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-eq-formperm-iff--65255f9655daba5f20d3c0f4.md) | 200 | `result-track:65255f9655daba5f20d3c0f47562a9e94447582d67dde81866c52f7be2fdb21b` |
| 16 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist--6f21e68628716187a8274081.md) | 225 | `declaration-track:6f21e68628716187a8274081efa925d5b9acf6cae96f7dac6c5796fbd08342d3` |
| 17 | `theorem` | [toList_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-one--c47a475bc8588d7e3fceafa0.md) | 230 | `result-track:c47a475bc8588d7e3fceafa04c771f9a825d62c2caddd6c1020e10f6c8e09871` |
| 18 | `theorem` | [toList_eq_nil_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-eq-nil-iff--81bfa268f7bd363cd242e490.md) | 234 | `result-track:81bfa268f7bd363cd242e49026c3f7f12abeda0e1374c3c97bc235ed9b39c548` |
| 19 | `theorem` | [length_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/length-tolist--b9b3d1964e9a536c95fd5ae2.md) | 238 | `result-track:b9b3d1964e9a536c95fd5ae243e9aacdec71890d5ecc6c5713c22e4ed44fcd2a` |
| 20 | `theorem` | [toList_ne_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-ne-singleton--ae002ad70133b0f152c1e624.md) | 241 | `result-track:ae002ad70133b0f152c1e624198813669928676b223b7282750f374051aefda1` |
| 21 | `theorem` | [two_le_length_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/two-le-length-tolist-iff-mem-support--72e5fefee2e6d932f18a189a.md) | 246 | `result-track:72e5fefee2e6d932f18a189aff33ac8325a992e7365e6a92ec6b16d85845a7c3` |
| 22 | `theorem` | [length_toList_pos_of_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/length-tolist-pos-of-mem-support--c3e3c4b1879511d73fa73882.md) | 250 | `result-track:c3e3c4b1879511d73fa73882cb6fb7b7d3e4458526a21f907e15e9c8881f15f8` |
| 23 | `theorem` | [nthLe_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/nthle-tolist--779bfb30920258e9ace7721b.md) | 254 | `result-track:779bfb30920258e9ace7721b1fefde381f49b8dedc287ef8da23ce1aae856dab` |
| 24 | `theorem` | [toList_nthLe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-nthle-zero--270deaa733331f173a88264f.md) | 258 | `result-track:270deaa733331f173a88264ffc5fad4a4bcc21588bca79c41ed58f291227c0f2` |
| 25 | `theorem` | [mem_toList_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/mem-tolist-iff--e57df23f8e418fea38f25e9a.md) | 264 | `result-track:e57df23f8e418fea38f25e9aa5f5197a7d2102e8e9a0d642729355e9ca0df92f` |
| 26 | `theorem` | [nodup_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/nodup-tolist--652933c84b37eb3992e27414.md) | 277 | `result-track:652933c84b37eb3992e2741401e7b313dc01ef27681d2aac2994c834874c885f` |
| 27 | `theorem` | [next_toList_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/next-tolist-eq-apply--e9fed8eb4dd87753dbebce42.md) | 311 | `result-track:e9fed8eb4dd87753dbebce4291ff44186e3c7f2a0a6aa40a570b45b54c4be033` |
| 28 | `theorem` | [toList_pow_apply_eq_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-pow-apply-eq-rotate--2119f1223748625f16304b4a.md) | 323 | `result-track:2119f1223748625f16304b4a71d208c4c692bfe00d45212f343fea769e286c59` |
| 29 | `theorem` | [SameCycle.toList_isRotated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/samecycle-tolist-isrotated--d692893db389fa402a274d46.md) | 332 | `result-track:d692893db389fa402a274d46a9d3c27eb71049e7df82803c36c21bf02497d227` |
| 30 | `theorem` | [pow_apply_mem_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/pow-apply-mem-tolist-iff-mem-support--8876b1657daaf1c99f5d1d9b.md) | 345 | `result-track:8876b1657daaf1c99f5d1d9b9bee807e6bcdafc904a3f80a7055235447dcfe81` |
| 31 | `theorem` | [toList_formPerm_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-formperm-nil--522550217944b5a39adc7dd8.md) | 351 | `result-track:522550217944b5a39adc7dd80204658623beb7b28d8984d8a3f451795949add5` |
| 32 | `theorem` | [toList_formPerm_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-formperm-singleton--e0e95d0d43144adcfc9d10f2.md) | 354 | `result-track:e0e95d0d43144adcfc9d10f2058c08278d98c5b5122039f8cf3b163186d498b6` |
| 33 | `theorem` | [toList_formPerm_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-formperm-nontrivial--0fd912077488cc666c7436a2.md) | 358 | `result-track:0fd912077488cc666c7436a224692e16bf5367ad1a4c0b86be33c9de1ea547c4` |
| 34 | `theorem` | [toList_formPerm_isRotated_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tolist-formperm-isrotated-self--9893149850556f40836595e3.md) | 372 | `result-track:9893149850556f40836595e3b95a81df69f64c82bd63d119b6edaa8883cb7d31` |
| 35 | `theorem` | [formPerm_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/formperm-tolist--3a7716576e57b4b9e2a7c3b1.md) | 385 | `result-track:3a7716576e57b4b9e2a7c3b122cb1d487328869e06c16175dc726aeef11de1ce` |
| 36 | `def` | [toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tocycle--e0155c7e7b62bf841455effe.md) | 405 | `declaration-track:e0155c7e7b62bf841455effec854baee22fc1483becbf86c9424b9c7512e84e6` |
| 37 | `theorem` | [toCycle_eq_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/tocycle-eq-tolist--d605a1f38444adc4d6610722.md) | 416 | `result-track:d605a1f38444adc4d661072210ae90c45016bee9bfbdfc382df620628f556b75` |
| 38 | `theorem` | [nodup_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/nodup-tocycle--6b4b6608bf7879983a373043.md) | 423 | `result-track:6b4b6608bf7879983a3730438e04b23e75be50f114bbab9fd7372e3bd84e8f08` |
| 39 | `theorem` | [nontrivial_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/nontrivial-tocycle--600c3255b1073a78714ce584.md) | 428 | `result-track:600c3255b1073a78714ce5846f3102a7703246eb482c8ae14d6adaae6f5436be` |
| 40 | `def` | [isoCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/isocycle--5d1a980f5444d83bfafc804f.md) | 437 | `declaration-track:5d1a980f5444d83bfafc804ffa4bc78255230558d96cc06cfa3ee8d7f6776127` |
| 41 | `theorem` | [IsCycle.existsUnique_cycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/iscycle-existsunique-cycle--e3a30cd2066fa8bee1fc2e28.md) | 467 | `result-track:e3a30cd2066fa8bee1fc2e287a110eb46a60f106e0b8b8c55855b93a4bd0a4d1` |
| 42 | `theorem` | [IsCycle.existsUnique_cycle_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/iscycle-existsunique-cycle-subtype--f46be68754fdfccb2d877546.md) | 485 | `result-track:f46be68754fdfccb2d877546632f7897416c8206e26ab7da1eb3f5b0bae8d8d6` |
| 43 | `theorem` | [IsCycle.existsUnique_cycle_nontrivial_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/iscycle-existsunique-cycle-nontrivial-subtype--07368554186323d51c2f74ac.md) | 493 | `result-track:07368554186323d51c2f74ace05985c3732c950e6f7777cd20125d89a1eab1fa` |
| 44 | `def` | [isoCycle'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/isocycle--54b2b32c5fe90b626365b977.md) | 515 | `declaration-track:54b2b32c5fe90b626365b9776057b0da740a841e6619c23fa3a46eb0594d649c` |
| 45 | `instance` | [repr_perm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/declarations/repr-perm--5f7eb146a42ccce3a83b1331.md) | 531 | `declaration-track:5f7eb146a42ccce3a83b13317f4b55ad9df97ae2783901365c71d05c24fa5bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
