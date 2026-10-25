# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opposite.Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d95c9e3c2e94cbffc3b9374da282f1b38d6bd834",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d95c9e3c2e94cbffc3b9374da282f1b38d6bd834`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.FactoriesExtra` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LE.opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/le-opposite--212e58fd77d85cb72df01735.md) | 64 | `declaration-track:212e58fd77d85cb72df01735c7c9c9af48185a46e2bca80f1068fa8523784f4d` |
| 2 | `theorem` | [LE.opposite_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/le-opposite-def--2b7b3c10580e9d3c4ef61efb.md) | 67 | `result-track:2b7b3c10580e9d3c4ef61efb9b30813104011e0a8b1856866fde9bb792d83222` |
| 3 | `theorem` | [LE.le_opposite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/le-le-opposite-iff--37edc256d4c1711ca4a4ba14.md) | 71 | `result-track:37edc256d4c1711ca4a4ba148e9c60fc2e37f740e7f01f4522b8a9ab196653a4` |
| 4 | `def` | [LT.opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/lt-opposite--aef8867b65adcfb4f6f250fc.md) | 102 | `declaration-track:aef8867b65adcfb4f6f250fc2b158347a6dbb3b4868382e7daee9037b9613585` |
| 5 | `theorem` | [LT.opposite_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/lt-opposite-def--9c1f8fcb97ef331ed116c79c.md) | 105 | `result-track:9c1f8fcb97ef331ed116c79ce90016a3d8b3cce71967dbd29015e75d1a428c00` |
| 6 | `theorem` | [LT.lt_opposite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/lt-lt-opposite-iff--60f856fe1a8306685bd87de6.md) | 109 | `result-track:60f856fe1a8306685bd87de6c4411e2c11f8e9185039bd49152fe3f6685ea899` |
| 7 | `def` | [Min.oppositeMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/min-oppositemax--914bbc91f4dcd7a45aac52fa.md) | 139 | `declaration-track:914bbc91f4dcd7a45aac52faec8a2b9e8867eb92f7c18148c7b7bfb739e9a66d` |
| 8 | `theorem` | [Min.oppositeMax_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/min-oppositemax-def--3b1f6a88c0896fee1fdbfdff.md) | 142 | `result-track:3b1f6a88c0896fee1fdbfdff1cd9449679129614f6458df2484dcd17b3563d9e` |
| 9 | `theorem` | [Min.max_oppositeMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/min-max-oppositemax--8b2e5a9794026c55d49e756a.md) | 146 | `result-track:8b2e5a9794026c55d49e756ada39ec0d6288a1a5182e8d1b86235d53fa113aa0` |
| 10 | `def` | [Max.oppositeMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/max-oppositemin--80c47f46f6156d7cb4f85183.md) | 176 | `declaration-track:80c47f46f6156d7cb4f851838146813053f30606c127b0a3ed55d9adf9535698` |
| 11 | `theorem` | [Max.oppositeMin_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/max-oppositemin-def--30800d29b41959951a982039.md) | 179 | `result-track:30800d29b41959951a982039eaae20fdf17ce0bb3f1224742be482dbbadcb69d` |
| 12 | `theorem` | [Max.min_oppositeMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/max-min-oppositemin--b1c22fa815348e56f83738b6.md) | 183 | `result-track:b1c22fa815348e56f83738b6a36f9d661b63459e37cf7e2a7538b5ad77348edd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--50f4edf2604ed0880f66f420.md) | 190 | `declaration-track:50f4edf2604ed0880f66f420d47175a6624b56b009c72b414cce738095481d8a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--ce8b80643edc17ca12f69f4f.md) | 196 | `declaration-track:ce8b80643edc17ca12f69f4f1ff42c6dd5efb2a428a247b9e3baf17f5ae83757` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--b20ac40b11251306029d62ca.md) | 201 | `declaration-track:b20ac40b11251306029d62cae4550d1c7538f0383ee4b53e55d4ab84a7d21ded` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--7b0d67a6a84e7e9d49e3a36c.md) | 207 | `declaration-track:7b0d67a6a84e7e9d49e3a36cf9d471a44385aedb6d35f79635f468edea366933` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--d671c3dfb835089c248b79e2.md) | 214 | `declaration-track:d671c3dfb835089c248b79e21dd4c067f80fb5f22f9d1b37fb9c0b4eb65e5093` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--b400d62d22b60eeee1b93656.md) | 221 | `declaration-track:b400d62d22b60eeee1b936563b7a72764818748ba92ef15e1c3f5bc335a90fce` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--5a1e0c0c256c57ac93b84dde.md) | 228 | `declaration-track:5a1e0c0c256c57ac93b84dde8471798d32270b3b9c4f4145677d6db47f39d0ea` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--18c5dd07c6820e948cebf8ae.md) | 236 | `declaration-track:18c5dd07c6820e948cebf8aec45f9ba41d34e42a9189d46c3ac1e536d40d3472` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--929cd072dd4b8ba34e170fe0.md) | 242 | `declaration-track:929cd072dd4b8ba34e170fe0d33f1af2b4362968ff6265efc2d599e4187bac8f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--092506b21c341daeb7f7a975.md) | 248 | `declaration-track:092506b21c341daeb7f7a9753cdbf071eb61173041b7f12d89a0a63caed93f7b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--240e40520d012d8db18235f6.md) | 255 | `declaration-track:240e40520d012d8db18235f6be4f10b3c2a12bf70ba13005dc92a56cd35b41b5` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--8a3399186d82ca92de378082.md) | 261 | `declaration-track:8a3399186d82ca92de37808225aab38c82f7d767a466e454c258112c2cea853f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--cfd1b1844a91e5d8b8b334e1.md) | 267 | `declaration-track:cfd1b1844a91e5d8b8b334e175ca5a6e17d86a32a715a07607f4f514e96a7a8d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--397134847e437576b23cd4a6.md) | 272 | `declaration-track:397134847e437576b23cd4a6dca16155ed911cb197b6da3a0780d3c82ef9cbff` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--eccf70996111361dcbbd460a.md) | 290 | `declaration-track:eccf70996111361dcbbd460a3386f96cdedc927e830bd2753dd10446abc6f825` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--230a8725c6febddef37d6586.md) | 302 | `declaration-track:230a8725c6febddef37d6586547edc8d2f82393d16292359258d6a2f0c249702` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--b0e245fe5f39c4be9ecd25e6.md) | 313 | `declaration-track:b0e245fe5f39c4be9ecd25e634900faffcf4c06bf4afc8117acee9335efa5126` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--cb5d940d5f519a869736a64d.md) | 325 | `declaration-track:cb5d940d5f519a869736a64dd78c8e208ee08071331533003a5955a71b4454ff` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--3b72c1fd6acea054ccac3ac4.md) | 341 | `declaration-track:3b72c1fd6acea054ccac3ac4aa9ec840b2e638bd3e562b92c1a212dd108b4fa0` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--7824405c1eaf22a67be5c9e2.md) | 353 | `declaration-track:7824405c1eaf22a67be5c9e2f0fed1adcfed73c4da4bec1816a706f38974f1b9` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--dc5e265ab510cead077828f9.md) | 369 | `declaration-track:dc5e265ab510cead077828f956ef67fa06f41fb1f727ab951c59565567848d51` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/declarations/instance--4aec0f41afe5db05ded1ff13.md) | 385 | `declaration-track:4aec0f41afe5db05ded1ff13be00ff6a3e4efa85144d57ac7d5fbb4965f48c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
