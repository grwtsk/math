# Verification target: GRWTSK.Algebra.Solvable.Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8007ca6f290eb4a03fb8726187ab217ad7329b59",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8007ca6f290eb4a03fb8726187ab217ad7329b59`.

Source path: `GRWTSK/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean.json)

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
| 1 | `def` | [derivedSeriesOfIdeal](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal--a2d181e642add5eb508ed670.md) | 57 | `declaration-track:a2d181e642add5eb508ed67032b212da0416c2d1654806ed09e616bed51761d8` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-zero--b41799def0f379832872c162.md) | 61 | `result-track:b41799def0f379832872c162e5f354342ed59bb21c453847578b4e15be222065` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-succ--b42f3b4be617d85a4511e2f5.md) | 65 | `result-track:b42f3b4be617d85a4511e2f5221d4898b81daffd505170a75e8b15f48ce01e9a` |
| 4 | `abbrev` | [derivedSeries](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries--a3660d55cea0d3b29ed81b2f.md) | 71 | `declaration-track:a3660d55cea0d3b29ed81b2f287e99619ca4ce8a2043686b258e50f8a371e7b5` |
| 5 | `theorem` | [derivedSeries_def](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-def--76a437f1b484253342e5a54f.md) | 74 | `result-track:76a437f1b484253342e5a54fc153e054a198450330a87c2f09dbe0f5a8cc3397` |
| 6 | `lemma` | [coe_derivedSeries_one_eq](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/coe-derivedseries-one-eq--c76a682aad4efeac74601786.md) | 77 | `result-track:c76a682aad4efeac7460178695aa528d4dcc9f9ba925f129966bec3b2ab96740` |
| 7 | `theorem` | [derivedSeriesOfIdeal_add](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-add--58475f700244c580626c4fc6.md) | 88 | `result-track:58475f700244c580626c4fc62a362ac4764e879d7147eae0b3de68ee887ae4a8` |
| 8 | `theorem` | [derivedSeriesOfIdeal_le](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-le--c27f2e683366be3cd0093b22.md) | 94 | `result-track:c27f2e683366be3cd0093b223fb890f8b3260b9d89784e86fd14df1e9b35d915` |
| 9 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-succ-le--e30250b316de79f77a6b1d0e.md) | 105 | `result-track:e30250b316de79f77a6b1d0e4d581bfba2b923f5344a3105147cb96e677e6034` |
| 10 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-le-self--6cc5c98eef73a3c0ecb1736e.md) | 108 | `result-track:6cc5c98eef73a3c0ecb1736e8038cdff6fa6f5e0f77465b9e2a79d9097cb70c9` |
| 11 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-mono--1e3b63bff3a3c4f783ed14e6.md) | 111 | `result-track:1e3b63bff3a3c4f783ed14e6a5dae47178f81a9caf9be92f77c408bcd0a59b86` |
| 12 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-antitone--956ab62113e9e6edec0ef98c.md) | 114 | `result-track:956ab62113e9e6edec0ef98c2c1a5e23eccd046335c209aa2f7b5ca00674f555` |
| 13 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-add-le-add--c003d53e6530b8a374a74544.md) | 118 | `result-track:c003d53e6530b8a374a745448be8dee65e5476cc123d3e5d84f499dd103d91a0` |
| 14 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-of-bot-eq-bot--153ebead7c62527d01075256.md) | 128 | `result-track:153ebead7c62527d01075256889714a08b24f782dfd1bf4b7140b1601735506e` |
| 15 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/abelian-iff-derived-one-eq-bot--4a5cc2d45b8795034b86fded.md) | 131 | `result-track:4a5cc2d45b8795034b86fded6c7c5b1d8c0de382dae46a16be6200fdce4e2be3` |
| 16 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/abelian-iff-derived-succ-eq-bot--a4406905cfe76ecc932288b9.md) | 135 | `result-track:a4406905cfe76ecc932288b900fff3e3b8e0b7f997d9fe8203f990b7a1a81c1c` |
| 17 | `theorem` | [derivedSeriesOfIdeal_baseChange](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseriesofideal-basechange--6877507a567d225059ceff7f.md) | 140 | `result-track:6877507a567d225059ceff7ffe90bc7a50ef0103f5b502395cd3c252ce2856ae` |
| 18 | `theorem` | [derivedSeries_baseChange](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-basechange--b9eace1c6567b7ee458a09dd.md) | 148 | `result-track:b9eace1c6567b7ee458a09dd33b9afbeefbb66bd2e425b7bdc8c221ed1c82b87` |
| 19 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-eq-derivedseriesofideal-comap--f1e161498df8574fd36e0c81.md) | 161 | `result-track:f1e161498df8574fd36e0c81e5f996c8cc8552d5ea9586e74078cb7c95edeff7` |
| 20 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-eq-derivedseriesofideal-map--8dd375c00ead39d1ee71cc67.md) | 170 | `result-track:8dd375c00ead39d1ee71cc6788961d3d382b1596ebf5dff57530a42dab5f4824` |
| 21 | `theorem` | [derivedSeries_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-eq-bot-iff--019b931ed334887eaf566f74.md) | 175 | `result-track:019b931ed334887eaf566f74a9a84e654476ec554b36b0befd0ebe7083c23f11` |
| 22 | `theorem` | [derivedSeries_add_eq_bot](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-add-eq-bot--2b718074d731d2cda45a619a.md) | 179 | `result-track:2b718074d731d2cda45a619a0656961689b316601fbd0a90c56219818e12943a` |
| 23 | `theorem` | [derivedSeries_map_le](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-map-le--8089a7f46e97ec326701d44a.md) | 188 | `result-track:8089a7f46e97ec326701d44a961bac200379813e59d36ac17a96b6286df71b4e` |
| 24 | `theorem` | [derivedSeries_map_eq](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-map-eq--74e8c2fc903f0e93cb18e4e1.md) | 195 | `result-track:74e8c2fc903f0e93cb18e4e1f426518ab265a7de28137fda07f7651bffb1682a` |
| 25 | `theorem` | [derivedSeries_succ_eq_top_iff](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-succ-eq-top-iff--05e1880f09da884c8046c1fd.md) | 204 | `result-track:05e1880f09da884c8046c1fdf15a9a5757b59c33b8b92e63479a86fdaccff61c` |
| 26 | `theorem` | [derivedSeries_eq_top](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-eq-top--f6034bbd2113a5f3251f57b4.md) | 216 | `result-track:f6034bbd2113a5f3251f57b4cbd70404650f5a0576e606e2259f947c655bf048` |
| 27 | `theorem` | [coe_derivedSeries_eq_int_aux](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/coe-derivedseries-eq-int-aux--3de3b7ada10ed2f123eb841c.md) | 222 | `result-track:3de3b7ada10ed2f123eb841cf9fd12436a5b8c30b110e41e4a3926716e3d2d80` |
| 28 | `theorem` | [coe_derivedSeries_eq_int](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/coe-derivedseries-eq-int--0f559692c7c4620a82339968.md) | 239 | `result-track:0f559692c7c4620a82339968f22efcd5b57022ce1621422bf7305a46f89a7911` |
| 29 | `class` | [IsSolvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvable--4bd6ebac66e8e60b36b1457c.md) | 261 | `declaration-track:4bd6ebac66e8e60b36b1457ccc25c549eaae558f81c963da763c6cc5b822b3b8` |
| 30 | `instance` | [isSolvableBot](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvablebot--1f56fa0976b59c7f8d81b85b.md) | 265 | `declaration-track:1f56fa0976b59c7f8d81b85be99270ac425bf218696d8008deac3f37156c58c9` |
| 31 | `lemma` | [isSolvable_iff](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvable-iff--6bb6a54f7149cf170f159b67.md) | 268 | `result-track:6bb6a54f7149cf170f159b678ee3960b4395697f1e40cff636456c82a4c3651b` |
| 32 | `lemma` | [IsSolvable.solvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvable-solvable--40d5bca44e9988f1078b3468.md) | 271 | `result-track:40d5bca44e9988f1078b3468f401d2d05b0c20947b75e16d89babb1f08c56fa4` |
| 33 | `lemma` | [IsSolvable.mk](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvable-mk--609fde826357a514c6020758.md) | 275 | `result-track:609fde826357a514c60207585a8613500b5857d3c450107ca32b4408efc1dd91` |
| 34 | `instance` | [isSolvableAdd](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvableadd--3b99dde2b2b4dd9edeea207f.md) | 278 | `declaration-track:3b99dde2b2b4dd9edeea207ff052175b14d8aaa08a012c463aadaa803ae71599` |
| 35 | `theorem` | [derivedSeries_lt_top_of_solvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-lt-top-of-solvable--49b4c32fc0757e68d19038d2.md) | 284 | `result-track:49b4c32fc0757e68d19038d2702aecd9ee60adff53602497d2e290db36e47cf9` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/instance--515a527e57b9e3a2eb72ad97.md) | 293 | `declaration-track:515a527e57b9e3a2eb72ad9774ba34c97c49a663021b731bef0f16d09b40f5c0` |
| 37 | `theorem` | [isSolvable_tensorProduct_iff](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/issolvable-tensorproduct-iff--e248ae50331f7943a33b84e7.md) | 301 | `result-track:e248ae50331f7943a33b84e762e3414277c4c42702ce42c4a32219b3f80ca517` |
| 38 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/injective-liealgebra-issolvable--86611a69a7efccb1d0233595.md) | 321 | `result-track:86611a69a7efccb1d02335957d1fb2028c4f86fce6e8dffe28626e44628e61d2` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/instance--fdec4be74f7ba9dcdf2e8eee.md) | 329 | `declaration-track:fdec4be74f7ba9dcdf2e8eeee70d25cbbc8d962417ae3e60a87d727fd99c88c0` |
| 40 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/surjective-liealgebra-issolvable--a19a2d9281979ac99ff067f9.md) | 332 | `result-track:a19a2d9281979ac99ff067f978d19c1401a569fc2356df9c3ac3c68c5e0650e5` |
| 41 | `instance` | [LieHom.isSolvable_range](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/liehom-issolvable-range--9e88361e5b8ba38dbe02051a.md) | 342 | `declaration-track:9e88361e5b8ba38dbe02051a962ec28052828c82b020417ff24d24a590103811` |
| 42 | `theorem` | [solvable_iff_equiv_solvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/solvable-iff-equiv-solvable--1872f339241148b272d065de.md) | 348 | `result-track:1872f339241148b272d065dee85d24ef4859e25b5b7660d69f14fdc4f2d3f31d` |
| 43 | `theorem` | [le_solvable_ideal_solvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/le-solvable-ideal-solvable--b11d4db104f469e6c44da39e.md) | 353 | `result-track:b11d4db104f469e6c44da39ed5e5be68d6d7b30ea98bde7c94fd440fb9f961ed` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/instance--8d3e6a6a74237b8c1fdd5648.md) | 359 | `declaration-track:8d3e6a6a74237b8c1fdd5648c1ee862d257c47725f9571e0688547d56d1033f2` |
| 45 | `def` | [radical](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/radical--4c225ea4a557d1b1637be73d.md) | 365 | `declaration-track:4c225ea4a557d1b1637be73d4ee7ab61a1e1a4ffb6f3dfbcb4c138876e2ed6b6` |
| 46 | `instance` | [radicalIsSolvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/radicalissolvable--c68acefb8ebe8852bc260a59.md) | 369 | `declaration-track:c68acefb8ebe8852bc260a596201352b4c711eef825657d233e6bbdfcac1215e` |
| 47 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/lieideal-solvable-iff-le-radical--11212129307132d329afaf9a.md) | 378 | `result-track:11212129307132d329afaf9a16ef6f1e48a48b52ee4f65230f624e1c982b6dd8` |
| 48 | `theorem` | [center_le_radical](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/center-le-radical--67e26f3564c1cb3edf8bb31e.md) | 382 | `result-track:67e26f3564c1cb3edf8bb31e25f691c2b1d8945e98399030623115ce974bdd94` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/instance--c7253790f767d62d9ecc52e7.md) | 386 | `declaration-track:c7253790f767d62d9ecc52e7424c334c23e2512a758ef5c0db0ba2487b31b7cd` |
| 50 | `lemma` | [radical_eq_top_of_isSolvable](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/radical-eq-top-of-issolvable--a0529f7df0a4cfd3463ab104.md) | 389 | `result-track:a0529f7df0a4cfd3463ab10469655195ca89cc63a48bc7c7d15d95e107fe4de7` |
| 51 | `def` | [derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedlengthofideal--9b636bdfdedf4e91f8942c75.md) | 399 | `declaration-track:9b636bdfdedf4e91f8942c7554954bd52f40de6fafa04a4e467257b65e59b998` |
| 52 | `abbrev` | [derivedLength](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedlength--178f58fb02a45d78432f8df8.md) | 405 | `declaration-track:178f58fb02a45d78432f8df83d0938714c09cd77e6526633df346c7adb1d75aa` |
| 53 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedseries-of-derivedlength-succ--b02cfde69b9d2d8811e6dc7c.md) | 408 | `result-track:b02cfde69b9d2d8811e6dc7c22131967a48b8d5803b8120d673d762a26717276` |
| 54 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedlength-eq-derivedlengthofideal--3c9ec795e1c1751444afe881.md) | 421 | `result-track:3c9ec795e1c1751444afe881bffd5060a9961bf98d626f0e7b67d0ebc4cf07e9` |
| 55 | `def` | [derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedabelianofideal--ba1c0a20bebe97909bf159e0.md) | 434 | `declaration-track:ba1c0a20bebe97909bf159e0730a929408516abc3a78c49ca2d2c820bdbed9f2` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/instance--0d23f4f46d9ed10405d72a77.md) | 439 | `declaration-track:0d23f4f46d9ed10405d72a77cdbfbeeec9f745e7f66970096ddc2a7d5f6822d6` |
| 57 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/abelian-derivedabelianofideal--7c9750f9cd82f059d8438335.md) | 442 | `result-track:7c9750f9cd82f059d84383356ededc758657979d737e47748d3b7e0e3ba19528` |
| 58 | `theorem` | [derivedLength_zero](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/derivedlength-zero--0a05dc002c494c8ef4330733.md) | 449 | `result-track:0a05dc002c494c8ef43307338af2657119c2070d0840663c1bf1eafbd55a9163` |
| 59 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variantfec729bea36f7426d186d1bcad8246748d37c7b29b2518638e5cf0c5472ef7b0.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff--855a60f7317b8c0815a098ac.md) | 458 | `result-track:855a60f7317b8c0815a098ac269b12ca353146ba04ecf1f8f02cf9990180302c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
