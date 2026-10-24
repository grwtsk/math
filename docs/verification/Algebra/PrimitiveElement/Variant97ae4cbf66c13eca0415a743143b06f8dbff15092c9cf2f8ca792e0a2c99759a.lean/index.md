# Verification target: GRWTSK.Algebra.PrimitiveElement.Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dbd270553095739f827fad1f63bdba71b14d03d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dbd270553095739f827fad1f63bdba71b14d03d`.

Source path: `GRWTSK/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_primitive_element_of_finite_top](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/exists-primitive-element-of-finite-top--bf4f47a79f07b6782cf92745.md) | 62 | `result-track:bf4f47a79f07b6782cf92745281233dbb5b5d1814786f71ee6ea30895b37f272` |
| 2 | `theorem` | [exists_primitive_element_of_finite_bot](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/exists-primitive-element-of-finite-bot--f2148b4d0d6542f9000d365c.md) | 77 | `result-track:f2148b4d0d6542f9000d365c0ce9af676418b286cface521fa1099b8a6f23396` |
| 3 | `theorem` | [primitive_element_inf_aux_exists_c](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/primitive-element-inf-aux-exists-c--f19c3b07c628562fc200e8d8.md) | 92 | `result-track:f19c3b07c628562fc200e8d8db5cec405570f4e8f5b4881dd1c34dd2c4185650` |
| 4 | `theorem` | [primitive_element_inf_aux](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/primitive-element-inf-aux--1cd7c3e9c37701f37d309d73.md) | 110 | `result-track:1cd7c3e9c37701f37d309d730903cb6caf518ec86da40fc361d609dffae1f426` |
| 5 | `theorem` | [exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/exists-primitive-element--8cb2fffdf61576a65ed00959.md) | 197 | `result-track:8cb2fffdf61576a65ed0095943fbe75015fe0250f467baafd4b8f05993639443` |
| 6 | `def` | [powerBasisOfFiniteOfSeparable](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/powerbasisoffiniteofseparable--d94fb4a8a1e6f00975fcabb6.md) | 216 | `declaration-track:d94fb4a8a1e6f00975fcabb6ce0b6095d243bf87ca551326e1fb8a955874b38a` |
| 7 | `theorem` | [AlgHom.card](../../../../mathematics/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/declarations/alghom-card--e3258ce4490241f936d8bbef.md) | 228 | `result-track:e3258ce4490241f936d8bbef3fb4ba7c5c4149c1d277cdbc7990ade9fbaa237c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
