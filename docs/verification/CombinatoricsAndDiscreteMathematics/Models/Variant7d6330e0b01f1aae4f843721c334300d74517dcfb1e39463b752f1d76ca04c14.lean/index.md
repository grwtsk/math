# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Models.Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f62a33aef36c1b7a56d85399cf70a66d9024d9bf",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f62a33aef36c1b7a56d85399cf70a66d9024d9bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean.json)

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
| 1 | `inductive` | [PrototypeModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypemodel--b2f66eb316235c17622da81b.md) | 21 | `declaration-track:b2f66eb316235c17622da81bf391499ec63ec9d4cd54706073c7cb5bbc98c72c` |
| 2 | `def` | [prototypeModelId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypemodelid--ac8b4cc54a2f16f9d1a77aca.md) | 30 | `declaration-track:ac8b4cc54a2f16f9d1a77aca4713995cb9cbdc9e6d2d8b789945ff6d41a12862` |
| 3 | `def` | [prototypeSemanticVersion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypesemanticversion--7145675ba9e6cff2a390a513.md) | 38 | `declaration-track:7145675ba9e6cff2a390a513c0f402d40bb7cd6d5ae1f08bd1862bb9b4a222e3` |
| 4 | `def` | [prototypeVersionCoordinates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeversioncoordinates--e0a53bc09f3a01c583dd93dc.md) | 43 | `declaration-track:e0a53bc09f3a01c583dd93dcfdc3a388bf44d096767f3ebeec68f0afa45795a2` |
| 5 | `def` | [prototypeSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypesourcedigest--8e6f22a24ad99db3e3e2aa15.md) | 55 | `declaration-track:8e6f22a24ad99db3e3e2aa15c415c36725413ba53fbaea78347508efafee86c8` |
| 6 | `def` | [historicalQuantizationSourceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/historicalquantizationsourcedigest--3d7c1136e3942fff40daabdc.md) | 68 | `declaration-track:3d7c1136e3942fff40daabdc98056625e88d2021e5e21f0844191c9d42625498` |
| 7 | `theorem` | [live_quantization_digest_ne_historical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/live-quantization-digest-ne-historical--9afec90b5a6b6ed8d4171996.md) | 71 | `result-track:9afec90b5a6b6ed8d41719963308c42f35c3a73f06411e4cf339a466079abfa4` |
| 8 | `def` | [prototypeModelIdentity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypemodelidentity--fc18a3ee7166e7f8570073f4.md) | 77 | `declaration-track:fc18a3ee7166e7f8570073f4de7fd12b1ba29ac5d447ba6bb90f28a3216f0349` |
| 9 | `def` | [prototypeSourceModule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypesourcemodule--1df9390901bdd246aea5c615.md) | 84 | `declaration-track:1df9390901bdd246aea5c61508f598357137261e031a3ad2b687cdd864924af1` |
| 10 | `def` | [prototypeDependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypedependencies--4ba85515fe7841e46c1c1de4.md) | 92 | `declaration-track:4ba85515fe7841e46c1c1de46ad6a683f799fc66fd8ccfa428a3411e652091c6` |
| 11 | `def` | [prototypeRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototyperank--5ac606447856df097c25e1da.md) | 102 | `declaration-track:5ac606447856df097c25e1da159ede9fd840c959feffc1350c22ac6299eae952` |
| 12 | `def` | [prototypeDependencyIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypedependencyids--18f7da4b7f9c29c032aefcb6.md) | 108 | `declaration-track:18f7da4b7f9c29c032aefcb6f2a08694171db869655b8a563f47c4472bbcd9a6` |
| 13 | `theorem` | [prototype_dependency_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototype-dependency-rank-lt--e0dc2b0e08e2465311251c6a.md) | 119 | `result-track:e0dc2b0e08e2465311251c6abf40de9e6cb2bf8bb1c1b54762bdd42da37eddc2` |
| 14 | `abbrev` | [prototypeDependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypedependencygraph--aedf14e9b90b6f68879c581c.md) | 141 | `declaration-track:aedf14e9b90b6f68879c581c861624001c2b9422130696b1142daacd0a75f57d` |
| 15 | `def` | [emptyRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/emptyregistry--5639875c455312f76ac49ecd.md) | 147 | `declaration-track:5639875c455312f76ac49ecd99ca2248fb30db86ffad49942a479e28dce74243` |
| 16 | `def` | [prototypeObjectId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeobjectid--dee2d317015b029ed999875e.md) | 151 | `declaration-track:dee2d317015b029ed999875ecd8fca1171a534314bc6435772bd01c666242ddb` |
| 17 | `def` | [prototypePropositionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypepropositionid--ffffb2992197be076d5a48ef.md) | 155 | `declaration-track:ffffb2992197be076d5a48efc6b079c0f0ff8f326373546a4d9e43c12a05d934` |
| 18 | `def` | [prototypeDeclarationId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypedeclarationid--b918337f112e1f63c31a2165.md) | 159 | `declaration-track:b918337f112e1f63c31a216568446d5778745a7cd510b7585ad3dcf4c34d619a` |
| 19 | `def` | [prototypeAssumptionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeassumptionid--6f8969ef94691de71c7a03de.md) | 172 | `declaration-track:6f8969ef94691de71c7a03ded1f5320f451b7bbc503f5b5568e4e5f10e393b50` |
| 20 | `def` | [prototypeTrustedBase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypetrustedbase--97d4c275ddbc19630bbd9b8e.md) | 181 | `declaration-track:97d4c275ddbc19630bbd9b8ebdcd835324d44ae9a2aabb623868084d12a569f1` |
| 21 | `def` | [prototypeObjectRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeobjectrecord--8959a9da9230f267b2210740.md) | 191 | `declaration-track:8959a9da9230f267b22107405b0f53e7f04a98642eff1a0ec682d167f814d19c` |
| 22 | `def` | [prototypePropositionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypepropositionrecord--05fa5172c5f9ce52feba711e.md) | 199 | `declaration-track:05fa5172c5f9ce52feba711ec079d817baeee3cd8ae806ef84e7155509c10a93` |
| 23 | `def` | [prototypeAssumptionRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeassumptionrecord--85665222d772e0a70b332db3.md) | 208 | `declaration-track:85665222d772e0a70b332db3309da0f004d44c2faa5c642bceca8f5b7caa5b84` |
| 24 | `def` | [prototypeProofAuthorityRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeproofauthorityrecord--f76fddf434d75bcc765851f4.md) | 217 | `declaration-track:f76fddf434d75bcc765851f467c0a3a5c5280ac11ec7cab995fa2fcda218257c` |
| 25 | `def` | [prototypeExampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeexamplerecord--de2b35505bd27271d088828f.md) | 229 | `declaration-track:de2b35505bd27271d088828faaf0c8ce72e04b7e803c1ae66b5d89556efd90f2` |
| 26 | `def` | [prototypeCounterexampleRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypecounterexamplerecord--39a399cb70b8d140200cb214.md) | 237 | `declaration-track:39a399cb70b8d140200cb21422b17c29ce37f39775e108f29529f66c0dd69e05` |
| 27 | `def` | [prototypeOpenObligationRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeopenobligationrecord--5178f222e61a98a792b2c965.md) | 246 | `declaration-track:5178f222e61a98a792b2c965ed24119533b701da4f60e29927bd8b0513cc6ef5` |
| 28 | `def` | [prototypeWorldModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeworldmodel--9202261dcf4cd2e45dd35c8e.md) | 260 | `declaration-track:9202261dcf4cd2e45dd35c8e00243a01964598824ff8e2cbeb7821927e69dda4` |
| 29 | `theorem` | [prototypeWorldModel_metadata_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeworldmodel-metadata-complete--f03413c374cfdca576739b50.md) | 297 | `result-track:f03413c374cfdca576739b50402f47e5697b331f0b3ae7742732e560b65c8eab` |
| 30 | `theorem` | [prototypeWorldModel_trustedBase_not_declaredClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeworldmodel-trustedbase-not-declaredclosed--938aab0e1563c9f97cfef717.md) | 308 | `result-track:938aab0e1563c9f97cfef71754099b1341d9e17892959dc8465a1676365562e2` |
| 31 | `theorem` | [prototypeWorldModel_proofAuthority_is_declarative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototypeworldmodel-proofauthority-is-declarative--b023a6e6fa0a8ad21f74d99f.md) | 315 | `result-track:b023a6e6fa0a8ad21f74d99f4615ecff689f14c064bf71a8333405fdb8311da0` |
| 32 | `theorem` | [prototype_model_identities_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototype-model-identities-injective--03fc96c81939b7739cb8dce5.md) | 321 | `result-track:03fc96c81939b7739cb8dce5617b47c39c06f630dbaeaca1ec5c6da72e589526` |
| 33 | `def` | [prototypeRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototyperegistry--eda3fa265f7e05d87b576b4a.md) | 330 | `declaration-track:eda3fa265f7e05d87b576b4a457ac84e7e28a160500b201dcce56683d8cb9294` |
| 34 | `theorem` | [prototypeRegistry_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototyperegistry-card--949656dfeca90704c2875ca2.md) | 346 | `result-track:949656dfeca90704c2875ca232274d143166e4a76e6bd4ac084b7c5068f08b4e` |
| 35 | `theorem` | [prototypeRegistry_source_digest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Models/Variant7d6330e0b01f1aae4f843721c334300d74517dcfb1e39463b752f1d76ca04c14.lean/declarations/prototyperegistry-source-digest--53a8e8c10614535582ded15d.md) | 352 | `result-track:53a8e8c10614535582ded15d339b3715855a3e5e9ed34947de147d0d212b766f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
