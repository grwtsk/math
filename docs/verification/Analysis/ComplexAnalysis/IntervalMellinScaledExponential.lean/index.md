# Verification target: GRWTSK.Analysis.Complex.IntervalMellinScaledExponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625d1683e862eabb9bc10ddea4eeabfef7e5fcbd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625d1683e862eabb9bc10ddea4eeabfef7e5fcbd`.

Source path: `GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntervalMellinScaledExponential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinRangeReduction`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.ComplexExpScaling`](../../../../mathematics/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledNodeValue](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/scalednodevalue--97d6ae047bf1a012454a1cd0.md) | 32 | `declaration-track:97d6ae047bf1a012454a1cd0150c642b1303d8abc75ec9af4b868631211cbaeb` |
| 2 | `def` | [scaledNodeError](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/scalednodeerror--8187b5db017af908facea9d0.md) | 36 | `declaration-track:8187b5db017af908facea9d024de900e11c4affae504e33f0330ea432afe4d7b` |
| 3 | `theorem` | [reduced_exponent_re_nonpos](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/reduced-exponent-re-nonpos--8f595734688c768d54d935db.md) | 41 | `result-track:8f595734688c768d54d935dbbac87f02a0846e9cbdae028051ee1744f4c0c5f5` |
| 4 | `theorem` | [density_to_reduced_exponential](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/density-to-reduced-exponential--9bba81df61b98c8ba55a10ac.md) | 50 | `result-track:9bba81df61b98c8ba55a10ac9139870968ba2bf0093fb1a9fe7f4664ddd91317` |
| 5 | `theorem` | [density_scaled_node_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/density-scaled-node-error--cda807530f181695ff189810.md) | 62 | `result-track:cda807530f181695ff189810ed93d799df8214148d64eb9f48edc04cd2eaa7b3` |
| 6 | `theorem` | [density_scaled_trace_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/density-scaled-trace-error--62420401642ee7c9589e2669.md) | 79 | `result-track:62420401642ee7c9589e26695a33f8a6a05b11ac688d530b51ce7f0918623394` |
| 7 | `theorem` | [kernel_scaled_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/kernel-scaled-error--eb4d72a7306377affac6f090.md) | 100 | `result-track:eb4d72a7306377affac6f090ac4154e5ae18cd6f9b26a07df09d55c41563a47c` |
| 8 | `theorem` | [kernel_scaled_accumulated_error](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/kernel-scaled-accumulated-error--627c9d31a42d9c48d6c325f5.md) | 121 | `result-track:627c9d31a42d9c48d6c325f5b4f7115e429d4a275e0c67788f3077898020c190` |
| 9 | `theorem` | [unit_parameter_scaled_exact](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/declarations/unit-parameter-scaled-exact--311ffe65ee2573d6eca2f478.md) | 148 | `result-track:311ffe65ee2573d6eca2f478756a0152fc290441dda4b91009f466222c7fe465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
