# Verification target: GRWTSK.Analysis.Complex.IntervalMellinRangeReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f8543fc6a78f2a935e67806f68ecf59b46818f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntervalMellinRangeReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f8543fc6a78f2a935e67806f68ecf59b46818f`.

Source path: `GRWTSK/Analysis/Complex/IntervalMellinRangeReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntervalMellinRangeReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure`](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_exp_ray_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/norm-exp-ray-sub-le--8c680c784dff4d30bf83bfa3.md) | 32 | `result-track:8c680c784dff4d30bf83bfa375733ae53a65e0b6343065184d018a6914ddf408` |
| 2 | `def` | [reducedNodeBound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/reducednodebound--2c5d3dd90e86111c1c8bffcc.md) | 55 | `declaration-track:2c5d3dd90e86111c1c8bffcc94386032ef927a104a48dc5c5a3eaa595d0b9097` |
| 3 | `def` | [reducedNodeValue](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/reducednodevalue--3e463231ae51b680ef14227b.md) | 58 | `declaration-track:3e463231ae51b680ef14227bf4925ff9e18c61f82c172839df471714fa817abf` |
| 4 | `def` | [reducedNodeError](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/reducednodeerror--f8aabeccb8317295784b377a.md) | 62 | `declaration-track:f8aabeccb8317295784b377a2276ad1088aba7456c001299f2fa1e3ef29329cb` |
| 5 | `theorem` | [reduced_argument_bound](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/reduced-argument-bound--52a9e0fea80bee2d51201b53.md) | 66 | `result-track:52a9e0fea80bee2d51201b53ee85f989feae39adf8a808f79858f1377936b90a` |
| 6 | `theorem` | [density_reduced_node_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/density-reduced-node-error--9fa08b0f308b707bb83dbfcb.md) | 73 | `result-track:9fa08b0f308b707bb83dbfcb743176ad6f8004cb1ea293a78ec2f86326a5df15` |
| 7 | `theorem` | [kernel_reduced_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/kernel-reduced-error--83a64a0aa88c03ab8d69593d.md) | 102 | `result-track:83a64a0aa88c03ab8d69593d4625da7d02942dfd4413e29a6eaecacdce1d11b4` |
| 8 | `theorem` | [kernel_reduced_accumulated_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/kernel-reduced-accumulated-error--4eac848daa0b5951079e7e6e.md) | 122 | `result-track:4eac848daa0b5951079e7e6e8e601dbda4700c69543c3bf03667c7427a7c0aea` |
| 9 | `theorem` | [unit_parameter_exact](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/unit-parameter-exact--2ee8c6a6aced86b6f5ec18ae.md) | 148 | `result-track:2ee8c6a6aced86b6f5ec18aee3c27f552b188b80442e3f63042bcb2f40fe0fd7` |
| 10 | `theorem` | [positive_real_part_control](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/declarations/positive-real-part-control--de4c5ed27660d31918ded5b1.md) | 154 | `result-track:de4c5ed27660d31918ded5b1fc24d782809033e956d517cf583e8b038a1b34e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
