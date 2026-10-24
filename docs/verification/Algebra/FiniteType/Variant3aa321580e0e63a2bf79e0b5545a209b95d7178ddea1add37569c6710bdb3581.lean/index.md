# Verification target: GRWTSK.Algebra.FiniteType.Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b7949afab00be25bf3fa03f0f7bb848514e9dc",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b7949afab00be25bf3fa03f0f7bb848514e9dc`.

Source path: `GRWTSK/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FiniteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/algebra-finitetype--b373901600e4d752a189a3c2.md) | 39 | `declaration-track:b373901600e4d752a189a3c2b7e0f66b6f4c60be279adafa3f178c13e6942df1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/instance--7a4703f10bb47e983a989299.md) | 56 | `declaration-track:7a4703f10bb47e983a989299ca074f370267f53be8cf0ce22212451451f9c3c5` |
| 3 | `theorem` | [self](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/self--2e0fb519a40ab94f8909f506.md) | 76 | `result-track:2e0fb519a40ab94f8909f506a4d0f6126b384f8987b7f740ac46fea479c67d81` |
| 4 | `theorem` | [polynomial](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/polynomial--7b09fa8e2f4d815cfd67bd6b.md) | 80 | `result-track:7b09fa8e2f4d815cfd67bd6b9d8686938c9b7d48a849cd3342aceae7ac19b430` |
| 5 | `theorem` | [mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mvpolynomial--398219d91001bafcf8b3ed49.md) | 88 | `result-track:398219d91001bafcf8b3ed4939df5184fd185e304558d5691f8eab874c575913` |
| 6 | `theorem` | [of_restrictScalars_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-restrictscalars-finitetype--0e58cb4df617276f332bb8b5.md) | 96 | `result-track:0e58cb4df617276f332bb8b57842a5479cabb0f894b9ee2a7cc25a0e6c050d5f` |
| 7 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-surjective--15103f1f8c3f87495ea60c50.md) | 109 | `result-track:15103f1f8c3f87495ea60c5056b1ac67f19840a394e3a05afc7c6919c20a63ae` |
| 8 | `theorem` | [equiv](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/equiv--f648e58c5564f8737a5df0ee.md) | 115 | `result-track:f648e58c5564f8737a5df0ee6f93625a50d23fd1e0096c901a39c8e3c314b565` |
| 9 | `theorem` | [trans](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/trans--325b3e8b6d9608f1524c0678.md) | 119 | `result-track:325b3e8b6d9608f1524c0678e8a78101a0b7dc4e2ea78a39a41dbd0f0a9a0f37` |
| 10 | `theorem` | [iff_quotient_mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/iff-quotient-mvpolynomial--a930ad723722ed6c8ffc7721.md) | 126 | `result-track:a930ad723722ed6c8ffc7721e30c435216b6cb3145c7742983a059d11413fd06` |
| 11 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/iff-quotient-mvpolynomial--eeae0aa347408ec7b8296ec7.md) | 142 | `result-track:eeae0aa347408ec7b8296ec7faab2a92756016c159811bb241047729d5e09be2` |
| 12 | `theorem` | [iff_quotient_mvPolynomial''](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/iff-quotient-mvpolynomial--9f88b07691757b07f51e3871.md) | 155 | `result-track:9f88b07691757b07f51e3871b02a227a321005972600cf2f5f484b6bb647af48` |
| 13 | `instance` | [prod](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/prod--6aaf95c24c8645d7ebcb292f.md) | 166 | `declaration-track:6aaf95c24c8645d7ebcb292ffbf719eba5c311b03b69e26ef7fae51fb350e614` |
| 14 | `theorem` | [isNoetherianRing](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/isnoetherianring--a2d239f3ff09ae4f60dc338a.md) | 170 | `result-track:a2d239f3ff09ae4f60dc338a7890c7cf2b1cefe1c9cd3b571411c912f0fe6d76` |
| 15 | `theorem` | [_root_.Subalgebra.fg_iff_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/root-subalgebra-fg-iff-finitetype--b1936818bbe744c83a1fdcf7.md) | 181 | `result-track:b1936818bbe744c83a1fdcf7a4bf2c6c3645d8c71e316bd7f7afb6921a31e49a` |
| 16 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype--03ffc9f1b78ccf288debd074.md) | 196 | `declaration-track:03ffc9f1b78ccf288debd074de01fd9fb2ec5d80b54410326f599909cb14fb00` |
| 17 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype--c258157c19a9169b613a2fa9.md) | 202 | `result-track:c258157c19a9169b613a2fa966870865bcf254d7d83a63e8aaec1c2ca1cf643f` |
| 18 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/id--1b1b4e1484099f3fe86d0e17.md) | 212 | `result-track:1b1b4e1484099f3fe86d0e173e6de72a7b1f1083ffa093519a592071220d7522` |
| 19 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/comp-surjective--f0d8bae559281e3973910700.md) | 218 | `result-track:f0d8bae559281e3973910700e18dfa507073e9f416e7129a8b10220a1ef470bf` |
| 20 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-surjective--34a6ff0f2e5afdc5169eae9d.md) | 229 | `result-track:34a6ff0f2e5afdc5169eae9d67f5acec2b1a8bc6041fdd4845c20d196f199bcf` |
| 21 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/comp--987238778fc7a9a6c8cd46e2.md) | 234 | `result-track:987238778fc7a9a6c8cd46e2941afb7b2107ce409f147921872ffff9c8061322` |
| 22 | `theorem` | [of_finite](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-finite--b147a0319c0eecfb17533424.md) | 247 | `result-track:b147a0319c0eecfb1753342470914ba2b07f5bcac4f0ffd975222c7438b4e6aa` |
| 23 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-comp-finitetype--c707818ab461c9703386deb5.md) | 254 | `result-track:c707818ab461c9703386deb5cdd4ec2475c2b7e6f9bece0103cac288bb6f7d7a` |
| 24 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype--5513e1532ff8a8d1ec7a0ba0.md) | 278 | `declaration-track:5513e1532ff8a8d1ec7a0ba0139b995c9c7206e6d538bb1673354f44f449e97a` |
| 25 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype--21be88312fd146af799df163.md) | 284 | `result-track:21be88312fd146af799df163c17c964f75968256defb05c4e34d395e9bee2961` |
| 26 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/id--79891722c56b3e2b2c00d460.md) | 294 | `result-track:79891722c56b3e2b2c00d4608809ec5443230dd0595d7b5a14205158a967be9d` |
| 27 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/comp--9e5cbc5266716275420c22c8.md) | 300 | `result-track:9e5cbc5266716275420c22c88cff52f055edc4e88f5cbaa56841c08d220129cc` |
| 28 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/comp-surjective--cb4132efb1312b7054b7efc5.md) | 305 | `result-track:cb4132efb1312b7054b7efc5e8afced40080edc273c044cb86be9e736fcd01c3` |
| 29 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-surjective--8c97f5d6c1e860c5ba9639a5.md) | 310 | `result-track:8c97f5d6c1e860c5ba9639a549158b8832bea9ae048b4ea9291fe7f419f291b3` |
| 30 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-comp-finitetype--d97b8542d9a3d2c42ba6a16c.md) | 314 | `result-track:d97b8542d9a3d2c42ba6a16cd2d8a1014313dcd8161179a4d67d79583e685898` |
| 31 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mem-adjoin-support--10764c0496a998248b936786.md) | 338 | `result-track:10764c0496a998248b9367867f55aec746b0acc1f91dfdbf707ce83088d40f7f` |
| 32 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/support-gen-of-gen--c26b553668e613c545e41e00.md) | 348 | `result-track:c26b553668e613c545e41e0036d3509dbc43a85306706a80f071987cd2483c67` |
| 33 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/support-gen-of-gen--f4732ce9da9ea45fe93cf4c6.md) | 362 | `result-track:f4732ce9da9ea45fe93cf4c623312e6778c0461f1495d69e462148e522901f53` |
| 34 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/exists-finset-adjoin-eq-top--248a21ea3911ed83a36c254c.md) | 378 | `result-track:248a21ea3911ed83a36c254cb88170a1c3a4cf419224ef037d248839d6a873e4` |
| 35 | `theorem` | [of'_mem_span](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-mem-span--170a3ff14074bcd67ca5986a.md) | 391 | `result-track:170a3ff14074bcd67ca5986ae22f10910ea3684e9585c3514b401e2cdd3b3ec5` |
| 36 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mem-closure-of-mem-span-closure--6707a44e16cf0a1744da7d2f.md) | 402 | `result-track:6707a44e16cf0a1744da7d2fb200b38d30e0bb6ef39c22c41514eb5dc96c2362` |
| 37 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--7074014b33d3518e448327d4.md) | 422 | `result-track:7074014b33d3518e448327d4b928f76ad1ebc877e8c6cad5ef15bb39513c5f97` |
| 38 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-of-fg--b20fe86854f371a8c3a56e99.md) | 448 | `declaration-track:b20fe86854f371a8c3a56e998ed239a6a3ad31e53b7b538f6fec6959e700c730` |
| 39 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-iff-fg--b729cf4fca820bfa1c860804.md) | 460 | `result-track:b729cf4fca820bfa1c86080479458d5ec2902304d5708245646b0d146431129f` |
| 40 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/fg-of-finitetype--ed2bffcb06cebae9ade185c1.md) | 472 | `result-track:ed2bffcb06cebae9ade185c1f91a885a2f77c8af4d244092979e580e95d6ac1f` |
| 41 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-iff-group-fg--62dd23f689bde26d3a1693f1.md) | 479 | `result-track:62dd23f689bde26d3a1693f138a33514f15f0816140601c1c13c45d2ffb9c03d` |
| 42 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mem-adjoin-support--3247871b9e7875e9d4898d2e.md) | 497 | `result-track:3247871b9e7875e9d4898d2e967fbbdc393a836b43329ca65d38f73d8d5e9299` |
| 43 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/support-gen-of-gen--48cdceb0b7064d646b621535.md) | 506 | `result-track:48cdceb0b7064d646b621535351e40219e3205e126adc5b9bc841dee63369815` |
| 44 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/support-gen-of-gen--1869d8fd8be9bada66532158.md) | 523 | `result-track:1869d8fd8be9bada665321588efc8fb0679e55737bb3153fc60e6e17a5788327` |
| 45 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/exists-finset-adjoin-eq-top--649cb418bd53d82052165e98.md) | 539 | `result-track:649cb418bd53d82052165e98d99d5684762e714110a98c6195136f4e1bd2403d` |
| 46 | `theorem` | [of_mem_span_of_iff](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/of-mem-span-of-iff--5e573e88dbcf4d8e261be7d8.md) | 552 | `result-track:5e573e88dbcf4d8e261be7d8594120aa7d736d0a88623ad32e85b95ccea20173` |
| 47 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mem-closure-of-mem-span-closure--e18ad622c11fb4394feedd66.md) | 563 | `result-track:e18ad622c11fb4394feedd660ffd471595b81ee182578dd2cfbe72b994244d8f` |
| 48 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--d1eabbc3196a9a2952932a03.md) | 578 | `result-track:d1eabbc3196a9a2952932a0321c750f04a9307204e2b58ea250ad5e23405618e` |
| 49 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-of-fg--9f63e7131aa5b21ef6e1e27b.md) | 599 | `declaration-track:9f63e7131aa5b21ef6e1e27bdfa3be788cdeb436b2767b2cabcc450e9bed59cf` |
| 50 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-iff-fg--c93c46fa4d6b6ff6e84ce952.md) | 604 | `result-track:c93c46fa4d6b6ff6e84ce952317e7cf66490ce8967d293dbf59963f16d1cb01b` |
| 51 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/fg-of-finitetype--5b97f4d53dcd43f75de65c3c.md) | 613 | `result-track:5b97f4d53dcd43f75de65c3c477e2a2f9639638ab56d701e53464bd9cc1d8b35` |
| 52 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/finitetype-iff-group-fg--ed901a4937e37ff6d6be47fa.md) | 619 | `result-track:ed901a4937e37ff6d6be47fae952531f6a2a8ea2a616e9ea6af27aa307db4fc7` |
| 53 | `def` | [modulePolynomialOfEndo](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/modulepolynomialofendo--336e5713bd142267fa6db2d6.md) | 636 | `declaration-track:336e5713bd142267fa6db2d697e2e3caf192ae81c2ba401cc7f9efe77f9e2cd3` |
| 54 | `theorem` | [modulePolynomialOfEndo_smul_def](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/modulepolynomialofendo-smul-def--94993c74332a547f3bc3ad3d.md) | 640 | `result-track:94993c74332a547f3bc3ad3d001858980432e101b76f4f8f7f2108cf001c20b9` |
| 55 | `theorem` | [modulePolynomialOfEndo.isScalarTower](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/modulepolynomialofendo-isscalartower--4a1898c47e8dfa93adaadc73.md) | 648 | `result-track:4a1898c47e8dfa93adaadc73a6701e2b9a3600e19bf538a7c604894359f66a65` |
| 56 | `theorem` | [Module.Finite.injective_of_surjective_endomorphism](../../../../mathematics/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/declarations/module-finite-injective-of-surjective-endomorphism--471e9088581e814e86df1650.md) | 668 | `result-track:471e9088581e814e86df1650eaf010c3d2d31500aefa79cba22465b316cc9ca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
