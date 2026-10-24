# Verification target: GRWTSK.Analysis.MeasureTheory.Hahn.Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "927d111e53492a40ba554a23b656cc771ec2228b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `927d111e53492a40ba554a23b656cc771ec2228b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/existsonedivlt--94ce38afbc37bfe9362e15d1.md) | 95 | `declaration-track:94ce38afbc37bfe9362e15d16a3f0828d0435d98760621bc6c783a8cf891c098` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/existsnatonedivltmeasure-of-not-negative--6b0b200e70a7e1104e48d2ac.md) | 98 | `result-track:6b0b200e70a7e1104e48d2ac60b389f07c10649372d83a53233dac212574928f` |
| 3 | `def` | [findExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/findexistsonedivlt--2d5f18c9395ab42683ca672d.md) | 107 | `declaration-track:2d5f18c9395ab42683ca672d53b0a516da13aefb2e618c8890fe667b90ca32be` |
| 4 | `theorem` | [findExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/findexistsonedivlt-spec--c271325de1c70384649841c6.md) | 110 | `result-track:c271325de1c70384649841c66e259d6f39896f8257291176eab5bd4819e198a3` |
| 5 | `theorem` | [findExistsOneDivLT_min](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/findexistsonedivlt-min--8fa331be204e2988d2f66e0a.md) | 115 | `result-track:8fa331be204e2988d2f66e0a91b888727ccd61093afcc1884b1334e1bba4451c` |
| 6 | `def` | [someExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt--8da38027ab601a5dcab83d68.md) | 125 | `declaration-track:8da38027ab601a5dcab83d6846ff498e1668c91f6430502219e3659ca1431287` |
| 7 | `theorem` | [someExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt-spec--c0bfa1c0879c40a3eece74ea.md) | 128 | `result-track:c0bfa1c0879c40a3eece74ea1cef74cfea075077f5f3b9c89e5a728c9202a739` |
| 8 | `theorem` | [someExistsOneDivLT_subset](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt-subset--9f96384c839021fe0b274f2c.md) | 135 | `result-track:9f96384c839021fe0b274f2c8e88ea8305ebe23faf6b12f42eab5882174a72b4` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt-subset--b915c99c67b1a4e86cfe4393.md) | 143 | `result-track:b915c99c67b1a4e86cfe43932032b0e44e7199cef38ed276f539e6b3bc63f05d` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt-measurableset--e0649aba6e0e5048e8bb09ba.md) | 146 | `result-track:e0649aba6e0e5048e8bb09bab8aa06926dcda9cae644ca6b7b51505b9162c37c` |
| 11 | `theorem` | [someExistsOneDivLT_lt](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/someexistsonedivlt-lt--9589124e0536fcbb33a4a2d5.md) | 154 | `result-track:9589124e0536fcbb33a4a2d5c5d2fb7d4cac37443f37564259cb1fb11601291b` |
| 12 | `def` | [restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq--86a7b59fa05c26a4f63e2828.md) | 165 | `declaration-track:86a7b59fa05c26a4f63e28286cf77846bc9b36b65ddcd2fc108cd0c3fe22b446` |
| 13 | `theorem` | [restrictNonposSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-succ--65b06f75482746a138174baa.md) | 174 | `result-track:65b06f75482746a138174baa9a01ad8aaad7ec31493debcee752070344ee59d9` |
| 14 | `theorem` | [restrictNonposSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-subset--8f19ae9e2713066ef8f6f0cf.md) | 178 | `result-track:8f19ae9e2713066ef8f6f0cf0a099e35955bc47c2d516950e6773f7c8b5c0f05` |
| 15 | `theorem` | [restrictNonposSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-lt--49b848f4728e6e40a49a5e50.md) | 181 | `result-track:49b848f4728e6e40a49a5e50ec5a16b67119eac73a890c234237b8d36b3602ef` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/measure-of-restrictnonposseq--9f2d179dc4e916512271fff6.md) | 187 | `result-track:9f2d179dc4e916512271fff63b2a0c599b8d13a96f5b71d3aa6ae14e4c0a4843` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-measurableset--314763bc497722719361bc8b.md) | 203 | `result-track:314763bc497722719361bc8b26c3db9b693cda52a82cd9b1fe2c730559d29d7a` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-disjoint--c324f5796c09ca4fbead5624.md) | 209 | `result-track:c324f5796c09ca4fbead5624684e7b93fbfcef426b40bc29fc727cfc2fa82aaf` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/restrictnonposseq-disjoint--766bcfea8f1f0746267d6569.md) | 220 | `result-track:766bcfea8f1f0746267d6569811333207d0faf3737b6ea16aa98010d700dc540` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/exists-subset-restrict-nonpos--441779678301ff57bc68b655.md) | 227 | `result-track:441779678301ff57bc68b6552e7e08dba5bd256ec261dc41128d4c4380b144f9` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/exists-subset-restrict-nonpos--f4cff7ae24ecdaa76fcd0619.md) | 271 | `result-track:f4cff7ae24ecdaa76fcd06199894ab14c260218024fe19d616f0f09b08d722b3` |
| 22 | `def` | [measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/measureofnegatives--b326b9a84ef3e1843a49b379.md) | 335 | `declaration-track:b326b9a84ef3e1843a49b379a0ee13c3d81814ef9d000e0d09047de5ad5fccd9` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/zero-mem-measureofnegatives--c370ef7632e8631438f0eb9f.md) | 338 | `result-track:c370ef7632e8631438f0eb9f0b9e5d3e3e01e5314d78439ec922106084e3f3eb` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/bddbelow-measureofnegatives--6a396e36e886e2a9c7f86fc4.md) | 341 | `result-track:6a396e36e886e2a9c7f86fc481823ebb31f58ef6d52cb0c875c1438245cfcdfc` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/exists-compl-positive-negative--e67ec2a7d0b2973e7589294f.md) | 367 | `result-track:e67ec2a7d0b2973e7589294fbc2da36374bf06fbc11447810293a8c662c80bab` |
| 26 | `theorem` | [exists_isCompl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/exists-iscompl-positive-negative--34d7f6a47fbedd0869931a38.md) | 409 | `result-track:34d7f6a47fbedd0869931a380532abe3767f4df3cfcc29337a9e1d52a419edd3` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/declarations/of-symmdiff-compl-positive-negative--7c6b93d84df5915cafc6bd61.md) | 416 | `result-track:7c6b93d84df5915cafc6bd616aeeef1e5433c773f7a7d1449a92b5bd3f071dd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
