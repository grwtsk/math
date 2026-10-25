# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToMono.Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8108c1c1de3c403d722cf3a86280465f06a63052",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8108c1c1de3c403d722cf3a86280465f06a63052`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToMonoM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/tomonom-state--45d4bf9cd6bc15261f18e9ee.md) | 19 | `declaration-track:45d4bf9cd6bc15261f18e9ee36de52ede96c4a3693fa68dbeb334a0814f1ba39` |
| 2 | `abbrev` | [ToMonoM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/tomonom--989f7b1fef63815f2c2d0c14.md) | 22 | `declaration-track:989f7b1fef63815f2c2d0c1469930916a5477f98b45e6d3118bb06fe8be92afe` |
| 3 | `def` | [Param.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/param-tomono--135a1784deff25778e17aaef.md) | 24 | `declaration-track:135a1784deff25778e17aaef2a6a5ee40c8154138a036d06fd99b88aec03c663` |
| 4 | `def` | [argToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/argtomono--ed5b91d76b151a6bf1792d42.md) | 30 | `declaration-track:ed5b91d76b151a6bf1792d420efbf868b3d9596a1ce5f1bd0d11904e60b832f9` |
| 5 | `def` | [argsToMonoWithFnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/argstomonowithfntype--2d3b65eec6347a078f386683.md) | 39 | `declaration-track:2d3b65eec6347a078f386683aef9d75b01f0f13017072afddc08782a6ee888b2` |
| 6 | `def` | [argsToMonoRedArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/argstomonoredarg--8895da0e862689cf853778b1.md) | 56 | `declaration-track:8895da0e862689cf853778b188064f69d8377af96092071d4e5f9a7515adfcb9` |
| 7 | `def` | [ctorAppToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/ctorapptomono--1a636313c2224e38cddd58f2.md) | 74 | `declaration-track:1a636313c2224e38cddd58f2d0122acccc352cd596da4818584ca6961e29e65c` |
| 8 | `def` | [LetValue.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/letvalue-tomono--1ee1c4dbbc0cb4fef2639a7f.md) | 81 | `declaration-track:1ee1c4dbbc0cb4fef2639a7f346d537307698dbe9e66be0270cbba7901d7c7c3` |
| 9 | `def` | [LetDecl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/letdecl-tomono--e221fb923c207e47f99aded2.md) | 146 | `declaration-track:e221fb923c207e47f99aded2bc6446822539d2a7c43b1b08ad526058df468e5c` |
| 10 | `def` | [mkFieldParamsForComputedFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/mkfieldparamsforcomputedfields--14ea78e4f23c5d7422c3f0c7.md) | 151 | `declaration-track:14ea78e4f23c5d7422c3f0c71f4f9ea45c69696034ee2c429cbe2e1aa956aebd` |
| 11 | `def` | [FunDecl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/fundecl-tomono--ee4ad7d8a01b593f2ab733ff.md) | 171 | `declaration-track:ee4ad7d8a01b593f2ab733ff5d9efffb95dc7ee792b039669ed7b529257dc97f` |
| 12 | `def` | [decToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/dectomono--934e8a9450329c75505e06e1.md) | 178 | `declaration-track:934e8a9450329c75505e06e136558e5f331337daf3bb1b404eb4ca1478a76482` |
| 13 | `def` | [casesNatToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesnattomono--120d7d2a84e69af828a20bb5.md) | 190 | `declaration-track:120d7d2a84e69af828a20bb59a1fec0048140281fa747ea96a06bdb66d861572` |
| 14 | `def` | [casesIntToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesinttomono--05e070a11887514f47910603.md) | 211 | `declaration-track:05e070a11887514f4791060393c6f8490b187a87e2168c66e7ca072b0276ef92` |
| 15 | `def` | [casesUIntToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesuinttomono--29b89c3ba1ebb22659e69ac8.md) | 236 | `declaration-track:29b89c3ba1ebb22659e69ac8822d8261a573599a5fbf9fe4ccb7df14d8ef8a59` |
| 16 | `def` | [casesArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesarraytomono--d952162cf83cd0e28b0cfe86.md) | 248 | `declaration-track:d952162cf83cd0e28b0cfe869f5844b89fb30347414f9d3d94ac6bb3cff61cd7` |
| 17 | `def` | [casesByteArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesbytearraytomono--b7c96f6a992917ff497535e8.md) | 259 | `declaration-track:b7c96f6a992917ff497535e84fb4090140b530d9b6b7b56fc497a393306e7e15` |
| 18 | `def` | [casesFloatArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesfloatarraytomono--12dae1597c6990d233a2aac4.md) | 271 | `declaration-track:12dae1597c6990d233a2aac4a2020ce5d7e880c8dbfd02aea1d94b98a10688f6` |
| 19 | `def` | [casesStringToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesstringtomono--fc7183f51e042fa29eabb4e6.md) | 283 | `declaration-track:fc7183f51e042fa29eabb4e6cb40270060d1ef5d84fd4089c0e1182149252505` |
| 20 | `def` | [casesFloatToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesfloattomono--c56a4c47a0507720ecdbdeea.md) | 294 | `declaration-track:c56a4c47a0507720ecdbdeea65fa1e6804b87581b8bae66c810fa3a820ffc7e8` |
| 21 | `def` | [casesFloat32ToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesfloat32tomono--1c406288ce793b66113d0794.md) | 305 | `declaration-track:1c406288ce793b66113d07949d5d36f11cc2a836beb8760d12b4f683e6f8397f` |
| 22 | `def` | [casesThunkToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casesthunktomono--ae07c9d0e05a4fc5a4d01693.md) | 316 | `declaration-track:ae07c9d0e05a4fc5a4d016938db2a21e10b33bab58d38fbc07d61061c76b4dab` |
| 23 | `def` | [casesTaskToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/casestasktomono--cd38ff37e31ab6c207c44a2f.md) | 336 | `declaration-track:cd38ff37e31ab6c207c44a2f7508895a6d4413d83c7b8c12adbeeb76940f6879` |
| 24 | `def` | [trivialStructToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/trivialstructtomono--188e234d19c875241b6f8b93.md) | 347 | `declaration-track:188e234d19c875241b6f8b93d698d9e8e31a83bd7687af71d08f90a9a77ebb4f` |
| 25 | `def` | [Code.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/code-tomono--24391d0c06a91217d67ea4f6.md) | 360 | `declaration-track:24391d0c06a91217d67ea4f6100fa8511f08350bf2de3060ed9f106c5d13a45e` |
| 26 | `def` | [Decl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/decl-tomono--1132fe8c610726cc53046c6c.md) | 436 | `declaration-track:1132fe8c610726cc53046c6ca3a8b80833faa85746565f3d3a87c177b9ae463f` |
| 27 | `def` | [toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/tomono--b426f8cb4ddcb05946441944.md) | 447 | `declaration-track:b426f8cb4ddcb059464419440a7a25c6fac54c6009a6af42dcf5621452a0d593` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantcf79b8c58753317fad94bb886bd8262ba9e66b43c10f74a515a64f46c42456aa.lean/declarations/builtin-initialize--2307f23543787cd2b5319e21.md) | 454 | `declaration-track:2307f23543787cd2b5319e21d149309df3faab836631ff65e1c4f1f5c3094301` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
