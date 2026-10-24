# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Models.Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2384d786492bf0b262baf42b28eff7be13ad0358",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2384d786492bf0b262baf42b28eff7be13ad0358`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Registry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypemodel--7ed69753d55e97108ee5d961.md) | 29 | `declaration-track:7ed69753d55e97108ee5d961661f19aefee6d0bbf45b8f038c8a1fb37c665607` |
| 2 | `def` | [prototypeModelId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypemodelid--0154932e97eb1134ff4f50ef.md) | 38 | `declaration-track:0154932e97eb1134ff4f50ef45c75fff4ad259c4a554acebde36667b94eb6263` |
| 3 | `def` | [prototypeSemanticVersion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypesemanticversion--c343bb4ee2baaac15051a708.md) | 46 | `declaration-track:c343bb4ee2baaac15051a7083392bf939eea2266ef4008e58fd8492b790e2575` |
| 4 | `def` | [prototypeVersionCoordinates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeversioncoordinates--cf6ee2a437b5209f455daaef.md) | 51 | `declaration-track:cf6ee2a437b5209f455daaefa09c05eff064333ee66f7e9988398ba11567d4b8` |
| 5 | `def` | [prototypeSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypesourcedigest--07366e164b51a3f6794a3bca.md) | 60 | `declaration-track:07366e164b51a3f6794a3bcaf21f534419422fa8753ce9a75b0a80b420d5702a` |
| 6 | `def` | [historicalQuantizationSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/historicalquantizationsourcedigest--bb13daa730fdde63572f7150.md) | 73 | `declaration-track:bb13daa730fdde63572f71507d319b9e22eea1d5e606d3d5206285107e0b779d` |
| 7 | `theorem` | [live_quantization_digest_ne_historical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/live-quantization-digest-ne-historical--aa909dca5ec47676bf46afcc.md) | 76 | `result-track:aa909dca5ec47676bf46afcc180718856462c7432ff9e7d99089889344c375d4` |
| 8 | `def` | [prototypeModelIdentity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypemodelidentity--ae80811e0238898a4da08190.md) | 82 | `declaration-track:ae80811e0238898a4da08190dba7b40c02b2fb5ec09ae7c558e93ca4f8d3d503` |
| 9 | `def` | [prototypeSourceModule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypesourcemodule--2b4bf85e9dc06a59b5087bc6.md) | 89 | `declaration-track:2b4bf85e9dc06a59b5087bc6defb5f8babf43405ce59802ac8e517aed8fb42ac` |
| 10 | `def` | [prototypeDependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypedependencies--e70d0431741dc7e71a2181ed.md) | 97 | `declaration-track:e70d0431741dc7e71a2181ed136a45d85ae81939aa6358a7834fa290de304b6e` |
| 11 | `def` | [prototypeRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototyperank--d3ee21e7bb84e1bc592b6874.md) | 107 | `declaration-track:d3ee21e7bb84e1bc592b6874db6843e1154a8d49018a8bf9c8f281fdfa8b8576` |
| 12 | `def` | [prototypeDependencyIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypedependencyids--9819018794bfcdde080c624c.md) | 113 | `declaration-track:9819018794bfcdde080c624cbf839f89135e3d1ef93af3bbd1366d3da91c4302` |
| 13 | `theorem` | [prototype_dependency_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototype-dependency-rank-lt--9d9c60972d7b69050a2911f2.md) | 124 | `result-track:9d9c60972d7b69050a2911f219af8bd33228647d498ae778c75368f4cfd6d0ad` |
| 14 | `abbrev` | [prototypeDependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypedependencygraph--04d3814a3f8fa5a06f08555e.md) | 146 | `declaration-track:04d3814a3f8fa5a06f08555eb0df58085c1fac3827a57cc3e75c66666a23cabc` |
| 15 | `def` | [emptyRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/emptyregistry--3da783d6fcb7fa9b00b2e98d.md) | 152 | `declaration-track:3da783d6fcb7fa9b00b2e98d7cfa4882807e89b3831e30b9c76683d752f15ec9` |
| 16 | `def` | [prototypeObjectId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeobjectid--eac9682f70aa7441e904afbf.md) | 156 | `declaration-track:eac9682f70aa7441e904afbf37071b857b390d54209cc30bb147dd130b377716` |
| 17 | `def` | [prototypePropositionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypepropositionid--680809d74e93b951723a04df.md) | 160 | `declaration-track:680809d74e93b951723a04df23a638d754830c1145ff1bdfb9e2f66c3e4e4d31` |
| 18 | `def` | [prototypeDeclarationId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypedeclarationid--7aeeb700eb367a36b038bb8d.md) | 164 | `declaration-track:7aeeb700eb367a36b038bb8d1667ec270cfb75a3a7e243d72d133a114a0e3376` |
| 19 | `def` | [prototypeAssumptionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeassumptionid--a7644c90d135da8cec94a4aa.md) | 177 | `declaration-track:a7644c90d135da8cec94a4aa2b9e3cae392a1be4dc5528934981cd1590074c99` |
| 20 | `def` | [prototypeTrustedBase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypetrustedbase--9d5bd73f319f7b60ec006849.md) | 186 | `declaration-track:9d5bd73f319f7b60ec00684988e737033170523e3d7c3d4392da17540d8f6f7d` |
| 21 | `def` | [prototypeObjectRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeobjectrecord--2b33cb7b4b0d7c467af20dfc.md) | 196 | `declaration-track:2b33cb7b4b0d7c467af20dfcaa552b956f1266c86489dfb13be2c3a4bc205728` |
| 22 | `def` | [prototypePropositionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypepropositionrecord--f4bba1840598b213081a5530.md) | 204 | `declaration-track:f4bba1840598b213081a553049350f563ee0ea7c4519d8e80808b72eeb7971ef` |
| 23 | `def` | [prototypeAssumptionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeassumptionrecord--61e722df42d118c8d7bdf3c7.md) | 213 | `declaration-track:61e722df42d118c8d7bdf3c75af9b64e930cef0b35740024f6eecf085c49b7e8` |
| 24 | `def` | [prototypeProofAuthorityRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeproofauthorityrecord--0ca4f5f1356040259c9601bd.md) | 222 | `declaration-track:0ca4f5f1356040259c9601bd4b479d2fe177beee769ea26b9ab59718a5aabc2b` |
| 25 | `def` | [prototypeExampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeexamplerecord--358a19037761fb7ec5bee8de.md) | 234 | `declaration-track:358a19037761fb7ec5bee8de7d3afeb425127f8ed4d09ed04f3a7587da6408d2` |
| 26 | `def` | [prototypeCounterexampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypecounterexamplerecord--b6d12a60b3ad99788056fb32.md) | 242 | `declaration-track:b6d12a60b3ad99788056fb324daa5084d8c6bed8dcf5904ad1d0c1a3616bfefd` |
| 27 | `def` | [prototypeOpenObligationRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeopenobligationrecord--32a23204ce7b2c86867e0479.md) | 251 | `declaration-track:32a23204ce7b2c86867e04791d7e4d36a22ff8a568bbb92a9a0febf0762631fc` |
| 28 | `def` | [prototypeWorldModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeworldmodel--697a7aaa3f19eecd877c81a8.md) | 265 | `declaration-track:697a7aaa3f19eecd877c81a8c265dfe261e64f3f02d2b2afd8490a1a4a764087` |
| 29 | `theorem` | [prototypeWorldModel_metadata_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeworldmodel-metadata-complete--0045040087723d3d5f8243d8.md) | 302 | `result-track:0045040087723d3d5f8243d8b2e9648e6fe547a485106ce2ca2fbed3740d5fa5` |
| 30 | `theorem` | [prototypeWorldModel_trustedBase_not_declaredClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeworldmodel-trustedbase-not-declaredclosed--4a2105cc817a2d0b3ea93ce3.md) | 313 | `result-track:4a2105cc817a2d0b3ea93ce3ce9bd68e8338359134308ca6854836c2a807dcc4` |
| 31 | `theorem` | [prototypeWorldModel_proofAuthority_is_declarative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototypeworldmodel-proofauthority-is-declarative--c0b92833fe6f5f635e7e942a.md) | 320 | `result-track:c0b92833fe6f5f635e7e942a308b2f73854e88d92c01a3d8e430b143f6370014` |
| 32 | `theorem` | [prototype_model_identities_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototype-model-identities-injective--e04f79ba110a1e26c43a0d3c.md) | 326 | `result-track:e04f79ba110a1e26c43a0d3c6e2dc15297a2f65869c08ac2841289383fd55e04` |
| 33 | `def` | [prototypeRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototyperegistry--3ff986f1e13430640f52132b.md) | 335 | `declaration-track:3ff986f1e13430640f52132bd420a74fa5a9b88d811ba0005ec4afe18eef3c72` |
| 34 | `theorem` | [prototypeRegistry_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototyperegistry-card--f23d36a0c9f728d4996a1092.md) | 351 | `result-track:f23d36a0c9f728d4996a109281b96778bdb6d4e8e76219d9f2e4a39ae84a9e53` |
| 35 | `theorem` | [prototypeRegistry_source_digest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/declarations/prototyperegistry-source-digest--c4c9bc6fd2db308bc4ead3e9.md) | 357 | `result-track:c4c9bc6fd2db308bc4ead3e9b0ced34719233eff14b14652b585b02bcbfb4015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
