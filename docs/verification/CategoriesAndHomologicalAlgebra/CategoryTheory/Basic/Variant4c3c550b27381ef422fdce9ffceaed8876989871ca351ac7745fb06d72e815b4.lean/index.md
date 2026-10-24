# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e08686a6de84d60d9a31e617f6aab1fe6e82380",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e08686a6de84d60d9a31e617f6aab1fe6e82380`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.CheckCompositions` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/functor--5a599e7b7ac3d9a04faeb5d8.md) | 36 | `declaration-track:5a599e7b7ac3d9a04faeb5d8b9f5010926bf6e9a6a1e7e0e0d4a32e7cb785cd9` |
| 2 | `lemma` | [Functor.map_comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/functor-map-comp-assoc--d3245bdf410b606be2d92657.md) | 58 | `result-track:d3245bdf410b606be2d9265713dc8cc510ede2a003a0f80314fdd63090cfb316` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/id--7b532ae7c4f92f995eb1c73e.md) | 73 | `declaration-track:7b532ae7c4f92f995eb1c73e72d1a7f4adadd5d13c2a038e7115c23f8250dacf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/instance--9b93489a548a1f24923c4145.md) | 80 | `declaration-track:9b93489a548a1f24923c4145d99261e9615dd69395fe12b6688137c66041dbc8` |
| 5 | `theorem` | [id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/id-obj--cc726309e18e9c958d7445e6.md) | 86 | `result-track:cc726309e18e9c958d7445e6c2018c0d7bebac5830cf7919e2eadeafb552b06a` |
| 6 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/id-map--e727d193bd8304704fcff87e.md) | 89 | `result-track:e727d193bd8304704fcff87e25edfcb14e33d586e9aad6357dc5ba925ba72873` |
| 7 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/comp--0ccca6ca4ed3afffe8bf09c2.md) | 101 | `declaration-track:0ccca6ca4ed3afffe8bf09c224e19c145d7f64d99be28f29fad18f10599d46e4` |
| 8 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/comp-map--6eb60af1fa3a74c79055acaf.md) | 110 | `result-track:6eb60af1fa3a74c79055acaf64fdc6ba0b21da65434f1bb378a197f113443dae` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/comp-id--000d646ac3b6fe985f7e5554.md) | 116 | `result-track:000d646ac3b6fe985f7e555444433a67ff69379dd2f0689631a5b5430a9cbbb2` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/id-comp--e469fc8f95bf9e384ee3f702.md) | 118 | `result-track:e469fc8f95bf9e384ee3f70208c296f583b54c4a1606bfed50bcbca7b38fa068` |
| 11 | `theorem` | [map_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/map-dite--28d0551fc828b2a98be3145e.md) | 121 | `result-track:28d0551fc828b2a98be3145ed02e615a5ff03b68975cbb5471d3a6b1a6f97246` |
| 12 | `theorem` | [toPrefunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4c3c550b27381ef422fdce9ffceaed8876989871ca351ac7745fb06d72e815b4.lean/declarations/toprefunctor-comp--5b38c097daf5547f7ddb385d.md) | 127 | `result-track:5b38c097daf5547f7ddb385d3ec4754a2806888b40738e4c75d79ba795205efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
