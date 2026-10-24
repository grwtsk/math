# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcda4396b59c7d6c95ca3e45aafc95f0ee721792",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcda4396b59c7d6c95ca3e45aafc95f0ee721792`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean.json)

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
| 1 | `theorem` | [effectiveEpiFamilyStructOfEquivalence_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/effectiveepifamilystructofequivalence-aux--558ae189231858f57a47c358.md) | 39 | `result-track:558ae189231858f57a47c358be9dfe8ca78614a8c1d2d9a39c465651a2397182` |
| 2 | `def` | [effectiveEpiFamilyStructOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/effectiveepifamilystructofequivalence--98ad19a88b0c97aa0aa9536a.md) | 52 | `declaration-track:98ad19a88b0c97aa0aa9536a2418339010165ade336db3c1b36280ed6f2e96be` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--62ff47785065ee9563fe3fb0.md) | 78 | `declaration-track:62ff47785065ee9563fe3fb0a8ec18446f97fbe5bfabbb3ab8346585f5ad487f` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/example--57bf43f54967e03f2924c31b.md) | 82 | `declaration-track:57bf43f54967e03f2924c31bfca5794090ff09c9fb140f3716ed17c7ae14bee4` |
| 5 | `class` | [PreservesEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/preserveseffectiveepis--030cd3eab2abde8a5d9984bf.md) | 96 | `declaration-track:030cd3eab2abde8a5d9984bfd3926ceb6186ffad958e4b6a0f39c8294e7d4058` |
| 6 | `instance` | [map_effectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/map-effectiveepi--024ad1a3f2bc5365e17fcb79.md) | 103 | `declaration-track:024ad1a3f2bc5365e17fcb79dbf0e7a567a03fc866d4d7fc66d1ccb067e82175` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--30836904319e91965afab8ce.md) | 107 | `declaration-track:30836904319e91965afab8ce8227a26ecdb8dbd20ac129135831580509ceafee` |
| 8 | `def` | [regularEpiOfPreserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/regularepiofpreserves--b5bf91f595c5c523016079b0.md) | 119 | `declaration-track:b5bf91f595c5c523016079b0a8932248421d950f48cd231cc1632f7e53b36eb2` |
| 9 | `class` | [PreservesEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/preserveseffectiveepifamilies--7733b119245bdd356b845a69.md) | 137 | `declaration-track:7733b119245bdd356b845a6928809bc1a2b6f8037f5dd8673219810d29dfd3c5` |
| 10 | `instance` | [map_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/map-effectiveepifamily--fad6213cf9297e93ad0c6128.md) | 145 | `declaration-track:fad6213cf9297e93ad0c6128cdb62159d7afa2bac2f0ca8ca4e1f423778be7d9` |
| 11 | `class` | [PreservesFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/preservesfiniteeffectiveepifamilies--87e67265ba23e6d34662d15b.md) | 153 | `declaration-track:87e67265ba23e6d34662d15bfa56e431a36d933c6de530383d90bf7f8443899d` |
| 12 | `instance` | [map_finite_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/map-finite-effectiveepifamily--c8e1c3e4efb34dc9aa0c32ae.md) | 162 | `declaration-track:c8e1c3e4efb34dc9aa0c32ae4c41d472dc8726a626b64ac715bbb42daceec5c3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--b59375c028df9bcf630bfa6d.md) | 167 | `declaration-track:b59375c028df9bcf630bfa6d9c05f6b72610620d475cb3b3337c82770512e561` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--0471c16bf09e79fe1cbd1724.md) | 171 | `declaration-track:0471c16bf09e79fe1cbd172416d300f1e1c8371c55ca631150067f72a9e1bae4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--7024871b2dbe982415c13748.md) | 174 | `declaration-track:7024871b2dbe982415c1374862fb3041df05733e687d8f1b904cd953459dd322` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--5c3dfdc60656412cabf640d7.md) | 182 | `declaration-track:5c3dfdc60656412cabf640d79760716b4dedf293f6b5029e871d5c6e8ecfdd21` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--08c76f0b9e54551eff941429.md) | 187 | `declaration-track:08c76f0b9e54551eff94142959a5f0ff9a0b4b1b352e4577ed96bc04fcd62a96` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--fbc04e62c4e2658701486ba6.md) | 193 | `declaration-track:fbc04e62c4e2658701486ba6c9dd53c369e99feb07859d21f5083e7c2b8ff52f` |
| 19 | `class` | [ReflectsEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/reflectseffectiveepis--88cda4fc678fdcf76a274c0e.md) | 207 | `declaration-track:88cda4fc678fdcf76a274c0eb80ecb62e93e86d209096b15df9347b1968b322f` |
| 20 | `lemma` | [effectiveEpi_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/effectiveepi-of-map--89f8a239454d93ac72aa4a90.md) | 214 | `result-track:89f8a239454d93ac72aa4a90a8f3cd02544e86f35b24e5ecef70ed16ea7acbf5` |
| 21 | `class` | [ReflectsEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/reflectseffectiveepifamilies--b6ca6694c2903dbe2ae3ed23.md) | 221 | `declaration-track:b6ca6694c2903dbe2ae3ed237b5d9c10ad7483ca01eb94846dbb7ace6aa0df90` |
| 22 | `lemma` | [effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/effectiveepifamily-of-map--94a17e39b18ee95516328762.md) | 230 | `result-track:94a17e39b18ee955163287622589eaf787a5a52f43babbc0a23eba24a81589f1` |
| 23 | `class` | [ReflectsFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/reflectsfiniteeffectiveepifamilies--c79f90a39a4edbb0a903120e.md) | 239 | `declaration-track:c79f90a39a4edbb0a903120ee647d71bd2cf2fe7cdd95ac611ef6e23fa4dfad3` |
| 24 | `lemma` | [finite_effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/finite-effectiveepifamily-of-map--be60331c32a04fda4a488d4a.md) | 248 | `result-track:be60331c32a04fda4a488d4a1914450ec34a3a6f733d0b1338e25044c7d81ec3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--17916adbd7fc817b410ccf35.md) | 254 | `declaration-track:17916adbd7fc817b410ccf35f563ba78e000a6b2a19b4f79f4ffac6fad4121a2` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--a4658d038c326d181dec96a6.md) | 260 | `declaration-track:a4658d038c326d181dec96a6ec3443e2f43b7f9463c6d18bbeee7983f9c9fb06` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--ea2acdb62f33c694a9d028fb.md) | 267 | `declaration-track:ea2acdb62f33c694a9d028fb6e7b4d5a5c03d4c2a8cb3cab647c0341e2d2f41d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--577aef395d46f8d54f1afc56.md) | 280 | `declaration-track:577aef395d46f8d54f1afc5693da98f1f94c131ddb27614ba8afe7e7a8425bef` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--d0371ddbd203a03fb3ff4989.md) | 284 | `declaration-track:d0371ddbd203a03fb3ff49896338275deddf64c4d926da2bb4ad5e73d8e57526` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/declarations/instance--78cf004e51f10cd9e34614ea.md) | 290 | `declaration-track:78cf004e51f10cd9e34614eac43d00272663a1dfaac5631fc2c8919df6f5d8a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
