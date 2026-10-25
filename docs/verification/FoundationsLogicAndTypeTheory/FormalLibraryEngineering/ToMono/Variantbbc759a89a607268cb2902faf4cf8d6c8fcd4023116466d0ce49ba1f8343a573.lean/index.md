# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToMono.Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToMonoM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/tomonom-state--5f740271f04289317284ce45.md) | 27 | `declaration-track:5f740271f04289317284ce45124df1ff0a6715a48ff36475f63daf16ecd2752b` |
| 2 | `abbrev` | [ToMonoM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/tomonom--41cad590adddff537e1b0490.md) | 30 | `declaration-track:41cad590adddff537e1b04906abf4b3492fc67de2271a902931ee87cd2eabb65` |
| 3 | `def` | [Param.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/param-tomono--d56c95b79a252380f9698d4a.md) | 32 | `declaration-track:d56c95b79a252380f9698d4ae9146ddf1baef738e747b47c3a3561760dbd7c88` |
| 4 | `def` | [argToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/argtomono--e2650128395112c6479435f4.md) | 38 | `declaration-track:e2650128395112c6479435f412f6c4d0c0a8ab195e8d6ed6fdb0c3990700c91c` |
| 5 | `def` | [argsToMonoWithFnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/argstomonowithfntype--e3c6df4ba74bdaeecfc9872e.md) | 47 | `declaration-track:e3c6df4ba74bdaeecfc9872e58f2919e3dbe3a4ca82b0a4c2f72d3417186ca08` |
| 6 | `def` | [argsToMonoRedArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/argstomonoredarg--457460bc903bdd8c279e4ce0.md) | 64 | `declaration-track:457460bc903bdd8c279e4ce08183594aed649d2177fd7036a6dc235e415325d3` |
| 7 | `def` | [ctorAppToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/ctorapptomono--e6127ee895378943510f2baf.md) | 82 | `declaration-track:e6127ee895378943510f2baf0c2ac2a11adfaa833ff4fab78aa15c6f111c0e57` |
| 8 | `def` | [LetValue.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/letvalue-tomono--07a9cfedd9f4d1f3b2eae37e.md) | 89 | `declaration-track:07a9cfedd9f4d1f3b2eae37e1969a09995c4a9e5d7f1b8d2cebdf6b7073941aa` |
| 9 | `def` | [LetDecl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/letdecl-tomono--21e411cffcbc271772ddeba3.md) | 154 | `declaration-track:21e411cffcbc271772ddeba31adc776d161a4c4832378706a994fcbaebe78268` |
| 10 | `def` | [mkFieldParamsForComputedFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/mkfieldparamsforcomputedfields--aee350fdec302fec79bcd23e.md) | 159 | `declaration-track:aee350fdec302fec79bcd23e4997bb147912c29ac037d608080918f81ccdecfb` |
| 11 | `def` | [FunDecl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/fundecl-tomono--24e9ee66deed81b8b74e05ca.md) | 179 | `declaration-track:24e9ee66deed81b8b74e05cab5bdb3463b3b2e86c50d0596e9ff5244f15a8617` |
| 12 | `def` | [decToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/dectomono--0ac861a0f5efe31369603b3b.md) | 186 | `declaration-track:0ac861a0f5efe31369603b3b84a60b6811a5a740e6cda369b5ae3367b9f4f180` |
| 13 | `def` | [casesNatToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesnattomono--de7d7276af938f97443e64d5.md) | 198 | `declaration-track:de7d7276af938f97443e64d55c62b1ce4ccac0fa977db4564fc31fdef7cf77c9` |
| 14 | `def` | [casesIntToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesinttomono--1533cc84ae8cb39957ff2e65.md) | 219 | `declaration-track:1533cc84ae8cb39957ff2e6582f6614f615cd0c7330caa7aa7ba2b5df6f9e560` |
| 15 | `def` | [casesUIntToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesuinttomono--045c015e16284d1d6baa6390.md) | 244 | `declaration-track:045c015e16284d1d6baa6390e4cbfccc0b57bc699e097b4e3c3e1777d2e2d448` |
| 16 | `def` | [casesArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesarraytomono--b9f95095ea04aa3dfdef566b.md) | 256 | `declaration-track:b9f95095ea04aa3dfdef566bff58922a47d5a2ef69290e0a09d9b1fa18a8c14a` |
| 17 | `def` | [casesByteArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesbytearraytomono--150b5d1dfcf609ae9a0ff04a.md) | 267 | `declaration-track:150b5d1dfcf609ae9a0ff04af1b6c64fcbfc6db323ba944f84daaffbac7fcfe9` |
| 18 | `def` | [casesFloatArrayToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesfloatarraytomono--b7806a66553bbb0a29197fca.md) | 279 | `declaration-track:b7806a66553bbb0a29197fca87a50f2e3f52e41559ae4b6044729dd0d0e657c7` |
| 19 | `def` | [casesStringToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesstringtomono--ef9f9116dd89a1d9079009f1.md) | 291 | `declaration-track:ef9f9116dd89a1d9079009f1ba8564a4fdd889703fabc16de5ae88b2b86d0eed` |
| 20 | `def` | [casesFloatToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesfloattomono--2e2a900ffff79495581a3f28.md) | 302 | `declaration-track:2e2a900ffff79495581a3f28479d189ea2d3c7f59bfbf6ca835f68ac7b916fea` |
| 21 | `def` | [casesFloat32ToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesfloat32tomono--7f5a53173a01317f1f72d063.md) | 313 | `declaration-track:7f5a53173a01317f1f72d063ae00af5b6d43dc837eedf1bde3413df4283db513` |
| 22 | `def` | [casesThunkToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casesthunktomono--b4d5b2012625704f0e6f0f3b.md) | 324 | `declaration-track:b4d5b2012625704f0e6f0f3b409a06b60d948f05af79eae493ebe5239297762b` |
| 23 | `def` | [casesTaskToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/casestasktomono--017832f4aa8e0999cca17f11.md) | 344 | `declaration-track:017832f4aa8e0999cca17f114a6ae891f7bec72e5631ff37a237c0660782bb43` |
| 24 | `def` | [trivialStructToMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/trivialstructtomono--9e8b4677f7039240954f6ef6.md) | 355 | `declaration-track:9e8b4677f7039240954f6ef62a8d12bb628a831e41161dcd50c0669fa24a4c5d` |
| 25 | `def` | [Code.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/code-tomono--635f450ebc049629c98fd611.md) | 368 | `declaration-track:635f450ebc049629c98fd6113526e1ce76fdfd08a56a4948a198a3f74137d043` |
| 26 | `def` | [Decl.toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/decl-tomono--356e1295d3d4d771f8e4cde0.md) | 444 | `declaration-track:356e1295d3d4d771f8e4cde02a7f06f6fd689cbd8a5e2862a227f8dc38f4d6a8` |
| 27 | `def` | [toMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/tomono--dab5a16f3c7364845f32a349.md) | 455 | `declaration-track:dab5a16f3c7364845f32a34985cf11670e726b2338ab335f108e676cca25e582` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/declarations/builtin-initialize--ab5ed9a958cd1d49be311bce.md) | 462 | `declaration-track:ab5ed9a958cd1d49be311bce1698ad2a3ab43758e12c77a1b989e6d649179abe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
