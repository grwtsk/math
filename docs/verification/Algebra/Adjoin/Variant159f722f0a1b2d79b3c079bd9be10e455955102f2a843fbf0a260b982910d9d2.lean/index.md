# Verification target: GRWTSK.Algebra.Adjoin.Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "907bac028210e7a578f19ad381348d506f550d66",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `907bac028210e7a578f19ad381348d506f550d66`.

Source path: `GRWTSK/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aevalEquivField](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/aevalequivfield--4cb6da2496259a9e8e6fef89.md) | 44 | `declaration-track:4cb6da2496259a9e8e6fef89157f46873f6cb47176812af6e481bba314d95650` |
| 2 | `theorem` | [aevalEquivField_apply_coe](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/aevalequivfield-apply-coe--358eaedff333c95fd9963102.md) | 54 | `result-track:358eaedff333c95fd9963102ab9150bda5e78073a5d21e7e20d3653509d2b894` |
| 3 | `theorem` | [aevalEquivField_algebraMap_apply_coe](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/aevalequivfield-algebramap-apply-coe--d878266d6c5da1c3734dca34.md) | 58 | `result-track:d878266d6c5da1c3734dca347e6667f460f6a7f9a294716f6d196d190d912f53` |
| 4 | `def` | [reprField](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/reprfield--ab3c077f40a8dafb0e0edab9.md) | 64 | `declaration-track:ab3c077f40a8dafb0e0edab901f013ea45983c244debe4d2feae666bdc34d4bb` |
| 5 | `theorem` | [lift_reprField](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/lift-reprfield--292e20004e418d4628cee56d.md) | 68 | `result-track:292e20004e418d4628cee56d1b387adf1a9a8aceffeabb1e62ebd340d489f2a9` |
| 6 | `theorem` | [liftAlgHom_comp_reprField](../../../../mathematics/Algebra/Adjoin/Variant159f722f0a1b2d79b3c079bd9be10e455955102f2a843fbf0a260b982910d9d2.lean/declarations/liftalghom-comp-reprfield--874d9533d5bd17c970e9de59.md) | 72 | `result-track:874d9533d5bd17c970e9de594e4c42c1e7ccd2bd888b9db13d5dfb666f3d06b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
