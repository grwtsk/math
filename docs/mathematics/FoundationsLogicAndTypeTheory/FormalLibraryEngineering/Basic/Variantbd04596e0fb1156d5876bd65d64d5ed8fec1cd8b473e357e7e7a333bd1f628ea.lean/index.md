# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `218f5af72498bb841935cbde7cddbbfacde49f6b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `opaque` | [Internal.idOpaque](declarations/internal-idopaque--14ede94cf1adcf64c5827e90.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Shrink](declarations/shrink--fc3187a3d1c48ae5d6712aae.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Shrink.deflate](declarations/shrink-deflate--620141d619811b1d97e08255.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Shrink.inflate](declarations/shrink-inflate--ddb3c744b79addaf430466c3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Shrink.deflate_inflate](declarations/shrink-deflate-inflate--b21946fb30d2a6eacced8c5a.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Shrink.inflate_deflate](declarations/shrink-inflate-deflate--a96e38ca17e95a979a43c158.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Shrink.inflate_inj](declarations/shrink-inflate-inj--8295a9a3f09370315d808cd7.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Shrink.deflate_inj](declarations/shrink-deflate-inj--487b35ed65fd09d655d72782.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IterM](declarations/iterm--cf17333be17fddf3f2deafa9.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Iter](declarations/iter--309affa6cb276126f796db3f.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Iter.toIterM](declarations/iter-toiterm--9057104b5e1dc8749a6f093e.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IterM.toIter](declarations/iterm-toiter--e2dfd668873438e09a1d96a8.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iter.toIter_toIterM](declarations/iter-toiter-toiterm--a17931f7b25c92d534361a99.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iter.toIter_comp_toIterM](declarations/iter-toiter-comp-toiterm--83e62d8ea7dfdddc6cd5dcb9.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iter.toIterM_toIter](declarations/iter-toiterm-toiter--78bb488152b106b3b7e93e06.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iter.toIterM_comp_toIter](declarations/iter-toiterm-comp-toiter--2b777e0c418e732dea13f717.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [IterStep](declarations/iterstep--24c265953d0ae74f91d0373a.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IterStep.successor](declarations/iterstep-successor--83523844fde34e8a228d3de8.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IterStep.successor_yield](declarations/iterstep-successor-yield--cebb6412cad8a01fd96a441d.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IterStep.successor_skip](declarations/iterstep-successor-skip--759e1065fb94a85a34c8f972.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IterStep.successor_done](declarations/iterstep-successor-done--1a00af0861a2ba4daeeb6b5a.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IterStep.mapIterator](declarations/iterstep-mapiterator--bc44e181a9bb9737b20b06dd.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IterStep.mapIterator_yield](declarations/iterstep-mapiterator-yield--0fe0b7be1c82659c890c09cf.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IterStep.mapIterator_skip](declarations/iterstep-mapiterator-skip--44c4e32b61bc49b5ba61e851.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IterStep.mapIterator_done](declarations/iterstep-mapiterator-done--ab4f773d842f565f039b8123.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IterStep.mapIterator_mapIterator](declarations/iterstep-mapiterator-mapiterator--b130b49ff0cfbafa4d57d8d7.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IterStep.mapIterator_comp](declarations/iterstep-mapiterator-comp--871a32ac9bea086d725946c8.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IterStep.mapIterator_id](declarations/iterstep-mapiterator-id--760827fd38fc30c123ba787e.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IterStep.mapIterator_id'](declarations/iterstep-mapiterator-id--299859851e904300a5af4ad6.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [PlausibleIterStep](declarations/plausibleiterstep--47b0498c6b463cf5c50a7242.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [PlausibleIterStep.yield](declarations/plausibleiterstep-yield--e9deb91dd6ea17b43cca0508.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [PlausibleIterStep.skip](declarations/plausibleiterstep-skip--4e177673b90133a1731f49f0.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [PlausibleIterStep.done](declarations/plausibleiterstep-done--0166a172b04c097b254414c0.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [PlausibleIterStep.casesOn](declarations/plausibleiterstep-caseson--9ff91dbf6e160bad1fa9f087.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `class` | [Iterator](declarations/iterator--06dde8861fab9bd469e69416.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [IterM.mk'](declarations/iterm-mk--46ac12996b0b932694271274.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Iterators.toIterM](declarations/iterators-toiterm--43a1dd2cd2cd5c64afe9fa5d.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IterM.mk_internalState](declarations/iterm-mk-internalstate--923042244f09dfbd780f0881.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IterM.internalState_mk](declarations/iterm-internalstate-mk--0f209e22a4bcba681da7026d.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iter.internalState_toIterM](declarations/iter-internalstate-toiterm--ef6f17c8649a7470acf4e06f.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Iter.toIterM_mk](declarations/iter-toiterm-mk--2dd2bf58b31e1b6083a13a60.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IterM.toIter_mk](declarations/iterm-toiter-mk--3ce275a4628e9daafac5fd27.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [IterM.IsPlausibleStep](declarations/iterm-isplausiblestep--a15eed9579955ac918452c8e.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [IterM.Step](declarations/iterm-step--2ada0395af7ce1bb1803b1f9.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IterM.step](declarations/iterm-step--010e7da5c1162b6aca26e12e.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IterM.step_eq](declarations/iterm-step-eq--599839e618dcf5309990ccec.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IterM.step_mk](declarations/iterm-step-mk--c99101bedd691e4d9103d3fd.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IterM.IsPlausibleOutput](declarations/iterm-isplausibleoutput--3030221dbb12f956f9dbf4d1.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IterM.IsPlausibleSuccessorOf](declarations/iterm-isplausiblesuccessorof--d02cbf504b57305980be2a3a.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IterM.IsPlausibleSkipSuccessorOf](declarations/iterm-isplausibleskipsuccessorof--c0bacaa01b479617554efc6e.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [Iter.IsPlausibleStep](declarations/iter-isplausiblestep--ed6c960d78c129ed51715ede.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [IterM.IsPlausibleIndirectOutput](declarations/iterm-isplausibleindirectoutput--f51021ec5f7451c555581b20.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `inductive` | [IterM.IsPlausibleIndirectSuccessorOf](declarations/iterm-isplausibleindirectsuccessorof--42e5b851c5935829ab1ebfe4.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.trans](declarations/iterm-isplausibleindirectsuccessorof-trans--2b1cd09ae5f85c442d8236a8.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.single](declarations/iterm-isplausibleindirectsuccessorof-single--744a8f893d8b1d0d36519f42.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IterM.IsPlausibleIndirectOutput.trans](declarations/iterm-isplausibleindirectoutput-trans--c232260646c822e862124161.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Iter.Step](declarations/iter-step--3ad71ec2746bf30839dd403a.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Iter.Step.toMonadic](declarations/iter-step-tomonadic--f7be73349e6a3288c001b69b.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IterM.Step.toPure](declarations/iterm-step-topure--16f9550ee18da6e8613ecdd4.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IterM.Step.val_toPure](declarations/iterm-step-val-topure--913568889b9d0c3d99f07a99.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IterM.Step.toPure_yield](declarations/iterm-step-topure-yield--1a6a7713693c2d5101dc5ab8.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IterM.Step.toPure_skip](declarations/iterm-step-topure-skip--e1d502916809d16adc5f018a.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IterM.Step.toPure_done](declarations/iterm-step-topure-done--53e16b5220e71e42b66da06f.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Iter.IsPlausibleOutput](declarations/iter-isplausibleoutput--d44806b7e4ca0c32c695aef7.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Iter.isPlausibleOutput_iff_exists](declarations/iter-isplausibleoutput-iff-exists--45e6c5efdc325f680728ab6f.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Iter.IsPlausibleSuccessorOf](declarations/iter-isplausiblesuccessorof--da6e95a5cef452c392828ff0.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Iter.isPlausibleSuccessorOf_eq_invImage](declarations/iter-isplausiblesuccessorof-eq-invimage--ce33441589e58aacfc27c58c.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iter.isPlausibleSuccessorOf_iff_exists](declarations/iter-isplausiblesuccessorof-iff-exists--7d6e8682283e514d9b200448.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_yield](declarations/iter-isplausiblestep-isplausiblesuccessor-of-yield--ce1e53dda3df96cfbcde1fac.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_skip](declarations/iter-isplausiblestep-isplausiblesuccessor-of-skip--f2caea0e1a0a7acd3376dfd3.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `inductive` | [Iter.IsPlausibleIndirectOutput](declarations/iter-isplausibleindirectoutput--4a380514e6c422db2c55b171.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Iter.isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM](declarations/iter-isplausibleindirectoutput-iff-isplausibleindirectoutput-toiterm--8444dc541c98d8b31b77ab60.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `inductive` | [Iter.IsPlausibleIndirectSuccessorOf](declarations/iter-isplausibleindirectsuccessorof--000d1cfc8f040faa0274ddf9.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Iter.isPlausibleIndirectSuccessor_iff_isPlausibleIndirectSuccessor_toIterM](declarations/iter-isplausibleindirectsuccessor-iff-isplausibleindirectsuccessor-toite--8455e18e805ed58b5bcd12f4.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Iter.IsPlausibleIndirectSuccessorOf.trans](declarations/iter-isplausibleindirectsuccessorof-trans--d034152fa17b2df5b3316237.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Iter.IsPlausibleIndirectOutput.trans](declarations/iter-isplausibleindirectoutput-trans--2d3f35fb4c0bfb705d8d7a87.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Iter.IsPlausibleSkipSuccessorOf](declarations/iter-isplausibleskipsuccessorof--9df39a708a627f6690ce5d77.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Iter.step](declarations/iter-step--1881956691ff21bb3a6917bc.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iter.step_eq](declarations/iter-step-eq--2d16d3f8307a7fda22171c91.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `class` | [Iterators.Finite](declarations/iterators-finite--c1de2c4e422e8c16d44903be.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Iterators.Finite.wf_of_id](declarations/iterators-finite-wf-of-id--047b5a33ef88d1777901eb17.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [IterM.TerminationMeasures.Finite](declarations/iterm-terminationmeasures-finite--89634474ef161803461add5d.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [IterM.TerminationMeasures.Finite.Rel](declarations/iterm-terminationmeasures-finite-rel--8e82d9959f5d686e0a89bfe2.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationFinite](declarations/iterm-terminationmeasures-instwellfoundedrelationfinite--c01f982ca4aba72edfdd9ed5.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [IterM.finitelyManySteps](declarations/iterm-finitelymanysteps--a58325696cf7e8685dee1aed.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [IterM.finitelyManySteps!](declarations/iterm-finitelymanysteps--3a80c980b3f4df9f5b9c02cf.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_yield](declarations/iterm-terminationmeasures-finite-rel-of-yield--58d86a3707e22810f2030118.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_skip](declarations/iterm-terminationmeasures-finite-rel-of-skip--671bbdb2c655b528b9e3eed1.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [IterM.TerminationMeasures.Finite.rel_trans](declarations/iterm-terminationmeasures-finite-rel-trans--3c91b2f9dca74f49322d2879.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `macro_rules` | [(anonymous)](declarations/macro-rules--edf871981f406e96cf2c9895.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [Iter.finitelyManySteps](declarations/iter-finitelymanysteps--a8952474b1c0a1bb7ca860ce.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [Iter.finitelyManySteps!](declarations/iter-finitelymanysteps--d5e31a4b6324a07e821adb35.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_yield](declarations/iter-terminationmeasures-finite-rel-of-yield--3053ef4b1bb6cd39622b7d6f.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_skip](declarations/iter-terminationmeasures-finite-rel-of-skip--fc8aba59592e1932ecd8350b.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `macro_rules` | [(anonymous)](declarations/macro-rules--1c126b56ceb0e83fafb34196.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [IterM.isPlausibleSuccessorOf_of_yield](declarations/iterm-isplausiblesuccessorof-of-yield--6fb17b4a65650b4d99e784cf.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IterM.isPlausibleSuccessorOf_of_skip](declarations/iterm-isplausiblesuccessorof-of-skip--9b567043338fc07c7ca0be00.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [Iterators.Productive](declarations/iterators-productive--dd317dc250727ef571e60be1.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `structure` | [IterM.TerminationMeasures.Productive](declarations/iterm-terminationmeasures-productive--23d85d43aa3d08e9959d8d1c.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [IterM.TerminationMeasures.Productive.Rel](declarations/iterm-terminationmeasures-productive-rel--8752af0e34c9394ffb48ceec.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [IterM.TerminationMeasures.Finite.Rel.of_productive](declarations/iterm-terminationmeasures-finite-rel-of-productive--514d7fc653574f05fd907cad.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationProductive](declarations/iterm-terminationmeasures-instwellfoundedrelationproductive--7167fb9f7f1e9fcf18098cc6.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [IterM.finitelyManySkips](declarations/iterm-finitelymanyskips--a1f73aced63824049eeb826e.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [IterM.finitelyManySkips!](declarations/iterm-finitelymanyskips--403fd89577d75a1423374331.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [IterM.TerminationMeasures.Productive.rel_of_skip](declarations/iterm-terminationmeasures-productive-rel-of-skip--4354e07ec42d6943e3ea57b3.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `macro_rules` | [(anonymous)](declarations/macro-rules--64275905a97d5a471e01a1be.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [Iter.finitelyManySkips](declarations/iter-finitelymanyskips--5a63de1b4639d97bd2b43054.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Iter.finitelyManySkips!](declarations/iter-finitelymanyskips--6b417cba45ee1349b00eac17.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Iter.TerminationMeasures.Productive.rel_of_skip](declarations/iter-terminationmeasures-productive-rel-of-skip--a04c0f54e6dfd7952de1470d.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `macro_rules` | [(anonymous)](declarations/macro-rules--24e31a7eb48458b781252133.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [Iterators.instProductiveOfFinte](declarations/iterators-instproductiveoffinte--5b3a80c4f100e59ac274c529.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `class` | [LawfulDeterministicIterator](declarations/lawfuldeterministiciterator--eb51d430f96b322e07237c4b.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `structure` | [FinitenessRelation](declarations/finitenessrelation--68486541cb4b691b7616d9a5.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Finite.of_finitenessRelation](declarations/finite-of-finitenessrelation--bf92e9f841501348baec0fbd.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ProductivenessRelation](declarations/productivenessrelation--17415029cd150adca5e45321.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Productive.of_productivenessRelation](declarations/productive-of-productivenessrelation--56e4f1caecfb7ad37ffae447.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
