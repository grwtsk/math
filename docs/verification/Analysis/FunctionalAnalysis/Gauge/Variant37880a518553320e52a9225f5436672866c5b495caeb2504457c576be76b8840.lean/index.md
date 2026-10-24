# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Gauge.Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge--bd8decc566c19b6efe682695.md) | 65 | `declaration-track:bd8decc566c19b6efe6826955a101dc9d538ed0bdfd1eed55332afbd4b7cbfbf` |
| 2 | `theorem` | [gauge_def](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-def--1f8e5fd60f581f584e44a263.md) | 71 | `result-track:1f8e5fd60f581f584e44a263d4fa44f9a8814317f9cfd2c878235704605644f5` |
| 3 | `theorem` | [gauge_def'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-def--8a3427b8cff6b6d24b669b4d.md) | 77 | `result-track:8a3427b8cff6b6d24b669b4dbc36a4ab5f267df09e71f22215d99bd740aa2d0a` |
| 4 | `theorem` | [gauge_set_bddBelow](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-set-bddbelow--18889133915b7049487a47d9.md) | 82 | `result-track:18889133915b7049487a47d99efd76ec80a60f2ca28f0fbb5ae05d270f7d05e3` |
| 5 | `theorem` | [Absorbent.gauge_set_nonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/absorbent-gauge-set-nonempty--f5083ce3a86dbfede4518f56.md) | 87 | `result-track:f5083ce3a86dbfede4518f564474c629991acb1701ed6e3e289a198d2fb94c47` |
| 6 | `theorem` | [gauge_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-mono--692a034ad00ce7d87514256b.md) | 93 | `result-track:692a034ad00ce7d87514256ba017ca4f5555362dc7f1725e99f80be547bbbaca` |
| 7 | `theorem` | [exists_lt_of_gauge_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/exists-lt-of-gauge-lt--845bae66228514a7dfaee438.md) | 97 | `result-track:845bae66228514a7dfaee43819d18d56560dde1b9cb0fd3b347065c9a4e93e76` |
| 8 | `theorem` | [gauge_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-zero--9bf55107adea5bf4e8f01fe3.md) | 106 | `result-track:9bf55107adea5bf4e8f01fe38bb2d6b4faca242a70a5ffde9fa5d8927fc49e61` |
| 9 | `theorem` | [gauge_zero'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-zero--e152da88f0aace9dc4dd8c0d.md) | 114 | `result-track:e152da88f0aace9dc4dd8c0d170f1abfe3aaa49830ecaa13dc03df91352f3fac` |
| 10 | `theorem` | [gauge_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-empty--3a2ba079a805327f59887d73.md) | 125 | `result-track:3a2ba079a805327f59887d73600a0b6e777b02d10ba9312a89497ca1144deb2e` |
| 11 | `theorem` | [gauge_of_subset_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-of-subset-zero--9b35ffd8051ed7c61b19b8b1.md) | 130 | `result-track:9b35ffd8051ed7c61b19b8b18bc584b0c81915c31ba021051ac1a0f5f30a375d` |
| 12 | `theorem` | [gauge_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-nonneg--d6d75e50b7e1c5a0e910ee69.md) | 136 | `result-track:d6d75e50b7e1c5a0e910ee69f710298830a514643ea075a683ff8bb84557dd84` |
| 13 | `theorem` | [gauge_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-neg--42690788022f4087e2b335e1.md) | 140 | `result-track:42690788022f4087e2b335e1e387adcfa94a53b8bcf52ded05deee0b131f7ae3` |
| 14 | `theorem` | [gauge_neg_set_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-neg-set-neg--99ea162b404098957cd18df5.md) | 145 | `result-track:99ea162b404098957cd18df50f8d9155c02e753072d0e03457c359cf2be2da3b` |
| 15 | `theorem` | [gauge_neg_set_eq_gauge_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-neg-set-eq-gauge-neg--8f25018e5d73a549e88fc157.md) | 149 | `result-track:8f25018e5d73a549e88fc1576f6f11cd009a86e5cda60aca0b3becd6e4a43688` |
| 16 | `theorem` | [gauge_le_of_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-le-of-mem--2e160cb5b1b5c307807eef05.md) | 153 | `result-track:2e160cb5b1b5c307807eef058d9cbf6e82e37d91ac6aba57beacfbbcc91fec32` |
| 17 | `theorem` | [gauge_le_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-le-eq--646b5366ad4d984af3a9e69e.md) | 159 | `result-track:646b5366ad4d984af3a9e69e59ada075f21ccd39f323e368025e76b9c74344d1` |
| 18 | `theorem` | [gauge_lt_eq'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-eq--2191881f200a417abc082fe9.md) | 177 | `result-track:2191881f200a417abc082fe989e5d2693b8e5c98cb305357bd7706f730368632` |
| 19 | `theorem` | [gauge_lt_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-eq--bf68072f3c4911b5d3949fd4.md) | 186 | `result-track:bf68072f3c4911b5d3949fd41cab3e8984d8032c8adf3b13e7085d2382a1f6df` |
| 20 | `theorem` | [mem_openSegment_of_gauge_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/mem-opensegment-of-gauge-lt-one--86aee3e07f11f70806631f21.md) | 195 | `result-track:86aee3e07f11f70806631f2192f35c0d1cc8d0ff075e26b6648abd250f34626d` |
| 21 | `theorem` | [gauge_lt_one_subset_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-one-subset-self--2c659cd08f9f6bb7fd5cb8a8.md) | 201 | `result-track:2c659cd08f9f6bb7fd5cb8a896aae324473d52ebe5ce073be529f444626e8f37` |
| 22 | `theorem` | [gauge_le_one_of_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-le-one-of-mem--2f917e5b4ba621995fbcc972.md) | 207 | `result-track:2f917e5b4ba621995fbcc9721faf93c6e0ec8f99ba55497806f3045ebec5f695` |
| 23 | `theorem` | [gauge_add_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-add-le--bd5e24ddb4f0ec3a4ee18284.md) | 212 | `result-track:bd5e24ddb4f0ec3a4ee182842e99ef64f8184f264918f22fd490091ada6c8b0a` |
| 24 | `theorem` | [self_subset_gauge_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/self-subset-gauge-le-one--1b304972b4b902fad4e14e69.md) | 226 | `result-track:1b304972b4b902fad4e14e6938ffcbb3ee48934f5fc4986e85977c5407ec4d2b` |
| 25 | `theorem` | [Convex.gauge_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/convex-gauge-le--a94575a132f53bc6ddc5204b.md) | 229 | `result-track:a94575a132f53bc6ddc5204b690c1a7c1eccf047ec1b6bf7385376b354cbe7eb` |
| 26 | `theorem` | [Balanced.starConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/balanced-starconvex--01f7aae9b598fd1d96c24832.md) | 239 | `result-track:01f7aae9b598fd1d96c248327df05467b303b198213b40bf6155d36c2c830f81` |
| 27 | `theorem` | [le_gauge_of_not_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/le-gauge-of-not-mem--2b867f4e9abd6e788780c30a.md) | 244 | `result-track:2b867f4e9abd6e788780c30af29d7bcca5039d992e8f7d3e2141f34cdf79d3df` |
| 28 | `theorem` | [one_le_gauge_of_not_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/one-le-gauge-of-not-mem--f87d37f76a24fcfaa171749b.md) | 259 | `result-track:f87d37f76a24fcfaa171749bcd0e664cb9834355e723fdaef163f2281638fd4d` |
| 29 | `theorem` | [gauge_smul_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-smul-of-nonneg--679487b09bc79883d6ea6692.md) | 268 | `result-track:679487b09bc79883d6ea66920bab8ad2efbadae927c3df6a7173c064bec3cf47` |
| 30 | `theorem` | [gauge_smul_left_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-smul-left-of-nonneg--05c96f327d94a51d11a6610c.md) | 293 | `result-track:05c96f327d94a51d11a6610c682fc09b0a62186c64f4f8ab5e5327984ed77775` |
| 31 | `theorem` | [gauge_smul_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-smul-left--020ff6dc9a42eabb80123803.md) | 314 | `result-track:020ff6dc9a42eabb80123803cf6a189c44af4c84aaea606b9b3b69be45ea9fbb` |
| 32 | `theorem` | [gauge_norm_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-norm-smul--eb06379f12798c7fa9e6b27b.md) | 336 | `result-track:eb06379f12798c7fa9e6b27b86b00efacf4437dbfa8bd57ca3e02239f0e9509b` |
| 33 | `theorem` | [gauge_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-smul--18cabb01c9ebd53e066445ac.md) | 346 | `result-track:18cabb01c9ebd53e066445ac62ba69e6df72c6e4c4e2856afd1da7046a687dd4` |
| 34 | `theorem` | [interior_subset_gauge_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/interior-subset-gauge-lt-one--16f30c8a826aaa04746f3143.md) | 357 | `result-track:16f30c8a826aaa04746f3143e3de10a8c796d6189cbbf172e9694a975d314b9b` |
| 35 | `theorem` | [gauge_lt_one_eq_self_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-one-eq-self-of-open--c45d046339351ebed909ba09.md) | 370 | `result-track:c45d046339351ebed909ba09597efed823f179c5eca2266ebbae56adfb72eeb0` |
| 36 | `theorem` | [gauge_lt_one_of_mem_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-one-of-mem-of-open--a480ea9939e1f18724126113.md) | 378 | `result-track:a480ea9939e1f1872412611315f54bd23af12638d2458a04ba4fa6cd30ac5b81` |
| 37 | `theorem` | [gauge_lt_of_mem_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-of-mem-smul--3d7761781a07aa0cb61af911.md) | 384 | `result-track:3d7761781a07aa0cb61af911c461b3565dc602d4c04bc65019470f4a1948f7cf` |
| 38 | `theorem` | [mem_closure_of_gauge_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/mem-closure-of-gauge-le-one--e1f762dc5e278ae0812888cb.md) | 392 | `result-track:e1f762dc5e278ae0812888cb0735923b3eda4fb5641392fcbe969b226a81cf6d` |
| 39 | `theorem` | [mem_frontier_of_gauge_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/mem-frontier-of-gauge-eq-one--ad25e4b9ebbf53459b6fd39a.md) | 403 | `result-track:ad25e4b9ebbf53459b6fd39af1d4c67f6f14e3b4140adbcf551e18dde69dae2f` |
| 40 | `theorem` | [continuous_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/continuous-gauge--b45e6ccecd445c65a8b9ae8b.md) | 419 | `result-track:b45e6ccecd445c65a8b9ae8bc039b78c5541ad40b001c02171a989da9cb1e196` |
| 41 | `theorem` | [gauge_lt_one_eq_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-one-eq-interior--ca7295fecc2de24cb701ea44.md) | 438 | `result-track:ca7295fecc2de24cb701ea443dc7b4ce2bb4acd9b5235b23c68778b6532d8381` |
| 42 | `theorem` | [gauge_lt_one_iff_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-lt-one-iff-mem-interior--19870e3c8a8cfcfb19990a3e.md) | 444 | `result-track:19870e3c8a8cfcfb19990a3ebab45583571c787882d9271452ec7093ce946eff` |
| 43 | `theorem` | [gauge_le_one_iff_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-le-one-iff-mem-closure--e5e058b946ad5b26cb08e90b.md) | 448 | `result-track:e5e058b946ad5b26cb08e90b2534fac46406bcb23b73b2364bd8c94729334214` |
| 44 | `theorem` | [gauge_eq_one_iff_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-eq-one-iff-mem-frontier--409537abfa843f3baf43b998.md) | 454 | `result-track:409537abfa843f3baf43b998c8704f88e0dbd983361321fe095239ed8bd3c639` |
| 45 | `theorem` | [gauge_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-eq-zero--fed9d070220416ae6680f990.md) | 459 | `result-track:fed9d070220416ae6680f990646eb3f301c7c607f246901251f15c5750425e83` |
| 46 | `theorem` | [gauge_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-pos--b583134a0f83828af6ac3780.md) | 472 | `result-track:b583134a0f83828af6ac3780a35bcb32d45310a969e126dc38bd64018af62260` |
| 47 | `def` | [gaugeSeminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gaugeseminorm--891c8a8958d1a64355110e19.md) | 484 | `declaration-track:891c8a8958d1a64355110e19b9b84faa637be820e255ebb8d2f077ec7c338e94` |
| 48 | `theorem` | [gaugeSeminorm_lt_one_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gaugeseminorm-lt-one-of-open--f1938b8d0ea1342955610dd8.md) | 491 | `result-track:f1938b8d0ea1342955610dd89c52aa17956fcaa259104913e890e7046fb9f0fa` |
| 49 | `theorem` | [gaugeSeminorm_ball_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gaugeseminorm-ball-one--6556aae4c151a5be65e4fa0e.md) | 496 | `result-track:6556aae4c151a5be65e4fa0e94ec94ea9461991d7867b98c3060138fceb2fb54` |
| 50 | `theorem` | [Seminorm.gauge_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/seminorm-gauge-ball--01a4ccf2c165969b35143109.md) | 505 | `result-track:01a4ccf2c165969b3514310972faceaf422f26d1820cc43118dac235ce20a352` |
| 51 | `theorem` | [Seminorm.gaugeSeminorm_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/seminorm-gaugeseminorm-ball--883c4dd5a44bf77a517654ee.md) | 530 | `result-track:883c4dd5a44bf77a517654eea269b3e38d4db920696463d3c2f9b808b031bb0c` |
| 52 | `theorem` | [gauge_unit_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-unit-ball--24eae20831df2dfb96f02b3b.md) | 543 | `result-track:24eae20831df2dfb96f02b3bbcd8cdd5264336af00f3f9f1573bb89a8bc1bd7c` |
| 53 | `theorem` | [gauge_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-ball--17ee95a71b573e56204ca525.md) | 547 | `result-track:17ee95a71b573e56204ca5252093cb514b66c521dea515fd08d30de6e9126c09` |
| 54 | `theorem` | [gauge_ball'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-ball--073d62b14e02fb3a0501ab8c.md) | 556 | `result-track:073d62b14e02fb3a0501ab8cfea3d4cd0c4c4ddda87e847ccfcbafe129eebe29` |
| 55 | `theorem` | [gauge_closure_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-closure-zero--5edbcf454a89a4a8615d3bfd.md) | 561 | `result-track:5edbcf454a89a4a8615d3bfd36fa6f0c866737447cd9a15a5559d1f49ee23793` |
| 56 | `theorem` | [gauge_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/gauge-closedball--52809eb2a2c96b89d7249e64.md) | 571 | `result-track:52809eb2a2c96b89d7249e6470f8bf30c90b906bb792a86fee02b3e681ed830a` |
| 57 | `theorem` | [mul_gauge_le_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/mul-gauge-le-norm--a34fcd2c53b16a6c66872a42.md) | 585 | `result-track:a34fcd2c53b16a6c66872a42a0e7899ed7da3e09df828a3d62fa2fed2aa4c785` |
| 58 | `theorem` | [Convex.lipschitzWith_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/convex-lipschitzwith-gauge--02a865555d75fd2133ac5b25.md) | 592 | `result-track:02a865555d75fd2133ac5b2578b9dd062f32997aab6252dee73dd6c39831c153` |
| 59 | `theorem` | [Convex.lipschitz_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/convex-lipschitz-gauge--1c9b9efcc2eebe70482bacbc.md) | 604 | `result-track:1c9b9efcc2eebe70482bacbc9c81ad27b325bc42695005b9d9de31f3b4a14e5b` |
| 60 | `theorem` | [Convex.uniformContinuous_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/convex-uniformcontinuous-gauge--75a06368f25180440fc4a1c6.md) | 609 | `result-track:75a06368f25180440fc4a1c6077c3c23c96e13aec7a141a868fe51b26f1a378c` |
| 61 | `theorem` | [le_gauge_of_subset_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/declarations/le-gauge-of-subset-closedball--2c25e2d8587ea498fcf2ef3b.md) | 621 | `result-track:2c25e2d8587ea498fcf2ef3b5c3d68ae70b4586fa6193f92891568130924f8f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
