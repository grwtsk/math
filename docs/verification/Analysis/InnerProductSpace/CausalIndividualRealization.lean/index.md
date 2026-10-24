# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0b1f76322c939ccb53b82b4476615c43026ee4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0b1f76322c939ccb53b82b4476615c43026ee4`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalIndividualRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization`](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost`](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [response_pos_after_contact](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/declarations/response-pos-after-contact--1e76e4d88be146f40bf0fd7b.md) | 41 | `result-track:1e76e4d88be146f40bf0fd7b2902a438f82439754100709e233a8c96a2629fe1` |
| 2 | `theorem` | [gram_diagonal_pos](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/declarations/gram-diagonal-pos--bcdd4bf0526b590228a53787.md) | 54 | `result-track:bcdd4bf0526b590228a53787ccdc688a0f68b6334ba733449593c8b98c743cd8` |
| 3 | `theorem` | [original_window_L2_ne_zero_of_strict_maturity](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/declarations/original-window-l2-ne-zero-of-strict-maturity--ed35c688177cdcf5f9a2c721.md) | 71 | `result-track:ed35c688177cdcf5f9a2c721a07f9515cf66e5701961a2a08de4d61a7aca7928` |
| 4 | `theorem` | [bounded_individual_realization_exists](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/declarations/bounded-individual-realization-exists--8fe9aa269eb431833c04e5e4.md) | 80 | `result-track:8fe9aa269eb431833c04e5e4b6f91f4f43e8b6a24b1c054c799aff02945c8f12` |
| 5 | `theorem` | [prescribed_horizon_individual_realization](../../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/declarations/prescribed-horizon-individual-realization--9930afaeabe63ca66bb12697.md) | 96 | `result-track:9930afaeabe63ca66bb126976dfa11eded823b82cf47257382327d7903a5b3b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
