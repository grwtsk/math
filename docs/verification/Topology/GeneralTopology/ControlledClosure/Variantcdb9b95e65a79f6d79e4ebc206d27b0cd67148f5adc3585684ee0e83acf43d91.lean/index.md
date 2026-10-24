# Verification target: GRWTSK.Topology.GeneralTopology.ControlledClosure.Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dbb501befdde48023e7fb858cac320fa345fcef",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dbb501befdde48023e7fb858cac320fa345fcef`.

Source path: `GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [controlled_closure_of_complete](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/declarations/controlled-closure-of-complete--aa85ee64ac386e602bcf3d7d.md) | 41 | `result-track:aa85ee64ac386e602bcf3d7d0e6b5b0dd08cadec737918e0c27a3dfe7e797aad` |
| 2 | `theorem` | [controlled_closure_range_of_complete](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91.lean/declarations/controlled-closure-range-of-complete--a23b0b342ecdb6a37149e08a.md) | 129 | `result-track:a23b0b342ecdb6a37149e08ac0f045c2016f2728ee11595d4aa6451fd743e3b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
