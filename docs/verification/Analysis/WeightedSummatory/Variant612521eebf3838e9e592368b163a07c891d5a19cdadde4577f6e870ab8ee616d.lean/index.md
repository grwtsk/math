# Verification target: GRWTSK.Analysis.WeightedSummatory.Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66040dc67ea0840e24d9be372d5078ce5ff4e3bd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/index.md) · [Full source](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66040dc67ea0840e24d9be372d5078ce5ff4e3bd`.

Source path: `GRWTSK/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasWeightedSummatoryBound](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/declarations/hasweightedsummatorybound--419ba37d8b8000bea8c9a6ff.md) | 28 | `declaration-track:419ba37d8b8000bea8c9a6ff74c85279801bd8f6b0d481f071cb03592c07c155` |
| 2 | `theorem` | [hasWeightedSummatoryBound_congr_norm](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/declarations/hasweightedsummatorybound-congr-norm--8d771fea45c47233952319bf.md) | 35 | `result-track:8d771fea45c47233952319bfbf4b0caf0dbedcaf37a24704fd9cea20520e1812` |
| 3 | `theorem` | [hasWeightedSummatoryBound_star_iff](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/declarations/hasweightedsummatorybound-star-iff--c835a9274e2c430c8c4d9919.md) | 55 | `result-track:c835a9274e2c430c8c4d991931a3647bc5ce4f83add336b1d7082d3a6d6b5e36` |
| 4 | `theorem` | [HasWeightedSummatoryBound.mono_exponent](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/declarations/hasweightedsummatorybound-mono-exponent--56104c2519c439ff0ae52db1.md) | 64 | `result-track:56104c2519c439ff0ae52db19d5447c6e14ec3eefe25366baa3b9bf046c9cbd7` |
| 5 | `theorem` | [hasWeightedSummatoryBound_mono](../../../../mathematics/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/declarations/hasweightedsummatorybound-mono--69b9dc223d46b9912c5df928.md) | 82 | `result-track:69b9dc223d46b9912c5df92891b5733ad4ddc65132e251b1b65997fadc0f5dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
