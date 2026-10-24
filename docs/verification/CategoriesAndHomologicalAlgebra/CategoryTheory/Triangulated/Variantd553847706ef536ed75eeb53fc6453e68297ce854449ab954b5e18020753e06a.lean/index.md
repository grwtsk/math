# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f40cf5898548923d2bf679e68ee34c833174d12",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f40cf5898548923d2bf679e68ee34c833174d12`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithTriangulation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/iscompatiblewithtriangulation--fa0144fd6406280c7e6679fb.md) | 42 | `declaration-track:fa0144fd6406280c7e6679fbfe654a0bf0aeb7ffe87351b863368f17e880ded1` |
| 2 | `def` | [essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/essimagedisttriang--854751180a66e66f56a80a06.md) | 59 | `declaration-track:854751180a66e66f56a80a06d1b19f99cabe4f15bc573369e4aa59d1a3e5714b` |
| 3 | `lemma` | [essImageDistTriang_mem_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/essimagedisttriang-mem-of-iso--aff41b77722c68d15ec36939.md) | 62 | `result-track:aff41b77722c68d15ec36939fc3ff153ebcfb1bd42850d067cb45135f2a2f972` |
| 4 | `lemma` | [contractible_mem_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/contractible-mem-essimagedisttriang--160d80a9c149f7a07f5ac157.md) | 68 | `result-track:160d80a9c149f7a07f5ac157b748357a5171bd1276cd431ffd256bee5516c86c` |
| 5 | `lemma` | [rotate_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/rotate-essimagedisttriang--f614bdb06bc790dc10cdd560.md) | 75 | `result-track:f614bdb06bc790dc10cdd5602581ac3c54d45c275db7734e91b9b483b0b47b1e` |
| 6 | `lemma` | [complete_distinguished_essImageDistTriang_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/complete-distinguished-essimagedisttriang-morphism--f45e4fad866716803b2d61af.md) | 87 | `result-track:f45e4fad866716803b2d61af6814499f79c0097aa1517662a843390140ee8763` |
| 7 | `lemma` | [distinguished_cocone_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/distinguished-cocone-triangle--a732289595fa43f1525c332c.md) | 134 | `result-track:a732289595fa43f1525c332c0aae66bbf2173283102be48ba1d7cea1fd4c28ad` |
| 8 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/complete-distinguished-triangle-morphism--697da01fe3cba165f008deed.md) | 154 | `result-track:697da01fe3cba165f008deed5ab45d42eef6d8c83b3521ef18ec2570857b4db8` |
| 9 | `def` | [pretriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/pretriangulated--a266fb31dba977d97f9f449e.md) | 197 | `declaration-track:a266fb31dba977d97f9f449ec54760828e615f1e66c57d1931a53cb6ff328192` |
| 10 | `instance` | [isTriangulated_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/istriangulated-functor--aa930f3a68416323b538b34f.md) | 206 | `declaration-track:aa930f3a68416323b538b34f6e23b724e79f27a2a0a24e10b303e67275489578` |
| 11 | `lemma` | [isTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/istriangulated--afe09bfb1f46786c4ced50be.md) | 216 | `result-track:afe09bfb1f46786c4ced50be33f79283ad0073ad0941d7bd86d2fcfa0d257142` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--4f86e4d4a1dbeb36a18cae10.md) | 223 | `declaration-track:4f86e4d4a1dbeb36a18cae1009044092d6368aad8edc79083bf183a82c197cc3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--09a2730cab5398a799d3c9a4.md) | 227 | `declaration-track:09a2730cab5398a799d3c9a43177455d86086c896251401a496274dfa1f4dac8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--370844531ba02031d9f2ee73.md) | 229 | `declaration-track:370844531ba02031d9f2ee730178d66f85ec84ea64372e6455431798817cc7fd` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--506cce0fa6928e2d0d6e9458.md) | 235 | `declaration-track:506cce0fa6928e2d0d6e9458f4e51d3aab033f2f7b81d2522354d003c63f5570` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--6cd986592aff99221054fd23.md) | 239 | `declaration-track:6cd986592aff99221054fd2373b2af2c6cb47a4f9e2aa8ee46429459de4b64c9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/instance--8cfd8e95c775c537747deb7f.md) | 241 | `declaration-track:8cfd8e95c775c537747deb7fefed77fc0e05859e0531d85093ea248a8fa80a74` |
| 18 | `lemma` | [distTriang_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd553847706ef536ed75eeb53fc6453e68297ce854449ab954b5e18020753e06a.lean/declarations/disttriang-iff--863f7e0fac4692426bc5dd83.md) | 254 | `result-track:863f7e0fac4692426bc5dd83a40f82e804dbb18ef1c374c28f779f5967a1a591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
