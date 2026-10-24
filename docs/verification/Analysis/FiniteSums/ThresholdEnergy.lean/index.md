# Verification target: GRWTSK.Analysis.FiniteSum.ThresholdEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3711600e8d6c0b1e429e302b4e9a7c35ac5d119f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/ThresholdEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3711600e8d6c0b1e429e302b4e9a7c35ac5d119f`.

Source path: `GRWTSK/Analysis/FiniteSum/ThresholdEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/ThresholdEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [largeSet](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/declarations/largeset--06c474740fd1bb232adae988.md) | 13 | `declaration-track:06c474740fd1bb232adae98811bf2080a46eb90241ab47118ad56bc01c3607cc` |
| 2 | `theorem` | [threshold_pointwise](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/declarations/threshold-pointwise--2abb608be0adfb248d33c28f.md) | 16 | `result-track:2abb608be0adfb248d33c28ffc4e54140502625478bfa3c94ba558f5c3661fa7` |
| 3 | `theorem` | [sum_energy_threshold](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/declarations/sum-energy-threshold--da02409a17d7cf6783da01cb.md) | 22 | `result-track:da02409a17d7cf6783da01cb8534594bb3febf8e6c098c5712b4d07c4dd4b8f9` |
| 4 | `theorem` | [energy_of_count_bound](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/declarations/energy-of-count-bound--7efa19545cee9a58d63b65db.md) | 32 | `result-track:7efa19545cee9a58d63b65dbcdf89c8d135b80ff3e9b3fd152addc55fd78c425` |
| 5 | `theorem` | [empty_of_subunit](../../../../mathematics/Analysis/FiniteSums/ThresholdEnergy.lean/declarations/empty-of-subunit--584a2eee83fc1f40e12dff27.md) | 40 | `result-track:584a2eee83fc1f40e12dff2731aed6b99548d34aeb8b8741683e9a294c040282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
