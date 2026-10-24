# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BuildModel.Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dependentsClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/dependentsclosure--ef2f839f99c911a06d5a9a75.md) | 32 | `declaration-track:ef2f839f99c911a06d5a9a75ff35fb0bac6becb7535d4d04e8c1ebfe94e6839c` |
| 2 | `theorem` | [mem_dependentsClosure_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/mem-dependentsclosure-iff--926c45224a3c8e1457b5cb33.md) | 38 | `result-track:926c45224a3c8e1457b5cb33f5b0279de5854501c6a59b49a79072ecb284162f` |
| 3 | `theorem` | [seed_mem_dependentsClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/seed-mem-dependentsclosure--49d808da09ef5db6fd8b038e.md) | 46 | `result-track:49d808da09ef5db6fd8b038e2dfc80b241d367de18274cd0ef4a8f6be908f999` |
| 4 | `theorem` | [dependent_mem_dependentsClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/dependent-mem-dependentsclosure--0b45d8397f5317451f3f35a3.md) | 54 | `result-track:0b45d8397f5317451f3f35a317b48f56f194f8601af2619fe0a0ab2852b52ec8` |
| 5 | `theorem` | [dependentsClosure_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/dependentsclosure-mono--99bbe38e3be07fce1e575e93.md) | 64 | `result-track:99bbe38e3be07fce1e575e935a46cb1f047e28f0216b7711556a2edd96e14eab` |
| 6 | `theorem` | [dependentsClosure_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/dependentsclosure-minimal--d9d01afaa6e8325a3a2e8920.md) | 74 | `result-track:d9d01afaa6e8325a3a2e8920d09f1563ace87964479eb7ea4f94bf666f9c3c9c` |
| 7 | `structure` | [ChangeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/changeset--b9292b9ae272bbdea3fe3746.md) | 91 | `declaration-track:b9292b9ae272bbdea3fe3746890e4d0c5eb4c7fa138bf2a75d02c321158e2773` |
| 8 | `def` | [between](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/between--fdf6805a12b251bab7e93a7c.md) | 99 | `declaration-track:fdf6805a12b251bab7e93a7c777ef3388ad1578a0e3d8ddfac1989b3db60c904` |
| 9 | `theorem` | [mem_between_implementation_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/mem-between-implementation-iff--66d4b1d2f98a0ed69b013185.md) | 110 | `result-track:66d4b1d2f98a0ed69b013185b974bc1a0000fdbde620e27e1531e1f759c97927` |
| 10 | `theorem` | [mem_between_public_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/mem-between-public-iff--80e0ef08e055040a1047d6a3.md) | 120 | `result-track:80e0ef08e055040a1047d6a3a77b5aa0765d90dceda17753f597012791cf47cd` |
| 11 | `theorem` | [mem_between_runtime_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/mem-between-runtime-iff--ccbbfecc68813f68ee92d8ed.md) | 130 | `result-track:ccbbfecc68813f68ee92d8ed92ae44b8058262e87779deaf2e648587519eaae9` |
| 12 | `def` | [leanRebuild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/leanrebuild--b376a4bd931b2a9245e9db0b.md) | 145 | `declaration-track:b376a4bd931b2a9245e9db0b1b9ebdd44d7e5b3a571a2953c6ae77fd35bd2def` |
| 13 | `theorem` | [leanRebuild_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/leanrebuild-eq--5869f9f0b5acbafca140ac14.md) | 151 | `result-track:5869f9f0b5acbafca140ac14b45ed367ede5f1456f2bbe241075999963dc9dc0` |
| 14 | `theorem` | [implChanged_subset_leanRebuild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/implchanged-subset-leanrebuild--ce8d735fad77d8605507e361.md) | 160 | `result-track:ce8d735fad77d8605507e361fcb558259b77fbffa78a29ef09f5956850e2e0a7` |
| 15 | `theorem` | [publicChanged_dependents_subset_leanRebuild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/publicchanged-dependents-subset-leanrebuild--ad47a5972a6bc1b92b34a0b4.md) | 167 | `result-track:ad47a5972a6bc1b92b34a0b46ef9114427298efb35cfc9a57f897ace4af37b45` |
| 16 | `theorem` | [publicChanged_subset_leanRebuild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/publicchanged-subset-leanrebuild--92ca7c490b3019ad7dfb1615.md) | 174 | `result-track:92ca7c490b3019ad7dfb1615b56263bc5b37ba369fe932472b7d432c5e73d371` |
| 17 | `theorem` | [leanRebuild_least](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/leanrebuild-least--5b21b6eb8b5adaae76f95c90.md) | 183 | `result-track:5b21b6eb8b5adaae76f95c908000f44a84ef53e83eae581777fb17f21bce5b51` |
| 18 | `def` | [Affected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/affected--2e0acf8e40719cc42080f21e.md) | 195 | `declaration-track:2e0acf8e40719cc42080f21ef9056dd3bb5c43ecb6a5b68b3141a540954e91f2` |
| 19 | `theorem` | [tenant_affected_iff_inter_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/tenant-affected-iff-inter-nonempty--83f91537cfed3fe2ecc90ef2.md) | 203 | `result-track:83f91537cfed3fe2ecc90ef2f735408bdf63fa6495f6f808d80503d3cf5fd91d` |
| 20 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/tenant-unaffected-iff-disjoint--a2696b30184e468665376035.md) | 216 | `result-track:a2696b30184e468665376035338283bc64022eeb7435660a48962c8b3236d5ba` |
| 21 | `def` | [PublicFingerprintsUnchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/publicfingerprintsunchanged--55a7ffffe2258cc2a672426b.md) | 227 | `declaration-track:55a7ffffe2258cc2a672426bbf046ad56ad9040f406191869fc86f933cfb49ee` |
| 22 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/not-affected-implies-publicfingerprintsunchanged--1eadd411895e9d0f45b375a3.md) | 240 | `result-track:1eadd411895e9d0f45b375a3e209044ed861c01eae29e679b06f209ee18c185a` |
| 23 | `def` | [Affected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/affected--84f9c7aac9fd25322f2aa73a.md) | 259 | `declaration-track:84f9c7aac9fd25322f2aa73afe2ac517e60e3600f297ddc7dfd241c08ff3bd72` |
| 24 | `def` | [PublicFingerprintsUnchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/publicfingerprintsunchanged--667a4d3ee2fb7e826573dacc.md) | 266 | `declaration-track:667a4d3ee2fb7e826573daccc628ca4123a4039a23db0e4b43dbb84efe603a6f` |
| 25 | `def` | [SemanticallyUnchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/semanticallyunchanged--ca31a14e129c08e5ff70937f.md) | 273 | `declaration-track:ca31a14e129c08e5ff70937f03ef15d7b50509f23d9b531c365db16678213a8e` |
| 26 | `structure` | [PublicFingerprintConsistency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/publicfingerprintconsistency--e4dee881fc47f0e094034f0f.md) | 286 | `declaration-track:e4dee881fc47f0e094034f0fadb4a2f32fe2c191e2f25a678f9fce0a60b4d681` |
| 27 | `theorem` | [tenant_affected_iff_inter_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/tenant-affected-iff-inter-nonempty--eae700a4451bd3b1095c6f17.md) | 298 | `result-track:eae700a4451bd3b1095c6f1725fd4e29867ffd31d48f4bd8f970f90fea7e7275` |
| 28 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/tenant-unaffected-iff-disjoint--d9e7fade02c5b84af7e00211.md) | 308 | `result-track:d9e7fade02c5b84af7e00211a7fb28e6f2668a531a28c913b54766f3b464456b` |
| 29 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/not-affected-implies-publicfingerprintsunchanged--3ba45a9c729240e1b384ec40.md) | 318 | `result-track:3ba45a9c729240e1b384ec40b47ec8ebb9f0463e0442bbdaf2b6ec868d0c3a65` |
| 30 | `theorem` | [not_affected_implies_semantically_unchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/declarations/not-affected-implies-semantically-unchanged--0942532b2fc935ca79764001.md) | 331 | `result-track:0942532b2fc935ca797640011749c5e664ee8ff499f47173774249ef5df8f66d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
