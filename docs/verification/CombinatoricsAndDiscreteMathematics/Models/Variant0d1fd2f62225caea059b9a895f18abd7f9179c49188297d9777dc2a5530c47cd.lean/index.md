# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Models.Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efce17b49b1a2081c7889b243727dbcf916fc516",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efce17b49b1a2081c7889b243727dbcf916fc516`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean.json)

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
| 1 | `inductive` | [PrototypeModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypemodel--adfb128127c10c6e1db2ae67.md) | 21 | `declaration-track:adfb128127c10c6e1db2ae67ace5fa296f0afed1b987360031d0cb990c48f80a` |
| 2 | `def` | [prototypeModelId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypemodelid--6b2d643e44e80c5af511a483.md) | 30 | `declaration-track:6b2d643e44e80c5af511a483d68bbe8a20f3037392853d378e72f4cffa37fa4d` |
| 3 | `def` | [prototypeSemanticVersion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypesemanticversion--ab5cc48731f2a08040f557d5.md) | 38 | `declaration-track:ab5cc48731f2a08040f557d50c4fa45c39d31e67ac1ddca9191d4de721d54dd8` |
| 4 | `def` | [prototypeVersionCoordinates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeversioncoordinates--c5709806a3dd8765cd16425a.md) | 43 | `declaration-track:c5709806a3dd8765cd16425ab9f6667c4277d23c0f20e8031ef8d40b4e5f59f8` |
| 5 | `def` | [prototypeSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypesourcedigest--59e615c11c4593a01bc12c31.md) | 52 | `declaration-track:59e615c11c4593a01bc12c319436bd0de7bc44ff5c4eeac462875cda3d6d65b1` |
| 6 | `def` | [historicalQuantizationSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/historicalquantizationsourcedigest--ba886f24e41810fce9d1f98b.md) | 65 | `declaration-track:ba886f24e41810fce9d1f98bb8b0f73e6e51d55f1f88659af978e75df9a0f582` |
| 7 | `theorem` | [live_quantization_digest_ne_historical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/live-quantization-digest-ne-historical--ec4927a0c3124b2ff62fbbb3.md) | 68 | `result-track:ec4927a0c3124b2ff62fbbb3a5fd60ad6cf591b8688281288b3f3bd78ca3e91d` |
| 8 | `def` | [prototypeModelIdentity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypemodelidentity--aed2601f271f560d918c288b.md) | 74 | `declaration-track:aed2601f271f560d918c288b2d3cfda9484ea6936a3c0446cd057cbd6d8f91af` |
| 9 | `def` | [prototypeSourceModule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypesourcemodule--c52d762fa1045b3145884d3e.md) | 81 | `declaration-track:c52d762fa1045b3145884d3e5a0af5cbf093a47ca414bf00ef5dacb3fca77670` |
| 10 | `def` | [prototypeDependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypedependencies--f42866fe138c25a6fac062d3.md) | 89 | `declaration-track:f42866fe138c25a6fac062d33489685c18e506dd3fd556d1812617a7be955a0d` |
| 11 | `def` | [prototypeRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototyperank--ff8a7f3f3ba40d40343c32cf.md) | 99 | `declaration-track:ff8a7f3f3ba40d40343c32cf17577176dd24c6429dc40fa08ce17d62863dadb7` |
| 12 | `def` | [prototypeDependencyIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypedependencyids--9a44e42daf2f051b212674bd.md) | 105 | `declaration-track:9a44e42daf2f051b212674bd914a6c35ea26f27d986acba1f4e8ee93786a685f` |
| 13 | `theorem` | [prototype_dependency_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototype-dependency-rank-lt--7530a6a121597ab33b3d7d8d.md) | 116 | `result-track:7530a6a121597ab33b3d7d8dd2f3530b8c4dfa583756beb46afffd2da93c73d7` |
| 14 | `abbrev` | [prototypeDependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypedependencygraph--491e6fbc7749c7c194508213.md) | 138 | `declaration-track:491e6fbc7749c7c1945082135abb7d3eb0a8f903fe0900c5d6d38aca60bc814b` |
| 15 | `def` | [emptyRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/emptyregistry--d555b04041c73f3aac09ecbb.md) | 144 | `declaration-track:d555b04041c73f3aac09ecbb96ce38b10baba66f86862cc5d2b58ed2da13fa0b` |
| 16 | `def` | [prototypeObjectId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeobjectid--390350ca93ea50b0a18673c8.md) | 148 | `declaration-track:390350ca93ea50b0a18673c8a72ca2a037dcdb588786324a3bad132b9f50f8f1` |
| 17 | `def` | [prototypePropositionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypepropositionid--c11d43e64051f4b64e35af64.md) | 152 | `declaration-track:c11d43e64051f4b64e35af64904c3e8f4883b2539cea83a4257e19781b520a1f` |
| 18 | `def` | [prototypeDeclarationId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypedeclarationid--4c028844887f0353f87e0d3f.md) | 156 | `declaration-track:4c028844887f0353f87e0d3f3b0405653010062cccea6f1f924296cccce47d96` |
| 19 | `def` | [prototypeAssumptionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeassumptionid--1b325c39164f8a6057af3223.md) | 169 | `declaration-track:1b325c39164f8a6057af3223f3997ed66e2957979c818d3142287e586d603dc3` |
| 20 | `def` | [prototypeTrustedBase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypetrustedbase--17f0e0f173bbf1c19e2cadf0.md) | 178 | `declaration-track:17f0e0f173bbf1c19e2cadf0c646e45568c7326b69f43adedfe68060361abbab` |
| 21 | `def` | [prototypeObjectRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeobjectrecord--afafeb425c173212a1649f30.md) | 188 | `declaration-track:afafeb425c173212a1649f300f912ef67fd25d8462e60d0087d0ea9532c02e98` |
| 22 | `def` | [prototypePropositionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypepropositionrecord--3911061c3be55203c414909c.md) | 196 | `declaration-track:3911061c3be55203c414909cd406ae845d8b03e1029f4f3a4de6945046865b20` |
| 23 | `def` | [prototypeAssumptionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeassumptionrecord--d5d85569042e0b9b7f443796.md) | 205 | `declaration-track:d5d85569042e0b9b7f443796c520b5cb961ff71b0482c3697ba752640ef4f8b6` |
| 24 | `def` | [prototypeProofAuthorityRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeproofauthorityrecord--dc500d2710cf312b2d6bd43c.md) | 214 | `declaration-track:dc500d2710cf312b2d6bd43c71b6f32ff4b1b6464dba24963cc4e12e6eba5a56` |
| 25 | `def` | [prototypeExampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeexamplerecord--1d6663f86cf54e86a99e2867.md) | 226 | `declaration-track:1d6663f86cf54e86a99e2867cb442617d431d0b78a255f0ffb22b9fa28dd2f19` |
| 26 | `def` | [prototypeCounterexampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypecounterexamplerecord--4a0d5ea1fc7a9d70649caad7.md) | 234 | `declaration-track:4a0d5ea1fc7a9d70649caad705d8697e7f7b0e4100e6f0006c4908622d0d9970` |
| 27 | `def` | [prototypeOpenObligationRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeopenobligationrecord--9860f442a854b798f372d754.md) | 243 | `declaration-track:9860f442a854b798f372d7546292f18098a32a0a776c3d1e514252d2c9801771` |
| 28 | `def` | [prototypeWorldModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeworldmodel--080bd90bcc7768cb36f46a3b.md) | 257 | `declaration-track:080bd90bcc7768cb36f46a3b8e1dd2ba338cfbca538047db8e8a44a4f868827c` |
| 29 | `theorem` | [prototypeWorldModel_metadata_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeworldmodel-metadata-complete--8e6b0dae7ec78ba548110354.md) | 294 | `result-track:8e6b0dae7ec78ba54811035422d743db5d4dfb5aed5739a38f3e666543c8a77d` |
| 30 | `theorem` | [prototypeWorldModel_trustedBase_not_declaredClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeworldmodel-trustedbase-not-declaredclosed--7c8d76d5f784bc418df53c2b.md) | 305 | `result-track:7c8d76d5f784bc418df53c2b577edc6fd7a61bc45177f8812b1947ada2e00a07` |
| 31 | `theorem` | [prototypeWorldModel_proofAuthority_is_declarative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototypeworldmodel-proofauthority-is-declarative--92192728b4be74895426e308.md) | 312 | `result-track:92192728b4be74895426e308e9453dbbe6856220cb79cb1a65b40935b91fd702` |
| 32 | `theorem` | [prototype_model_identities_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototype-model-identities-injective--e18d9115d4f8f221ea07a5a4.md) | 318 | `result-track:e18d9115d4f8f221ea07a5a4adbba2f1a4fa48398382a4305912cf7ce3afcbaf` |
| 33 | `def` | [prototypeRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototyperegistry--f8e6e1ecec03ae3957ad29af.md) | 327 | `declaration-track:f8e6e1ecec03ae3957ad29aff1238217d21344680449489d3cbe2cf742861a79` |
| 34 | `theorem` | [prototypeRegistry_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototyperegistry-card--08bfc7347615fc8e24248ebf.md) | 343 | `result-track:08bfc7347615fc8e24248ebff74e91cf0a5ba8331d516ac6a18f20561ecb87f9` |
| 35 | `theorem` | [prototypeRegistry_source_digest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/declarations/prototyperegistry-source-digest--2ab663c5bcd7e65ea4c91dee.md) | 349 | `result-track:2ab663c5bcd7e65ea4c91dee305dcb685f2c27e3d1591d6b27d46d252e727843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
