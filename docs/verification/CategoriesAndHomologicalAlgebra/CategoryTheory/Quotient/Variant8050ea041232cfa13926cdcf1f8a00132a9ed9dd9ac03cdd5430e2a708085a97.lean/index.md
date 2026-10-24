# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33832d71af95c5df518100b0236b155ae362151b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33832d71af95c5df518100b0236b155ae362151b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/homrel--4c9727c9aecf1530911885ac.md) | 24 | `declaration-track:4c9727c9aecf1530911885aceaf3e7b04101bd90c46f6e981941e6170d367a03` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/instance--ee0b363db6ea8e48867c226a.md) | 29 | `declaration-track:ee0b363db6ea8e48867c226a92955f964a97b65cbc8694d4f49656857c11b6f4` |
| 3 | `class` | [Congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/congruence--baf9bc1052ad1598538518a9.md) | 38 | `declaration-track:baf9bc1052ad1598538518a99a9ded03d4122b975566d6fd96164eeed88d76d5` |
| 4 | `structure` | [Quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/quotient--705eed51b072489e19341cec.md) | 51 | `declaration-track:705eed51b072489e19341cec57175d6da1c9b44619a006eba4b2dc220dbc41b5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/instance--ea483e97a9f006904dc393ad.md) | 56 | `declaration-track:ea483e97a9f006904dc393ad584508b33da8b9c0d8efece7f870a178e92076da` |
| 6 | `inductive` | [CompClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/compclosure--52527bfd2be401ede3755f71.md) | 62 | `declaration-track:52527bfd2be401ede3755f7118f9fb96a1b212eac423e2c709fc011d89e101a4` |
| 7 | `theorem` | [CompClosure.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/compclosure-of--d9d06e8fd71327e98280dc4e.md) | 67 | `result-track:d9d06e8fd71327e98280dc4eed3490520660278f83c52614925274ed1f41861c` |
| 8 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/comp-left--2cc00b89ba6a8a7232b9184f.md) | 71 | `result-track:2cc00b89ba6a8a7232b9184ff52fd0cacb902b55d9147ecf62021b2937019729` |
| 9 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/comp-right--1ae8b936b5a37418d4ec5fa6.md) | 76 | `result-track:1ae8b936b5a37418d4ec5fa698b58e05576d232d0d7f9ba6c9955ee6c7814145` |
| 10 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/hom--05de8a705ded02477b61045a.md) | 82 | `declaration-track:05de8a705ded02477b61045aa0c2984170cc4e377df1e2be69af9d294e2a3788` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/instance--1533edd94553d6aae8df1383.md) | 86 | `declaration-track:1533edd94553d6aae8df13832bc1792899527406d3212772aefd86decc26741e` |
| 12 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/comp--78f19e3102ade749712114cf.md) | 90 | `declaration-track:78f19e3102ade749712114cf4c19ac09ddc0a50175035b67aaf4537cfe4ebc59` |
| 13 | `theorem` | [comp_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/comp-mk--b475199cd6df9310ee327659.md) | 99 | `result-track:b475199cd6df9310ee3276599201970c22625d3c633602b17964ce47e027c4ef` |
| 14 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/category--aad2ea686813e295a02af3a1.md) | 105 | `declaration-track:aad2ea686813e295a02af3a1e5f09514209e005f6a15f0cc813c82aa0b7ef82e` |
| 15 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/functor--4bb86a7f413075c2b7aedbb0.md) | 116 | `declaration-track:4bb86a7f413075c2b7aedbb0cea29a3d51ec6134d9f001943a6a8e2a3609781d` |
| 16 | `instance` | [fullFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/fullfunctor--78430e2d48fff7690b0a3e47.md) | 121 | `declaration-track:78430e2d48fff7690b0a3e479e6fdc8652d15ce53e4695a5d670d84f0391c0fc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/instance--44f86183ccc6a5f1d275a3f2.md) | 123 | `declaration-track:44f86183ccc6a5f1d275a3f20a4d67673c877002e28d5880fa9b5574aa4ce421` |
| 18 | `theorem` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/induction--c59cb661f54fc2cb9e80abe9.md) | 129 | `result-track:c59cb661f54fc2cb9e80abe9d8d98a4687e8416b8b29b92fbcbc96c5ffc456ea` |
| 19 | `theorem` | [sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/sound--1457b68147f47503c782e2df.md) | 136 | `result-track:1457b68147f47503c782e2df8479dadd7805e6c6d9876db80c535ed8f76f2385` |
| 20 | `theorem` | [functor_map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/functor-map-eq-iff--a0c082b0946be9b95597331d.md) | 141 | `result-track:a0c082b0946be9b95597331d6280fd6fc05186a88ed1ce5f8e03343423d08b99` |
| 21 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift--2a7ad5d72eb176af0a7e5924.md) | 165 | `declaration-track:2a7ad5d72eb176af0a7e592424b8871b4fb77c0d451078dbe160ee73a6672179` |
| 22 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-spec--050eff66780946867f1258c4.md) | 178 | `result-track:050eff66780946867f1258c48ea6cdda3336559cc9c40011158d13e9496417fc` |
| 23 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-unique--d73aef835b7236a3bb55716f.md) | 186 | `result-track:d73aef835b7236a3bb55716f96c5857c9633010d94b11ec7ab944540b626ae63` |
| 24 | `def` | [lift.isLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-islift--f48cadf2b20d36a8ca4badd2.md) | 200 | `declaration-track:f48cadf2b20d36a8ca4badd29c70a373ca12cfb96b9811b81d4969fc671411ea` |
| 25 | `theorem` | [lift.isLift_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-islift-hom--a32d6062219f3dc4f0e67fc1.md) | 205 | `result-track:a32d6062219f3dc4f0e67fc1f182f0d49721a76c13406e18dfb0f2f8fbd4539d` |
| 26 | `theorem` | [lift.isLift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-islift-inv--359c65fe94f9501953e6f458.md) | 210 | `result-track:359c65fe94f9501953e6f45829f596de85dd3150a8427c98b14ec1b2efdfed23` |
| 27 | `theorem` | [lift_map_functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97.lean/declarations/lift-map-functor-map--4d1efff8c2a9e84686f03b0a.md) | 214 | `result-track:4d1efff8c2a9e84686f03b0aa82be07ee8fb44f325353a76ea9087599dbb6e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
