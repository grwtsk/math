# Verification target: GRWTSK.Algebra.PrimitiveElement.Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eefb10b31c3bb4e8e1db409eb22440dcadecd038",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eefb10b31c3bb4e8e1db409eb22440dcadecd038`.

Source path: `GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_primitive_element_of_finite_top](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/exists-primitive-element-of-finite-top--79f69e16c3cc5318ac345919.md) | 54 | `result-track:79f69e16c3cc5318ac345919ddcfa17feaa975617f1be00908d8716d9e5c51a1` |
| 2 | `theorem` | [exists_primitive_element_of_finite_bot](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/exists-primitive-element-of-finite-bot--4f7b4b3ab7be5efd44c4f7d3.md) | 69 | `result-track:4f7b4b3ab7be5efd44c4f7d3f8830882226b0bbdb1690d0b2b5841ad0827d01a` |
| 3 | `theorem` | [primitive_element_inf_aux_exists_c](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/primitive-element-inf-aux-exists-c--aa29408460b943243ddb32d1.md) | 84 | `result-track:aa29408460b943243ddb32d14e906f1e5531d99c4e46511d1b9ac4d3677887f8` |
| 4 | `theorem` | [primitive_element_inf_aux](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/primitive-element-inf-aux--39a0721008a8dc8f5aaaaa0a.md) | 102 | `result-track:39a0721008a8dc8f5aaaaa0a71164299bd485ea330000b8f9dbbdb57205d0cbd` |
| 5 | `theorem` | [exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/exists-primitive-element--fe89a94d93035ea4dd73cbbb.md) | 189 | `result-track:fe89a94d93035ea4dd73cbbbca503e4b42042ed986bee96a1f690d27d8064840` |
| 6 | `def` | [powerBasisOfFiniteOfSeparable](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/powerbasisoffiniteofseparable--835f85c9d78e56af6e4dba66.md) | 208 | `declaration-track:835f85c9d78e56af6e4dba66cb374c191e00b15db1e60ae7c6a4dcc93c553144` |
| 7 | `theorem` | [AlgHom.card](../../../../mathematics/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/declarations/alghom-card--ef620d7a95c98314ad9e32d2.md) | 220 | `result-track:ef620d7a95c98314ad9e32d2354a857caf6adce7ebb9ef8fc467cfdc38c969b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
