# Verification target: GRWTSK.Analysis.Complex.ContractiveZeroDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746`.

Source path: `GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ContractiveZeroDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correction](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/correction--1bd49c05955533952cc5e8e9.md) | 29 | `declaration-track:1bd49c05955533952cc5e8e98754c2694174b6ad247c65e3c38ed264462ad613` |
| 2 | `theorem` | [hasDerivAt_correction](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/hasderivat-correction--0ce80c2682e431ae3caa2d02.md) | 32 | `result-track:0ce80c2682e431ae3caa2d0289aa9cb55767a5dd7bb3ffa6e0b1e41df40d2259` |
| 3 | `theorem` | [correction_lipschitz](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/correction-lipschitz--00433aeaf48b9252394f77d4.md) | 38 | `result-track:00433aeaf48b9252394f77d42c09962fa1ec768dc9f532b302d106e3c66b3972` |
| 4 | `theorem` | [exists_unique_zero](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/exists-unique-zero--ef547124d482872d00e3c9dd.md) | 49 | `result-track:ef547124d482872d00e3c9dd70b7a4f5baea6972bff884cf45da06d6aaf0f3c1` |
| 5 | `theorem` | [deriv_ne_zero_of_defect](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/deriv-ne-zero-of-defect--4f2bb3c80fcd794f1c3aabb3.md) | 105 | `result-track:4f2bb3c80fcd794f1c3aabb32b4eab5e27efd54b770dd8dbe3f12543b4818d58` |
| 6 | `theorem` | [derivative_variation](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/derivative-variation--e3dc6d431de34738a72ac9c1.md) | 112 | `result-track:e3dc6d431de34738a72ac9c14fb47f1d1fb91fe54e4a688cde364fe31d6b10a7` |
| 7 | `theorem` | [center_enclosure_bounds](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/declarations/center-enclosure-bounds--d3895e84de91acd3f788b4fd.md) | 123 | `result-track:d3895e84de91acd3f788b4fdac6c2a908d6f50088c7ec54f539603445f9431cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
