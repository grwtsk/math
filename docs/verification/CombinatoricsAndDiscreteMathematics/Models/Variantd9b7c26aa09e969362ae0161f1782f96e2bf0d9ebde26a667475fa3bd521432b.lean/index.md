# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Models.Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086f17e77921c6fe367bd90320669c52e8bee0b7",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086f17e77921c6fe367bd90320669c52e8bee0b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Registry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypemodel--17c0403df7023726f888f8c5.md) | 21 | `declaration-track:17c0403df7023726f888f8c5347e38a0ce4faa7c98fb72e03208d38e3f7e957f` |
| 2 | `def` | [prototypeModelId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypemodelid--248ecd96aa8d6de34ec6fe77.md) | 30 | `declaration-track:248ecd96aa8d6de34ec6fe77eba6c68f1b77b13cb107c20aab2c7869fb0b6c03` |
| 3 | `def` | [prototypeSemanticVersion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypesemanticversion--66a479884037c15c4d406272.md) | 38 | `declaration-track:66a479884037c15c4d4062729bd497d4d74276756a842eaffacfb46f53aacb5f` |
| 4 | `def` | [prototypeVersionCoordinates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeversioncoordinates--8da3ca2eed7220b32e1f914d.md) | 43 | `declaration-track:8da3ca2eed7220b32e1f914dc63ffcbc3b8abc8e3f871f3290a956cd5f3827ca` |
| 5 | `def` | [prototypeSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypesourcedigest--d398231d5becc5fd6713f82f.md) | 52 | `declaration-track:d398231d5becc5fd6713f82fafed8d5e5c52d5cc46a3283164d5d0943b27965b` |
| 6 | `def` | [historicalQuantizationSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/historicalquantizationsourcedigest--6aafab2d8e804f91c89142e6.md) | 65 | `declaration-track:6aafab2d8e804f91c89142e625142f6eb78566aeee66644f30a7adbea07b9b2b` |
| 7 | `theorem` | [live_quantization_digest_ne_historical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/live-quantization-digest-ne-historical--95224401b4153fce900efa95.md) | 68 | `result-track:95224401b4153fce900efa95f8f1d1c58767edc42db1fee8825a07f5372c68f8` |
| 8 | `def` | [prototypeModelIdentity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypemodelidentity--aa948db02b037a4480bb6ae7.md) | 74 | `declaration-track:aa948db02b037a4480bb6ae7c2c117c801078b615e0e81ee9fce4023b37b026e` |
| 9 | `def` | [prototypeSourceModule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypesourcemodule--e236c959acb443624f74ea65.md) | 81 | `declaration-track:e236c959acb443624f74ea65f1ca96bb4178f68578e0f5b9099102d971eb7e36` |
| 10 | `def` | [prototypeDependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypedependencies--cb358f953cdfb835eed7cc0d.md) | 89 | `declaration-track:cb358f953cdfb835eed7cc0d879e1e158cf527f478a61e925e434c9d5aeb8e9c` |
| 11 | `def` | [prototypeRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototyperank--398b8a1d93e9271d40d3641e.md) | 99 | `declaration-track:398b8a1d93e9271d40d3641efc0645ce15481ff272414eca5ea48ecd5e34cbb6` |
| 12 | `def` | [prototypeDependencyIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypedependencyids--5431294d6a87f345d7a03b08.md) | 105 | `declaration-track:5431294d6a87f345d7a03b0844484ad2b4138a2403e72b54016bfe6d6062d81f` |
| 13 | `theorem` | [prototype_dependency_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototype-dependency-rank-lt--37507d97bba279fae8238073.md) | 116 | `result-track:37507d97bba279fae8238073f3b52cc88f52080016727b0f4dc0d1099c93fd90` |
| 14 | `abbrev` | [prototypeDependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypedependencygraph--e3283391e560fded2aba13ed.md) | 138 | `declaration-track:e3283391e560fded2aba13edde82da6bc4ccb56276a5505d7fb1b5b5be65a65d` |
| 15 | `def` | [emptyRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/emptyregistry--ad8dfd1e25df92375d7285b8.md) | 144 | `declaration-track:ad8dfd1e25df92375d7285b828f8b2eb494dca8c9fe6226285fcc631e1eed336` |
| 16 | `def` | [prototypeObjectId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeobjectid--05a52ba336c8944a42bc0833.md) | 148 | `declaration-track:05a52ba336c8944a42bc08335ab8ebe72f06d8b1d4866e36f94229ab8b9a95aa` |
| 17 | `def` | [prototypePropositionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypepropositionid--fb4c675ab6d8460fc5660609.md) | 152 | `declaration-track:fb4c675ab6d8460fc5660609ad4f7f5bd9a81d00212a90e6f8ead5d03ab0908b` |
| 18 | `def` | [prototypeDeclarationId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypedeclarationid--b13726d24768f6c808b2b65b.md) | 156 | `declaration-track:b13726d24768f6c808b2b65bae80a7bef54290f1dbe198968dff9139ed85b998` |
| 19 | `def` | [prototypeAssumptionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeassumptionid--7572093cb53678fce690c3e5.md) | 169 | `declaration-track:7572093cb53678fce690c3e556a79f2ee50d4ae91e04b920e8dce2c94756c71e` |
| 20 | `def` | [prototypeTrustedBase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypetrustedbase--4ba3267ebd770ab89955e99c.md) | 178 | `declaration-track:4ba3267ebd770ab89955e99c8aa4b46cbcf47b6f8280d56336e800a70dae9f54` |
| 21 | `def` | [prototypeObjectRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeobjectrecord--6e05e74d2740c19988a61dd1.md) | 188 | `declaration-track:6e05e74d2740c19988a61dd192795945aa1afa7f8ac890a2ac47a3367b702b3a` |
| 22 | `def` | [prototypePropositionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypepropositionrecord--244a5468fad04322a5a297e8.md) | 196 | `declaration-track:244a5468fad04322a5a297e80b5276384313405e6b4cc897cf685558745e817b` |
| 23 | `def` | [prototypeAssumptionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeassumptionrecord--de66bba1b8f1165da8a56a2d.md) | 205 | `declaration-track:de66bba1b8f1165da8a56a2d853bbc20fe5a881acba1657f546ca38f6ea57023` |
| 24 | `def` | [prototypeProofAuthorityRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeproofauthorityrecord--69af6a6c47fd4a4874d2f0bc.md) | 214 | `declaration-track:69af6a6c47fd4a4874d2f0bcfd056211f2526535d033c96b990cb89f16978d7d` |
| 25 | `def` | [prototypeExampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeexamplerecord--78dc86a5fbafd20548a19bd9.md) | 226 | `declaration-track:78dc86a5fbafd20548a19bd99b497e48ef32e1095123bcd0906fff8b27f08c1e` |
| 26 | `def` | [prototypeCounterexampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypecounterexamplerecord--e4b5ef423563a435c5f001cd.md) | 234 | `declaration-track:e4b5ef423563a435c5f001cdf8e95e284f9c06734df2335dabd8f6dd006e014b` |
| 27 | `def` | [prototypeOpenObligationRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeopenobligationrecord--3209d7cc25ff5d4726f3c0ac.md) | 243 | `declaration-track:3209d7cc25ff5d4726f3c0ac4e537e81e54ac36499fb40b7405f9233e405f77e` |
| 28 | `def` | [prototypeWorldModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeworldmodel--451ee295ca4439ac374c98a6.md) | 257 | `declaration-track:451ee295ca4439ac374c98a60810ec7a941acbfbcc9c3eadc1a30aefece7d53a` |
| 29 | `theorem` | [prototypeWorldModel_metadata_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeworldmodel-metadata-complete--3d87e8418fd9dbac7e5275c4.md) | 294 | `result-track:3d87e8418fd9dbac7e5275c418f9b333462c9c698a88cda659a82e125b617e21` |
| 30 | `theorem` | [prototypeWorldModel_trustedBase_not_declaredClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeworldmodel-trustedbase-not-declaredclosed--be153d74192fc55111cb8017.md) | 305 | `result-track:be153d74192fc55111cb80178d68a3a4e66b586ca9454e91dfe653843c3f4f76` |
| 31 | `theorem` | [prototypeWorldModel_proofAuthority_is_declarative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototypeworldmodel-proofauthority-is-declarative--f0251e6af4bca09fb066213a.md) | 312 | `result-track:f0251e6af4bca09fb066213a94e84ea7c6fc0aac9a7c75b4c479879b9b28b57e` |
| 32 | `theorem` | [prototype_model_identities_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototype-model-identities-injective--009a86df210ebd260b97361e.md) | 318 | `result-track:009a86df210ebd260b97361e9e86e6f1e0277bda6a079ea2893e6dace0c6257e` |
| 33 | `def` | [prototypeRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototyperegistry--80a9bccad25aae03add626d6.md) | 327 | `declaration-track:80a9bccad25aae03add626d607d4764dbe26e9fa32bcefd059d1606f3138c50b` |
| 34 | `theorem` | [prototypeRegistry_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototyperegistry-card--f7a6f5733c47ad7845b77635.md) | 343 | `result-track:f7a6f5733c47ad7845b77635c0553a41e03d9d672a78736ce3df009d79a6131c` |
| 35 | `theorem` | [prototypeRegistry_source_digest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/declarations/prototyperegistry-source-digest--0e38fc2f1cefc897227d3853.md) | 349 | `result-track:0e38fc2f1cefc897227d3853537715512d623950f7fcaabb1be2be264263e677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
