# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Style.Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5766cab811a487284346a74997e16694b2a3d132",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5766cab811a487284346a74997e16694b2a3d132`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeclarationNames` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.style.setOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-setoption--45d223a2f937aa7593b4ce01.md) | 58 | `declaration-track:45d223a2f937aa7593b4ce01fac5ad66fad6c86e561294192f1982f0f2c2170c` |
| 2 | `def` | [parseSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/parsesetoption--852b2bf85d282bb4162dc731.md) | 67 | `declaration-track:852b2bf85d282bb4162dc731c6a2c3fe32bb468b6693514b031dc11e8babd444` |
| 3 | `def` | [parse_set_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/parse-set-option--a556a6898d799d3032b52f1d.md) | 76 | `declaration-track:a556a6898d799d3032b52f1d1c19f911c1c610f986c638b7767cf2f4306eaa25` |
| 4 | `def` | [isSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/issetoption--5b993e2d96e6fdb0ed0c853e.md) | 79 | `declaration-track:5b993e2d96e6fdb0ed0c853eb72b7229763be238eabf4e37a412dfb7a2d037ff` |
| 5 | `def` | [is_set_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/is-set-option--e897ec1b171a69e07a2c9683.md) | 84 | `declaration-track:e897ec1b171a69e07a2c96837042d7a14444fb53fd7440e78b0c74a97ab2313f` |
| 6 | `def` | [setOptionLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/setoptionlinter--e62e9f0664ce96b9b5a8907f.md) | 104 | `declaration-track:e62e9f0664ce96b9b5a8907faac6477b6727c605bd5598e82ebe43c0fe24ec27` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/example--928de451434b616f12909d8f.md) | 122 | `declaration-track:928de451434b616f12909d8f88916d52f5fd0b4381a5676e51c6ba8690b16de7` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--6165c390776b0b33bb2487f8.md) | 124 | `declaration-track:6165c390776b0b33bb2487f89372d3f9b76108517650790047fc9d8bb3d70fc8` |
| 9 | `register_option` | [linter.style.missingEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-missingend--c2181ff3b0890ab48871d54c.md) | 140 | `declaration-track:c2181ff3b0890ab48871d54c2995716e89a5f29ed5a25a6a7acfa5108cb9a5d1` |
| 10 | `def` | [missingEndLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/missingendlinter--17af7d89e48a7aa94f5d0169.md) | 148 | `declaration-track:17af7d89e48a7aa94f5d01699767f9b049990fdd2a8ecb42f7598aaa1e61d7f7` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--1931bd7f0e9c25c5f6f5006a.md) | 167 | `declaration-track:1931bd7f0e9c25c5f6f5006a3e8d189c9f5b28d5c159f285ac6ef017e6762dae` |
| 12 | `register_option` | [linter.style.cdot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-cdot--5bf0338e5cbc333303d31885.md) | 185 | `declaration-track:5bf0338e5cbc333303d318854713cda84fc68cd6b559b99a07c3188f60fa7127` |
| 13 | `def` | [isCDot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/iscdot--7b5def4ffd6ef0d56f8d25a6.md) | 192 | `declaration-track:7b5def4ffd6ef0d56f8d25a66f126402f382c0b2169f29988fe021e0adfddffc` |
| 14 | `def` | [findCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/findcdot--867e5eeeef39b0a42b23f840.md) | 201 | `declaration-track:867e5eeeef39b0a42b23f8403504faa1c166cd267f2739c78c77d0e035a1a559` |
| 15 | `def` | [unwanted_cdot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/unwanted-cdot--1224cd7d4f44f3a6f4694b85.md) | 213 | `declaration-track:1224cd7d4f44f3a6f4694b85edf1a1409f4a1056cd3dda009e885d685d0f2cc1` |
| 16 | `def` | [cdotLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/cdotlinter--64605a27b0418a146a2b7000.md) | 219 | `declaration-track:64605a27b0418a146a2b7000e44ee0efb3be9f16b4659873bca16228484c12bc` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--835ab1eb4584d54137d88857.md) | 236 | `declaration-track:835ab1eb4584d54137d88857abbaac45d74bbf98075d7064f3d4d3c73dbc340d` |
| 18 | `register_option` | [linter.style.dollarSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-dollarsyntax--1354e4ed46d97e37acc1342b.md) | 249 | `declaration-track:1354e4ed46d97e37acc1342b42aa8fe9c203bfc2c482e845d74637dbcbeb7f47` |
| 19 | `def` | [findDollarSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/finddollarsyntax--a25c7ef2f2ad2f4281cf86f0.md) | 258 | `declaration-track:a25c7ef2f2ad2f4281cf86f002bae02f1452346c5ac6b35b80820eb3e151b60a` |
| 20 | `def` | [dollarSyntaxLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/dollarsyntaxlinter--31431846f6b6a078adcf84fd.md) | 267 | `declaration-track:31431846f6b6a078adcf84fd06c032278f9d66aafe685286bc49cd96d30e01ab` |
| 21 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--bcec457345a1867b712174c7.md) | 276 | `declaration-track:bcec457345a1867b712174c7f7e66a3f3c57fa7e357e682c795eb43b5ec73f11` |
| 22 | `register_option` | [linter.style.lambdaSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-lambdasyntax--dc458d2f1a95fbdfddde2ed3.md) | 292 | `declaration-track:dc458d2f1a95fbdfddde2ed3b3126d46d39a591ae43bef75533712c996e2658c` |
| 23 | `def` | [findLambdaSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/findlambdasyntax--9a15311b698626ea8411cbc1.md) | 302 | `declaration-track:9a15311b698626ea8411cbc1b91736b279092e64edd99ff270a1225db334eced` |
| 24 | `def` | [lambdaSyntaxLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/lambdasyntaxlinter--f03dd48b96d3142350cf6eb8.md) | 311 | `declaration-track:f03dd48b96d3142350cf6eb8f861eb5e9ce5ac9ea7909809295267457ff8bccc` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--764d4de3cb92949f2b880f3f.md) | 322 | `declaration-track:764d4de3cb92949f2b880f3f73dc806d1bcf0cb07356c1419b54585e6251c3bb` |
| 26 | `register_option` | [linter.style.longFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-longfile--31ea641c048e34390e8ae125.md) | 339 | `declaration-track:31ea641c048e34390e8ae125cb429e64e332b2627888ac2ef075074ef030b486` |
| 27 | `register_option` | [linter.style.longFileDefValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-longfiledefvalue--598d934f149452a748250725.md) | 345 | `declaration-track:598d934f149452a7482507252116b773530adcfd51096fe00fa06391d9e024db` |
| 28 | `def` | [longFileLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/longfilelinter--3aa887476c686e2a26e0c3cc.md) | 353 | `declaration-track:3aa887476c686e2a26e0c3cc89b2323deceb03e6d91f1a8907e8f9b0526166e9` |
| 29 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--28dfd273f470d11fd40d0d28.md) | 408 | `declaration-track:28dfd273f470d11fd40d0d289cb6d762e30002553ba8af018f533e6326731437` |
| 30 | `register_option` | [linter.style.longLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-longline--817db7e46e666ca16a1ea56e.md) | 416 | `declaration-track:817db7e46e666ca16a1ea56e0bff76261f798bbcdbabf62cafc2daddea0aef33` |
| 31 | `def` | [longLineLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/longlinelinter--06126d45b2cdc10a0b8a84c2.md) | 424 | `declaration-track:06126d45b2cdc10a0b8a84c2f46a6dcb22de7e018aa0e2b457fdb15d81bfd26f` |
| 32 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--5ca5a22002b6b1685ae1cd03.md) | 455 | `declaration-track:5ca5a22002b6b1685ae1cd032c71bb62c2cf340ab3dec94baae59fa64a3eb6fc` |
| 33 | `register_option` | [linter.style.nameCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-namecheck--a746a618524adf256b1c11c5.md) | 467 | `declaration-track:a746a618524adf256b1c11c589a77a047f3d3fda7e239251b23729f9d8693aeb` |
| 34 | `def` | [doubleUnderscore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/doubleunderscore--e756361991690422cbb815e4.md) | 475 | `declaration-track:e756361991690422cbb815e434a81a204c0629b9f8c352594d3a0ce004bfb095` |
| 35 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--a6d658d938ad6328ba2ecb00.md) | 494 | `declaration-track:a6d658d938ad6328ba2ecb008d5f04fc76852b815e9b38cfa1d5bd05670030aa` |
| 36 | `register_option` | [linter.style.openClassical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/linter-style-openclassical--58c4a57c8d52b3d573a0c906.md) | 504 | `declaration-track:58c4a57c8d52b3d573a0c906732246aeb34a1c5d9f5d4b5f6684d03857e6846d` |
| 37 | `def` | [extractOpenNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/extractopennames--614e7dcd76cd4d4f80fcc201.md) | 518 | `declaration-track:614e7dcd76cd4d4f80fcc2018150405939813c9586f9874f2b39bc489fc635e2` |
| 38 | `def` | [openClassicalLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/openclassicallinter--63099fddc6054665a30fb9a4.md) | 530 | `declaration-track:63099fddc6054665a30fb9a4d1b003bcf06aa0a2fef72c8b6046cc1e122c29bd` |
| 39 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variante09e83155b8cefb720df351ff2a7dde20345b7fc3646adc6c364721745aea811.lean/declarations/initialize--b10a10582931666302e86c1a.md) | 544 | `declaration-track:b10a10582931666302e86c1a95e749e40961da1d8ac937274e257ea10fac268b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
