# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bundle.Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88dc599cc79b3b772b8cdee7ab0a28dbc6d37253",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88dc599cc79b3b772b8cdee7ab0a28dbc6d37253`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalSpace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace--b863f80cbfd29ab43338f98f.md) | 60 | `declaration-track:b863f80cbfd29ab43338f98f45b664f51e727c95e9099e6f2c0447717e7cd064` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/instance--df1bdebb8d18e5bdf7e45dff.md) | 66 | `declaration-track:df1bdebb8d18e5bdf7e45dff36fdbeca2ce6e4f0d3f28a8ede744129d14ffafe` |
| 3 | `abbrev` | [TotalSpace.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-mk--82e604ecfc1b4c336a2e5822.md) | 74 | `declaration-track:82e604ecfc1b4c336a2e58226271e32bc5c7a7829de195f7730edac43f7908dc` |
| 4 | `theorem` | [TotalSpace.mk_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-mk-cast--69177586f9cbdc75e68c56d7.md) | 76 | `result-track:69177586f9cbdc75e68c56d7ad58ae2cfe7d7c903eddb588f7b56ebb53347ba9` |
| 5 | `theorem` | [TotalSpace.mk_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-mk-inj--beab617e9622a8cbbab16079.md) | 80 | `result-track:beab617e9622a8cbbab16079ecb6d922487250c7c53d82fb08efa5319fe658b4` |
| 6 | `theorem` | [TotalSpace.mk_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-mk-injective--a9e8a889c142c48cb2d2bd42.md) | 83 | `result-track:a9e8a889c142c48cb2d2bd424c558999f5017eb16a3bd3402abf8d3d8049f990` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/instance--3633e0846a7ac0744cb03e6a.md) | 86 | `declaration-track:3633e0846a7ac0744cb03e6a1d6815c004c9223e323ad0b38ca9fb6c6a5cfcad` |
| 8 | `theorem` | [TotalSpace.eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-eta--150e26fe5eaf7bed406cf185.md) | 89 | `result-track:150e26fe5eaf7bed406cf185b1a5ac67d169aa4800663a953fd45632e6d28490` |
| 9 | `theorem` | [TotalSpace.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-exists--2f961013ea90de2a8c71548a.md) | 92 | `result-track:2f961013ea90de2a8c71548a5a025ba52a916a04c092c1ed4b7f9436edcc1250` |
| 10 | `theorem` | [TotalSpace.range_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-range-mk--f507f0bed275c128a78c430b.md) | 96 | `result-track:f507f0bed275c128a78c430b23f656a02c9c96e2f895128eb117121e985c6184` |
| 11 | `def` | [Trivial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/trivial--d35df2fbad33a14952dd20fa.md) | 108 | `declaration-track:d35df2fbad33a14952dd20fa9175d77ae8044354f290c788c49f59fbd5723cc1` |
| 12 | `def` | [TotalSpace.trivialSnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-trivialsnd--6e5fc867a4700ba28bc3305a.md) | 111 | `declaration-track:6e5fc867a4700ba28bc3305aa22a74be249215de00492744877ee9b2b620e6da` |
| 13 | `def` | [TotalSpace.toProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/totalspace-toprod--22ce16b58739f834779ae727.md) | 116 | `declaration-track:22ce16b58739f834779ae727a57dff9f84e8592a90110c14655b44fbdb02071e` |
| 14 | `def` | [Pullback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/pullback--8b70a0a7a40a5f6ca0b50b08.md) | 128 | `declaration-track:8b70a0a7a40a5f6ca0b50b085402334a769e78b833a62589f1676e6f5408b0c3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/instance--1255294f8a60d19a1e0cab53.md) | 133 | `declaration-track:1255294f8a60d19a1e0cab5359f35139821ac69cd0232d98c880d7b2db6c761b` |
| 16 | `def` | [pullbackTotalSpaceEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/pullbacktotalspaceembedding--2f8f48f834843356a6df0040.md) | 138 | `declaration-track:2f8f48f834843356a6df0040bc733719e39c785b1d4aa387b712e418a120a5ac` |
| 17 | `def` | [Pullback.lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/pullback-lift--0e148363ede1106d7acfaebb.md) | 143 | `declaration-track:0e148363ede1106d7acfaebb32350e9b6e0a619c4f7ea3ac08d296ff5375d862` |
| 18 | `theorem` | [Pullback.lift_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Varianta1ba1bd5aa4dc973d2401105fe1f9623ed91b616196011885a819a494154b79d.lean/declarations/pullback-lift-mk--9c4ccac89616d9d0ef56030e.md) | 146 | `result-track:9c4ccac89616d9d0ef56030eb2f2a1401e405a35f1daabd52fdc2fd3e4a4f7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
