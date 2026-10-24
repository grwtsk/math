# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Insertion.Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2383114b7a26d538f551ce33a06e2c37392a07c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2383114b7a26d538f551ce33a06e2c37392a07c5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeInsertionEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/declarations/primeinsertionedge--3f55b32844be5568f17d8ef5.md) | 9 | `declaration-track:3f55b32844be5568f17d8ef57c5de9f630788d638cd3d22cf06b9be1c5619207` |
| 2 | `def` | [PrimeInsertionEdge.target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/declarations/primeinsertionedge-target--d1dd5eb8b0a02d47fa3db658.md) | 15 | `declaration-track:d1dd5eb8b0a02d47fa3db6585e0f7e6407ad10de857c03f9ed0695d077404c55` |
| 3 | `theorem` | [PrimeInsertionEdge.source_subset_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/declarations/primeinsertionedge-source-subset-target--27d029d61e769fb4311e59bc.md) | 21 | `result-track:27d029d61e769fb4311e59bca9a0645eb8d50aefeac289c7ab48be7088ed2612` |
| 4 | `theorem` | [PrimeInsertionEdge.prime_mem_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/declarations/primeinsertionedge-prime-mem-target--86aa60be785f5b27835fb8ef.md) | 29 | `result-track:86aa60be785f5b27835fb8efe8ee6007c270421816e5c20934e8e58eb2171403` |
| 5 | `theorem` | [PrimeInsertionEdge.target_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Insertion/Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378.lean/declarations/primeinsertionedge-target-card--f944d1f193db937814639253.md) | 36 | `result-track:f944d1f193db93781463925394ec3bcb0b0d5e68966717fdb484b16661009a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
