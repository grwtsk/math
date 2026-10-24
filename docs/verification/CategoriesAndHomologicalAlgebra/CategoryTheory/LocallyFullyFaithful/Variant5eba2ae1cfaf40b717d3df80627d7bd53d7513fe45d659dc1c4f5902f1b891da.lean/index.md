# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyFullyFaithful.Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5c9ce60e366337693ec29b8eabf83c31d138fb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5c9ce60e366337693ec29b8eabf83c31d138fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/functor-imagesieve--b47a70643ba679e2b65b5d38.md) | 51 | `declaration-track:b47a70643ba679e2b65b5d383b896e98db873db5d0e4aa3809d4bf9373b77c1d` |
| 2 | `lemma` | [Functor.imageSieve_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/functor-imagesieve-map--148b9062baf09ad0cad3c0f5.md) | 58 | `result-track:148b9062baf09ad0cad3c0f5304617c597eeadd0c683e08d0e271380d8119e1a` |
| 3 | `def` | [Sieve.equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/sieve-equalizer--5f1bb6894f72babb8b82dfe1.md) | 65 | `declaration-track:5f1bb6894f72babb8b82dfe114e8c1a77d57aac53d4fbdb14a2ecdf27ec01789` |
| 4 | `lemma` | [Sieve.equalizer_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/sieve-equalizer-self--1598e5a9b53256fda1c52b85.md) | 70 | `result-track:1598e5a9b53256fda1c52b855d07d6e9b4693c682bcade682079e07bc9873c87` |
| 5 | `lemma` | [Sieve.equalizer_eq_equalizerSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/sieve-equalizer-eq-equalizersieve--bb488452cff2f7f57d014b47.md) | 73 | `result-track:bb488452cff2f7f57d014b471a354ea4615c131d828bc1fe28e6d3cef8ef66a0` |
| 6 | `lemma` | [Functor.imageSieve_eq_imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/functor-imagesieve-eq-imagesieve--9ea7ede50cfd4f09702b8a3d.md) | 77 | `result-track:9ea7ede50cfd4f09702b8a3d235c0e13529869f3da4c76d8f1da5c61c04a98e3` |
| 7 | `class` | [IsLocallyFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/islocallyfull--d9fb43dd8efe06d489d27536.md) | 90 | `declaration-track:d9fb43dd8efe06d489d27536d736fcaae13f775172f60666c951ae56486c7fcd` |
| 8 | `class` | [IsLocallyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/islocallyfaithful--2dd3fa595d1167ca6d39dccc.md) | 99 | `declaration-track:2dd3fa595d1167ca6d39dccc79c275fdecaf3393496ffaa21652e49b31f629d7` |
| 9 | `lemma` | [functorPushforward_imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/functorpushforward-imagesieve-mem--4702a50f02ccaf58250d3540.md) | 103 | `result-track:4702a50f02ccaf58250d35402e16afb0d25ee854c1df5633da8c8e23624eda52` |
| 10 | `lemma` | [functorPushforward_equalizer_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/functorpushforward-equalizer-mem--ce3350ab1b69983ca80ea0df.md) | 107 | `result-track:ce3350ab1b69983ca80ea0df818d262adc63db4e9c87947e2550160bd3ce10cf` |
| 11 | `theorem` | [IsLocallyFull.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/islocallyfull-ext--3a4124cc4bdbd161837fcb3c.md) | 115 | `result-track:3a4124cc4bdbd161837fcb3c7fab0f346a4a3d9b83fa7bb0962b429497038f14` |
| 12 | `theorem` | [IsLocallyFaithful.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/islocallyfaithful-ext--0a4113275cb5464a72ec24fc.md) | 125 | `result-track:0a4113275cb5464a72ec24fcb046d244efdf2c75dc1ae25986e24c5f1df02ecf` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/instance--29cba1f4a6e3f4ace8fd17a8.md) | 135 | `declaration-track:29cba1f4a6e3f4ace8fd17a8ba2e0bc725d30611aa5b7262aa96c74089e1a7b5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant5eba2ae1cfaf40b717d3df80627d7bd53d7513fe45d659dc1c4f5902f1b891da.lean/declarations/instance--463b7a9881e17398e5def49d.md) | 140 | `declaration-track:463b7a9881e17398e5def49d8a867532384f93e865bc85415ebb31b4f70144c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
