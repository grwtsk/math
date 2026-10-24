# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaPowerEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4c5499cd38e3e8171a1af9e405c22e635e8fb7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4c5499cd38e3e8171a1af9e405c22e635e8fb7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaTail`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation`](../../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/powerpacket--18e847196309ceb5f50a6f1a.md) | 30 | `declaration-track:18e847196309ceb5f50a6f1ab190b8a2e4bb095761e7efaa032ba9ef5bc48b54` |
| 2 | `def` | [logValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/logvalue--e74ba7a8d760c54c13836630.md) | 35 | `declaration-track:e74ba7a8d760c54c1383663087ba11f843df4eb2b62fc8bafe247aa02fde773e` |
| 3 | `def` | [logError](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/logerror--296045a46d794f2b8984b9a2.md) | 39 | `declaration-track:296045a46d794f2b8984b9a298669c155e6b0775f61844625f0811384eb78591` |
| 4 | `theorem` | [logValue_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/logvalue-sound--71da773167616e294b4b2f94.md) | 43 | `result-track:71da773167616e294b4b2f944f90315275640ffc52b6152631e36a774082f622` |
| 5 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/value--331b8baffdab3f818517a3b7.md) | 77 | `declaration-track:331b8baffdab3f818517a3b729c8757cf98292f3329044a3437f13ed3910c0d6` |
| 6 | `def` | [slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/slope--049eb3dfe0983752c97cefd9.md) | 80 | `declaration-track:049eb3dfe0983752c97cefd90b410f0b23451d73e7323bdb355bb21506a7c2ad` |
| 7 | `def` | [finiteValueError](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/finitevalueerror--bbf7e69cee8a7e8bc6601d3d.md) | 84 | `declaration-track:bbf7e69cee8a7e8bc6601d3dd9315b7fbe567a4cb022337a4debebc96dc31be0` |
| 8 | `def` | [finiteSlopeError](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/finiteslopeerror--81da7153c0d17624e0ac0b98.md) | 87 | `declaration-track:81da7153c0d17624e0ac0b980b9fc280d8e532217fc5bc0a19458e7020af85c2` |
| 9 | `theorem` | [coefficient_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/coefficient-error--4d8bc912105425fbf4f67da1.md) | 93 | `result-track:4d8bc912105425fbf4f67da1231c6dfe8f5f55a3cd7ab8abd1347b80810b6079` |
| 10 | `theorem` | [finite_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/finite-sound--06f158e9172788e2ab96ac24.md) | 99 | `result-track:06f158e9172788e2ab96ac24d701cbdc9ad757222153c8871290a15f3ef09a0e` |
| 11 | `theorem` | [actual_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/actual-sound--d29e3148e3626549571aa4df.md) | 124 | `result-track:d29e3148e3626549571aa4df79a5d7d2c5fcf78490d6d1eeb95877b15eff7878` |
| 12 | `theorem` | [actual_rounded](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaPowerEnclosure.lean/declarations/actual-rounded--761f4ecbf4210938ce86e6a9.md) | 132 | `result-track:761f4ecbf4210938ce86e6a9752c091634c0f326ba948d9aff1f1e0c187a9935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
