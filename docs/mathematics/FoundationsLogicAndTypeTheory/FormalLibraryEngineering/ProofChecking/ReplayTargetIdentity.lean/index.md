# GRWTSK.Logic.ProofChecking.ReplayTargetIdentity

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `907bb1f003889b543979dd28aeaf1734382f0c9f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/ReplayTargetIdentity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [supportedSchema](declarations/supportedschema--f9215ae27a747b48c50a1ad3.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SourceIdentity](declarations/sourceidentity--31d6b7f887b72c895435769d.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Header](declarations/header--64ef2df9b25330eadd21e269.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeaderMatches](declarations/headermatches--89e67e9569aee7e5862ba889.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [matches_self](declarations/matches-self--ead2229599d27262165f71f2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [matching_headers_have_equal_source](declarations/matching-headers-have-equal-source--11b3a9b584152e665dba3eb1.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reject_unknown_schema](declarations/reject-unknown-schema--d8e4e4b58475716f1b2eba27.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reject_source_field_drift](declarations/reject-source-field-drift--6ac9b9a3ee1cf246f4fbc29c.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reject_revision_drift](declarations/reject-revision-drift--621b35df8f3137d7293c473f.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reject_target_blob_drift](declarations/reject-target-blob-drift--ecef13c04e75b14095c96306.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reject_toolchain_drift](declarations/reject-toolchain-drift--6d43eb5de5fef7334644adc2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reject_dependency_manifest_drift](declarations/reject-dependency-manifest-drift--658e5cc7f274f36385eaff63.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ModulesCovered](declarations/modulescovered--e35f12cf853e79fffada7aef.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [modules_cover_themselves](declarations/modules-cover-themselves--f35cf2df0e53c15e1813e9cc.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [omitted_module_blocks_coverage](declarations/omitted-module-blocks-coverage--2ba891237d07f5dd923ec369.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [root_build_cannot_hide_omission](declarations/root-build-cannot-hide-omission--faf11526c566df1fc751e8ec.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [ModuleTerminalStatus](declarations/moduleterminalstatus--7a06d25eb5a6cdd27d97e879.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ModuleTerminalOutcome](declarations/moduleterminaloutcome--7d88d0c0684c0034d630cbb2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [passingOutcome](declarations/passingoutcome--4076b495445093c1cd45dfb0.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matchingModuleOutcomes](declarations/matchingmoduleoutcomes--2c470a40873684ccd5b7cf41.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ModulesSucceeded](declarations/modulessucceeded--8eca7a55027af4a19373f60a.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [modulesSucceeded_exactly_one_pass](declarations/modulessucceeded-exactly-one-pass--fbaa2c4e1a8c3dfe3b121919.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [NonvacuousModulesSucceeded](declarations/nonvacuousmodulessucceeded--6ac2f9081f4b2808118ac87f.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonvacuous_exactly_one_pass](declarations/nonvacuous-exactly-one-pass--c0867d2f140ee1efcab8f5f7.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matchingModuleOutcomes_append](declarations/matchingmoduleoutcomes-append--eb575d7338c3650808cf4625.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [modulesSucceeded_append_iff](declarations/modulessucceeded-append-iff--0d30d661f236d6dadc69c4f3.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [matching_records_in_both_fragments_block_success](declarations/matching-records-in-both-fragments-block-success--cdbfd181a85a182f7b1be9cd.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [irrelevant_append_preserves_success](declarations/irrelevant-append-preserves-success--e4fa30fe559b503088fef721.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [modulesSucceeded_append_comm](declarations/modulessucceeded-append-comm--96ba33b758a597f3d84d9bb7.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [duplicate_complete_pass_fragments_rejected](declarations/duplicate-complete-pass-fragments-rejected--608b70b37e152ace82862719.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pass_and_matching_failure_fragments_rejected](declarations/pass-and-matching-failure-fragments-rejected--ddb2ac302bc7bccfa822f96b.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [different_source_fragment_alone_rejected](declarations/different-source-fragment-alone-rejected--40baee9b20a4e2b5e2248c05.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [partitioned_two_key_target_succeeds](declarations/partitioned-two-key-target-succeeds--101e9d30d245081439c3c5e2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [irrelevant_fragment_preserves_left_success](declarations/irrelevant-fragment-preserves-left-success--a6cef9cd0b52fa7d7390ff42.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [empty_inventory_vacuous_but_wrapper_rejected](declarations/empty-inventory-vacuous-but-wrapper-rejected--33472b2a5ba9e990d19b9697.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [combineModuleFragments](declarations/combinemodulefragments--2b739f15875f22ecb9161653.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ExactlyOnePassingFragment](declarations/exactlyonepassingfragment--b6adf74624650f0977c57a2e.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [matchingModuleOutcomes_combine_empty_iff](declarations/matchingmoduleoutcomes-combine-empty-iff--ded7f2c20aac51ea4a871c99.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [matchingModuleOutcomes_combine_singleton_iff](declarations/matchingmoduleoutcomes-combine-singleton-iff--1fca8f715de0d7340cdc6fb4.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [modulesSucceeded_combine_iff](declarations/modulessucceeded-combine-iff--5c5aa0c2f5f1b2e0215271d6.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [three_fragment_pass_overlap_rejected](declarations/three-fragment-pass-overlap-rejected--bf3aff88c36d418079624231.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [missing_key_across_fragments_rejected](declarations/missing-key-across-fragments-rejected--05ea7b1548d6e6a54e08020a.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [irrelevant_middle_fragment_preserves_success](declarations/irrelevant-middle-fragment-preserves-success--dbcd7ce257ee25797a28a79a.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [combineModuleFragments_eq_flatten](declarations/combinemodulefragments-eq-flatten--e0430bf11d824bacc01f2cce.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [matchingModuleOutcomes_combine_perm](declarations/matchingmoduleoutcomes-combine-perm--8662e48862e6bbcbb66ce39d.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exactlyOnePassingFragment_perm](declarations/exactlyonepassingfragment-perm--624c23c32d4511b85a6179cc.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [modulesSucceeded_combine_perm](declarations/modulessucceeded-combine-perm--b81d6a4722aceea30eb2856c.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [nonvacuousModulesSucceeded_combine_perm](declarations/nonvacuousmodulessucceeded-combine-perm--378ac404141110069e7c6a42.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [fragment_membership_does_not_preserve_success](declarations/fragment-membership-does-not-preserve-success--0578bb0ec786a44deb99b7a3.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [source](declarations/source--8fd748b3c077b4c24c4ab600.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [target](declarations/target--0365ef80edd4e6f9c0e0ee15.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [changedRevision](declarations/changedrevision--a6d01fc3a5d6155430ba4303.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [unknownVersion](declarations/unknownversion--1c738393835b06d663fb6c0d.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [exact_header_is_consistent](declarations/exact-header-is-consistent--83dedf482106759327112592.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [wrong_revision_is_rejected](declarations/wrong-revision-is-rejected--7180b692e7d0d235a1abf7ff.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [unknown_version_is_rejected](declarations/unknown-version-is-rejected--b4f8e392085ad72edcbb0caa.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [root_only_is_not_leaf_coverage](declarations/root-only-is-not-leaf-coverage--88fdd2480c87707c4f603745.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [leafModule](declarations/leafmodule--8149628dcb732692ee80b19d.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [passResult](declarations/passresult--75e53d2dd6a819bf174c8387.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [failedResult](declarations/failedresult--81a2056b8fc45477671e5f13.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [notRunResult](declarations/notrunresult--b317a8a50a54ce58edb9ff81.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [unavailableResult](declarations/unavailableresult--19b752b52ad0345c31b563eb.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [differentSource](declarations/differentsource--81331f7bc329380e309485ac.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [wrongIdentityPass](declarations/wrongidentitypass--12ebfd25c30ef10a773c8222.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [one_exact_pass_succeeds](declarations/one-exact-pass-succeeds--33963e939dda77282f0e5aba.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [empty_required_low_level_is_vacuous](declarations/empty-required-low-level-is-vacuous--719728687e035f56b4e133b1.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [duplicate_required_low_level_still_succeeds](declarations/duplicate-required-low-level-still-succeeds--5137d90c766c8c087d592b3d.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [nonvacuous_one_exact_pass_succeeds](declarations/nonvacuous-one-exact-pass-succeeds--eb6cb854fdaa2160484bb3e3.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [nonvacuous_empty_required_rejected](declarations/nonvacuous-empty-required-rejected--6a25456a5e573762f78c89c8.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nonvacuous_duplicate_required_rejected](declarations/nonvacuous-duplicate-required-rejected--d9e50eb658dd0aae8e4f703d.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [failed_outcome_is_rejected](declarations/failed-outcome-is-rejected--c8b4983fee4061f023404d51.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [not_run_outcome_is_rejected](declarations/not-run-outcome-is-rejected--ebe02e62e2b5c577303681f4.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unavailable_outcome_is_rejected](declarations/unavailable-outcome-is-rejected--81a616cc954c3c86ff981677.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [duplicate_passes_are_rejected](declarations/duplicate-passes-are-rejected--0f342167663035779ff7319c.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [conflicting_outcomes_are_rejected](declarations/conflicting-outcomes-are-rejected--5d6447bb4c7697f1f28948c5.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [different_source_identity](declarations/different-source-identity--a5da85f71cd9087cad4da819.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [wrong_source_identity_is_rejected](declarations/wrong-source-identity-is-rejected--3a735cdf31bbd1f65395bb90.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [root_only_terminal_success_is_rejected](declarations/root-only-terminal-success-is-rejected--a95dc5beef64258dda3b713f.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
