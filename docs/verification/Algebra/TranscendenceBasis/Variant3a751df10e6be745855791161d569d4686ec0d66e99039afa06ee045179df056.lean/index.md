# Verification target: GRWTSK.Algebra.TranscendenceBasis.Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "719787d3972b07cbf7379dc9c356934a648993d4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/index.md) · [Full source](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `719787d3972b07cbf7379dc9c356934a648993d4`.

Source path: `GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.IndepAxioms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Rank.Cardinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isTranscendenceBasis_superset](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/exists-istranscendencebasis-superset--4661704b6a4c1df40cacfbd1.md) | 49 | `result-track:4661704b6a4c1df40cacfbd198e637d9701898d3afc7de921c45848b518228c5` |
| 2 | `theorem` | [exists_isTranscendenceBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/exists-istranscendencebasis--b364bd1bba47740ed4d8be61.md) | 56 | `result-track:b364bd1bba47740ed4d8be6179f99d8ac4e1a97a06dbcd5fde291b44a7f1b0cc` |
| 3 | `theorem` | [exists_isTranscendenceBasis'](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/exists-istranscendencebasis--0656dab34ba2d5759971113c.md) | 62 | `result-track:0656dab34ba2d5759971113c2541ad647e3230cb7c907a2628fdf7c2c50506ea` |
| 4 | `theorem` | [trdeg_eq_iSup_cardinalMk_isTranscendenceBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/trdeg-eq-isup-cardinalmk-istranscendencebasis--61ac04135e0482c17bfec747.md) | 70 | `result-track:61ac04135e0482c17bfec7477331f03b7fde14ecdc80f1fd51db563ebadb81e8` |
| 5 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/algebraicindependent-istranscendencebasis-iff--67a10e37550bd6c81a965844.md) | 79 | `result-track:67a10e37550bd6c81a96584414f5c3497d1ad2113f93d3802ce848c8da6840b5` |
| 6 | `theorem` | [IsTranscendenceBasis.isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-isalgebraic--0ac1fa7e8843f1f32fea746d.md) | 98 | `result-track:0ac1fa7e8843f1f32fea746dde632a1e430cd84f8b0a530b10c65d466b73c950` |
| 7 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/algebraicindependent-istranscendencebasis-iff-isalgebraic--eb310eee32c58b86cf3a5727.md) | 118 | `result-track:eb310eee32c58b86cf3a572734694e15012077efb339121e74c755c214909cb1` |
| 8 | `theorem` | [isTranscendenceBasis_iff_algebraicIndependent_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-iff-algebraicindependent-isalgebraic--eb6b5528bb852c0e188ec89a.md) | 129 | `result-track:eb6b5528bb852c0e188ec89a16c38f5ee3319844dae1e37eb91affcee7727b3b` |
| 9 | `lemma` | [IsTranscendenceBasis.algebraMap_comp](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-algebramap-comp--bec5bdf46db0af9d119da877.md) | 135 | `result-track:bec5bdf46db0af9d119da87714396091a4db6df9eebf5ceb3a0bd086efbb82ef` |
| 10 | `lemma` | [IsTranscendenceBasis.isAlgebraic_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-isalgebraic-iff--788efe91e549b20066955fb5.md) | 150 | `result-track:788efe91e549b20066955fb55aed9e53000f670b23f918ac048b1f0089753017` |
| 11 | `theorem` | [IsTranscendenceBasis.mvPolynomial](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-mvpolynomial--a6a2fa31fc444d8ff947b0d6.md) | 169 | `result-track:a6a2fa31fc444d8ff947b0d61833c6495c35e92d9099086e717c7e8b101012b9` |
| 12 | `theorem` | [IsTranscendenceBasis.mvPolynomial'](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-mvpolynomial--3549f19e5247507e7433b7cc.md) | 177 | `result-track:3549f19e5247507e7433b7cc706956f5a92feb7511dac838eee7887b9944f2c8` |
| 13 | `theorem` | [IsTranscendenceBasis.polynomial](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-polynomial--69d49183b1ad37a018fe21b8.md) | 180 | `result-track:69d49183b1ad37a018fe21b86e8ee2fd850fe867574ffb9580bd78acfcfac675` |
| 14 | `theorem` | [IsTranscendenceBasis.sumElim_comp](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-sumelim-comp--b242dde462e321a78713f6b1.md) | 191 | `result-track:b242dde462e321a78713f6b18714da9b726cf7c1cdc36097cc41e9c828dfa912` |
| 15 | `theorem` | [IsTranscendenceBasis.isEmpty_iff_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-isempty-iff-isalgebraic--49766beafb4834bc92389ae3.md) | 221 | `result-track:49766beafb4834bc92389ae32246649c6b0787d6926efa6a78d956c646d63f8f` |
| 16 | `theorem` | [IsTranscendenceBasis.nonempty_iff_transcendental](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-nonempty-iff-transcendental--8e7a639484a1409af46e6714.md) | 231 | `result-track:8e7a639484a1409af46e67145583d6720b8bf5ea038675072c3be78a5c10b5a5` |
| 17 | `theorem` | [IsTranscendenceBasis.isAlgebraic_field](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-isalgebraic-field--a74d960f3516cd5eef8f2bf7.md) | 236 | `result-track:a74d960f3516cd5eef8f2bf7057b0adafd804b848886b517b6c0654a2cb414d5` |
| 18 | `def` | [indepMatroid](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/indepmatroid--d8e7dbc76eb1fb8f5a40a8a8.md) | 255 | `declaration-track:d8e7dbc76eb1fb8f5a40a8a8021fd1732139af87d463b046a88e4880211319a0` |
| 19 | `def` | [matroid](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid--c0859a47d93f6cfd0922f111.md) | 280 | `declaration-track:c0859a47d93f6cfd0922f111d5c298b68c2fc5369a718f68ca1a9ba32766c22c` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/instance--de0082b0ecc3c91471bd81a9.md) | 284 | `declaration-track:de0082b0ecc3c91471bd81a9b29553a6e265b2be4e6ae9749529e98d1aa72305` |
| 21 | `theorem` | [matroid_e](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-e--ceafa7fc3719ab27aefb5ca1.md) | 287 | `result-track:ceafa7fc3719ab27aefb5ca144f8ebd6cbf639ee0a8d226ee9307a662d0f4c1e` |
| 22 | `theorem` | [matroid_cRank_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-crank-eq--6e0313fecb0e5d9fb91ab033.md) | 289 | `result-track:6e0313fecb0e5d9fb91ab0334fca5272e95013e682a0bf8902c54597d345938b` |
| 23 | `theorem` | [matroid_indep_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-indep-iff--09139440aae1ab5211afe6c3.md) | 294 | `result-track:09139440aae1ab5211afe6c38b017a05f6d64b60b9e364f5a3f30b97a5454893` |
| 24 | `theorem` | [matroid_isBase_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-isbase-iff--ce4561b4d308f1f8b0b0b064.md) | 297 | `result-track:ce4561b4d308f1f8b0b0b0649807338077399a4dcb72fdfb4be39e8865457343` |
| 25 | `theorem` | [matroid_isBasis_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-isbasis-iff--e558459ca818ea5280b7239b.md) | 304 | `result-track:e558459ca818ea5280b7239b84f72383af39111adc1dae21ce7504f62e126ec6` |
| 26 | `theorem` | [matroid_isBasis_iff_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-isbasis-iff-of-subsingleton--653a633381bd56774b3a6691.md) | 314 | `result-track:653a633381bd56774b3a669182bad2daa2c48eaf4ec7146dff06585ca8cfb963` |
| 27 | `theorem` | [isAlgebraic_adjoin_iff_of_matroid_isBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/isalgebraic-adjoin-iff-of-matroid-isbasis--93ab9c081276402bd88c2e07.md) | 320 | `result-track:93ab9c081276402bd88c2e07c497ed79ad4eb632f1dbbda5c6a0bca6865e8233` |
| 28 | `theorem` | [matroid_closure_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-closure-eq--fe258e8afc84f8f57a1f8436.md) | 328 | `result-track:fe258e8afc84f8f57a1f8436aa942a15bb7a5816e901ae544a90c588a3d87db8` |
| 29 | `theorem` | [matroid_isFlat_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-isflat-iff--1305717ccbc58b25fd3358bc.md) | 337 | `result-track:1305717ccbc58b25fd3358bc277669e6f07b37b21536e6a3108a0afa8eed2a25` |
| 30 | `theorem` | [matroid_spanning_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-spanning-iff--5c314919e6319020832e30ba.md) | 347 | `result-track:5c314919e6319020832e30bad0197669bcd47d80e101cfeb640f1c38c10ee3bf` |
| 31 | `theorem` | [matroid_isFlat_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-isflat-of-subsingleton--7b6dc3effbe94ad6260cc688.md) | 352 | `result-track:7b6dc3effbe94ad6260cc68881e9b190e41c9fcab029f45e9875de02cf4a6a33` |
| 32 | `theorem` | [matroid_closure_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-closure-of-subsingleton--815a33c1cc568a4b6f4ad81e.md) | 357 | `result-track:815a33c1cc568a4b6f4ad81e114c7afb525e583d5453874d5d87f4dcb8a3c240` |
| 33 | `theorem` | [matroid_spanning_iff_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/matroid-spanning-iff-of-subsingleton--8976722b93b5a76a113efe9b.md) | 362 | `result-track:8976722b93b5a76a113efe9bf014bd73bc7b23cdb7baff72eb6a5104aef6c1bf` |
| 34 | `theorem` | [exists_isTranscendenceBasis_between](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/exists-istranscendencebasis-between--fb99569c527b918de4911cc3.md) | 377 | `result-track:fb99569c527b918de4911cc3772432b4785bc93b15527573a5d42766bc434905` |
| 35 | `theorem` | [exists_isTranscendenceBasis_subset](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/exists-istranscendencebasis-subset--1986f66400579678a8133c09.md) | 389 | `result-track:1986f66400579678a8133c09fc232b3e708e126aeeb11f4e41d0f9e7bf88fb5d` |
| 36 | `theorem` | [isAlgebraic_iff_exists_isTranscendenceBasis_subset](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/isalgebraic-iff-exists-istranscendencebasis-subset--97b09e45359391c683d3bab9.md) | 396 | `result-track:97b09e45359391c683d3bab98db07e7e1ee4529d9fd6a0323ea8c89f71c8f25e` |
| 37 | `theorem` | [lift_cardinalMk_eq_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/lift-cardinalmk-eq-trdeg--88ce4f08885db65bb33036ab.md) | 408 | `result-track:88ce4f08885db65bb33036ab59813d0e996bb060b827b6f1daac59e8c4858299` |
| 38 | `theorem` | [cardinalMk_eq_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/cardinalmk-eq-trdeg--01e5713e52b34936ba30ba1a.md) | 414 | `result-track:01e5713e52b34936ba30ba1a56fde86b220bce3957728b46d6ffeea84b2dc31f` |
| 39 | `theorem` | [lift_cardinalMk_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/lift-cardinalmk-eq--ed1e43b0aa65632659aed7f0.md) | 421 | `result-track:ed1e43b0aa65632659aed7f04579e7ea02cbc924ab1856ccca8251549b1ae536` |
| 40 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/cardinalmk-eq--149509c969ee7f9347345587.md) | 426 | `result-track:149509c969ee7f9347345587b83eb081a680a4aab76bddd4a92eebdde3985d56` |
| 41 | `theorem` | [MvPolynomial.trdeg_of_isDomain](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/mvpolynomial-trdeg-of-isdomain--6d83da9bad6bfd2fb4e83260.md) | 435 | `result-track:6d83da9bad6bfd2fb4e8326034c011f56f9c747af0149d70bf455338e8e9d179` |
| 42 | `theorem` | [Polynomial.trdeg_of_isDomain](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/polynomial-trdeg-of-isdomain--38f195239de34aa811ba87aa.md) | 441 | `result-track:38f195239de34aa811ba87aa37a1b84300d779cfd63c680d8f4b3f19df202496` |
| 43 | `theorem` | [trdeg_lt_aleph0](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/trdeg-lt-aleph0--3f7a1f52beff46ab5d98adf2.md) | 445 | `result-track:3f7a1f52beff46ab5d98adf2c56ad966552b18d01000754075b498a4f313fc3c` |
| 44 | `lemma` | [isDomain_of_adjoin_range](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/isdomain-of-adjoin-range--72112936f152e43bd2a999c0.md) | 456 | `result-track:72112936f152e43bd2a999c0bc4da1a9cec2d42511b879750f6839eaa859a964` |
| 45 | `theorem` | [trdeg_le_cardinalMk](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/trdeg-le-cardinalmk--e9de457d6cbac83568772a92.md) | 461 | `result-track:e9de457d6cbac83568772a9292e0cd3483c0508362358e01b6a78a913e60ce9c` |
| 46 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-lift-le-trdeg-of-finite--a6add86eec5a4a62ce435728.md) | 471 | `result-track:a6add86eec5a4a62ce435728140ca9fbf4dc7342881b0e3fcc957fe23ad0110f` |
| 47 | `theorem` | [isTranscendenceBasis_of_le_trdeg_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-le-trdeg-of-finite--7d6d8765cb86e2a845e43497.md) | 481 | `result-track:7d6d8765cb86e2a845e43497479c19cc245187e69ed755f0bd3847168c0fb5bb` |
| 48 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-lift-le-trdeg--53565fcc4d99caaab2fd932b.md) | 486 | `result-track:53565fcc4d99caaab2fd932b6c7aa4489d56456f638170871ac984eb93017996` |
| 49 | `theorem` | [isTranscendenceBasis_of_le_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-le-trdeg--ca7fc09ccb3ed4ecbd303bc2.md) | 492 | `result-track:ca7fc09ccb3ed4ecbd303bc2bfd35afda7691a62cc9c7edee9c49f2d7431b768` |
| 50 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-lift-trdeg-le--b6143ac91739be58f9010087.md) | 503 | `result-track:b6143ac91739be58f9010087ac6c375f5edfb6d334bc3022ce78aef077b8bf56` |
| 51 | `theorem` | [isTranscendenceBasis_of_trdeg_le](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-trdeg-le--0a28f29457cf2ecf56ebc419.md) | 512 | `result-track:0a28f29457cf2ecf56ebc4199d7147ba7fe6a6d02ce495a9ff914efad3a932cd` |
| 52 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-lift-trdeg-le-of-finite--9633a5954cf0b5e0d4c627a4.md) | 516 | `result-track:9633a5954cf0b5e0d4c627a44b3e6a9ad01b13396d407e89da0a1313058aca6f` |
| 53 | `theorem` | [isTranscendenceBasis_of_trdeg_le_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/istranscendencebasis-of-trdeg-le-of-finite--1e079c960041ea9185d259f0.md) | 521 | `result-track:1e079c960041ea9185d259f0c37dc1a026007fe7dc231e6f7524a3553d6e35fb` |
| 54 | `theorem` | [lift_trdeg_add_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/lift-trdeg-add-eq--467abbee2b1efac8c321f50e.md) | 529 | `result-track:467abbee2b1efac8c321f50e762262b0115ad1aa7f2a15372d5d038e79add832` |
| 55 | `theorem` | [trdeg_add_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/declarations/trdeg-add-eq--326ced03fd342c1986233b29.md) | 538 | `result-track:326ced03fd342c1986233b29d761d47a747806a6fb53fdf5353046e52e466f57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
