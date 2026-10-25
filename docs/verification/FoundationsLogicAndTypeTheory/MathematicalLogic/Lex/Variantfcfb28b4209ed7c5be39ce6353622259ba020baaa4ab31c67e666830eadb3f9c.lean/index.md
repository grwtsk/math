# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lex.Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9191e1883a6a9141d1e7c6338992eb264222fff",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9191e1883a6a9141d1e7c6338992eb264222fff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex--81012b61024b24b835fb7df0.md) | 49 | `declaration-track:81012b61024b24b835fb7df04fa61246a5d5c813a16f7d972d469c412eaf2ad9` |
| 2 | `theorem` | [lex_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-iff--e75e944b43fd975c4cd5441a.md) | 54 | `result-track:e75e944b43fd975c4cd5441ac236033fabd94739575e7fce31b73f9ad3004409` |
| 3 | `instance` | [Lex.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-decidable--a3077c45c9b0ee5a6381c562.md) | 67 | `declaration-track:a3077c45c9b0ee5a6381c5625278e2bdf2a595a28637f3da7037dba59b23c1e3` |
| 4 | `theorem` | [Lex.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono--d6ff5f5ea1682e063c355b40.md) | 72 | `result-track:d6ff5f5ea1682e063c355b4070ae2f03442488274f520cea1ee26d31806b7ea0` |
| 5 | `theorem` | [Lex.mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono-left--c16bb457e0f9b779c7eda4fa.md) | 79 | `result-track:c16bb457e0f9b779c7eda4fa7d9ce09793c028d5cf5627d033691e90e64a3992` |
| 6 | `theorem` | [Lex.mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono-right--66ec6721552c751ea70ead88.md) | 84 | `result-track:66ec6721552c751ea70ead88f4a007e2ba7cd61e7f519d0a1274353e41a46152` |
| 7 | `theorem` | [lex_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-swap--751e7c9999dcd0f422a7d6fc.md) | 89 | `result-track:751e7c9999dcd0f422a7d6fc90c8c0ccc61f8b707cbf8b1e60acfd2801d59701` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--9a8f216c25fac8bb93c9941c.md) | 95 | `declaration-track:9a8f216c25fac8bb93c9941c559c0ee0989e00a785f1d6b97c3dcc1ec838462e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--182272b31f89a5aad1865d9d.md) | 98 | `declaration-track:182272b31f89a5aad1865d9d70152b905febaecc42f68d7ff95f1d034ac2645f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--0979e48908cad68976904db6.md) | 105 | `declaration-track:0979e48908cad68976904db67f62fdf8fc4c1ba1f7ff5e4764d3bb1e41f63b57` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--45cc2b800a06eb7c76a92db3.md) | 113 | `declaration-track:45cc2b800a06eb7c76a92db3ab265c8974043daa2694cbc8b28fc2d4659e0d5c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--a0b48825cd84ba9b9b874d0e.md) | 122 | `declaration-track:a0b48825cd84ba9b9b874d0e74be32a94a590b071e8a0f0bba5ac094e8878803` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--1b32fbbd7ad8e73ad58bc166.md) | 130 | `declaration-track:1b32fbbd7ad8e73ad58bc16656cefd3394ab3403420fa4033561fa466df9dcb0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/instance--9a85149e2b0b63f8e790a5e2.md) | 140 | `declaration-track:9a85149e2b0b63f8e790a5e27d01dc7fcca10e9d1d2b34a198a1e4bc147d4054` |
| 15 | `theorem` | [lex_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-iff--4e7df12fbf14030275cc8cc4.md) | 160 | `result-track:4e7df12fbf14030275cc8cc467e19edaf82f2df057cafffc3b6f481bb0d7a18a` |
| 16 | `instance` | [Lex.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-decidable--297efb6639ce404b75e38151.md) | 174 | `declaration-track:297efb6639ce404b75e3815137c579c638e9b6061e8203d65db575a9036ca4a7` |
| 17 | `theorem` | [Lex.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono--ee2f92a6e3a21e345167943f.md) | 179 | `result-track:ee2f92a6e3a21e345167943f6ae6c1830e14765fe05a85ab3bff5cb836bf113e` |
| 18 | `theorem` | [Lex.mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono-left--0c1c18a6786c9ccbfcbc2066.md) | 187 | `result-track:0c1c18a6786c9ccbfcbc2066257081d49b40024cdee6d45f6c3014cbbf86b856` |
| 19 | `theorem` | [Lex.mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantfcfb28b4209ed7c5be39ce6353622259ba020baaa4ab31c67e666830eadb3f9c.lean/declarations/lex-mono-right--9946b3cb09eb80c882412e1e.md) | 192 | `result-track:9946b3cb09eb80c882412e1e251947f0ac783de1943232da48645cf9c2fbbd02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
