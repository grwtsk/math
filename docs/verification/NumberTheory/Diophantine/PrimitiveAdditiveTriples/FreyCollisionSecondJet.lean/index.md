# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionSecondJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b68a2c05dc6be17c0f47f67af505a9fa12d42925",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b68a2c05dc6be17c0f47f67af505a9fa12d42925`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/instance--380d9d589c28a4cb757b5a70.md) | 25 | `declaration-track:380d9d589c28a4cb757b5a704196f4cd9afd8370e32e421cc685f0995a6cf9e9` |
| 2 | `theorem` | [mapped_model_shape](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/mapped-model-shape--e3e44e6c25180ceeedcaf126.md) | 28 | `result-track:e3e44e6c25180ceeedcaf126ee785e63eb201ad982b92b484f75e82f5b1c2801` |
| 3 | `theorem` | [old_collision_direction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/old-collision-direction--8487e99544987db87c75d7f9.md) | 35 | `result-track:8487e99544987db87c75d7f98fee82ea2ca91e3c933562703b0c977423af4247` |
| 4 | `theorem` | [residue_lift_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/residue-lift-iff--26fdaf48d3675531ec932e82.md) | 41 | `result-track:26fdaf48d3675531ec932e828c77c5959ba073e785c04f1ec93d7518b93ef1e3` |
| 5 | `theorem` | [lift_iff_nonsingular](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/lift-iff-nonsingular--9e9c534c83b0af00425f1799.md) | 48 | `result-track:9e9c534c83b0af00425f17995d0604fb2c7e465441bcdb92e49b2e332a7caf5a` |
| 6 | `theorem` | [local_lift_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/local-lift-iff--1db976c401be3b13116432ed.md) | 55 | `result-track:1db976c401be3b13116432ed342b776d2e8cd4c5ace5d6c53a780e776c3edb64` |
| 7 | `theorem` | [local_iff_residue](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/local-iff-residue--b642dfacd92ce9a110b64a66.md) | 61 | `result-track:b642dfacd92ce9a110b64a6671665eba426162f87dd44b8c4adbd2e207ab3ac2` |
| 8 | `theorem` | [gap_jacobian_factor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/gap-jacobian-factor--f638834338f48b5c2231b0e2.md) | 68 | `result-track:f638834338f48b5c2231b0e2e833754f8a35acbd999c0cfa101a2503562e1334` |
| 9 | `theorem` | [gap_jacobian_factor_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/gap-jacobian-factor-odd--3b0cddab53fbf2b2bee8c927.md) | 75 | `result-track:3b0cddab53fbf2b2bee8c927b99dd48f04f092fceb1724951d2f5923ad70faf8` |
| 10 | `theorem` | [jacobian_even_iff_gap_four](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/jacobian-even-iff-gap-four--6d02e6a6e5a5da06c39cff7b.md) | 79 | `result-track:6d02e6a6e5a5da06c39cff7bb31af28fb78487421f3292914bd2725e8d9c9fda` |
| 11 | `theorem` | [collision_lift_iff_gap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/collision-lift-iff-gap--48eb9398d5fcfccbcd90bf49.md) | 90 | `result-track:48eb9398d5fcfccbcd90bf49c560bef9d1d52f222427fbc32c6dcd8290a1a860` |
| 12 | `theorem` | [no_lift_on_deep_collision](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/no-lift-on-deep-collision--9acf4c68fc9bd07c11d8dd19.md) | 98 | `result-track:9acf4c68fc9bd07c11d8dd190044bedc6dc28d0ec8ce90f503ad89c44a1c8b5c` |
| 13 | `theorem` | [selected_a4_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/selected-a4-ne-zero--e81f2d870e3fa8e7db6129ba.md) | 105 | `result-track:e81f2d870e3fa8e7db6129ba7db481627c8d962aec94750b5a9a4b466bfa718e` |
| 14 | `theorem` | [rational_model_shape](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/rational-model-shape--358abab2f98b15db8bff2d92.md) | 114 | `result-track:358abab2f98b15db8bff2d9211143d3cee85cde29a807818094fc71a60dab927` |
| 15 | `theorem` | [rational_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/rational-lift--5e0713e01614fa196fef6d8c.md) | 120 | `result-track:5e0713e01614fa196fef6d8cc26732f3f5a89f4d71227296c56969753752dc82` |
| 16 | `theorem` | [rational_lift_coefficient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/rational-lift-coefficient--0b4c9529b9982c19b2c82173.md) | 127 | `result-track:0b4c9529b9982c19b2c8217367155f0de09bb37a232952b6c8dd945009f0338f` |
| 17 | `theorem` | [quadratic_coefficient_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/quadratic-coefficient-clearing--80cf7bbd22eb5be1d6272299.md) | 135 | `result-track:80cf7bbd22eb5be1d6272299679de1d37b7b0cd1a20383e293b5287f0be58650` |
| 18 | `theorem` | [all_node_directions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/declarations/all-node-directions--cc5266549eee3336da39afa8.md) | 143 | `result-track:cc5266549eee3336da39afa8832f4c1976773a826d8b9027a874fdc9e071c483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
