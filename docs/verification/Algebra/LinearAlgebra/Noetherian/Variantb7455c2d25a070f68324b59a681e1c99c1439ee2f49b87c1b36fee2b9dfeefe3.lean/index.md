# Verification target: GRWTSK.Algebra.LinearAlgebra.Noetherian.Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a13981bd57edfda9f0cf318b21175f9ca9893f5a",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a13981bd57edfda9f0cf318b21175f9ca9893f5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotents` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian--783151436c14f55e336a2808.md) | 76 | `declaration-track:783151436c14f55e336a280867aca553e44bc5ffc25815b151e40a8c77ab0ccb` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-def--93e867e01bf01973991ef73c.md) | 93 | `result-track:93e867e01bf01973991ef73c3aec0157d747c12d4cc1a56340c58ab9e3f86f9f` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-submodule--778a9c8a2cfbd3189be1df5d.md) | 97 | `result-track:778a9c8a2cfbd3189be1df5d5259de67f150688ebb7dc26928432569951cd198` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-submodule-left--1cb791a54f66e5d797ab5ae0.md) | 110 | `result-track:1cb791a54f66e5d797ab5ae058c85183f7d31469125c4baff7f7db3d54e807b4` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-submodule-right--41f908a201caf3f6f0242c48.md) | 115 | `result-track:41f908a201caf3f6f0242c4850422d4f6fb84f275a9eee07c0b19774eb7e26b7` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-submodule--31523f32aa2745ac9e9b7638.md) | 120 | `declaration-track:31523f32aa2745ac9e9b76382b37a6a34e42f75d4e2a9c149510e882b8530cd8` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-le--b2de41fb2ba8c7b4166b2714.md) | 124 | `result-track:b2de41fb2ba8c7b4166b2714f4090bab0db7c78705c419c0287b2b5837480384` |
| 8 | `theorem` | [isNoetherian_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-surjective--bc44f837846693ffddb582db.md) | 131 | `result-track:bc44f837846693ffddb582db96a8fb4b980f67123f247c1e19e4a5a79c662d48` |
| 9 | `theorem` | [isNoetherian_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-linearequiv--e9c1e3ae6228c305c7e38a67.md) | 140 | `result-track:e9c1e3ae6228c305c7e38a6788be44a278cfde427934938de3d2fcd4709a9c24` |
| 10 | `theorem` | [isNoetherian_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-top-iff--af2984c4b8897d03d7463758.md) | 144 | `result-track:af2984c4b8897d03d74637582466c72defe31d8523946cc47a633d211b17f67a` |
| 11 | `theorem` | [isNoetherian_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-injective--a5aa040ff5103a15e7fdd5da.md) | 150 | `result-track:a5aa040ff5103a15e7fdd5da9da2a95ddbff3cd4db59c4d06638013b225e9ea4` |
| 12 | `theorem` | [fg_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/fg-of-injective--70f5c9f26fe0298661b06782.md) | 155 | `result-track:70f5c9f26fe0298661b06782800346f8317c5721aa6c2569a900fe8fede341e4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/instance--9093975c763cb21cce96fa1d.md) | 172 | `declaration-track:9093975c763cb21cce96fa1db44514a91782af8c4321ec97fb29ad1ead64fcc2` |
| 14 | `theorem` | [Finite.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/finite-of-injective--acb0a4f22d1402ed52e36262.md) | 178 | `result-track:acb0a4f22d1402ed52e36262440d5fb82de7e7b8c965f851135f81fff6d7d397` |
| 15 | `theorem` | [isNoetherian_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-ker-bot--27ed616257a20eb555189783.md) | 195 | `result-track:27ed616257a20eb555189783d7a9c51ef87d587fd4082e29a0e21e6c71671c26` |
| 16 | `theorem` | [fg_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/fg-of-ker-bot--932bae07a6142ac96efd2528.md) | 200 | `result-track:932bae07a6142ac96efd2528cb4f0c6000ece5ca158a18bdec8a316e1a38142a` |
| 17 | `instance` | [isNoetherian_prod](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-prod--0975423738a33a3e43266e2b.md) | 206 | `declaration-track:0975423738a33a3e43266e2b48ea4d477883169970e28f821e7f980557a3fbed` |
| 18 | `instance` | [isNoetherian_pi](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-pi--2eaca90caf49e94d5b08c11e.md) | 214 | `declaration-track:2eaca90caf49e94d5b08c11e659c6e8613cfb77294b88adea0ec02dffaee3fba` |
| 19 | `instance` | [isNoetherian_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-pi--be783d1cf70acbe2bebee3ee.md) | 290 | `declaration-track:be783d1cf70acbe2bebee3ee124786257a19c256b0eb46568748f7db6acfec67` |
| 20 | `theorem` | [isNoetherian_iff_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-iff-wellfounded--d946928c3fb02e35ac7c90ce.md) | 306 | `result-track:d946928c3fb02e35ac7c90ceb9ca2bce70a8fbca341383018714a7883e43b4f6` |
| 21 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-iff-fg-wellfounded--2275efc0f44adbac46d39639.md) | 316 | `result-track:2275efc0f44adbac46d3963958ecad674bf8e6a4ab208eecaee288cb1bf86558` |
| 22 | `theorem` | [wellFounded_submodule_gt](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/wellfounded-submodule-gt--e591e0db6ff8bf1aaf1316c0.md) | 343 | `result-track:e591e0db6ff8bf1aaf1316c04ca8b538e0bde05ab5249da545c1825b5bfc9ce7` |
| 23 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/set-has-maximal-iff-noetherian--a1f67cbecdcca975cc7f5873.md) | 352 | `result-track:a1f67cbecdcca975cc7f5873bf961fa78db2172848f38ba76674f4429e57b879` |
| 24 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/monotone-stabilizes-iff-noetherian--c17d673aedb10afc524410fa.md) | 358 | `result-track:c17d673aedb10afc524410fac36164ab4bf1338302b41db6eea5cf9d66c4772c` |
| 25 | `theorem` | [IsNoetherian.induction](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-induction--c0c30cb6f9a71745964cc4c1.md) | 364 | `result-track:c0c30cb6f9a71745964cc4c1c87029af66ceb375c5d86424f3b2e6f0f8ad4670` |
| 26 | `theorem` | [finite_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/finite-of-linearindependent--ac991b397e1128ad8c1df071.md) | 378 | `result-track:ac991b397e1128ad8c1df07197ba8119a0b4283c2bc5428a4761dc1b5b333f10` |
| 27 | `theorem` | [isNoetherian_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-range-eq-ker--5d38b5f9f5e2baefc107c914.md) | 403 | `result-track:5d38b5f9f5e2baefc107c914c4b228f2a60d7e45be0c86f3068c87b0be0dfead` |
| 28 | `theorem` | [IsNoetherian.exists_endomorphism_iterate_ker_inf_range_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-exists-endomorphism-iterate-ker-inf-range-eq-bot--d89563c1b011a006f01a8c73.md) | 417 | `result-track:d89563c1b011a006f01a8c73862349215b951d1165969e22f9e157e27bae20ae` |
| 29 | `theorem` | [IsNoetherian.injective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-injective-of-surjective-endomorphism--8dc25b8538dd984b49f194f4.md) | 437 | `result-track:8dc25b8538dd984b49f194f4ce7e1ad78561ce83a8e73f50673ab9dd5d4a67f8` |
| 30 | `theorem` | [IsNoetherian.bijective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-bijective-of-surjective-endomorphism--5da3b0343b7f9ac65fba8164.md) | 446 | `result-track:5da3b0343b7f9ac65fba81647c7bd872789e57ed70f789b908df1e1b2a412709` |
| 31 | `theorem` | [IsNoetherian.disjoint_partialSups_eventually_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-disjoint-partialsups-eventually-bot--993f555a856750efdb442bd3.md) | 455 | `result-track:993f555a856750efdb442bd33dac051b4eb69938182df5f23ba864063d4c8450` |
| 32 | `def` | [IsNoetherian.equivPUnitOfProdInjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-equivpunitofprodinjective--8a337ebcfb9c83b9072f3a87.md) | 474 | `declaration-track:8a337ebcfb9c83b9072f3a87ded3f05aa66fa9d9b7970e207426e24ac476b9cc` |
| 33 | `def` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring--3eb364d5f2d53752baf114b5.md) | 493 | `declaration-track:3eb364d5f2d53752baf114b5948bb33ecebe14d52ce141040d28fc32a71dde23` |
| 34 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-iff--8170b9661d4bf5514a965536.md) | 497 | `result-track:8170b9661d4bf5514a9655360397d3fe6cd2e29d7dedd9589737b972d2363ba9` |
| 35 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-iff-ideal-fg--05ae678f2e38e3b8a3205867.md) | 502 | `result-track:05ae678f2e38e3b8a3205867c17225aef6d6c8aaf3396857578e4c94090189f7` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/instance--953ee94a05da43cdf543f61a.md) | 508 | `declaration-track:953ee94a05da43cdf543f61a4019c11843f68ffae7fba2cac903d0698887e257` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/instance--9f7695f42f9eb133eb80a017.md) | 515 | `declaration-track:9f7695f42f9eb133eb80a01728fab3e2e64234bfc8d3c8affdbd2c522cf25cbc` |
| 38 | `theorem` | [isNoetherian_of_submodule_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-submodule-of-noetherian--d08404ee833cf1c909d6eb25.md) | 521 | `result-track:d08404ee833cf1c909d6eb2515e842a4e8afc350cf145bd00d87fffbc68c2bf1` |
| 39 | `instance` | [Submodule.Quotient.isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/submodule-quotient-isnoetherian--5278791277b2db8c877a237c.md) | 527 | `declaration-track:5278791277b2db8c877a237c94b7ea32f6fc995a949cf8655ae57606005e6dab` |
| 40 | `theorem` | [isNoetherian_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-tower--3506c333dcc5a2f28a098a2a.md) | 535 | `result-track:3506c333dcc5a2f28a098a2ac221d1f1017f81997e38f57a32d6c7b110c556d9` |
| 41 | `theorem` | [isNoetherian_of_fg_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-fg-of-noetherian--605f996e2e99bbb68c5de698.md) | 541 | `result-track:605f996e2e99bbb68c5de6984d79ba41d070e16e082e5e88d76f9245f9c5ea38` |
| 42 | `theorem` | [isNoetherian_of_isNoetherianRing_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-of-isnoetherianring-of-finite--5747b9c02d77822e2b315593.md) | 578 | `result-track:5747b9c02d77822e2b315593cec2f9d580ac8eefcda16fd6497519a66d4c4264` |
| 43 | `theorem` | [isNoetherian_span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherian-span-of-finite--178e9bcbc55a47b822b36628.md) | 588 | `result-track:178e9bcbc55a47b822b36628b303597a0f35befdc46d992157f032e8058a1fbf` |
| 44 | `theorem` | [isNoetherianRing_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-of-surjective--13ee00e514f6a4325fdf2a54.md) | 593 | `result-track:13ee00e514f6a4325fdf2a54ae82aaf1a9a5e30f5649385e73ebc25087259d95` |
| 45 | `instance` | [isNoetherianRing_range](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-range--df9ad38894d80559d0bfa53f.md) | 599 | `declaration-track:df9ad38894d80559d0bfa53f9d1aebd300e2f008bd9275e677a93efc0fe79fc2` |
| 46 | `theorem` | [isNoetherianRing_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-of-ringequiv--5940dee4e9e3cc6ad051e8d4.md) | 604 | `result-track:5940dee4e9e3cc6ad051e8d425eda2325f117e0909cf66492c99e4a2bbaebc09` |
| 47 | `theorem` | [IsNoetherianRing.isNilpotent_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/declarations/isnoetherianring-isnilpotent-nilradical--e1238770ed6b9f492d1a2442.md) | 609 | `result-track:e1238770ed6b9f492d1a2442b95e64e5abf06d5d9748aa68b54ec5c269a97ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
