# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c389b17b0cce47bb36c702c460931419c3be25b7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c389b17b0cce47bb36c702c460931419c3be25b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/antidiagonal--5fe82664427f44ffb7514880.md) | 29 | `declaration-track:5fe82664427f44ffb75148809efb5598ddf60c962d9641dfd90a64b6b25704b2` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/mem-antidiagonal--a72b38f6e3b3b79e3de006b7.md) | 34 | `result-track:a72b38f6e3b3b79e3de006b74df8e5abf4b3b7179250d049496aa01beb089305` |
| 3 | `theorem` | [length_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/length-antidiagonal--5e39df2efbb4f2b018d6b24b.md) | 47 | `result-track:5e39df2efbb4f2b018d6b24bd44fbb4d5cc5854ca69002e23b75b9325bf5e4cb` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/antidiagonal-zero--259774d793e5c384c1024003.md) | 52 | `result-track:259774d793e5c384c1024003c4ba4090b6846fa355a2861cdb7c5f2102e0b1b9` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/nodup-antidiagonal--1133978b06a5b50064a06b40.md) | 56 | `result-track:1133978b06a5b50064a06b4012bf376bc62754b386cf43610b995c1943671d78` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/antidiagonal-succ--14af2385fb09f1bc0feba6cf.md) | 60 | `result-track:14af2385fb09f1bc0feba6cfc249c90c5795f149cae45378ddd14f3dc87280d9` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/antidiagonal-succ--a6e3cc1f20a84e520b2cd26b.md) | 67 | `result-track:a6e3cc1f20a84e520b2cd26bf8fb589d8b83e141ea8e00241e7fe05bb4041fac` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/antidiagonal-succ-succ--9456dafa098acaa0488511e8.md) | 75 | `result-track:9456dafa098acaa0488511e89e5cd64cb888134dba0adb709c5e1dd973c41f97` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant7065050d35cfc3525b6b345207943390e0039b63bd8dbed954e7e7fb62f5fc54.lean/declarations/map-swap-antidiagonal--7c214f078bc90393cfaed968.md) | 84 | `result-track:7c214f078bc90393cfaed9680a7f684e5a09f684cd3c8e11d1081803ce806d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
