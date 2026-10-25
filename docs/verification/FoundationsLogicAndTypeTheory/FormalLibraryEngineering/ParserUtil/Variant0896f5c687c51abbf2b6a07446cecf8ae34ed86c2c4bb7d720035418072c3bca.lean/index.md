# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserUtil.Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90ae988081692a70de83aa7e9a3963764f9fa0ee",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90ae988081692a70de83aa7e9a3963764f9fa0ee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Parser` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isBinDigit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/isbindigit--e6d112f70db6cc6773d8d024.md) | 23 | `declaration-track:e6d112f70db6cc6773d8d0247d6ee2b68a823fceee779cb360446e79baaebeb6` |
| 2 | `def` | [isOctDigit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/isoctdigit--48aff6aa2d8edc2629d88728.md) | 26 | `declaration-track:48aff6aa2d8edc2629d88728f35c6933d5c31b1a3b5a2aceea0d67c5826d9a02` |
| 3 | `def` | [isHexDigit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/ishexdigit--4b5c62bf01cc7ab217423848.md) | 29 | `declaration-track:4b5c62bf01cc7ab217423848251c55a31cd5b66e4dbe25fd5518fd673a3e01e3` |
| 4 | `def` | [skipFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/skipfn--c9a3f2c860661520caa0c0df.md) | 32 | `declaration-track:c9a3f2c860661520caa0c0df078ad500a2bbe13d78de0edd5640d6ec9baf080d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/instance--757a2b8e4bce4315eb962225.md) | 34 | `declaration-track:757a2b8e4bce4315eb9622253231a0129b6abd24b1c47a6a0b66022be398a8f0` |
| 6 | `def` | [usePosFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/useposfn--7a646e4864b187b1265cbe57.md) | 38 | `declaration-track:7a646e4864b187b1265cbe5750dd76ef66e514272171471c6e34f1c9aeca0e65` |
| 7 | `def` | [optFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/optfn--a54e45ab16eb62cc41c9358c.md) | 42 | `declaration-track:a54e45ab16eb62cc41c9358c764fbb484843e1ef055fb1d32a1c8627ab05ce33` |
| 8 | `def` | [repeatFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/repeatfn--9edff78651c5945eeaf6e735.md) | 49 | `declaration-track:9edff78651c5945eeaf6e73548abb146a6442e1839025d2718505fe11af9c3da` |
| 9 | `def` | [mkUnexpectedCharError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/mkunexpectedcharerror--6688fbe713e3210cfbc0984b.md) | 57 | `declaration-track:6688fbe713e3210cfbc0984bade1e3dc6c6b8c0e3e0a78a9e00c3793ce3d36cc` |
| 10 | `def` | [satisfyFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/satisfyfn--201283e0609837de52898b97.md) | 60 | `declaration-track:201283e0609837de52898b9721402446c0efc3b202baea0c80a1777f891e072d` |
| 11 | `def` | [takeWhile1Fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/takewhile1fn--05ebef8ef8aec69de33767bf.md) | 71 | `declaration-track:05ebef8ef8aec69de33767bff83967fa1d90c39a5bf75b70b8e7461e7819bb2b` |
| 12 | `def` | [digitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/digitfn--b2416625b8e15a33eba30a16.md) | 75 | `declaration-track:b2416625b8e15a33eba30a16ac8c365c4bf32c1eae35ea2272544074cec6f737` |
| 13 | `def` | [digitPairFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/digitpairfn--ca65792f6294fe46cebdd0f3.md) | 79 | `declaration-track:ca65792f6294fe46cebdd0f384a4aa28aa2cc016df3184352d4e0756f5c2d68a` |
| 14 | `def` | [chFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/chfn--35f7afe035fbc7656393c495.md) | 83 | `declaration-track:35f7afe035fbc7656393c495a58f7376baca593d895af393bacd63de88c51157` |
| 15 | `def` | [strAuxFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/strauxfn--89fb0e1adc99a5cf1e8382fc.md) | 86 | `declaration-track:89fb0e1adc99a5cf1e8382fc3df2ba2d5be026609b7119df193c4e4e6cbe04fb` |
| 16 | `def` | [strFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/strfn--277e3426260cb99de62ad097.md) | 94 | `declaration-track:277e3426260cb99de62ad097c45a861cf075bddac5052283d32ddb7d0439e85a` |
| 17 | `def` | [sepByChar1AuxFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/sepbychar1auxfn--3267cf87d02dab0d6863e373.md) | 99 | `declaration-track:3267cf87d02dab0d6863e373de3a235092e5dd7b663e96f2e22d299a305f8e89` |
| 18 | `def` | [sepByChar1Fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/sepbychar1fn--477d0c4d7303e7f70e521749.md) | 112 | `declaration-track:477d0c4d7303e7f70e521749529a2867956078fe404781c2fe800f726fa3fd20` |
| 19 | `def` | [pushAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/pushatom--e4884fc2162aba7eda388a1e.md) | 129 | `declaration-track:e4884fc2162aba7eda388a1e0a92226f6ffc562b7bf619eed0b98f16f41be1a8` |
| 20 | `def` | [atomFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/atomfn--ff1d0d03e34f68bdfbfc4140.md) | 140 | `declaration-track:ff1d0d03e34f68bdfbfc41400c7ce5d07a957f8cad956800065a41929c665f62` |
| 21 | `def` | [atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/atom--e5ea65dda2c86313180a22db.md) | 146 | `declaration-track:e5ea65dda2c86313180a22db265e11255ac33ac4d22e56c5059e4cf97e616633` |
| 22 | `def` | [atom.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/atom-formatter--666fd643a2813ad051694816.md) | 150 | `declaration-track:666fd643a2813ad05169481653263d45a8b3ab43a218625ae36841359cf17bea` |
| 23 | `def` | [atom.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/atom-parenthesizer--ceaa5cacb7be861b21624a74.md) | 159 | `declaration-track:ceaa5cacb7be861b21624a74c12d69e79e633ece58a3939bec7cb7282ab7172c` |
| 24 | `def` | [chAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/chatom--043922748204b100d9e176cf.md) | 163 | `declaration-track:043922748204b100d9e176cf0a30ae6806c0abffab1ed85d0b74dc18b930f882` |
| 25 | `def` | [chAtom.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/chatom-formatter--8ddecdb54a8001c674a7e4bf.md) | 167 | `declaration-track:8ddecdb54a8001c674a7e4bf46a449d74dcffaff841cb0841b0d0a4071781b3c` |
| 26 | `def` | [chAtom.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/chatom-parenthesizer--ed1d4c4505d96e1788da4f1b.md) | 171 | `declaration-track:ed1d4c4505d96e1788da4f1b069b7ac72a5eea9a91814277d303f4a3496a9dff` |
| 27 | `def` | [strAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/stratom--b55de9dd0ce0b809a759be8b.md) | 175 | `declaration-track:b55de9dd0ce0b809a759be8be2026f44ac763e35e2ff88b186905317f2b045c5` |
| 28 | `def` | [strAtom.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/stratom-formatter--59b8d5d797475e9e817f2c6f.md) | 179 | `declaration-track:59b8d5d797475e9e817f2c6f83c46d022850f3a12225e137f7d0307da03060d6` |
| 29 | `def` | [strAtom.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/stratom-parenthesizer--7568b7d3d08f322115e06e08.md) | 183 | `declaration-track:7568b7d3d08f322115e06e08a2c8c73ca686562ed5de2a772015da543446d7dc` |
| 30 | `def` | [pushLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/pushlit--0d2d5de63c3ee9fa42900ee6.md) | 187 | `declaration-track:0d2d5de63c3ee9fa42900ee6aabe7306476fb8ad7a030d1e90c23f2d6ea95542` |
| 31 | `def` | [litFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/litfn--150287a739568afdc82f816c.md) | 197 | `declaration-track:150287a739568afdc82f816c6569d96f06e5cf84b04a70c7a02451a9501dab95` |
| 32 | `def` | [lit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/lit--a48f525f5f3152a579c7fd82.md) | 203 | `declaration-track:a48f525f5f3152a579c7fd82abd1c1adb92cc9d6a85bc23193452d9c2f010e0f` |
| 33 | `def` | [lit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/lit-formatter--87dc05ccc570c3aeee4ecf1c.md) | 207 | `declaration-track:87dc05ccc570c3aeee4ecf1c31fb7c7d82bedff284c12d6c7ad68b898d024a25` |
| 34 | `def` | [lit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/lit-parenthesizer--0b4b3880aedadb384e56a88f.md) | 211 | `declaration-track:0b4b3880aedadb384e56a88fd214605c96a309ac5e07ed9deb54064a520e0de4` |
| 35 | `def` | [litWithAntiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/litwithantiquot--adc98f4f034c75c786dc783e.md) | 215 | `declaration-track:adc98f4f034c75c786dc783ed2c11139da18e2e83a98d9ffc065a45774597c05` |
| 36 | `def` | [epsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/epsilon--ffa55d8a697f854d539e7c10.md) | 218 | `declaration-track:ffa55d8a697f854d539e7c105922fe5fde72e7120a98c1445b29423e55574325` |
| 37 | `def` | [epsilon.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/epsilon-formatter--472564e72022c577f718928a.md) | 222 | `declaration-track:472564e72022c577f718928ac948aa11b5f0101f9adb834d7bf15b3ace1810d7` |
| 38 | `def` | [epsilon.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/epsilon-parenthesizer--02f1a75a45197e36e846db2b.md) | 225 | `declaration-track:02f1a75a45197e36e846db2ba4b4a08e27abdc83258da77c9065386396ade0fe` |
| 39 | `def` | [modifyTailInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/modifytailinfo--262817d24f3359d68493ea94.md) | 228 | `declaration-track:262817d24f3359d68493ea940a0670107254fd2256f8fef80c51fcf85412f248` |
| 40 | `def` | [extendTrailingFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/extendtrailingfn--d987aad2b981e350db0533ae.md) | 235 | `declaration-track:d987aad2b981e350db0533aeb2d1df4eccb0eeb9b0d8c6fa55569d1e46668670` |
| 41 | `def` | [trailing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/trailing--a77c7eab3661660f1c948048.md) | 247 | `declaration-track:a77c7eab3661660f1c948048264692ddd58be1db43853c49b64567d47ca83076` |
| 42 | `def` | [dynamicNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/dynamicnode--0af79eee3343dabf53b249f5.md) | 250 | `declaration-track:0af79eee3343dabf53b249f5e00cecf09308362d037f4f84897474d0bb93152d` |
| 43 | `def` | [dynamicNode.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/dynamicnode-formatter--5b3f26ee037561e7199e084d.md) | 254 | `declaration-track:5b3f26ee037561e7199e084dd834aeca022607640a76a08cf02e697526eb0a63` |
| 44 | `def` | [dynamicNode.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/dynamicnode-parenthesizer--6df6ae2fc7ae3247e0eb205a.md) | 258 | `declaration-track:6df6ae2fc7ae3247e0eb205a1829b0d043f16e60411140a4525d6c10e613cbb2` |
| 45 | `def` | [recNodeFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/recnodefn--4d5aa4d9ecfcb16717d18708.md) | 261 | `declaration-track:4d5aa4d9ecfcb16717d187083c3d9588272ff3daa3f43c3a6d401b93a1092cf7` |
| 46 | `abbrev` | [ParserMapFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/parsermapfn--4a533fbd03e17149b58d1396.md) | 268 | `declaration-track:4a533fbd03e17149b58d13967729fa324f124245e9a207bc2080ff40f0033b31` |
| 47 | `def` | [recNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/recnode--b5aa0947439be1f5050ae555.md) | 271 | `declaration-track:b5aa0947439be1f5050ae55520c746fb0bf3ba777acbb98af0dd05e82dbe9b52` |
| 48 | `def` | [recNodeWithAntiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/recnodewithantiquot--3e0ca37af1ca152187e5b5aa.md) | 275 | `declaration-track:3e0ca37af1ca152187e5b5aa9469d79bfc9d9d33413a4492d6c6912b3f3c96d0` |
| 49 | `def` | [sepByLinebreak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/sepbylinebreak--8906d9e9ff6257f4865d302f.md) | 281 | `declaration-track:8906d9e9ff6257f4865d302f16c1923c8d88c3ebe7385b52bea9ddfcb9b955c6` |
| 50 | `def` | [sepBy1Linebreak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/sepby1linebreak--7d61fa521d6b5a28a3de79ce.md) | 286 | `declaration-track:7d61fa521d6b5a28a3de79cef602f8b74cf5c9dc61005967eaca47a5d3a69acd` |
| 51 | `def` | [skipInsideQuotFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/skipinsidequotfn--a9de69fd28e4dc6e7092565e.md) | 290 | `declaration-track:a9de69fd28e4dc6e7092565e1b3b187a0cf3f724b1d8c0644c0a8d0cc78b2316` |
| 52 | `def` | [skipInsideQuot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variant0896f5c687c51abbf2b6a07446cecf8ae34ed86c2c4bb7d720035418072c3bca.lean/declarations/skipinsidequot--7217b4790ad2ccbbddd9f614.md) | 294 | `declaration-track:7217b4790ad2ccbbddd9f614e43dfe4fd92082415b13dc7c84477964e5ccd8b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
