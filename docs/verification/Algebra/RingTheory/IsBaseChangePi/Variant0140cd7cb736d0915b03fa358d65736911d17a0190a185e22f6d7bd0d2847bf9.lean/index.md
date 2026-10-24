# Verification target: GRWTSK.Algebra.RingTheory.IsBaseChangePi.Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56a60d290ff868645dfbbcf0c84d497a3ffd63fa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56a60d290ff868645dfbbcf0c84d497a3ffd63fa`.

Source path: `GRWTSK/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prodMap](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/declarations/prodmap--df772b073e1171f846a85696.md) | 30 | `result-track:df772b073e1171f846a856969f70f3cee690607d4d83b1c6c3a4120bb2ef5f2d` |
| 2 | `lemma` | [pi](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/declarations/pi--ec0a0c61e80bcee32c083206.md) | 41 | `result-track:ec0a0c61e80bcee32c083206de7eb62b534cd63a2bf5ed70ebdaf9f21e508ff2` |
| 3 | `instance` | [prodMap](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/declarations/prodmap--317ed4b61d0e35178a4ec8e9.md) | 63 | `declaration-track:317ed4b61d0e35178a4ec8e90623e6c730af203f06ed56ff995f11ca9628d1f3` |
| 4 | `instance` | [pi](../../../../../mathematics/Algebra/RingTheory/IsBaseChangePi/Variant0140cd7cb736d0915b03fa358d65736911d17a0190a185e22f6d7bd0d2847bf9.lean/declarations/pi--12a80f30b537ca86798754af.md) | 79 | `declaration-track:12a80f30b537ca86798754afc5b26692cdc6879684062a2d880836e06f9e865b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
