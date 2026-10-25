# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de2a849308ba2e5e940cd7bfc4ba26967d15915`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `opaque` | [Internal.idOpaque](declarations/internal-idopaque--190b6b657631dd20ff90083b.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Shrink](declarations/shrink--a2473e0e216312e3baf5d191.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Shrink.deflate](declarations/shrink-deflate--fa3a2f06c8ae1a8b89224e72.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Shrink.inflate](declarations/shrink-inflate--223cedc23db4257d3ccf42b7.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Shrink.deflate_inflate](declarations/shrink-deflate-inflate--c622cd1163b8bdeefce892b0.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Shrink.inflate_deflate](declarations/shrink-inflate-deflate--cc19fd96364f861c7ea0ff36.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Shrink.inflate_inj](declarations/shrink-inflate-inj--0731aa2d41cd79c173958fcc.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Shrink.deflate_inj](declarations/shrink-deflate-inj--a882306a884b530f18d102c2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IterM](declarations/iterm--0b3ba783786e6252d0615d08.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Iter](declarations/iter--1161dac7213bfa0241cbef38.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Iter.toIterM](declarations/iter-toiterm--e696675001507fa20782a71e.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IterM.toIter](declarations/iterm-toiter--9cd5c6d3e7871c368dd37d4e.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iter.toIter_toIterM](declarations/iter-toiter-toiterm--d64f0b0302070763ac0b95a4.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iter.toIter_comp_toIterM](declarations/iter-toiter-comp-toiterm--f99f08ec9834c651c8c923ae.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iter.toIterM_toIter](declarations/iter-toiterm-toiter--50747027dcf1af47a7cde18a.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iter.toIterM_comp_toIter](declarations/iter-toiterm-comp-toiter--f861dd5afc13b9604a737c19.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [IterStep](declarations/iterstep--084f568ec4e8f4ae2d43e979.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IterStep.successor](declarations/iterstep-successor--005cc8a8b2c36c3434f2f9f7.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IterStep.successor_yield](declarations/iterstep-successor-yield--d4064af060edc276957301b4.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IterStep.successor_skip](declarations/iterstep-successor-skip--48506c5ccc581e55cd500649.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IterStep.successor_done](declarations/iterstep-successor-done--ef07615c177bcdbe4d1728aa.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IterStep.mapIterator](declarations/iterstep-mapiterator--e1c6c8f07352580a7ec67d86.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IterStep.mapIterator_yield](declarations/iterstep-mapiterator-yield--e24a62a1ae994ab0d368b06b.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IterStep.mapIterator_skip](declarations/iterstep-mapiterator-skip--638174a38740a1d7f9075ae1.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IterStep.mapIterator_done](declarations/iterstep-mapiterator-done--3a90297acbcd6e31bdb5037f.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IterStep.mapIterator_mapIterator](declarations/iterstep-mapiterator-mapiterator--4f28ca681462170c19196522.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IterStep.mapIterator_comp](declarations/iterstep-mapiterator-comp--dbb212da69db6a4ea02fa62d.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IterStep.mapIterator_id](declarations/iterstep-mapiterator-id--052fbc1e97ad49c7d67921a4.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IterStep.mapIterator_id'](declarations/iterstep-mapiterator-id--c8d12fe2806549e3e7ed7a05.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [PlausibleIterStep](declarations/plausibleiterstep--536c77985e1724840cb0b9d6.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [PlausibleIterStep.yield](declarations/plausibleiterstep-yield--4b1cc6100322f28a4e42770b.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [PlausibleIterStep.skip](declarations/plausibleiterstep-skip--fdcf0b006f67c8fe88074700.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [PlausibleIterStep.done](declarations/plausibleiterstep-done--e850dd2890fe0f2fca83eb88.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [PlausibleIterStep.casesOn](declarations/plausibleiterstep-caseson--22a9ec936726a32547001422.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `class` | [Iterator](declarations/iterator--c824b454f797b7f9fb6687f5.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [IterM.mk'](declarations/iterm-mk--04d2706959d76afcc7b172f5.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Iterators.toIterM](declarations/iterators-toiterm--082f01a922dbc63cd41d5b64.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IterM.mk_internalState](declarations/iterm-mk-internalstate--80e44b393cab8ddd3a30d97e.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IterM.internalState_mk](declarations/iterm-internalstate-mk--2667feb804e918c63bb9b1ea.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iter.internalState_toIterM](declarations/iter-internalstate-toiterm--4e6b249dfa5829cd7df150c8.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Iter.toIterM_mk](declarations/iter-toiterm-mk--e4262a34963e6d7e809e5e31.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IterM.toIter_mk](declarations/iterm-toiter-mk--94aaf96b929b21aef24ce62a.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [IterM.IsPlausibleStep](declarations/iterm-isplausiblestep--c44bdcf4414097c3d7a36ec9.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [IterM.Step](declarations/iterm-step--c657595f655aaa3f511f1eb3.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IterM.step](declarations/iterm-step--8586873cf9f4fa08d257a0df.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IterM.step_eq](declarations/iterm-step-eq--a226dba4e552f25bc0a3df54.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IterM.step_mk](declarations/iterm-step-mk--46b09ede81d54c20deb7ade4.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IterM.IsPlausibleOutput](declarations/iterm-isplausibleoutput--1c5ef4c0cef1ece47d23e7af.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IterM.IsPlausibleSuccessorOf](declarations/iterm-isplausiblesuccessorof--5306fc5a4b98978540dff299.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IterM.IsPlausibleSkipSuccessorOf](declarations/iterm-isplausibleskipsuccessorof--2245eb010e141c079324edf6.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [Iter.IsPlausibleStep](declarations/iter-isplausiblestep--c0132d65f01ccfeba3f9ae1d.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [IterM.IsPlausibleIndirectOutput](declarations/iterm-isplausibleindirectoutput--1f0c77cecd9f3054d1b72316.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `inductive` | [IterM.IsPlausibleIndirectSuccessorOf](declarations/iterm-isplausibleindirectsuccessorof--9a7912a409c6164365dd04d3.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.trans](declarations/iterm-isplausibleindirectsuccessorof-trans--15374856ce43bce925b0bf38.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.single](declarations/iterm-isplausibleindirectsuccessorof-single--e7cf4ca231a90e77dc8fe062.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IterM.IsPlausibleIndirectOutput.trans](declarations/iterm-isplausibleindirectoutput-trans--ec3bd43545fc1f216819a782.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Iter.Step](declarations/iter-step--1c0e5a633e898016971bd28c.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Iter.Step.toMonadic](declarations/iter-step-tomonadic--508d97983fa159004723bd22.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IterM.Step.toPure](declarations/iterm-step-topure--5c696f098893d9808fc1e623.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IterM.Step.val_toPure](declarations/iterm-step-val-topure--a3847c0693cd8ab33cd5e2c8.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IterM.Step.toPure_yield](declarations/iterm-step-topure-yield--7a04bda4a6546bad938eef54.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IterM.Step.toPure_skip](declarations/iterm-step-topure-skip--72436cd133865afc15c2c3e1.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IterM.Step.toPure_done](declarations/iterm-step-topure-done--5f4e53541b5a671c34935901.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Iter.IsPlausibleOutput](declarations/iter-isplausibleoutput--b8ad1178d8f2bd99b87b5f9c.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Iter.isPlausibleOutput_iff_exists](declarations/iter-isplausibleoutput-iff-exists--9ea81136ebea16a9b574c264.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Iter.IsPlausibleSuccessorOf](declarations/iter-isplausiblesuccessorof--c9e03020e1cda1fafe7d1720.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Iter.isPlausibleSuccessorOf_eq_invImage](declarations/iter-isplausiblesuccessorof-eq-invimage--8f2cb9ba94d94a77bc9f5a85.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iter.isPlausibleSuccessorOf_iff_exists](declarations/iter-isplausiblesuccessorof-iff-exists--b141f75021ad1fc371594936.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_yield](declarations/iter-isplausiblestep-isplausiblesuccessor-of-yield--d61421ea19eaeafbc5b47e34.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_skip](declarations/iter-isplausiblestep-isplausiblesuccessor-of-skip--83309831cb451d33afb801fd.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `inductive` | [Iter.IsPlausibleIndirectOutput](declarations/iter-isplausibleindirectoutput--586f2885258edec128f4d687.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Iter.isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM](declarations/iter-isplausibleindirectoutput-iff-isplausibleindirectoutput-toiterm--db8a121b531905ce004cb166.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `inductive` | [Iter.IsPlausibleIndirectSuccessorOf](declarations/iter-isplausibleindirectsuccessorof--f95f44d7fc6850736e5326ea.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Iter.isPlausibleIndirectSuccessor_iff_isPlausibleIndirectSuccessor_toIterM](declarations/iter-isplausibleindirectsuccessor-iff-isplausibleindirectsuccessor-toite--59e1701caefdab995e53f5d8.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Iter.IsPlausibleIndirectSuccessorOf.trans](declarations/iter-isplausibleindirectsuccessorof-trans--3b82c4b52841e238d59884d6.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Iter.IsPlausibleIndirectOutput.trans](declarations/iter-isplausibleindirectoutput-trans--c5ac56a9e9e173b9f986e571.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Iter.IsPlausibleSkipSuccessorOf](declarations/iter-isplausibleskipsuccessorof--d63b2eee7955326884a3e1b9.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Iter.step](declarations/iter-step--53a2e0acb7595dad37af65f2.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iter.step_eq](declarations/iter-step-eq--b651ebe38eedd6cca4761620.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `class` | [Iterators.Finite](declarations/iterators-finite--9aa8c4af038e6cf47296a03e.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Iterators.Finite.wf_of_id](declarations/iterators-finite-wf-of-id--7a9cf481c038b7b18543b50f.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [IterM.TerminationMeasures.Finite](declarations/iterm-terminationmeasures-finite--e2b55b422b1ec0044755801f.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [IterM.TerminationMeasures.Finite.Rel](declarations/iterm-terminationmeasures-finite-rel--fbea62a6037ce5bd5452fa8a.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationFinite](declarations/iterm-terminationmeasures-instwellfoundedrelationfinite--9870468d54618700aca7acc3.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [IterM.finitelyManySteps](declarations/iterm-finitelymanysteps--062c043b905488278df2798e.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [IterM.finitelyManySteps!](declarations/iterm-finitelymanysteps--16915bfbf7e34c25db786f38.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_yield](declarations/iterm-terminationmeasures-finite-rel-of-yield--e006d334a062581b2edea8e2.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_skip](declarations/iterm-terminationmeasures-finite-rel-of-skip--0d74c27642206ca6cc03379b.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [IterM.TerminationMeasures.Finite.rel_trans](declarations/iterm-terminationmeasures-finite-rel-trans--d766441cccf54d9d33496f61.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `macro_rules` | [(anonymous)](declarations/macro-rules--b7ae8f9f409d25171e3c7aae.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [Iter.finitelyManySteps](declarations/iter-finitelymanysteps--13b7f48aa3e1c131178a8f5d.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [Iter.finitelyManySteps!](declarations/iter-finitelymanysteps--deca63c8b88de861cb8a7f26.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_yield](declarations/iter-terminationmeasures-finite-rel-of-yield--4a4279ae2f40a4acaa9053c6.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_skip](declarations/iter-terminationmeasures-finite-rel-of-skip--03a6e00ce616b7b3f63ea288.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `macro_rules` | [(anonymous)](declarations/macro-rules--6c01e08be6fa28485b2f559d.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [IterM.isPlausibleSuccessorOf_of_yield](declarations/iterm-isplausiblesuccessorof-of-yield--9bc69adf8bf7f3e9d56ddcb3.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IterM.isPlausibleSuccessorOf_of_skip](declarations/iterm-isplausiblesuccessorof-of-skip--8d11e6f0aec499be77045520.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [Iterators.Productive](declarations/iterators-productive--28ac1d35d5687d6047b1a17d.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `structure` | [IterM.TerminationMeasures.Productive](declarations/iterm-terminationmeasures-productive--f50322a01b0a714a5f562124.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [IterM.TerminationMeasures.Productive.Rel](declarations/iterm-terminationmeasures-productive-rel--49b682ebf2bb4cae6f159bc4.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [IterM.TerminationMeasures.Finite.Rel.of_productive](declarations/iterm-terminationmeasures-finite-rel-of-productive--48a02eddfe356824d0269035.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationProductive](declarations/iterm-terminationmeasures-instwellfoundedrelationproductive--7f5bf038932247db69854bfb.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [IterM.finitelyManySkips](declarations/iterm-finitelymanyskips--8a0fe36b86edafc9a9add489.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [IterM.finitelyManySkips!](declarations/iterm-finitelymanyskips--e268cfa361017e5bd7af1658.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [IterM.TerminationMeasures.Productive.rel_of_skip](declarations/iterm-terminationmeasures-productive-rel-of-skip--dd53645feda0ce30ce978bda.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `macro_rules` | [(anonymous)](declarations/macro-rules--3ba9568ebb089920734e3801.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [Iter.finitelyManySkips](declarations/iter-finitelymanyskips--e62a95b0997c2ff15c995538.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Iter.finitelyManySkips!](declarations/iter-finitelymanyskips--b46346655b4a17ae8aae2f0a.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Iter.TerminationMeasures.Productive.rel_of_skip](declarations/iter-terminationmeasures-productive-rel-of-skip--744586f092997bb333eee57f.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `macro_rules` | [(anonymous)](declarations/macro-rules--8deb955fa40411334615b236.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [Iterators.instProductiveOfFinte](declarations/iterators-instproductiveoffinte--ff920a685e98cd740df79166.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `class` | [LawfulDeterministicIterator](declarations/lawfuldeterministiciterator--e8bf581e412553eb55573006.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `structure` | [FinitenessRelation](declarations/finitenessrelation--28f2c4d2119e1e70b39a00ff.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Finite.of_finitenessRelation](declarations/finite-of-finitenessrelation--d62250b6803fca4d01ad9db2.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ProductivenessRelation](declarations/productivenessrelation--59c717f2b68b8289f0d5c496.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Productive.of_productivenessRelation](declarations/productive-of-productivenessrelation--4b75a326b43dd9c32e81fb42.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
