# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d84da246704873bac04e2cb536cc0cd81ee3b9bc",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d84da246704873bac04e2cb536cc0cd81ee3b9bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/macro-rules--121ec814842f72782d09b212.md) | 32 | `declaration-track:121ec814842f72782d09b212c82805ee707fb9ae6bfe6a04b748b28e6389e929` |
| 2 | `theorem` | [zero_cpow_eq_nhds](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/zero-cpow-eq-nhds--35d6f4068f21e0768e0c01fe.md) | 45 | `result-track:35d6f4068f21e0768e0c01fe623491a86babd91e354baa48d27456ed0aeb3bd9` |
| 3 | `theorem` | [cpow_eq_nhds](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/cpow-eq-nhds--93471d9feca3f9f47a88c5e9.md) | 54 | `result-track:93471d9feca3f9f47a88c5e9d3972fa0687433237d159de2792e642d9e74e980` |
| 4 | `theorem` | [cpow_eq_nhds'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/cpow-eq-nhds--f2d572fd0d7ae41361d54a5f.md) | 64 | `result-track:f2d572fd0d7ae41361d54a5fe01f34c16def2daf9f545cd9a788b00c422d1dc4` |
| 5 | `theorem` | [continuousAt_const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-const-cpow--211ec8fa46dd78a7692445ce.md) | 78 | `result-track:211ec8fa46dd78a7692445ce69e771b2e7864348e738f6f6d1dc005e99e4d763` |
| 6 | `theorem` | [continuousAt_const_cpow'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-const-cpow--8b57167bdcabeb8e6f7b2f64.md) | 86 | `result-track:8b57167bdcabeb8e6f7b2f6497218843c94e0cf9f784244deca50c164823ac3f` |
| 7 | `theorem` | [continuousAt_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow--91857770e15de442f51287e6.md) | 96 | `result-track:91857770e15de442f51287e6b84f6ffa4158fd8209fa0c36b8f0f8c28efac534` |
| 8 | `theorem` | [continuousAt_cpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow-const--03d1d01d64daeb545066f81a.md) | 111 | `result-track:03d1d01d64daeb545066f81aa847068d954c4281d9b33b1c2f7641950e71b25c` |
| 9 | `theorem` | [Filter.Tendsto.cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-cpow--aff9d9cceeb8f06b32285382.md) | 116 | `result-track:aff9d9cceeb8f06b32285382952788e65b477a7f6854d7efccbaa6c3e06da02c` |
| 10 | `theorem` | [Filter.Tendsto.const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-const-cpow--6e0f5a7a2c3dee9179fd1d55.md) | 122 | `result-track:6e0f5a7a2c3dee9179fd1d55a336d1811f04e4c772e4a27716ce24498faf74bf` |
| 11 | `theorem` | [ContinuousWithinAt.cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouswithinat-cpow--b6d232179c336279a28450f9.md) | 131 | `result-track:b6d232179c336279a28450f9aa6a8ef038d96ded8cc4f4994e4bb8953f42724d` |
| 12 | `theorem` | [ContinuousWithinAt.const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouswithinat-const-cpow--15d2d5680a005bba5c361ab5.md) | 137 | `result-track:15d2d5680a005bba5c361ab547c6f445ca8c672aedfbce3686651b0375b5834f` |
| 13 | `theorem` | [ContinuousAt.cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow--5ca6989a91bccbda9e20d3e6.md) | 142 | `result-track:5ca6989a91bccbda9e20d3e6b49eb59db01fbcdc2b07be97f964d1174119f156` |
| 14 | `theorem` | [ContinuousAt.const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-const-cpow--e784b2d054e6ee8135d57cc3.md) | 147 | `result-track:e784b2d054e6ee8135d57cc3227babfd4f3e114b9db2ff0ea00a04da1bff9cac` |
| 15 | `theorem` | [ContinuousOn.cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouson-cpow--38d3b319edc966e8191972c8.md) | 152 | `result-track:38d3b319edc966e8191972c8dd7578601625cd39ca761e8971ec050c85b16862` |
| 16 | `theorem` | [ContinuousOn.const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouson-const-cpow--13f172e27c7b14690b57ffe8.md) | 157 | `result-track:13f172e27c7b14690b57ffe8dc3fd069a6a1e3580d5a5f2a6bb82af832bf199b` |
| 17 | `theorem` | [Continuous.cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-cpow--edf0cb5c442329b50aba085b.md) | 161 | `result-track:edf0cb5c442329b50aba085b53cb69af85cb8f834c9631c334d4951bc2d0d77c` |
| 18 | `theorem` | [Continuous.const_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-const-cpow--e7aa9084b769344a132cb160.md) | 166 | `result-track:e7aa9084b769344a132cb160c701bb1ca0a5c61e7ab48edc6de2e38f15a2e39a` |
| 19 | `theorem` | [ContinuousOn.cpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouson-cpow-const--6dda1d99fd84834840e94350.md) | 171 | `result-track:6dda1d99fd84834840e943506905c59216ead6951003e766ab113c1efd73c5cd` |
| 20 | `theorem` | [continuousAt_const_rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-const-rpow--7cb375f408a7ac24990c51fd.md) | 187 | `result-track:7cb375f408a7ac24990c51fd92d8ef11ff1da7d91f97edffd9000fed191c3285` |
| 21 | `theorem` | [continuousAt_const_rpow'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-const-rpow--6c7818b061cb15f556039a0a.md) | 197 | `result-track:6c7818b061cb15f556039a0aadb2ad0604834d3008248c748d9c6991608756da` |
| 22 | `theorem` | [rpow_eq_nhds_of_neg](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/rpow-eq-nhds-of-neg--ac92fedee3f542fc0280505e.md) | 207 | `result-track:ac92fedee3f542fc0280505e2b243469a05638ca46a4bd63cbec2176b971f011` |
| 23 | `theorem` | [rpow_eq_nhds_of_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/rpow-eq-nhds-of-pos--b7dc10b95834f4420ff0de25.md) | 217 | `result-track:b7dc10b95834f4420ff0de25051d92eb608c3c753d04f58647b736d1f5c28065` |
| 24 | `theorem` | [continuousAt_rpow_of_ne](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-of-ne--bc73f13bdaa3d7acf6db2c85.md) | 227 | `result-track:bc73f13bdaa3d7acf6db2c852d7af2e645f02d09d4143e8dff315cf851c7594f` |
| 25 | `theorem` | [continuousAt_rpow_of_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-of-pos--b91027182b8a56e3392017ea.md) | 245 | `result-track:b91027182b8a56e3392017eafc7f82f2e7d586868824f878d6ed6092ded23b8d` |
| 26 | `theorem` | [continuousAt_rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow--e57d31930ef8dfbfcd17054e.md) | 263 | `result-track:e57d31930ef8dfbfcd17054e1376d35708074612c80e5301bccca3440c7a9128` |
| 27 | `theorem` | [continuousAt_rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-const--74c93fd5d898ab20a172eac9.md) | 268 | `result-track:74c93fd5d898ab20a172eac961c2677c7eb310c3d300d3c38f3b9f052c3b2ee7` |
| 28 | `theorem` | [Filter.Tendsto.rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-rpow--b24d6f58cfc2880102967553.md) | 282 | `result-track:b24d6f58cfc288010296755332d317fe790d4e8cc6c8dd1ddbedf5596eec946b` |
| 29 | `theorem` | [Filter.Tendsto.rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-rpow-const--d745284e4975e4fb2453181f.md) | 287 | `result-track:d745284e4975e4fb2453181f7460161f30e0c46887a6b8d0bce90a91b83a1194` |
| 30 | `theorem` | [ContinuousAt.rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow--776f25a821997ba780c1ab86.md) | 295 | `result-track:776f25a821997ba780c1ab865614a93f25578ee8cd78b811719bf39ea27b7f08` |
| 31 | `theorem` | [ContinuousWithinAt.rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouswithinat-rpow--4d42dd794f2760df3b0fffca.md) | 300 | `result-track:4d42dd794f2760df3b0fffca101174426f5be96e2a4414695e49d0039c6187cb` |
| 32 | `theorem` | [ContinuousOn.rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouson-rpow--59d88051d4e05ef68955b985.md) | 306 | `result-track:59d88051d4e05ef68955b9856d3da6d4e01f04dac3b9bf3663725f3586801dc7` |
| 33 | `theorem` | [Continuous.rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-rpow--77d4e1f1f5face61791390d0.md) | 311 | `result-track:77d4e1f1f5face61791390d0529ecbb0da9b1ec804685877cbf64f53090a5e11` |
| 34 | `theorem` | [ContinuousWithinAt.rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouswithinat-rpow-const--a7e7640e86f38e903db5397a.md) | 316 | `result-track:a7e7640e86f38e903db5397a724dac6126e5b6872c0f691ced2a9c7c5a513b97` |
| 35 | `theorem` | [ContinuousAt.rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-const--ccc37aba032a7522f2db3bbb.md) | 321 | `result-track:ccc37aba032a7522f2db3bbb1f6e2b0c633fbe75114e6859ab262319d42f11de` |
| 36 | `theorem` | [ContinuousOn.rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuouson-rpow-const--849997bb43ef5ccb8db9c42f.md) | 326 | `result-track:849997bb43ef5ccb8db9c42fe05c5b93ecb39e35f34d051b50a540997892a563` |
| 37 | `theorem` | [Continuous.rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-rpow-const--ce341eae55fad566a94236ce.md) | 330 | `result-track:ce341eae55fad566a94236cea970acdbd723e15634f5fb0821e935c1d803d82e` |
| 38 | `theorem` | [continuousAt_cpow_zero_of_re_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow-zero-of-re-pos--a70d0cbfef0f376db02d516f.md) | 350 | `result-track:a70d0cbfef0f376db02d516f3130d82efc0924ff43fdb531ab80af04e243b0af` |
| 39 | `theorem` | [continuousAt_cpow_of_re_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow-of-re-pos--64627462dced044fc30af7ae.md) | 376 | `result-track:64627462dced044fc30af7aecad20154dc5c11897bff1c949a03c30d83242941` |
| 40 | `theorem` | [continuousAt_cpow_const_of_re_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-cpow-const-of-re-pos--e7012a52653f76a5b26f495c.md) | 387 | `result-track:e7012a52653f76a5b26f495cf229ccc46fbddbe2fb1caac26923385b72362391` |
| 41 | `theorem` | [continuousAt_ofReal_cpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-ofreal-cpow--a5101504c6ae18246c8500b7.md) | 393 | `result-track:a5101504c6ae18246c8500b79590ab3950cdad75b8bbca66b63f3834a9b64592` |
| 42 | `theorem` | [continuousAt_ofReal_cpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-ofreal-cpow-const--42d54089b44e4878f3402159.md) | 421 | `result-track:42d54089b44e4878f3402159ca7ec95e68a965395febd12ca3784e6b32a20db6` |
| 43 | `theorem` | [continuous_ofReal_cpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-ofreal-cpow-const--0fd885f6fdefbed55391c136.md) | 427 | `result-track:0fd885f6fdefbed55391c1360756ecbebbed0ed708803f24d5af5d517238b76f` |
| 44 | `theorem` | [continuousAt_rpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow--255a43a636ac976defc89a5a.md) | 441 | `result-track:255a43a636ac976defc89a5a4f2c1a457b60b6761cf5a0076c01ed0155ddbaec` |
| 45 | `theorem` | [eventually_pow_one_div_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/eventually-pow-one-div-le--9450196b25909361c403e22b.md) | 458 | `result-track:9450196b25909361c403e22b185b5c54811986700c34350ced8e360a498613b8` |
| 46 | `theorem` | [Filter.Tendsto.nnrpow](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-nnrpow--35c9084391683bab51590b4a.md) | 471 | `result-track:35c9084391683bab51590b4aa982dfc34418a8ff7791ede29054a1f7866acfcf` |
| 47 | `theorem` | [continuousAt_rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-const--b5f70b930a4c0b2a41483cac.md) | 479 | `result-track:b5f70b930a4c0b2a41483cac7010883ea0fc4bf656e1f81b750224247f167ea2` |
| 48 | `theorem` | [continuous_rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-rpow-const--26dc4502650e2b6c0f4e335b.md) | 486 | `result-track:26dc4502650e2b6c0f4e335b5239c91d2e18112f080d97e6cca034cc061c4564` |
| 49 | `theorem` | [eventually_pow_one_div_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/eventually-pow-one-div-le--a8bd0513467c53e03a790ae7.md) | 497 | `result-track:a8bd0513467c53e03a790ae792ce0e70fdddc807a13e8ada513c591318da08c3` |
| 50 | `theorem` | [continuousAt_rpow_const_of_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuousat-rpow-const-of-pos--426c2b990f98065495bc0fc4.md) | 508 | `result-track:426c2b990f98065495bc0fc42bb6af090e269a74c780b4368f7b4bd0126b93f8` |
| 51 | `theorem` | [continuous_rpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/continuous-rpow-const--af31204f26b790937e344d66.md) | 521 | `result-track:af31204f26b790937e344d6693607d194d65d0624a1f53261325aa49c713b59b` |
| 52 | `theorem` | [tendsto_const_mul_rpow_nhds_zero_of_pos](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/tendsto-const-mul-rpow-nhds-zero-of-pos--f72ac5e16ea40d985ce8c384.md) | 533 | `result-track:f72ac5e16ea40d985ce8c384d263248820c47ad6ecf3599aa3b7506e498ea30b` |
| 53 | `theorem` | [Filter.Tendsto.ennrpow_const](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/declarations/filter-tendsto-ennrpow-const--4c617aad293324955d3134db.md) | 542 | `result-track:4c617aad293324955d3134dbf9657d3c6433222be27b38cc284ac605a55c5759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
