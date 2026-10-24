# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SequentialProduct.Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f82b18e6ee12531455d42696b83b0874c8f439f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f82b18e6ee12531455d42696b83b0874c8f439f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.OfSequence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.PiProd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [functorObj_eq_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functorobj-eq-pos--9a511cf41bcb10ff4de8484b.md) | 40 | `result-track:9a511cf41bcb10ff4de8484b9bb4889b1bb37d0b06b6c720970394862b1e57c9` |
| 2 | `lemma` | [functorObj_eq_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functorobj-eq-neg--259cd179c2f9668e20dcd583.md) | 43 | `result-track:259cd179c2f9668e20dcd583cc2a940303de3f770fb3d874ce8f8741949e1b5f` |
| 3 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functorobj--7397fbcac353819f3c3517dc.md) | 50 | `declaration-track:7397fbcac353819f3c3517dc4dbfc1deac7d67e01806d47e8158d7aa15ffdd08` |
| 4 | `def` | [functorObjProj_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functorobjproj-pos--f3a96516c9cdef0b526ae62f.md) | 54 | `declaration-track:f3a96516c9cdef0b526ae62fe7002bf76eb7a854a15c15b50beff24d93b8851f` |
| 5 | `def` | [functorObjProj_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functorobjproj-neg--09d4f2b848244765e6a22472.md) | 59 | `declaration-track:09d4f2b848244765e6a2247291969ef4e9061ac3eb8863db8568818c5497ecac` |
| 6 | `def` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functormap--e98706142f1804deb02b3427.md) | 64 | `declaration-track:e98706142f1804deb02b34276e0278987ab75a57d9ce7ba54da15bbacff2ee7c` |
| 7 | `lemma` | [functorMap_commSq_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functormap-commsq-succ--dc99d0b454585795dd54841d.md) | 71 | `result-track:dc99d0b454585795dd54841d837b16cbe2b1759832c65f55e220e70d818c9892` |
| 8 | `lemma` | [functorMap_commSq_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functormap-commsq-aux--99ab5696ec9df8870498a10c.md) | 78 | `result-track:99ab5696ec9df8870498a10c990cd2a4a0ca5dcce583ab2356c4d605ac9fcaf7` |
| 9 | `lemma` | [functorMap_commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functormap-commsq--c660bdc8aae097bdc39845cb.md) | 95 | `result-track:c660bdc8aae097bdc39845cbebc1af381dad9c2c2f2a480ee8d3cc5f17bb576d` |
| 10 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/cone--2fdd78ea843f54e74ed26e5e.md) | 125 | `declaration-track:2fdd78ea843f54e74ed26e5e4bc625d82897f932bd6374e59047f30a9f0a5864` |
| 11 | `lemma` | [cone_π_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/cone-app--5acde4e4706fed6f64505312.md) | 142 | `result-track:5acde4e4706fed6f645053120c511c5d001d5cfbe0c2926d639555d66d9f6eef` |
| 12 | `lemma` | [cone_π_app_comp_Pi_π_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/cone-app-comp-pi-pos--7150ab23102abd37da552a0e.md) | 147 | `result-track:7150ab23102abd37da552a0edfb2a60a3118ea1549770196a67930616aea6f85` |
| 13 | `lemma` | [cone_π_app_comp_Pi_π_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/cone-app-comp-pi-neg--34289975710a4c86b8e61828.md) | 155 | `result-track:34289975710a4c86b8e618281ae3cba45d7f4604864291932227189a801e0dc3` |
| 14 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/islimit--c2cfa769a470c38c2e14ec48.md) | 168 | `declaration-track:c2cfa769a470c38c2e14ec48ecdafae8ec7986847423814d738bacdf1982d7b6` |
| 15 | `lemma` | [functorMap_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/declarations/functormap-epi--ed963f166cc65a8c413306ed.md) | 222 | `result-track:ed963f166cc65a8c413306edc706efe221b714a4710d8806b041c5d66ed8768b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
