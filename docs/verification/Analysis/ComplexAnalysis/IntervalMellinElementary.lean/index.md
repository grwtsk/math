# Verification target: GRWTSK.Analysis.Complex.IntervalMellinElementary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ddc927d85898a7f4df2932bf32d3cbe72b05a5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntervalMellinElementary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ddc927d85898a7f4df2932bf32d3cbe72b05a5`.

Source path: `GRWTSK/Analysis/Complex/IntervalMellinElementary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntervalMellinElementary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure`](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure`](../../../../mathematics/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCenter](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/logcenter--2abfe7c023082694b4d7e497.md) | 32 | `declaration-track:2abfe7c023082694b4d7e4971e49d9a4d5f3e0e491ddae3b5bbc1f8109384f2b` |
| 2 | `def` | [logRadius](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/logradius--de2987f1eee4098b66d1ba89.md) | 35 | `declaration-track:de2987f1eee4098b66d1ba8970f14e7bd034997436ca7c7105ab58f241322e73` |
| 3 | `theorem` | [logCenter_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/logcenter-error--6e52b758cd1dbd88c35d662a.md) | 39 | `result-track:6e52b758cd1dbd88c35d662aaaeaa42c74b5836454f2046a58625500d06f7a99` |
| 4 | `theorem` | [logRadius_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/logradius-nonneg--a1b3f2cc1170d2dc46b57f72.md) | 46 | `result-track:a1b3f2cc1170d2dc46b57f72b6bc3c9731b4152e5e0be1f5a28c6191d3d5d8ab` |
| 5 | `theorem` | [logRadius_eq](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/logradius-eq--323f6f8c6ba4a6e7b85b8a72.md) | 51 | `result-track:323f6f8c6ba4a6e7b85b8a7248cbaea732bb42155a5541d1276fd69f496cdac5` |
| 6 | `def` | [nodeBound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/nodebound--48278301e7ed5123428fc7f1.md) | 62 | `declaration-track:48278301e7ed5123428fc7f1ea26314aaee243fbfc06098747539cabf940badc` |
| 7 | `def` | [nodeInputError](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/nodeinputerror--6f7f11d171831cef3d59a431.md) | 66 | `declaration-track:6f7f11d171831cef3d59a431589268883c47a7843a59c191edfa3147dfcd581d` |
| 8 | `def` | [nodeValue](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/nodevalue--c7ee2b9fcfdf75be7e1213d6.md) | 70 | `declaration-track:c7ee2b9fcfdf75be7e1213d6338839fa3ca304713a38280e8e7a89bd603a81ec` |
| 9 | `def` | [nodeError](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/nodeerror--97b567bbe4e061c1279bc57e.md) | 74 | `declaration-track:97b567bbe4e061c1279bc57e89e2972ba73e27f32cd1627a1db2e39629f6ec87` |
| 10 | `theorem` | [node_argument_bounds](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/node-argument-bounds--8bfc19a0258f430f0185ecde.md) | 79 | `result-track:8bfc19a0258f430f0185ecde72e0dc9c2cc26ec990bb9682f9629b251c36c972` |
| 11 | `theorem` | [density_node_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/density-node-error--48f092b64893729a55428077.md) | 105 | `result-track:48f092b64893729a55428077c83feac3d95f50677ad49f1cbd1d0034a2e9a87a` |
| 12 | `theorem` | [kernel_elementary_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/kernel-elementary-error--72fc0aedb6035b4128ff657c.md) | 114 | `result-track:72fc0aedb6035b4128ff657c3a7ff38d9ede253dd63e23c4b989623f4ce5e2f4` |
| 13 | `def` | [arithmeticMeshBound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/arithmeticmeshbound--e01f75b6942a2a3a5277df4d.md) | 129 | `declaration-track:e01f75b6942a2a3a5277df4d80ed563ed571e946a202298868eeb8d12a1f13b0` |
| 14 | `theorem` | [partitionError_le_arithmeticMeshBound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/partitionerror-le-arithmeticmeshbound--c33278ea9b78215a8f29b7df.md) | 133 | `result-track:c33278ea9b78215a8f29b7dfbe75331b6fce3a74f2b73558dc0f04aa604a5c62` |
| 15 | `theorem` | [kernel_accumulated_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/kernel-accumulated-error--98315f5745286012ca4c3dd2.md) | 144 | `result-track:98315f5745286012ca4c3dd2350508a84b0e1bb86a9a72c4fbb4123a09f34336` |
| 16 | `theorem` | [log_one_control](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/log-one-control--98b9ebbd5f6d822a3a0d28a1.md) | 167 | `result-track:98b9ebbd5f6d822a3a0d28a175788754e64b8af8597b697e3f858c9620d985eb` |
| 17 | `theorem` | [unit_parameter_control](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/unit-parameter-control--3f461b9aedc42191890d77ed.md) | 171 | `result-track:3f461b9aedc42191890d77ed1419106d1d322cd1d94286be86711de7bce06aab` |
| 18 | `theorem` | [short_truncation_guard_control](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/declarations/short-truncation-guard-control--5b879cf94ab5f877220707dc.md) | 175 | `result-track:5b879cf94ab5f877220707dc63a808273354e183c2843842e60be7fc7b64e9fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
