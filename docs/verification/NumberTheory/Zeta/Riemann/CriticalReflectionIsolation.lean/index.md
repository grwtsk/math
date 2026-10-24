# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a5123d384e404d23dd8af54db8c04e0bc28dc0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a5123d384e404d23dd8af54db8c04e0bc28dc0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reflection_fixed_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/reflection-fixed-iff--64a6a434fd66c9efefc56bd1.md) | 42 | `result-track:64a6a434fd66c9efefc56bd14bdcda2b460cf3003cf233d44c889e1200adadd6` |
| 2 | `theorem` | [reflection_norm_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/reflection-norm-sub--7067ac14e65933b1d68b5420.md) | 53 | `result-track:7067ac14e65933b1d68b54200d1ee8ab1482ec37198dce16c019f0c17a60c857` |
| 3 | `theorem` | [reflection_mem_centered_closedBall](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/reflection-mem-centered-closedball--f772ceefa0dc8bcff1462bac.md) | 60 | `result-track:f772ceefa0dc8bcff1462bac189ee3c4208d6f17e7e276bb87fa1003cd889045` |
| 4 | `theorem` | [critical_line_of_reflection_stable_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/critical-line-of-reflection-stable-unique--998bc86cafbd81c5f483d187.md) | 73 | `result-track:998bc86cafbd81c5f483d18761a693f13e22dcd3ac5d883912f3ccb9d584f8b0` |
| 5 | `theorem` | [critical_line_of_centered_unique_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/critical-line-of-centered-unique-zero--926fb97c8f54704e5f96fccb.md) | 82 | `result-track:926fb97c8f54704e5f96fccb02597bfbd7449cca1fead7efbf6c260215ac2ebb` |
| 6 | `theorem` | [off_line_pair_rate_barrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/off-line-pair-rate-barrier--588f1573d3bc5dc1145ab963.md) | 91 | `result-track:588f1573d3bc5dc1145ab963dcdba9a838738ff3a1e70a5394a9f7c299a0b776` |
| 7 | `theorem` | [critical_line_of_derivative_contraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/critical-line-of-derivative-contraction--c24068327cea73f43c01c17a.md) | 111 | `result-track:c24068327cea73f43c01c17a47ee61af0aa3d3d27ab6fe1b4973679f1853c12b` |
| 8 | `theorem` | [nontrivial_of_small_centered_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/nontrivial-of-small-centered-disk--f9b3cb78bfa3644e7b4d6cce.md) | 133 | `result-track:f9b3cb78bfa3644e7b4d6cce487cc9a3779ce8fd44369192dbefc0b27f68a4b9` |
| 9 | `theorem` | [centered_zero_packet_on_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/centered-zero-packet-on-line--f5eb8e4f4a253e7f8f90a387.md) | 154 | `result-track:f5eb8e4f4a253e7f8f90a3879c4e75eeee4c7fa52df8c4d22bb5619dc0ed09f9` |
| 10 | `theorem` | [rhThrough_of_centered_unique_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/rhthrough-of-centered-unique-cover--73aab250584d520d5efb8c6d.md) | 168 | `result-track:73aab250584d520d5efb8c6d4a5541835e846c1b0b3c14bb067a4eaed919e479` |
| 11 | `theorem` | [reflection_without_uniqueness_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/reflection-without-uniqueness-fixture--a3a2c10e0c7babe44f28ba2c.md) | 182 | `result-track:a3a2c10e0c7babe44f28ba2c2cb60b414b4bd576f716e57f1501412616460911` |
| 12 | `theorem` | [off_center_region_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/off-center-region-fixture--913fcfcf4420ab97427433ce.md) | 191 | `result-track:913fcfcf4420ab97427433ce6f71995f3a9edd5fb3a16dca02cb2274618d6f48` |
| 13 | `theorem` | [nonstrict_rate_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/declarations/nonstrict-rate-fixture--752ead36ba4e8ed5cbc560a0.md) | 197 | `result-track:752ead36ba4e8ed5cbc560a00c739fa8a86be7adcea2e414234c1b1d5d86cc61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
