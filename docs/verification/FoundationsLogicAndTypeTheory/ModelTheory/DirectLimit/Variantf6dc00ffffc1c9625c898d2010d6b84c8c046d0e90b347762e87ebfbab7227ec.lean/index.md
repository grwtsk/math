# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.DirectLimit.Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Quotients` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.FinitelyGenerated` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/map-self--f4fde6d4919c2d512ea234d4.md) | 51 | `result-track:f4fde6d4919c2d512ea234d45771c42740c417747c31415259ade4631be503c3` |
| 2 | `theorem` | [map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/map-map--bc2f2432ce15bb08a4510912.md) | 57 | `result-track:bc2f2432ce15bb08a4510912e4b4ee29a255dee8203f4d54215f6ffd7996a055` |
| 3 | `def` | [natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/natlerec--36bb99ab285f2f5b57de34d8.md) | 66 | `declaration-track:36bb99ab285f2f5b57de34d8dddd0b1cb9c30996736f7024506858a9ee3c4f77` |
| 4 | `theorem` | [coe_natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/coe-natlerec--08741bec4289da13840f3787.md) | 71 | `result-track:08741bec4289da13840f3787943c397e70b06b13d8a58132e27ce74491cbff04` |
| 5 | `instance` | [natLERec.directedSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/natlerec-directedsystem--14c8f4b5f4d74f429ded6f29.md) | 81 | `declaration-track:14c8f4b5f4d74f429ded6f294acb07022de1e0b243829435fc20be25fdc12bbf` |
| 6 | `abbrev` | [Structure.Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/structure-sigma--8eacc015141f5457f14f40cd.md) | 96 | `declaration-track:8eacc015141f5457f14f40cdb11a55a7ee0b8c0b88cd60d4639e6ac7c48c2daf` |
| 7 | `abbrev` | [Structure.Sigma.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/structure-sigma-mk--8a0486c7be116060d1035bc6.md) | 102 | `declaration-track:8a0486c7be116060d1035bc6ce9bc0c60d710800f8060e50bc96060af75c573e` |
| 8 | `def` | [unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/unify--5cab86b3f32f9a760a3071b5.md) | 107 | `declaration-track:5cab86b3f32f9a760a3071b5ba439cb33440649f062b53e9b4ab4ccfc71d7dd4` |
| 9 | `theorem` | [unify_sigma_mk_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/unify-sigma-mk-self--d338ee455c4e92295ad58338.md) | 115 | `result-track:d338ee455c4e92295ad583388751815f89c360c0f759dedba3f7a38c191fe992` |
| 10 | `theorem` | [comp_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/comp-unify--0c69066692d6db06af211fae.md) | 123 | `result-track:0c69066692d6db06af211faec8de24c3f501fe0a973894909bd548c3a3162a37` |
| 11 | `def` | [setoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/setoid--1bdc63ce828323b3d388fe8c.md) | 138 | `declaration-track:1bdc63ce828323b3d388fe8c5dc3f1daa8965cd29abba1ae5fdc19f366456556` |
| 12 | `def` | [sigmaStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/sigmastructure--042ba95e28f2f8fe4569e53c.md) | 153 | `declaration-track:042ba95e28f2f8fe4569e53c89f2eef5703c2402a0f280293107a36b7d4bfbbe` |
| 13 | `def` | [DirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/directlimit--c0b1012956a046028c067f44.md) | 168 | `declaration-track:c0b1012956a046028c067f44428a247ced04c4ef24b25e5d672f76a5f2dd5c7f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/instance--4f6dae6051b9b305d96891bf.md) | 178 | `declaration-track:4f6dae6051b9b305d96891bfd8a4c12b15d9d7d1e301c65974f1b3e98ad29e3d` |
| 15 | `theorem` | [equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/equiv-iff--2ba0207fc9d0587d9e561bcb.md) | 186 | `result-track:2ba0207fc9d0587d9e561bcb732abfc7a65cdad1ee3fe62a258035d01f613270` |
| 16 | `theorem` | [funMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/funmap-unify-equiv--c2a056e0cc8f85d012e46a51.md) | 199 | `result-track:c2a056e0cc8f85d012e46a5171cf4d6ae4633872ef5bc31f0b7e74631ac525d6` |
| 17 | `theorem` | [relMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/relmap-unify-equiv--eae506925f4209e412774489.md) | 207 | `result-track:eae506925f4209e41277448960db7b735ab75d3dabd44b278c8b2dc78d9cb3c9` |
| 18 | `theorem` | [exists_unify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/exists-unify-eq--fe89f6e3d04e7611edec2678.md) | 216 | `result-track:fe89f6e3d04e7611edec2678a832d0974b5616f0dd3915a3045de648c39978b5` |
| 19 | `theorem` | [funMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/funmap-equiv-unify--b802054e43028f6113c3e228.md) | 225 | `result-track:b802054e43028f6113c3e228f9c7f68ebe96228a01ebf5b4f50389dff53a6e15` |
| 20 | `theorem` | [relMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/relmap-equiv-unify--9b0e633ff6828dbdde980428.md) | 231 | `result-track:9b0e633ff6828dbdde980428259b2f000f81c3c8bff9d0244990e9a69b590c3b` |
| 21 | `instance` | [prestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/prestructure--5d7f41660d774cab59db98eb.md) | 239 | `declaration-track:5d7f41660d774cab59db98eb62545a7952409a2e5216a3f04147bbbc4d4b654d` |
| 22 | `instance` | [instStructureDirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/inststructuredirectlimit--c41286048bbe8cec0381cec7.md) | 255 | `declaration-track:c41286048bbe8cec0381cec76e879fc951f074dc745dd32c00bd9b5ae3d00c73` |
| 23 | `theorem` | [funMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/funmap-quotient-mk-sigma-mk--6babd5ca0da4d6ae3d6cf47b.md) | 261 | `result-track:6babd5ca0da4d6ae3d6cf47b3897ce6dd68e2996d2beee10111c067033f35550` |
| 24 | `theorem` | [relMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/relmap-quotient-mk-sigma-mk--74127d8285895270d6732aac.md) | 272 | `result-track:74127d8285895270d6732aac63b4e2747408e949af02b772e09490688523a230` |
| 25 | `theorem` | [exists_quotient_mk'_sigma_mk'_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/exists-quotient-mk-sigma-mk-eq--d9e5cc8e15a8b337185f7513.md) | 281 | `result-track:d9e5cc8e15a8b337185f751323337987eab907ac4acd1267f21757fda475e168` |
| 26 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/of--93fb2acac19b92ced236a96a.md) | 299 | `declaration-track:93fb2acac19b92ced236a96ae74856b364b150602110cff700bc301d865155a8` |
| 27 | `theorem` | [of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/of-apply--4f288076f45985754f4e084e.md) | 320 | `result-track:4f288076f45985754f4e084ece2791bf127c3ed33fd5e2b2acde34c0306df282` |
| 28 | `theorem` | [of_f](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/of-f--5fb6f117b49f970834b8edf5.md) | 326 | `result-track:5fb6f117b49f970834b8edf5ecd6f599cc057e1d55fd022aebb5226ab3185cf5` |
| 29 | `theorem` | [exists_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/exists-of--d5db10c73518b22172ef8dbb.md) | 334 | `result-track:d5db10c73518b22172ef8dbb7fc63fd22e29265b2885913eec55e3e8ac6c6ea4` |
| 30 | `theorem` | [inductionOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/inductionon--ebd8a13a1d6e020fa7d0d4a2.md) | 339 | `result-track:ebd8a13a1d6e020fa7d0d4a2ba7e027d23d20ae52ba844952b615689091cbb87` |
| 31 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/lift--10c6b33cfa99b74b441beb91.md) | 354 | `declaration-track:10c6b33cfa99b74b441beb91e4f9fdb392df59f53b4acfb8b38f5e46a189e641` |
| 32 | `theorem` | [lift_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/lift-quotient-mk-sigma-mk--0eba7687f09ea705e9b1c833.md) | 384 | `result-track:0eba7687f09ea705e9b1c8335606202b6f6cdfef2e7c05cbd6841040a8b8fa22` |
| 33 | `theorem` | [lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/lift-of--4d978f04b4ae298a86a098c4.md) | 389 | `result-track:4d978f04b4ae298a86a098c4a0b02814926e9340a559b51e240a98ed2ec92e3b` |
| 34 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/lift-unique--e89915f990af6d63e095ec08.md) | 392 | `result-track:e89915f990af6d63e095ec08c708cd20869275190154ef7b36720b111066d062` |
| 35 | `theorem` | [cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/cg--b21b5f4ffbb1d3a432b09d7e.md) | 400 | `result-track:b21b5f4ffbb1d3a432b09d7e93964cc1c1c39f741608c67389b484b49ebf45ae` |
| 36 | `instance` | [cg'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/declarations/cg--b7589e9d2e9c8f0df4d60fb9.md) | 417 | `declaration-track:b7589e9d2e9c8f0df4d60fb9100bb82b121ac4863f2435c6ff77c15baa82d5e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
