# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Induced.Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09661d1b06f2199ee8309d021f36756fabc7ba9e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09661d1b06f2199ee8309d021f36756fabc7ba9e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean.json)

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
| 1 | `class` | [HasInducedTStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/hasinducedtstructure--3e728aec1d286afead680fbf.md) | 49 | `declaration-track:3e728aec1d286afead680fbfaa63c6d2687cfc26da4420abcc5925df3dc11275` |
| 2 | `def` | [tStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/tstructure--6485d305f87bdacaef9781d0.md) | 59 | `declaration-track:6485d305f87bdacaef9781d046ac09d213d5dcf60febaae215589edc98289e29` |
| 3 | `lemma` | [tStructure_isLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/tstructure-isle-iff--fde8c2efbde1cceb1d5b1812.md) | 84 | `result-track:fde8c2efbde1cceb1d5b1812abeed88b277af1371753b8832ffa88f72a22dfef` |
| 4 | `lemma` | [tStructure_isGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/tstructure-isge-iff--6060f534e34e4209f368f805.md) | 88 | `result-track:6060f534e34e4209f368f80549f4503cae75e84bbef5b08ca9ee36c1d3266f05` |
| 5 | `lemma` | [HasInducedTStructure.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/hasinducedtstructure-mk--88c9d55786856d12416cd397.md) | 93 | `result-track:88c9d55786856d12416cd397d3026af1ace20870ff2e2fdcacdc4754fbe52e2b` |
| 6 | `lemma` | [mem_of_hasInductedTStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/mem-of-hasinductedtstructure--ac91c048220f44a15aa18f79.md) | 102 | `result-track:ac91c048220f44a15aa18f79d58ebff06633cc150d253b8385a1a5de008bf7b3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/instance--08e1304384e88216a08bfb7e.md) | 117 | `declaration-track:08e1304384e88216a08bfb7ec2eb54999c29f815729c1a49c4fdcf42440e6b17` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/instance--e051a3b1bc166d4ff0f8019b.md) | 139 | `declaration-track:e051a3b1bc166d4ff0f8019b04f42cfafc0f305b62eb33aee6db2b3af1f76325` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/instance--4ff47bfac3534b9a902094ff.md) | 142 | `declaration-track:4ff47bfac3534b9a902094ffd6abfb1f83de4c82488b4c2b4e65fd191d96500e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/instance--5c94c6d5d65219b7c5add469.md) | 145 | `declaration-track:5c94c6d5d65219b7c5add469bc45f5ace9f52622e56d81d0a669a5cc5aea4a52` |
| 11 | `abbrev` | [onPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/onplus--8dc00d9306c5782107f632cf.md) | 150 | `declaration-track:8dc00d9306c5782107f632cfab3326a960d593f973f8265a34b8cd7e86c53b86` |
| 12 | `abbrev` | [onMinus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/onminus--7cea152f91744d83d8d5ff43.md) | 153 | `declaration-track:7cea152f91744d83d8d5ff43d838fa7cae90c927d4960550ac3fc3df88a7b77c` |
| 13 | `abbrev` | [onBounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/declarations/onbounded--c6963b95fdb5d90723ec83ef.md) | 156 | `declaration-track:c6963b95fdb5d90723ec83ef80841244841a3b4251f3ed9e30de8f328d26e185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
