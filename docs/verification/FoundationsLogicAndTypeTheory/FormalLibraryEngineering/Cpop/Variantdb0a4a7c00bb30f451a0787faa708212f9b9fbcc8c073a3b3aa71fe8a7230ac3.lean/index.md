# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cpop.Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b0770dec80a9463808ee60c8c3c5fadf056f9d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b0770dec80a9463808ee60c8c3c5fadf056f9d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Bootstrap` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_blastExtractAndExtendBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastextractandextendbit--682a0e9b091f4b5070543b20.md) | 45 | `result-track:682a0e9b091f4b5070543b20c0e5508f828f689334e4598ef2de7451f4df6d84` |
| 2 | `theorem` | [blastExtractAndExtendBit_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/blastextractandextendbit-denote-mem-prefix--54ed6adf37f0aa084e3096c0.md) | 66 | `result-track:54ed6adf37f0aa084e3096c096275c0ef1bcd685a6ee05c61ac8bdab96d91c56` |
| 3 | `theorem` | [denote_append_blastExtractAndExtendBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-append-blastextractandextendbit--b4e3156cd1694100611e35e9.md) | 81 | `result-track:b4e3156cd1694100611e35e9333b87939de3adb5c16d0def230721965213a161` |
| 4 | `theorem` | [denote_blastExtractAndExtend.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastextractandextend-go--daeffafc00e88201248e714d.md) | 108 | `result-track:daeffafc00e88201248e714d74fc833d3fea1077a4d89644950a0bffb243c230` |
| 5 | `theorem` | [denote_blastExtractAndExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastextractandextend--59477e972aa4bc4ff4f73e29.md) | 137 | `result-track:59477e972aa4bc4ff4f73e29353a01077a04378d246e490292fb95c65ce52cb6` |
| 6 | `theorem` | [denote_blastCpopLayer.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastcpoplayer-go--1d712881f2040576e8d42689.md) | 151 | `result-track:1d712881f2040576e8d42689cb464cedebe6346e9e44cca727877013f9808c81` |
| 7 | `theorem` | [denote_blastCpopLayer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastcpoplayer--f3cbc69ab3d30b5171adf294.md) | 226 | `result-track:f3cbc69ab3d30b5171adf29450b6e5a730f928f50be815c680bb45aa61aaee9c` |
| 8 | `theorem` | [blastCpopLayer_denote_mem_prefix.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/blastcpoplayer-denote-mem-prefix-go--4f303915f66b694d7f6bd4dc.md) | 244 | `result-track:4f303915f66b694d7f6bd4dcb40f0180d669ddedfc26bf24abe12d607f9d6872` |
| 9 | `theorem` | [denote_blastCpopTree.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastcpoptree-go--e9337447971f1376f4645740.md) | 259 | `result-track:e9337447971f1376f4645740a8595fcfef7b6603b07f1a6a63b53c06ef6aa641` |
| 10 | `theorem` | [denote_blastCpopTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastcpoptree--c8049d85b044b11a501d3ad4.md) | 293 | `result-track:c8049d85b044b11a501d3ad4eab3691d9160f620774d0d864c2259e390aa53f0` |
| 11 | `theorem` | [denote_blastCpop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdb0a4a7c00bb30f451a0787faa708212f9b9fbcc8c073a3b3aa71fe8a7230ac3.lean/declarations/denote-blastcpop--482f87fd030616db8959402b.md) | 307 | `result-track:482f87fd030616db8959402b15cd0112718310cdc3ab5279a84eabd2cf94f81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
