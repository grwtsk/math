# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaSeparableKernelFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecae37d317874c621af5490e08165cd39b136eb6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecae37d317874c621af5490e08165cd39b136eb6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaQuadraticKernelCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeThetaSeparableKernelStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/primethetaseparablekernelstage--d1c28374acfddd211c248222.md) | 42 | `declaration-track:d1c28374acfddd211c248222f54a3de7e6d858f6673675834743591f41a47a81` |
| 2 | `def` | [inducedKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/inducedkernel--e288f9ea1f63524085ca20b1.md) | 56 | `declaration-track:e288f9ea1f63524085ca20b1ab17001cec935c3a1929570fa3629ce1e1981f03` |
| 3 | `def` | [toKernelStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/tokernelstage--b438f7caa42168fe5de16419.md) | 65 | `declaration-track:b438f7caa42168fe5de16419cd4ed013d7939fc38a1904d6bccd244de9122f40` |
| 4 | `def` | [absoluteFactorMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/absolutefactormass--28e987a491af519f64f657d0.md) | 77 | `declaration-track:28e987a491af519f64f657d027198da07953889d5b23bdc1291a4ed0020240b5` |
| 5 | `theorem` | [absoluteFactorMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/absolutefactormass-nonnegative--de100b727229ee462f7fd146.md) | 87 | `result-track:de100b727229ee462f7fd1463f75c7c5b3fe4f1bddb3334ba9cf4a296b89b541` |
| 6 | `theorem` | [abs_inducedKernel_le_factorTerms](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/abs-inducedkernel-le-factorterms--0b58ecdabcf9c9766443de6b.md) | 97 | `result-track:0b58ecdabcf9c9766443de6b410acfe2357f269eb6f7d0969b600bd949a7449c` |
| 7 | `theorem` | [kernelMass_le_absoluteFactorMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/kernelmass-le-absolutefactormass--e5b7e01bea771ee87094b14f.md) | 110 | `result-track:e5b7e01bea771ee87094b14f6e0b9f17a0e17016c905380ff3a6e5d39e85eda3` |
| 8 | `def` | [PrimeThetaSeparableKernelCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/primethetaseparablekernelcriterionat--08fa57db5b13706da4d2be9a.md) | 128 | `declaration-track:08fa57db5b13706da4d2be9a81585beafd61e49ceecad8d6abed6f073ab2e174` |
| 9 | `theorem` | [primeThetaSeparableKernelCriterion_to_kernelCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/primethetaseparablekernelcriterion-to-kernelcriterion--686d363fb217ff44a97a2b1c.md) | 156 | `result-track:686d363fb217ff44a97a2b1cab4f2c492a420fa109f0ded77bff2d8f88bb1eab` |
| 10 | `theorem` | [primeThetaSeparableKernelCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/primethetaseparablekernelcriterion-to-recurrence--6d94c46e8514ef1d701e97bb.md) | 179 | `result-track:6d94c46e8514ef1d701e97bb77bbd386ce1cfd4d6299473fc5d7d2af70946c29` |
| 11 | `theorem` | [primeThetaSeparableKernelCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/declarations/primethetaseparablekernelcriterion-to-descent--8ed8a97715918d4a919c29a7.md) | 188 | `result-track:8ed8a97715918d4a919c29a7a7ca37bf5f9a8b640e8ef782f7245f0092bdd537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
