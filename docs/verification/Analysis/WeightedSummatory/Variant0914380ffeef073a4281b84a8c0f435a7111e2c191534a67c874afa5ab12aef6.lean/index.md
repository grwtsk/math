# Verification target: GRWTSK.Analysis.WeightedSummatory.Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3cc148db1574f0a5af2c687479f07d4d158aeb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/index.md) · [Full source](../../../../mathematics/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3cc148db1574f0a5af2c687479f07d4d158aeb`.

Source path: `GRWTSK/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasWeightedSummatoryBound](../../../../mathematics/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/declarations/hasweightedsummatorybound--b6e9a40f9bdb688a49c963ca.md) | 36 | `declaration-track:b6e9a40f9bdb688a49c963caf0781d5074e85718ae712dfff4d4ff1e9f1eed81` |
| 2 | `theorem` | [HasWeightedSummatoryBound.mono_exponent](../../../../mathematics/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/declarations/hasweightedsummatorybound-mono-exponent--9cbbc334f3a8b9d106579ff6.md) | 43 | `result-track:9cbbc334f3a8b9d106579ff6020f40fb8abd33e507ab1fd434e01a9b4e0bbcaf` |
| 3 | `theorem` | [hasWeightedSummatoryBound_mono](../../../../mathematics/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/declarations/hasweightedsummatorybound-mono--e40635a7e5b36738c1eb4960.md) | 61 | `result-track:e40635a7e5b36738c1eb496047c894e61ed1aa5d9b2cdde954c9aaf438ca9f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
