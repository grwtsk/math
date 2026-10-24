# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebe2113f9b4d8647700d4b8a4e993c60939c50e5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebe2113f9b4d8647700d4b8a4e993c60939c50e5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.AbelSummation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveUnitCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/positiveunitcoefficient--46528f23b3551e6daf875546.md) | 31 | `declaration-track:46528f23b3551e6daf87554693b09fb110b8f358abde22879ab659a225b43fd2` |
| 2 | `lemma` | [sum_Icc_zero_eq_sum_Icc_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/sum-icc-zero-eq-sum-icc-one--6ceb59915f1170aa2083299c.md) | 33 | `result-track:6ceb59915f1170aa2083299cc8f2a58714954cd054edba6bc707911aa67eb897` |
| 3 | `lemma` | [positiveUnitCoefficient_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/positiveunitcoefficient-sum--4be6483bd79c184edd06a368.md) | 38 | `result-track:4be6483bd79c184edd06a36871d110a20f5cf157a9488287ae68834d85455b23` |
| 4 | `def` | [finiteDirichletPowerSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitedirichletpowersum--a974bd420dd64717bb676b4a.md) | 51 | `declaration-track:a974bd420dd64717bb676b4a46106c0df1b2ae29091e3ca549d7af2f50474bbe` |
| 5 | `def` | [finitePowerPoleModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepowerpolemodel--a9b8a641eb89919b2831d678.md) | 55 | `declaration-track:a9b8a641eb89919b2831d678ecb93426083d76b55dd96b1c96ab099cf4d8c5e8` |
| 6 | `theorem` | [finitePowerPoleModel_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepowerpolemodel-at-one--3ad450b4ccbdaef109292f08.md) | 58 | `result-track:3ad450b4ccbdaef109292f08ae14ad3d89fee5ebdcd4e123d55f6184b2f70462` |
| 7 | `theorem` | [finitePowerPoleModel_cutoff_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepowerpolemodel-cutoff-one--07dd09f61304475c505fe5e2.md) | 61 | `result-track:07dd09f61304475c505fe5e2c2063c9cee2c74cfcee316be71df1194fb9bcd8c` |
| 8 | `lemma` | [nat_neg_cpow_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/nat-neg-cpow-mul--a352ff15fedcaf052931791e.md) | 65 | `result-track:a352ff15fedcaf052931791eead105e81cd3f6ccef0a1834c8498bf387d68618` |
| 9 | `theorem` | [finiteDirichletPowerSum_abel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitedirichletpowersum-abel--fc6eec9686c80e123aaa073e.md) | 76 | `result-track:fc6eec9686c80e123aaa073ebaf413359510f9358d2b09e1532be5085103c161` |
| 10 | `lemma` | [finite_floor_integral_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finite-floor-integral-eq--9d2729761aa97234c771f248.md) | 128 | `result-track:9d2729761aa97234c771f2480d32a484552af04fa4bf2c34158ad16a12364459` |
| 11 | `theorem` | [truncatedPoleModel_eq_finitePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/truncatedpolemodel-eq-finitepower--32106ffa730bca59ae6a7842.md) | 167 | `result-track:32106ffa730bca59ae6a7842b6af0ec24f72c777d514678012035c6f61300d4b` |
| 12 | `theorem` | [finitePower_source_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepower-source-residual--04bdfb54abbdc1b3b9e12a58.md) | 181 | `result-track:04bdfb54abbdc1b3b9e12a58f8421d77c9f571e3aa0293c29a6487ab0e719c52` |
| 13 | `theorem` | [finitePower_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepower-source-error--f994ea638725c655f42f3153.md) | 189 | `result-track:f994ea638725c655f42f31536e45626ed701bb3b23c3c92c892c1330233c7a4c` |
| 14 | `theorem` | [finitePower_source_error_uniform](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/finitepower-source-error-uniform--6f5620e4809dfdb62224e153.md) | 197 | `result-track:6f5620e4809dfdb62224e15387e5e71031239f0adb99f91c00cf8d46f406fa5e` |
| 15 | `theorem` | [endpoint_term_cannot_be_dropped](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/declarations/endpoint-term-cannot-be-dropped--292d353835a0059128b54b04.md) | 205 | `result-track:292d353835a0059128b54b0494ffd6f6795d86a49168e55ea942a6eaa21b7af6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
