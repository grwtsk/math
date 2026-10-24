# Verification target: GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863a11ae7402e9016e7ca844c3cab6c938a729a7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863a11ae7402e9016e7ca844c3cab6c938a729a7`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect`](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupWeightedPrefix_succ](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/pickupweightedprefix-succ--8bf3c5327ccbdf349b352f1e.md) | 29 | `result-track:8bf3c5327ccbdf349b352f1e82823a81f20d4be2dbfc548d7354500af4e05949` |
| 2 | `theorem` | [criticalEndpointDefect_succ](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalendpointdefect-succ--649b6beebfab16af927a073e.md) | 39 | `result-track:649b6beebfab16af927a073e2d38f9e0a0ece3801fd0e8ba360e25667bd74140` |
| 3 | `theorem` | [criticalEndpointDefect_zero](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalendpointdefect-zero--61241d4569015d8fdab4fe85.md) | 49 | `result-track:61241d4569015d8fdab4fe85055300fc062d0431e20e55ad4a469365b68d41c5` |
| 4 | `def` | [criticalMertensTransform](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalmertenstransform--ac455d7132f1e4403f3714b3.md) | 53 | `declaration-track:ac455d7132f1e4403f3714b3a5ebfc65e02a74652791129f771b853082c85559` |
| 5 | `theorem` | [criticalEndpointDefect_eq_mertensTransform](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalendpointdefect-eq-mertenstransform--ea70f7ad1ee072506ad5c29c.md) | 59 | `result-track:ea70f7ad1ee072506ad5c29c33517124f8fa79f95d000e402ee669be8e9313e6` |
| 6 | `def` | [CriticalMertensTransformSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalmertenstransformsummable--f753e34dce257d3e14470234.md) | 70 | `declaration-track:f753e34dce257d3e1447023441662aa8e3fffe992c48517c65e7eef528a41663` |
| 7 | `theorem` | [endpointDefectSummable_iff_mertensTransformSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/endpointdefectsummable-iff-mertenstransformsummable--867db6f9f9e3438ebfd227c9.md) | 74 | `result-track:867db6f9f9e3438ebfd227c9e556b0203fbaaf70b5b83c395b0a48115248e739` |
| 8 | `theorem` | [criticalBoundary_iff_mertensTransformSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/declarations/criticalboundary-iff-mertenstransformsummable--5b8caf93cb5faa271f01b3aa.md) | 82 | `result-track:5b8caf93cb5faa271f01b3aa6181c73a900da49b730dc4dd1c110e767b9acf0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
