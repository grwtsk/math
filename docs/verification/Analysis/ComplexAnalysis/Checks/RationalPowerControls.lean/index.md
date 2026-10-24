# Verification target: GRWTSK.Analysis.Complex.Checks.RationalPowerControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85a5374a34dfb470040b102cea6e1ba843b3817c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalPowerControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85a5374a34dfb470040b102cea6e1ba843b3817c`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalPowerControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalPowerControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_component](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/negative-component--d480a3fb7781223dfc4053f1.md) | 17 | `result-track:d480a3fb7781223dfc4053f119d0b3bf8fbf0fac2636ce0f666d5b9994ed5eeb` |
| 2 | `theorem` | [upward_negative_component](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/upward-negative-component--a7f1dde42a66e496c802d478.md) | 20 | `result-track:a7f1dde42a66e496c802d47806870144b9184bae3a8aec63187be5f59816148c` |
| 3 | `theorem` | [both_components_needed](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/both-components-needed--46d7dd46b8d8ae32a6cd0942.md) | 23 | `result-track:46d7dd46b8d8ae32a6cd09424f77a14d29c8f2e6239b8f118c8780e11cb248a4` |
| 4 | `theorem` | [zero_squarings_rounds_seed](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/zero-squarings-rounds-seed--be6f8eb96b71c884a0f98656.md) | 25 | `result-track:be6f8eb96b71c884a0f9865654797ee1ad24069dc12300363bc61e17ebd9f071` |
| 5 | `theorem` | [upward_error_storage](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/upward-error-storage--8b734f2cfb947bb13954289c.md) | 29 | `result-track:8b734f2cfb947bb13954289cf477a5a38a5147baab73e00e5176d865c3f67fbd` |
| 6 | `theorem` | [quadratic_error_not_optional](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/quadratic-error-not-optional--36a48e1079da939a99635e3f.md) | 33 | `result-track:36a48e1079da939a99635e3f7c447c17ac58ca92e336d5c2240de65c17368cb2` |
| 7 | `theorem` | [zero_degree_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/zero-degree-rejected--f482b744d887e73ae12b768c.md) | 36 | `result-track:f482b744d887e73ae12b768c76dcdd48ba6e2c0023a9cd5359c3c275c37a2e81` |
| 8 | `theorem` | [invalid_mantissa_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/invalid-mantissa-rejected--bc4bc99ac9dc8f5f804410a2.md) | 44 | `result-track:bc4bc99ac9dc8f5f804410a27860779b6d26c9bbb536e74e90fce467cb0b8556` |
| 9 | `theorem` | [excessive_radius_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/excessive-radius-rejected--9bc37fb60bb5a8c3a93e4af1.md) | 50 | `result-track:9bc37fb60bb5a8c3a93e4af141a9c7ba79b2dcada28e0198e0f96eca4a983834` |
| 10 | `theorem` | [empty_search](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/empty-search--adc3747026a2faad6603ef51.md) | 55 | `result-track:adc3747026a2faad6603ef51966b4ce8af2fa50c7f0200c70aa13d84bc24061d` |
| 11 | `theorem` | [equal_tolerance_passes](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/equal-tolerance-passes--a3162c0e2b2e16a831cd69ef.md) | 59 | `result-track:a3162c0e2b2e16a831cd69efb67f644ccc545ad248d95f408a6324131f4a2580` |
| 12 | `theorem` | [forged_output_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalPowerControls.lean/declarations/forged-output-rejected--c614fa8e465c2afe8e9a86c7.md) | 65 | `result-track:c614fa8e465c2afe8e9a86c72ddd4107bdef4d7b147a5f8abd784450ad788d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
