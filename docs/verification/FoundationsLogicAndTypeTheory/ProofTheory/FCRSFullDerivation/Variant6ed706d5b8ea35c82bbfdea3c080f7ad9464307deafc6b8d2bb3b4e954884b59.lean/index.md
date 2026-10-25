# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.FCRSFullDerivation.Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.TheoremTransfer.Derivation` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.TheoremTransfer.Adapters.FCRSTransport` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Derivation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectionVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/projectionversion--6e3da900a89641fecef81bc5.md) | 23 | `declaration-track:6e3da900a89641fecef81bc5b00936c36b8017b7581eac6a2ce1125c9dca26e0` |
| 2 | `def` | [graphConsequenceTheoryArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequencetheoryartifact--75e61b564330e53a13c45015.md) | 28 | `declaration-track:75e61b564330e53a13c45015400f0f5e05a535037f401633457d18885b0c5baf` |
| 3 | `structure` | [GraphConsequenceProposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequenceproposition--889ee18e657fd67d5c2ac45e.md) | 42 | `declaration-track:889ee18e657fd67d5c2ac45e43389a5e2fbcdd43c8be654db7830f54dfca5334` |
| 4 | `def` | [graphConsequenceTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequencetheory--465a165441ae5e34a66e01ab.md) | 50 | `declaration-track:465a165441ae5e34a66e01ab44c13b3d1bd8aa238211f4d60286485c68b41a37` |
| 5 | `theorem` | [graphConsequenceHolds_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequenceholds-exact--d94d5f9af17478a02bbe4749.md) | 63 | `result-track:d94d5f9af17478a02bbe4749b9cd77b91d3d4f6aa0f9252cc9f897ef996aa466` |
| 6 | `def` | [graphConsequenceTheoryVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequencetheoryversion--3cf5c76bd1786aebb0ffc176.md) | 71 | `declaration-track:3cf5c76bd1786aebb0ffc1761fba0ae5605949e23e7f054eae9c43cbb09021f6` |
| 7 | `def` | [graphConsequenceAssumptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequenceassumptions--f974054503587b25ae57de74.md) | 99 | `declaration-track:f974054503587b25ae57de74c4c3df88e1671a260afa5256f8c397fda96edf70` |
| 8 | `structure` | [FullNativePreservationBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullnativepreservationbridge--631a81ac300b1b78c0987610.md) | 150 | `declaration-track:631a81ac300b1b78c0987610e5640cd3233ba3da1c2297c625619b6bbffedb1e` |
| 9 | `def` | [sourceClaimConsequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/sourceclaimconsequence--1f6bfd162decd7607a14e185.md) | 160 | `declaration-track:1f6bfd162decd7607a14e1851f8f14c5320d83029c416cc0e5b64e293a118b7f` |
| 10 | `def` | [sourceClaimBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/sourceclaimbridge--084c417a0dec58cf6f20a676.md) | 178 | `declaration-track:084c417a0dec58cf6f20a676bb18b4930d28fdde3ae442c3b819fb99fd266da4` |
| 11 | `structure` | [FullNativePreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullnativepreservationevidence--0f53faed05e230f36d315937.md) | 203 | `declaration-track:0f53faed05e230f36d3159374bfb7963f1b25ac17cbe71597540c282c1c1b432` |
| 12 | `def` | [bridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/bridge--55eee3c49f819e5cd6e7f483.md) | 258 | `declaration-track:55eee3c49f819e5cd6e7f4832ab55a8cf54df6637e4b7af2ab87c826e231b030` |
| 13 | `def` | [graphConsequenceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/graphconsequenceproof--38b6c1f3f32ce40b7ae05de6.md) | 268 | `declaration-track:38b6c1f3f32ce40b7ae05de6a5d2912946aade0cbe935b8b3e34ea006173e452` |
| 14 | `def` | [nativeDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/nativederivation--4c48982de095e1fb7fdff69e.md) | 275 | `declaration-track:4c48982de095e1fb7fdff69e47492b20e328324d80ca26a0950fd050a2a7f75b` |
| 15 | `def` | [fullGraphProposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullgraphproposition--795d01ab3a1b6d0f299d4893.md) | 306 | `declaration-track:795d01ab3a1b6d0f299d4893d7914d3a5d460e470d11dafd5e2f18f995831e53` |
| 16 | `def` | [fullSourceScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullsourcescope--82ccc8c16567630d7cef4543.md) | 313 | `declaration-track:82ccc8c16567630d7cef4543907203f47f8435e36711d29d56c4528b24fdd26d` |
| 17 | `def` | [fullTargetScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltargetscope--88103bb9d78d9b378d035ac3.md) | 322 | `declaration-track:88103bb9d78d9b378d035ac3a0019c179aa3876461eedb12d2719bbb18f3fac9` |
| 18 | `def` | [fullTranslationLineage](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltranslationlineage--99ffbf139cc7f248997eeba1.md) | 329 | `declaration-track:99ffbf139cc7f248997eeba15fe460fdbbfdf624df7fcfa8740d44c2d2f4a9ae` |
| 19 | `def` | [fullTranslation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltranslation--e5501d894f416401c71a0138.md) | 345 | `declaration-track:e5501d894f416401c71a0138ebc2987e970b7d154551ecb54ef211460858bcd9` |
| 20 | `def` | [fullPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullpreservation--1d257478c68259aae91c2853.md) | 429 | `declaration-track:1d257478c68259aae91c28531f7250abd00ad0af711d9f343df4669f250f7c05` |
| 21 | `theorem` | [fullSourcePropositionInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullsourcepropositioninscope--19f0387a7ab5efada56dcf01.md) | 440 | `result-track:19f0387a7ab5efada56dcf01d42fd2f70cd64075005c991d0bf1e886ccc83f7b` |
| 22 | `def` | [fullTargetTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltargettheorem--45f4a420f633f8ba88b42089.md) | 446 | `declaration-track:45f4a420f633f8ba88b42089741823634bd4dea8ae645117ac0714c130e79b46` |
| 23 | `theorem` | [fullTargetPropositionInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltargetpropositioninscope--f8c3794d6f1aa80fab65305e.md) | 455 | `result-track:f8c3794d6f1aa80fab65305e16ad0ced60897b1be9358bf60d41d010e69c7adb` |
| 24 | `inductive` | [FullTTAStage](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullttastage--9b2eacbbdb55dd7a2f0a826d.md) | 462 | `declaration-track:9b2eacbbdb55dd7a2f0a826d28b6d8b8e4d3417315acc4091cf746c6ec3ede65` |
| 25 | `def` | [identityCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/identitycode--ec4485bba287279ec3287c16.md) | 497 | `declaration-track:ec4485bba287279ec3287c16882ff7ae60377bfc71be240eb9cca14581d84d03` |
| 26 | `theorem` | [identityCode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/identitycode-injective--d99d38eac65049c112a37578.md) | 528 | `result-track:d99d38eac65049c112a3757876507af6e0e1d9baba438e65dd9d262e4c00e242` |
| 27 | `def` | [rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/rank--6ff58477707952d8e4165118.md) | 532 | `declaration-track:6ff58477707952d8e41651187237640fd4dc4039e0b61c743212092f094ff3a7` |
| 28 | `def` | [label](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/label--7d8afe40067b2fdcb51f3feb.md) | 564 | `declaration-track:7d8afe40067b2fdcb51f3febe3dc04f31d249973fbc9f54e9fa5cb8d2be26745` |
| 29 | `def` | [nodeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/nodekind--6076d342065fb89bc98f6527.md) | 596 | `declaration-track:6076d342065fb89bc98f6527289c31dc1d7d6c56e3ebb8ca8cf1f61bfec6e0f8` |
| 30 | `theorem` | [nodeKind_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/nodekind-injective--c76ea05a68abb709d6d2311e.md) | 627 | `result-track:c76ea05a68abb709d6d2311ee88e7cc35424ebfe321cae7f0c2c90a0a3fa0832` |
| 31 | `inductive` | [FullTTADependency](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullttadependency--8b9ac0ed3af3e271b06e7198.md) | 634 | `declaration-track:8b9ac0ed3af3e271b06e7198f1e1c4f371d7f8e35a7fb314c8c3803fe92023b2` |
| 32 | `theorem` | [FullTTADependency.rankIncreases](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullttadependency-rankincreases--cd382fb662be2c2c30db66a9.md) | 682 | `result-track:cd382fb662be2c2c30db66a9e8bb779209962c193b528286d4938880a9d921db` |
| 33 | `def` | [roleArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/roleartifact--f489a2fc46d15517bea6ed00.md) | 689 | `declaration-track:f489a2fc46d15517bea6ed008aad10b4515d1d4063e94f461aeaa93e78de8285` |
| 34 | `def` | [fullStageNativeArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagenativeartifact--f2eb52590335020ca32fe86a.md) | 694 | `declaration-track:f2eb52590335020ca32fe86a424e741197ddede8689a6803941c07057e4b5695` |
| 35 | `def` | [fullStageSupportingArtifacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagesupportingartifacts--cc49f6ffb46f991f037f467d.md) | 753 | `declaration-track:cc49f6ffb46f991f037f467d92da67d235b1f87c86158323973e41bc18e4baa2` |
| 36 | `def` | [fullStageTheoryContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagetheorycontext--c8b00f791b7358ac0eb18bff.md) | 814 | `declaration-track:c8b00f791b7358ac0eb18bff3575bc1b025b0c88b0bc520a0f35781808da23cf` |
| 37 | `def` | [fullStageNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagenode--a5f0a65319ea130a5340a24a.md) | 827 | `declaration-track:a5f0a65319ea130a5340a24adb6d449b61fdde00b527a5fc41440eb0c80e3833` |
| 38 | `theorem` | [fullStageNode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagenode-injective--34334d475775cb23055c3435.md) | 852 | `result-track:34334d475775cb23055c343539d55b93aea71f213f656c625d0b5d4c32a58031` |
| 39 | `theorem` | [fullStageNodeArtifact_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagenodeartifact-injective--19bedbcd80ea0a0205ad6c9d.md) | 859 | `result-track:19bedbcd80ea0a0205ad6c9dd18dca0f57105d0c1ef9b232875d71a2a1133eb8` |
| 40 | `def` | [fullStageEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstageedge--d90cc1606a397c5c301095a8.md) | 868 | `declaration-track:d90cc1606a397c5c301095a8dbedc55c99391694bba59a6e266ee0662d163848` |
| 41 | `def` | [fullStageValidationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagevalidationpolicy--3db17cb8d395f75d654ecf72.md) | 1015 | `declaration-track:3db17cb8d395f75d654ecf7207755eb08056f96be9128b85b093e5119b835892` |
| 42 | `def` | [fullStageValidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullstagevalidation--a4a901098f3cd11b37158789.md) | 1023 | `declaration-track:a4a901098f3cd11b371587893bd6450d3417da7de9b33a8f6fd89e5201f64889` |
| 43 | `def` | [fullDependencyGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulldependencygraph--80b0fb76c6affa42850ff8a4.md) | 1033 | `declaration-track:80b0fb76c6affa42850ff8a48536a294aca184609432b756516b5662b9375c9a` |
| 44 | `def` | [fullGenericDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fullgenericderivationprojection--e43c04c5b6040e5ddf314da6.md) | 1051 | `declaration-track:e43c04c5b6040e5ddf314da611571d0a816a661043128de1837a60d29817592b` |
| 45 | `structure` | [FullTransportDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltransportderivationprojection--d19bc079d352fce3b0c11dae.md) | 1108 | `declaration-track:d19bc079d352fce3b0c11dae361fdf9c45a4b7b79ce5901fd8834a6b7d38c031` |
| 46 | `def` | [fullTransportDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/declarations/fulltransportderivationprojection--4e5d7388d41163c6a226b80b.md) | 1143 | `declaration-track:4e5d7388d41163c6a226b80b8adf1e015bd249bc714016b99965c06f589236de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
