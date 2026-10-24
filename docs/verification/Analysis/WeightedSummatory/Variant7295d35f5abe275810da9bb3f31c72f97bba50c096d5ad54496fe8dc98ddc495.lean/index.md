# Verification target: GRWTSK.Analysis.WeightedSummatory.Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d2226d8302d8caee06eddb80e3441655223b6b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean/index.md) · [Full source](../../../../mathematics/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d2226d8302d8caee06eddb80e3441655223b6b`.

Source path: `GRWTSK/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean.json)

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
| 1 | `def` | [HasWeightedSummatoryBound](../../../../mathematics/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean/declarations/hasweightedsummatorybound--5f4a017df6d6da823123351b.md) | 28 | `declaration-track:5f4a017df6d6da823123351b510e75d1690527810e2f6a5aa7f8a6fc6a951556` |
| 2 | `theorem` | [HasWeightedSummatoryBound.mono_exponent](../../../../mathematics/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean/declarations/hasweightedsummatorybound-mono-exponent--8261125a52bac5bb49abcf5f.md) | 35 | `result-track:8261125a52bac5bb49abcf5f340a2b4ba817b9f51131775150f7d8389ddb8fbc` |
| 3 | `theorem` | [hasWeightedSummatoryBound_mono](../../../../mathematics/Analysis/WeightedSummatory/Variant7295d35f5abe275810da9bb3f31c72f97bba50c096d5ad54496fe8dc98ddc495.lean/declarations/hasweightedsummatorybound-mono--aa1e08dad1a795facb69ad5b.md) | 53 | `result-track:aa1e08dad1a795facb69ad5b7c26f4476101594775869b1f1ebfbb60423e96ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
