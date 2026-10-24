# Verification target: GRWTSK.Spectral.SturmianBlockCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4fbf9dc143de22ee202dbaa7940a35e2823d7d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/SturmianBlockCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4fbf9dc143de22ee202dbaa7940a35e2823d7d`.

Source path: `GRWTSK/Spectral/SturmianBlockCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/SturmianBlockCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.DirichletCut`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bit_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/bit-origin-to-phase--2f12ae110897492e284ebe5b.md) | 23 | `result-track:2f12ae110897492e284ebe5b3d1a5f3764a1f16f41f38b40b9fad885b325d0d6` |
| 2 | `theorem` | [potential_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/potential-origin-to-phase--6202aaea5dcc131b492e70fa.md) | 28 | `result-track:6202aaea5dcc131b492e70fae996827a3e86f66edb96df04bdd69beb7efe6299` |
| 3 | `theorem` | [hamiltonian_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/hamiltonian-origin-to-phase--d859d9f5b5809748595bf577.md) | 33 | `result-track:d859d9f5b5809748595bf577c6cba1e939b4fcdca6e272bffbc3121e97907c52` |
| 4 | `theorem` | [count_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/count-origin-to-phase--6a29cb9271ec3955b2357acf.md) | 45 | `result-track:6a29cb9271ec3955b2357acf89a90c9a7c711322db63b27ac89eadb86fb6aad6` |
| 5 | `theorem` | [count_le_volume](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/count-le-volume--63ac77eccd9e9d5a9f54bd94.md) | 51 | `result-track:63ac77eccd9e9d5a9f54bd9415d8e8bd1a2e384d87792b11d0fb07e95b4ffec3` |
| 6 | `def` | [blockCountSum](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/blockcountsum--595365a36d22494318831569.md) | 58 | `declaration-track:595365a36d22494318831569c84fd3da09c602dc7e30aa515780b16595120080` |
| 7 | `theorem` | [blockCountSum_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/blockcountsum-phase--374c624f3e87ec6999f8169c.md) | 62 | `result-track:374c624f3e87ec6999f8169c946bef456133e0f18ce484cece2b52ac3b108174` |
| 8 | `theorem` | [blockCountSum_succ](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/blockcountsum-succ--bb53cb4793ca65dc6c7340d7.md) | 73 | `result-track:bb53cb4793ca65dc6c7340d7689b1ee5f12efd1d3b6e2fa8be260c1db1d9ae82` |
| 9 | `theorem` | [block_count_error_with_remainder](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/block-count-error-with-remainder--de0c31f493b50e31c74788ea.md) | 89 | `result-track:de0c31f493b50e31c74788ea376e3895118ef4f915ae36d18320622c7d0b0a4f` |
| 10 | `theorem` | [complete_block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/complete-block-count-error--dd18885a5a55f3f1d9d338c8.md) | 119 | `result-track:dd18885a5a55f3f1d9d338c8f3243b6e82203024ba289da38c3c9a2de5c68312` |
| 11 | `theorem` | [block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/block-count-error--cb1976fa9e45276522f0879b.md) | 137 | `result-track:cb1976fa9e45276522f0879b85e463e85823ab40e5e55b8864c5579ec6c37411` |
| 12 | `theorem` | [normalized_block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/normalized-block-count-error--bf37baf50ecc17d072a639b3.md) | 157 | `result-track:bf37baf50ecc17d072a639b36822f8f6ee8cd90a271df3b3242a79957fd86b01` |
| 13 | `theorem` | [finite_block_approximation](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/declarations/finite-block-approximation--39b03584a5a81408821d6364.md) | 169 | `result-track:39b03584a5a81408821d6364e7c4ddcd6dd62ca0bf79d5ef575ba87e83b29117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
