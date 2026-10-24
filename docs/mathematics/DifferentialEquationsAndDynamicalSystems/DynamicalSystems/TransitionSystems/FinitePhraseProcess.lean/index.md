# GRWTSK.DynamicalSystems.TransitionSystems.FinitePhraseProcess

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**160 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b17be9c50ad983254387730cd6e5ef95daf7f263`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightedEdge](declarations/weightededge--07cfeca6482d9770309321e7.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Path](declarations/path--f53553b0847eab974e37f4dd.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Path.cost_add_potential_le](declarations/path-cost-add-potential-le--a46ea6fcdfab5307a66481c4.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Path.cost_le_entry_potential](declarations/path-cost-le-entry-potential--e2abd3be8eb2df49086b08e3.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [positive_loop_obstructs_potential](declarations/positive-loop-obstructs-potential--a248d3af2cace5a4f15f7620.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Section](declarations/section--77b515e197e41e0cd9dcffaa.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Section.restrict](declarations/section-restrict--f1f95209b4f256183fb6b479.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Section.restrict_identity](declarations/section-restrict-identity--38d4176388649d40a9702084.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Section.restrict_composition](declarations/section-restrict-composition--a3dc4d466af5e99cbfd770cc.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Cover](declarations/cover--a1589452f1ca54f7edf91132.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Compatible](declarations/compatible--9bd6d9f35300e486d9901c1b.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [function_sections_unique_gluing](declarations/function-sections-unique-gluing--c77ae70d7c5d8478333da202.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Participant](declarations/participant--51f599b96a21baf2338476b9.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [Register](declarations/register--de990d3b72afca8280f96ac8.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Frame](declarations/frame--7502d58ec225f51473740d6f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [pivotFrame](declarations/pivotframe--2ee9188ffc7e75fe95d0e750.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [ContextPoint](declarations/contextpoint--e5dd2bcd0171d110573e73d0.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [BindingValue](declarations/bindingvalue--9ac201056a675d121cb13bbe.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pivotSection](declarations/pivotsection--15c1f1cc15f6c5949ce72a43.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [PivotOpen](declarations/pivotopen--02e69404c3dc8bbc8a249702.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pivotPiece](declarations/pivotpiece--4bf7c5d51365d4148230a625.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotCover](declarations/pivotcover--77df202dd7dc4d10175edd02.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pivotLocalSection](declarations/pivotlocalsection--14106a4b0648adb5d7259136.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pivotLocalCompatible](declarations/pivotlocalcompatible--20a91cfb50f67b113d17ca3e.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pivot_unique_gluing](declarations/pivot-unique-gluing--3c3c13d3fc5a066281731c51.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [FrameTransport](declarations/frametransport--dbdf8973edddedf34db67392.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [FrameTransport.identity](declarations/frametransport-identity--b099c95dc2b10bc61ccb34e2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [FrameTransport.compose](declarations/frametransport-compose--f1d3d716d810993b122bc6d5.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [frame_transport_identity](declarations/frame-transport-identity--e78be51c1dbe7704892e179c.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [frame_transport_composition](declarations/frame-transport-composition--9cc9a62dde37b17c45b00a22.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [frame_transport_cocycle](declarations/frame-transport-cocycle--c2a7e04804b28b06a35758d4.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [bridgeFrame](declarations/bridgeframe--edf9e8d34e3211ee51952af8.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pivot_to_bridge_transport](declarations/pivot-to-bridge-transport--160f1eee0823c207b17aae06.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [ClaimScope](declarations/claimscope--3871022de5b1a2d97b58d8f9.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PhraseCore](declarations/phrasecore--460db1c1dee7458a913c3c3c.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [EncodedCore](declarations/encodedcore--8486e9e101c290dfa54fdd74.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [encode](declarations/encode--87573ef2a56ff691e191c20f.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [decode](declarations/decode--6219d3a1c6354d3937ed4f7e.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [decode_encode](declarations/decode-encode--e8953f4ee941be255bb3abeb.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [encode_decode](declarations/encode-decode--f7dcd8c26e45475cdb035386.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [FrameRoleObservations](declarations/frameroleobservations--4d366d4e75f7ec9ddd7d02fc.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [observeFrameRole](declarations/observeframerole--54053dca8da336fd84533f63.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [FrameRoleEquivalent](declarations/frameroleequivalent--8007567044ee2b8ce4bc9b84.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [reconstruct](declarations/reconstruct--aae0d085d73197e72dd2b840.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [observe_reconstruct](declarations/observe-reconstruct--e37068ba0b62f44d91a05a41.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reconstruct_observe_equivalent](declarations/reconstruct-observe-equivalent--8230d40f5fd050b8cbda9c85.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [observation_separation](declarations/observation-separation--dbe0ee1dd271d0978a2c2716.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SufficientRepresentation](declarations/sufficientrepresentation--36586de7e95529f9ad44b9ce.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [factorToFrameRole](declarations/factortoframerole--a676afa7332a4f77ba87e372.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [frame_role_universal_factorization](declarations/frame-role-universal-factorization--1d4ac2078ec26043b874bb1e.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [frame_role_factor_unique_on_carrier](declarations/frame-role-factor-unique-on-carrier--858a21cc32b5bd665f2c5d5b.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [StructuralQuine](declarations/structuralquine--32811921ce86b7291764c671.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [pilotStructuralQuine](declarations/pilotstructuralquine--9ae0fd50d26c0eaa743cbf50.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pilot_quine_exact_carrier](declarations/pilot-quine-exact-carrier--94cdbc664833c5e080b6e3eb.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [pilot_quine_certificate_reconstruction](declarations/pilot-quine-certificate-reconstruction--04546ae8cab1baed95fd7d23.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [pilot_quine_separation](declarations/pilot-quine-separation--ac42f0ffab0a77b08fd72813.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [pilotRepresentation](declarations/pilotrepresentation--9c48ced04593b75abb02e0f2.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pilot_quine_universal_factorization](declarations/pilot-quine-universal-factorization--a401c4a2f0d955eb9f508afd.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `inductive` | [BoundProposition](declarations/boundproposition--3371b35f02591005f3031461.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [PropositionCorrection](declarations/propositioncorrection--f10d8d30bfae93e16cc721e2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [sourceExplanation](declarations/sourceexplanation--6ac8f42838e9576a640b1a5c.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [revisedExplanation](declarations/revisedexplanation--ca4437618dc3d1b42698446e.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [clarifyBound](declarations/clarifybound--252bf9310a453c07e350ae7e.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [clarify_source_is_revision](declarations/clarify-source-is-revision--d09d5124087cda08ff03af62.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [source_and_revision_are_not_exact](declarations/source-and-revision-are-not-exact--05671e1e1e04a0ffdfada445.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [source_and_revision_preserve_frame_role](declarations/source-and-revision-preserve-frame-role--c2b748a775645a20d99d0234.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [boundCorrection](declarations/boundcorrection--0b6e8c7c38c8df942fc93178.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [bound_correction_changes_proposition](declarations/bound-correction-changes-proposition--84697a4bacb2b0171e2a89b9.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [clarify_transition_congruence](declarations/clarify-transition-congruence--e07d50bcf6d000669d0849ea.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [inducedClarify](declarations/inducedclarify--1b7160d632df39066a2a90ea.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [induced_clarify_commutes](declarations/induced-clarify-commutes--9207dc65f04d0b7f6afc71b7.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `inductive` | [ProcessOp](declarations/processop--e45da329c5c8b189b3891032.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [interpret](declarations/interpret--09e230e1ec2b9a32eb41a1a4.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [interpreter_preserves_structure](declarations/interpreter-preserves-structure--faf5b8e26dad871ef1a24568.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `inductive` | [TransportProcessOp](declarations/transportprocessop--71dbbc639d4e4e05fc39ef43.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [lowerTransportOperation](declarations/lowertransportoperation--e1a65e98cc96307ac49b279d.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [interpretTransport](declarations/interprettransport--acbb0f04e75586f2949aaf92.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [transport_interpreter_correspondence](declarations/transport-interpreter-correspondence--b5631e0fffc5b4d4c004ecfe.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `structure` | [ExecutableProcessState](declarations/executableprocessstate--4a675499e95fd0bc5a4af5fc.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [initialProcessState](declarations/initialprocessstate--7c3a99fa81b40e32d5d32116.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `inductive` | [ExecutableProcessOp](declarations/executableprocessop--69e22d55bddcc40d050b72d2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [executeProcess](declarations/executeprocess--07529975c82278e3ea67a513.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [execute_quote_self_core_materializes_description](declarations/execute-quote-self-core-materializes-description--5efcff5168f5a00b2331dc79.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [execute_compose_materializes_order](declarations/execute-compose-materializes-order--04a91b0d961d60d6f04c2abb.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [execute_project_materializes_observations](declarations/execute-project-materializes-observations--9ae956f1c95a9d9895e63ea0.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `inductive` | [PilotPhrase](declarations/pilotphrase--e2e4ea1be2452e372fda82ff.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [pilotText](declarations/pilottext--40a67b8ead3d7c877fb68380.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [pilotRelation](declarations/pilotrelation--955e705bcf5e36e6254425eb.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [pilotContinuationOpen](declarations/pilotcontinuationopen--abec6b72a7f470d2d4eb68b8.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [pilotSectionFor](declarations/pilotsectionfor--6ac5f1b2ea417e5607e3e3ae.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [pilotLocalSectionFor](declarations/pilotlocalsectionfor--d680c3ab39b4999b96e0bfde.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [pilot_local_compatible](declarations/pilot-local-compatible--6d06379c8cad7d35aff871c6.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [pilot_phrase_unique_gluing](declarations/pilot-phrase-unique-gluing--b4917470a1c8bf38c9d8896f.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `structure` | [LampComposition](declarations/lampcomposition--e0675050ace77f2d27c7a17c.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [lampComposition](declarations/lampcomposition--cd8f78db9ca71f5336fbb5fc.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [LampComposition.Valid](declarations/lampcomposition-valid--3aa7a8d124516b9c2819a5c2.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lamp_composition_application](declarations/lamp-composition-application--bbcf971de016826a6017da20.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lamp_composition_preserves_shared_bindings](declarations/lamp-composition-preserves-shared-bindings--8a036c042d44647a571916b9.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lamp_composition_retains_ordered_distinct_actions](declarations/lamp-composition-retains-ordered-distinct-actions--d761575f4ec105e291604190.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lamp_pair_unique_local_gluing](declarations/lamp-pair-unique-local-gluing--21197acfeb245d7872ee4f81.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `inductive` | [LampPoint](declarations/lamppoint--1766451c4a8bf59821b2f9ba.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `inductive` | [LampOpen](declarations/lampopen--10ac0c7c8aace8bda838f612.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [lampPiece](declarations/lamppiece--1663eaf6030dcc4b88c35e7c.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lampCover](declarations/lampcover--b461422e11f987a08bb4c280.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [lampPairSection](declarations/lamppairsection--edf62fd36743314737ee8d60.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [lampPairLocalSection](declarations/lamppairlocalsection--ee91324f5fb99ff90d2c0042.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lamp_pair_local_compatible](declarations/lamp-pair-local-compatible--0d83d70471edb6cdb928760a.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lamp_pair_joint_unique_gluing](declarations/lamp-pair-joint-unique-gluing--43c5eee383fa3074720ed488.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lamp_pair_joint_gluing_retains_actions](declarations/lamp-pair-joint-gluing-retains-actions--b9bb19dc74ac7870dc106d01.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [phraseCoreFor](declarations/phrasecorefor--53c3f04e16882c463ad36252.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [executedLampComposition](declarations/executedlampcomposition--878784f0e4b8377f4f45ff34.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lamp_process_execution_is_substantive](declarations/lamp-process-execution-is-substantive--efb0b6cf538e3b42e54f03ad.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [quoted_process_execution_is_substantive](declarations/quoted-process-execution-is-substantive--034b91669f50e71571867f1f.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `inductive` | [LampRealization](declarations/lamprealization--30fc881b956278405461ff20.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [lampRealizationText](declarations/lamprealizationtext--3c74867a83bff96b898cb518.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [lampRealizationSpeaker](declarations/lamprealizationspeaker--f6aae4965329dcde860e7519.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [lampRealizationSymbols](declarations/lamprealizationsymbols--43be6223ea4603828e243a7e.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `inductive` | [LampChoiceState](declarations/lampchoicestate--0e80eb220edd142ae40d43a0.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `inductive` | [LampChoiceEdge](declarations/lampchoiceedge--1da2b7b96e8f22a47df7522a.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [lampChoiceEdge](declarations/lampchoiceedge--0fe79697d5447415f2cdff2f.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [lampEdgeRealization](declarations/lampedgerealization--9ef4e549c2baca5fae79a6b5.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [lampRealizationAdmitted](declarations/lamprealizationadmitted--f2b73707a0eae71bf1da15ca.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [lampChoicePotential](declarations/lampchoicepotential--f14882e2c986bdbca2efa374.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [lamp_choice_potential_decreases](declarations/lamp-choice-potential-decreases--47f3669f8ca810c442797b3f.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [lamp_choice_path](declarations/lamp-choice-path--1c2e5c106c03004ef3bf8b4e.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [lamp_choice_cost_realizes_symbols](declarations/lamp-choice-cost-realizes-symbols--891ce2ac075dfae7f3a91ebd.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [lamp_realization_scalar_lengths](declarations/lamp-realization-scalar-lengths--1073aef6b05f75b494c769cb.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [two_legal_lamp_realizations](declarations/two-legal-lamp-realizations--ab1c81ff37d76ed8667ff73d.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [lamp_realization_class_envelope](declarations/lamp-realization-class-envelope--8c6e780aeddb78c4f9e05a4c.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [speaker_shift_rejected](declarations/speaker-shift-rejected--0a924eecd59325025af47a24.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [pilotSymbols](declarations/pilotsymbols--3a6608a2d1a31e6536bc779b.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [pilot_text_scalar_length](declarations/pilot-text-scalar-length--a3411ade686b69c4aebd8479.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pilot_symbol_floor](declarations/pilot-symbol-floor--4a1f5d91b53ebfbc1f8c88b1.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [dynamicalUnits](declarations/dynamicalunits--656406b85cf997c25682bbc6.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [one_symbol_unit](declarations/one-symbol-unit--75df5f901a3a875a70fe3704.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [anchor_unit](declarations/anchor-unit--600c62a8cc0e63d0804f9341.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [advanceProcess](declarations/advanceprocess--33b7415c27316bd60a6792bf.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [pivot_advances_one_unit](declarations/pivot-advances-one-unit--2390ce0e7f9efa29fad7a6f2.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `inductive` | [PilotState](declarations/pilotstate--a4c1a13d33f5b9c7f1c0f46f.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `inductive` | [PilotEdge](declarations/pilotedge--457b6beb948f399bbb08a253.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [pilotEdge](declarations/pilotedge--9299eae2732c34e16d3e9e81.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [potential](declarations/potential--9dc00c1feeec9f86999c3ed7.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [pilot_potential_decreases](declarations/pilot-potential-decreases--424a8e63eb63a74a20f78d1c.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `inductive` | [ConcreteTransition](declarations/concretetransition--94ea87056321331a875a5de6.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [abstractTransition](declarations/abstracttransition--6c7b8b2b607f720a1f78b417.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [transitionPhrase](declarations/transitionphrase--bc69ba2ed99fcc37eee8e5f9.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [assemblySeparatorSymbols](declarations/assemblyseparatorsymbols--6092a19d46badb3b089e411a.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [concrete_transition_coverage](declarations/concrete-transition-coverage--eafcbe3269d30bc4a195aaac.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [concrete_transition_cost_coverage](declarations/concrete-transition-cost-coverage--683f657832e4f50395496142.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [pivotPath](declarations/pivotpath--bac877e8ac336dd6aae7cb31.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [contemplativePath](declarations/contemplativepath--f6f710587e5be70339a706bf.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [sourceExplanationPath](declarations/sourceexplanationpath--f4241167e720a90ae3b3de6b.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [formalPath](declarations/formalpath--36bb76e637220b5a1bcb263f.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [transitionPath](declarations/transitionpath--09b91cdaf5767c71898e9e2d.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [pivot_stopping_envelope](declarations/pivot-stopping-envelope--da6e95eb98144476edb13925.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [contemplative_stopping_envelope](declarations/contemplative-stopping-envelope--2c06e918b021733c9b7a07e6.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [source_explanation_stopping_envelope](declarations/source-explanation-stopping-envelope--549e9385c33aa669a6aeef01.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [formal_stopping_envelope](declarations/formal-stopping-envelope--3f180054ba71e8870cfaef26.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [transitional_pair_stopping_envelope](declarations/transitional-pair-stopping-envelope--4f5102c6f588d275d892fecc.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [pilot_contract](declarations/pilot-contract--77aaed96de655aa3f90f07b5.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
