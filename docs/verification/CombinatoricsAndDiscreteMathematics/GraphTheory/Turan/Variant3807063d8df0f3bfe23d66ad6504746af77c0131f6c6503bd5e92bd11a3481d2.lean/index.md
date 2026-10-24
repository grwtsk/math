# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f231edf97a6473d17beef716418cc486190271a",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f231edf97a6473d17beef716418cc486190271a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean.json)

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
| 1 | `def` | [IsTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isturanmaximal--ca99ce68b1ff481d74f9a214.md) | 64 | `declaration-track:ca99ce68b1ff481d74f9a21439b236421b73279e18ae1c102266da6f7abc63bc` |
| 2 | `def` | [turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph--7a370a1c74ac10a9d82d9d70.md) | 71 | `declaration-track:7a370a1c74ac10a9d82d9d7043ea0e391a921accbe74670dc31569930713fbbb` |
| 3 | `lemma` | [turanGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph-adj--7c0707b0ecb95c95c581584c.md) | 73 | `result-track:7c0707b0ecb95c95c581584cf676b576b2e1a3beccf8fb783702be97daa3d455` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/instance--df623dea4d5d6084b2a9ca81.md) | 76 | `declaration-track:df623dea4d5d6084b2a9ca811ee62072d301abcc97d15a308d70187e5db3e1bc` |
| 5 | `lemma` | [turanGraph_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph-zero--5911b06102803b297dee1790.md) | 79 | `result-track:5911b06102803b297dee179093eac9e8e08d30a1efc3c29a7673b05703df4814` |
| 6 | `lemma` | [turanGraph_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph-one--8ebaa3dabbd0a263a7539ebc.md) | 80 | `result-track:8ebaa3dabbd0a263a7539ebc3a1cba0001a36c34062f8003e37e031e77c7e985` |
| 7 | `theorem` | [turanGraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph-eq-top--1b08196f08d1516a7d87e256.md) | 83 | `result-track:1b08196f08d1516a7d87e2560d07a8db037b19c2374340af439711eda9504280` |
| 8 | `theorem` | [turanGraph_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turangraph-cliquefree--3267283a90929a66a375bc5a.md) | 93 | `result-track:3267283a90929a66a375bc5a5ca5f3583d4699c19b042781f9b6a4a9cff6de52` |
| 9 | `theorem` | [not_cliqueFree_of_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/not-cliquefree-of-isturanmaximal--b1e9a0e7d361add6bcb8da9d.md) | 103 | `result-track:b1e9a0e7d361add6bcb8da9d88bdacc1e3652b7c41865ed2cbfeb4bb1099fccb` |
| 10 | `lemma` | [exists_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/exists-isturanmaximal--8e4c3247340f7a78d0943669.md) | 113 | `result-track:8e4c3247340f7a78d0943669436c5fbeeefb0d5f90a8e80ccf6675330051a385` |
| 11 | `lemma` | [degree_eq_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/degree-eq-of-not-adj--863d614a30c4f29392e1a620.md) | 124 | `result-track:863d614a30c4f29392e1a620f4ad8b432b537c2dc6b7cb9c97944bc64e87634f` |
| 12 | `lemma` | [not_adj_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/not-adj-trans--da64267844abaa98d074158a.md) | 136 | `result-track:da64267844abaa98d074158af2b976c2603860d5247ca71d3eaccce134b34702` |
| 13 | `theorem` | [equivalence_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/equivalence-not-adj--3d7522950853b82c8772c6ef.md) | 168 | `result-track:3d7522950853b82c8772c6ef3fba45e3016dc79987d9d6c601633910da66116b` |
| 14 | `def` | [setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/setoid--8c9aa386395469221a77693a.md) | 176 | `declaration-track:8c9aa386395469221a77693a235d717b2165d5fdeea647207d041f14cf00499e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/instance--fae859085c6f8058a97dafec.md) | 178 | `declaration-track:fae859085c6f8058a97dafecba7ad391cfe0e1bc59489fdc52b69ad4a2b60234` |
| 16 | `def` | [finpartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/finpartition--d734d60f24b692de24becfa3.md) | 182 | `declaration-track:d734d60f24b692de24becfa3b42bc3e11a42c48eb52ead205cb389d24a2b14ea` |
| 17 | `lemma` | [not_adj_iff_part_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/not-adj-iff-part-eq--21bcf6d32ac6b39bfab86372.md) | 184 | `result-track:21bcf6d32ac6b39bfab86372d807b6bf56b9fceed37f1f5c175b9545d0117591` |
| 18 | `lemma` | [degree_eq_card_sub_part_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/degree-eq-card-sub-part-card--c0db52e44cdff7c14e71ad3d.md) | 192 | `result-track:c0db52e44cdff7c14e71ad3d1317015ace03e100800703d3f9dde22faf4314bb` |
| 19 | `theorem` | [isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isequipartition--5d40d4ef9876ce4be7ea2cb7.md) | 205 | `result-track:5d40d4ef9876ce4be7ea2cb717528927b3f428aa470c63a295ddfe94db380200` |
| 20 | `lemma` | [card_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/card-parts-le--26f36fa1a07e6e319d902147.md) | 225 | `result-track:26f36fa1a07e6e319d9021473e02e9399c54da0aa7dc6b21eaa42924e024f226` |
| 21 | `theorem` | [card_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/card-parts--ee89938e26bda45bd5b0c354.md) | 238 | `result-track:ee89938e26bda45bd5b0c354ee43a1d6f2143984992c786827c35ea855014531` |
| 22 | `theorem` | [nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/nonempty-iso-turangraph--e9a2f1a56db05ea0787c159c.md) | 262 | `result-track:e9a2f1a56db05ea0787c159c9be0da4b52070ae2315c16a45a1ea7c84d525911` |
| 23 | `theorem` | [isTuranMaximal_of_iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isturanmaximal-of-iso--e06c7f755aef2d38c4df5b41.md) | 283 | `result-track:e06c7f755aef2d38c4df5b412635ae00c05e5b33594bf0d69ab0b685fcabe14a` |
| 24 | `theorem` | [IsTuranMaximal.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isturanmaximal-iso--3361dca5b7925c873ecbd6b7.md) | 291 | `result-track:3361dca5b7925c873ecbd6b783453d0c4620021d31f6a5536373f764bc74020a` |
| 25 | `theorem` | [isTuranMaximal_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isturanmaximal-turangraph--a3bf7e79cee6df437f0725c0.md) | 296 | `result-track:a3bf7e79cee6df437f0725c0f27ff92687801ef7559635bc3f67e198147771f8` |
| 26 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isturanmaximal-iff-nonempty-iso-turangraph--d4e88d5c87db1926df0938b9.md) | 301 | `result-track:d4e88d5c87db1926df0938b9351fe1bdcf959092487154ead423225ab81e1e0d` |
| 27 | `lemma` | [isExtremal_top_free_iff_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isextremal-top-free-iff-isturanmaximal--bd1dc6419e286549af64d123.md) | 307 | `result-track:bd1dc6419e286549af64d123a6cc78590876d449a0fda4cdf4ee10e72739a281` |
| 28 | `lemma` | [isExtremal_top_free_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/isextremal-top-free-turangraph--96166e263568842123312def.md) | 312 | `result-track:96166e263568842123312def5be4ff899c1be29a3b4f8770aa6ae40a208aad1b` |
| 29 | `theorem` | [extremalNumber_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/extremalnumber-top--329db9886f24bd03b26a16f8.md) | 318 | `result-track:329db9886f24bd03b26a16f8e5ebfb22308ee60f10e3b6c07abe2b05adff4322` |
| 30 | `theorem` | [card_edgeFinset_eq_extremalNumber_top_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/card-edgefinset-eq-extremalnumber-top-iff-nonempty-iso-turangraph--393a5cbdbaa33abbb1f2e1f7.md) | 329 | `result-track:393a5cbdbaa33abbb1f2e1f78a9010724e2ed87fb9a10d89928e5a65dfd5aac3` |
| 31 | `abbrev` | [turanNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turannumber--b4f5113b396fddc29fc6aa73.md) | 338 | `declaration-track:b4f5113b396fddc29fc6aa73534e5391d82ba9dfec7e0cda08d2f7ca1f7d13a6` |
| 32 | `lemma` | [sum_ne_add_mod_eq_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/sum-ne-add-mod-eq-sub-one--dcb3edebb95a27d0017678df.md) | 340 | `result-track:dcb3edebb95a27d0017678df37c1ac21562e408aaf43c6c8fa8febe2ce78e2f2` |
| 33 | `lemma` | [turanNumber_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turannumber-add--3b43e217bf694e1921a49d92.md) | 360 | `result-track:3b43e217bf694e1921a49d92a6914f5b32912b2e9242d79e37af432a241840ce` |
| 34 | `theorem` | [turanNumber_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turannumber-eq--3922c5e512ebcd641fe0a7aa.md) | 381 | `result-track:3922c5e512ebcd641fe0a7aa6ad67cf14a0cac9100909c127f510c9175a6d158` |
| 35 | `lemma` | [turanNumber_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turannumber-two--c5f4c6e809a8b6a20f3fcfa5.md) | 414 | `result-track:c5f4c6e809a8b6a20f3fcfa5e9e2adc199cb0e1ce1b7d89ea10e491113b4d007` |
| 36 | `lemma` | [turanNumber_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/turannumber-three--19a94b1ec125dc56b46a821d.md) | 420 | `result-track:19a94b1ec125dc56b46a821d4b174893db869c05cc85b218a845f0f9ca7dac3a` |
| 37 | `theorem` | [mul_turanNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/mul-turannumber-le--e2bce285c77c8b2d5db5c4b5.md) | 428 | `result-track:e2bce285c77c8b2d5db5c4b5f4b6434901dc720e21a10f92a3c602658b85f14e` |
| 38 | `theorem` | [CliqueFree.card_edgeFinset_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/cliquefree-card-edgefinset-le--687caa2600c12ae8ca82dea3.md) | 441 | `result-track:687caa2600c12ae8ca82dea3a4845a2867479abb1b09fd5bc624ed0120269b67` |
| 39 | `lemma` | [strictMonoOn_turanNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/declarations/strictmonoon-turannumber--b97ef73cedc51c4585be93f2.md) | 450 | `result-track:b97ef73cedc51c4585be93f29c385ffff3d45afd81e03e350ab416b52e9d034c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
