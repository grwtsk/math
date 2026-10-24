# Verification target: GRWTSK.Algebra.GroupTheory.FreeRing.Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821f2ea61140a2a2f314d82da5cb13244eb47e57",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821f2ea61140a2a2f314d82da5cb13244eb47e57`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeRing](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/freering--0f9a5389c97190172fda025f.md) | 57 | `declaration-track:0f9a5389c97190172fda025fad339c0b71b9219aab9eafbfb33e8f62cc6df37c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/instance--4e0cba87674e7ce9aff12def.md) | 60 | `declaration-track:4e0cba87674e7ce9aff12def893e61f6fc538f778ab4f6e5a167570c91d6d977` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/instance--ab2411a5dd2ac7bed1de3ecc.md) | 63 | `declaration-track:ab2411a5dd2ac7bed1de3eccca21e7507f80d4dafb29192a26ab4d8385e4c2bd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/instance--1c72aa4ced1851a991916ba5.md) | 67 | `declaration-track:1c72aa4ced1851a991916ba58745e7bece0b25cfcf9ddf3aadd4006b55f0f11e` |
| 5 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/of--fd0d43ec472c951cd46ed1aa.md) | 75 | `declaration-track:fd0d43ec472c951cd46ed1aa46f0e458692354db52d3c209a848182c7cee83a5` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/of-injective--092c5b9aae7d8f04d3078ac5.md) | 78 | `result-track:092c5b9aae7d8f04d3078ac52bc6439c348c6dd940a13a5f01119e4e7de2ceb2` |
| 7 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/of-ne-zero--5738cbf13b8be9420ac7fa5d.md) | 82 | `result-track:5738cbf13b8be9420ac7fa5daff8d0dc6524a30a07bd06b8682edf2fe444981c` |
| 8 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/zero-ne-of--5c9687d3d17b8eb0e3528b08.md) | 85 | `result-track:5c9687d3d17b8eb0e3528b08f448a0f86762e0a431a7e6fe8641f897029ade30` |
| 9 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/of-ne-one--648c29949aac5aa6d3f60f06.md) | 88 | `result-track:648c29949aac5aa6d3f60f06c11d17cf1fe4ff0c6b5f05034280c9c98cc69d30` |
| 10 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/one-ne-of--eaee95ceb7989090297cf8cc.md) | 91 | `result-track:eaee95ceb7989090297cf8ccdc84f83434d01ce6eb064c58282f1f8a84c00176` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/induction-on--9c101571e987c7675067240a.md) | 94 | `result-track:9c101571e987c7675067240ae4dbddb72cfb0685410028dc66886adf5f99dd6e` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/lift--40b1a47d81d20fd262c162ce.md) | 112 | `declaration-track:40b1a47d81d20fd262c162ce4be6f74e9e225c91001e391eb2a04332e878fb1f` |
| 13 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/lift-of--6d0e42f99d106eeecee2b432.md) | 116 | `result-track:6d0e42f99d106eeecee2b4321f0c2cb09778a1dc1068ded0203af3f3af44dc4f` |
| 14 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/lift-comp-of--888129c52ed3a94bda6d5ffb.md) | 120 | `result-track:888129c52ed3a94bda6d5ffb8d4af1b69cfb35c1710aa83a1ed1e203099f4d45` |
| 15 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/hom-ext--3b7eb89c2863ae1e4699ffc0.md) | 124 | `result-track:3b7eb89c2863ae1e4699ffc083b4bbf8e8d88ca3462e2b4c3f63cfccd4a1a611` |
| 16 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/map--5dda5361aaae289304fb817c.md) | 132 | `declaration-track:5dda5361aaae289304fb817c172a96d2b889af69a30d2a1052cb350691f6967a` |
| 17 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantdc4d626c612430a639bda03753470128e04eb10088e07ff7049a1afb363ba27a.lean/declarations/map-of--004fdbf963b9f09efa484dc6.md) | 136 | `result-track:004fdbf963b9f09efa484dc691d25c009e896d41ad238b2a3a7006dc846a40c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
