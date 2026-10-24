# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e49566f4247fece851cd356fdccc691afa81b55",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e49566f4247fece851cd356fdccc691afa81b55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Set` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperBounds_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/upperbounds-image--1129c8b9ebe5dfeb252dc77a.md) | 27 | `result-track:1129c8b9ebe5dfeb252dc77aa7b07ff0444e8ce16bb4eb6b7a00c6944a9c745f` |
| 2 | `theorem` | [lowerBounds_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/lowerbounds-image--72b11adbb6574816c39d6a75.md) | 33 | `result-track:72b11adbb6574816c39d6a758191565036dd45111d20c4a0a4cdddfbe1b83a19` |
| 3 | `theorem` | [isLUB_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/islub-image--a894264faaf8e16f81c60e63.md) | 37 | `result-track:a894264faaf8e16f81c60e6395b9e1082973056825b20c7ad295cc471b37602a` |
| 4 | `theorem` | [isLUB_image'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/islub-image--99fea451fb4d4f9ac90caafd.md) | 41 | `result-track:99fea451fb4d4f9ac90caafd1bf2d16207f30fe8abb9be9974e1a950f603f7f3` |
| 5 | `theorem` | [isGLB_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/isglb-image--36724349f7fa70cf70f1abab.md) | 45 | `result-track:36724349f7fa70cf70f1abab8d180298898fa5f0cd580e0b9b9a12e6fc831500` |
| 6 | `theorem` | [isGLB_image'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/isglb-image--4c8ff22ac103b0f2bfb2f412.md) | 48 | `result-track:4c8ff22ac103b0f2bfb2f412796a0e79f156f655e32ece8f1b5dcf9015c7d5d2` |
| 7 | `theorem` | [isLUB_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/islub-preimage--ea322ce413a516a06f54190d.md) | 52 | `result-track:ea322ce413a516a06f54190dcd27dccc1ef86fe22a9ae034789b15bc2d1c1a92` |
| 8 | `theorem` | [isLUB_preimage'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/islub-preimage--52fb0f819e9c3b9e447eeeb2.md) | 55 | `result-track:52fb0f819e9c3b9e447eeeb29017cfc587c694b8b6b6c37120acd98f28113134` |
| 9 | `theorem` | [isGLB_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/isglb-preimage--8e11bc74cea9a90c4d026cd2.md) | 59 | `result-track:8e11bc74cea9a90c4d026cd29b14b3915bf2bb2fd5a2fdc57dfc09d3da5ad3f5` |
| 10 | `theorem` | [isGLB_preimage'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17.lean/declarations/isglb-preimage--389158eb1d98d69ae4ad1857.md) | 62 | `result-track:389158eb1d98d69ae4ad185790f48a621c02433feb215a42e0c578488dde2e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
