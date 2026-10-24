# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prelax.Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5bf157bf35644d705463c99cb0fb2d0da06755d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5bf157bf35644d705463c99cb0fb2d0da06755d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrelaxFunctorStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/prelaxfunctorstruct--6ff1b7a5fc3b4ce2ad459b36.md) | 57 | `declaration-track:6ff1b7a5fc3b4ce2ad459b3614480e35ddfca13b5c7b879c607c95a83f1e5699` |
| 2 | `def` | [mkOfHomPrefunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/mkofhomprefunctors--31607fa836b561bfc95bdcaa.md) | 73 | `declaration-track:31607fa836b561bfc95bdcaa0ff8fb5ffcebbac68f1b993d60ea4a8b27eb272c` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/id--8b73710d9b873fd12c5a3c2d.md) | 81 | `declaration-track:8b73710d9b873fd12c5a3c2d5bad96cb8c61e6cd6b27d6be06a49ff4d0840b67` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/instance--33c671bf5e6e5d83737aec87.md) | 85 | `declaration-track:33c671bf5e6e5d83737aec87d43636ddf94cbdc9a4afb98c4e39961e4b4f412e` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/comp--45e76f47e6d39313c2f762ce.md) | 90 | `declaration-track:45e76f47e6d39313c2f762ce12c57c5420870eb561bf11958b703449ec559a5a` |
| 6 | `structure` | [PrelaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/prelaxfunctor--6776c820357c14ee217ac0eb.md) | 101 | `declaration-track:6776c820357c14ee217ac0eb0b9b2dd758c2c9e84a854cd811c556762758732f` |
| 7 | `def` | [mkOfHomFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/mkofhomfunctors--d8d5f45f3fd633fd62957abf.md) | 126 | `declaration-track:d8d5f45f3fd633fd62957abf2c8a8c218a41a147816c43318d81d8b7a3577156` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/id--c55bb9b56e6514b2b1b435cb.md) | 134 | `declaration-track:c55bb9b56e6514b2b1b435cb2017ffa80c1ab313536e6272ecce2b88de2b3471` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/instance--d3f6d5f836ad1a322e29aaae.md) | 137 | `declaration-track:d3f6d5f836ad1a322e29aaae2729d8666c5d58d2fa3b84e8fc3728acbdffb6cd` |
| 10 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/comp--390e3599b2bba4c826fa07fd.md) | 144 | `declaration-track:390e3599b2bba4c826fa07fdb95b8b24ff39e4647d2f73250246120713b28db6` |
| 11 | `def` | [mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/mapfunctor--1dc008b1d5f1f00a568e99a1.md) | 149 | `declaration-track:1dc008b1d5f1f00a568e99a1469b2a71f9fc84937e335ddc19c5181c307bfb25` |
| 12 | `lemma` | [mkOfHomFunctors_mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/mkofhomfunctors-mapfunctor--314ce7f2a18d41e5ac200552.md) | 154 | `result-track:314ce7f2a18d41e5ac200552601ae5de126f2e3fbd225d2a768bbefdd1ea4f38` |
| 13 | `abbrev` | [map₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-iso--a05dcd06d66e5c03e532010b.md) | 164 | `declaration-track:a05dcd06d66e5c03e532010b31c3dcddf9b420234977c404efb1551ed937abf6` |
| 14 | `instance` | [map₂_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-isiso--57f8edbc1d63d31ba38aaa2b.md) | 167 | `declaration-track:57f8edbc1d63d31ba38aaa2b3cb37b2e2083455ed209fa4a1ec9f248b368f830` |
| 15 | `lemma` | [map₂_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-inv--d9b730019bc622cfc46f3447.md) | 171 | `result-track:d9b730019bc622cfc46f34471c1f795fcba3d4a916f27a760507eeb5b4056dad` |
| 16 | `lemma` | [map₂_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-hom-inv--53df661d1715a425e99cd963.md) | 176 | `result-track:53df661d1715a425e99cd9630fce121e61c69a407c6c85e7ba3dff06f8aff4bf` |
| 17 | `lemma` | [map₂_hom_inv_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-hom-inv-isiso--038a4d779e9a8f7d7ee9b5c9.md) | 181 | `result-track:038a4d779e9a8f7d7ee9b5c9b56f39e0b3f74368dfaa3bd9e984ffb85116c0a4` |
| 18 | `lemma` | [map₂_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-inv-hom--b8af18a35be8314b9a3d49d5.md) | 186 | `result-track:b8af18a35be8314b9a3d49d55d29fba6fe2f64cd88ac5d42d89726d4effc0f74` |
| 19 | `lemma` | [map₂_inv_hom_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/declarations/map-inv-hom-isiso--542b2d9310473dc2bc6c1955.md) | 191 | `result-track:542b2d9310473dc2bc6c195527efea80fc89df14019be9d20becd2e71ea7b725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
