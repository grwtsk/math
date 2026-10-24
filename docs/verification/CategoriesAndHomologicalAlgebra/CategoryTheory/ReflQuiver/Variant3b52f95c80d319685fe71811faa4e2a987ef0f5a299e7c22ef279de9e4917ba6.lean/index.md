# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflQuiver.Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b582a9a77bf014bb6b41285c2a8ef9597bb7d13e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b582a9a77bf014bb6b41285c2a8ef9597bb7d13e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ReflQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/reflquiver--1747717caebddc18c525977a.md) | 27 | `declaration-track:1747717caebddc18c525977a0a0e77afd3a776f4dd3da10e1de4506928ed4f5b` |
| 2 | `theorem` | [ReflQuiver.homOfEq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/reflquiver-homofeq-id--4d88169068b735b4d5a48310.md) | 35 | `result-track:4d88169068b735b4d5a48310b052213cf0cbbb6636224e87f078ced530d34904` |
| 3 | `instance` | [catToReflQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/cattoreflquiver--c32f62e5e33a85f58a1ea5d7.md) | 38 | `declaration-track:c32f62e5e33a85f58a1ea5d7b13256746a8cdb867ffbec956bd5f0b418d65914` |
| 4 | `theorem` | [ReflQuiver.id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/reflquiver-id-eq-id--454344be9111f7822d01352b.md) | 41 | `result-track:454344be9111f7822d01352bb4a50370170c249280de3bfbf108de37e0140f48` |
| 5 | `structure` | [ReflPrefunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/reflprefunctor--c2dfe597f301105f7dbf658a.md) | 44 | `declaration-track:c2dfe597f301105f7dbf658ae0c33f6cec2bbf70cca78a27bfc39a4df09b427d` |
| 6 | `lemma` | [mk_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/mk-obj--507faf3fbd75fd2dc03e32c7.md) | 53 | `result-track:507faf3fbd75fd2dc03e32c704ae4ca4e9fa3ee8da6cdca044649f0f5f307dc5` |
| 7 | `lemma` | [mk_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/mk-map--700779e7f335f7acab5f9374.md) | 56 | `result-track:700779e7f335f7acab5f9374402bd4d56770533a8772cbacbd7ba01bcf22134b` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/ext--25473dd50457d4b2ad03986a.md) | 61 | `result-track:25473dd50457d4b2ad03986acee0c0be11715998c686b11d0509c6e31895d35b` |
| 9 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/ext--b471e17c46f5c0da16c6b606.md) | 74 | `result-track:b471e17c46f5c0da16c6b60675457c31c632f9f42f929bf59bc09758ed98dd65` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/id--d87afb3e4866f4194b5a6ca0.md) | 87 | `declaration-track:d87afb3e4866f4194b5a6ca0d263ae033b1210c8ed7321a4b9c00f4c1f1c6bb1` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/instance--41a5e9372e323fb75ce307b7.md) | 91 | `declaration-track:41a5e9372e323fb75ce307b76cc2c9c951e5c9c0065265a90584d3e5c1bd6b05` |
| 12 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/comp--f22949bc726fd79a56dcd959.md) | 96 | `declaration-track:f22949bc726fd79a56dcd9592075632491430cacc6c3ac48e8d1b42b63752658` |
| 13 | `theorem` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/comp-id--6bdd95b52d71e96797d52e60.md) | 102 | `result-track:6bdd95b52d71e96797d52e602d6366687f5633f2885d1ed2cb25c478db17a36f` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/id-comp--daf0af5ff77371f73793a744.md) | 106 | `result-track:daf0af5ff77371f73793a7445c095c674e7ff553642c583ae1e8b82d17be8d90` |
| 15 | `theorem` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/comp-assoc--93f1a59c5b918abc073069ab.md) | 110 | `result-track:93f1a59c5b918abc073069ab07a893d4a16fb1b9a4448d6e5901f55e563ffbfc` |
| 16 | `theorem` | [congr_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/congr-map--695c19edc919c0645f6ae3ca.md) | 123 | `result-track:695c19edc919c0645f6ae3ca9c2b7641672fe5592d74f96df69a5dbb99104da2` |
| 17 | `def` | [Functor.toReflPrefunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/functor-toreflprefunctor--b8c33479dad60eba12206840.md) | 129 | `declaration-track:b8c33479dad60eba12206840f727c929cb23300a619694b147bc02c3c2b46c4c` |
| 18 | `theorem` | [Functor.toReflPrefunctor.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/functor-toreflprefunctor-map-comp--cb8091d032f53ee92cc64cb0.md) | 131 | `result-track:cb8091d032f53ee92cc64cb00062c14f6856787b092ee9bf3876ecab98bed984` |
| 19 | `theorem` | [Functor.toReflPrefunctor_toPrefunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/functor-toreflprefunctor-toprefunctor--22c090b4b862a8b250ff91a6.md) | 136 | `result-track:22c090b4b862a8b250ff91a6f1248524ac9bf607b7e812e7ab6dde20495fd0de` |
| 20 | `instance` | [opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/opposite--4a295b0578e4d52c7275fddd.md) | 143 | `declaration-track:4a295b0578e4d52c7275fdddb5be5536508a9c7933344a588ad9c48fb99c429d` |
| 21 | `instance` | [discreteReflQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant3b52f95c80d319685fe71811faa4e2a987ef0f5a299e7c22ef279de9e4917ba6.lean/declarations/discretereflquiver--cdaf0183cebe370a2273405d.md) | 146 | `declaration-track:cdaf0183cebe370a2273405db4573604352ad045efad1f52c690d85a78c635eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
