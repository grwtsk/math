# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286a96acb491ab94ccbd046413c6ab687ea65e1b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286a96acb491ab94ccbd046413c6ab687ea65e1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctor--d421d8339e9678760244d2ca.md) | 42 | `declaration-track:d421d8339e9678760244d2ca05384c455c30145e3e92f1ee86d3ab436a424101` |
| 2 | `def` | [mapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapobj--ddeea6b0c54e0cf2c9a056d2.md) | 57 | `declaration-track:ddeea6b0c54e0cf2c9a056d2662b1c7e104833185a3cddc644824d1b2f475e54` |
| 3 | `def` | [ιMapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapobj--6ae3724600cf2bd9e7ac77fe.md) | 63 | `declaration-track:6ae3724600cf2bd9e7ac77fe5121420aa9d7a4d76d17a8f5185d6a1d2f2f52b7` |
| 4 | `def` | [mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapmap--f146d3aac4dcfdb3e5a8e96a.md) | 72 | `declaration-track:f146d3aac4dcfdb3e5a8e96a41a34a65687f91e3af5dd3168fdc81c51d2fe7e4` |
| 5 | `lemma` | [ι_mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapmap--2434a342490a3ef6d05f6873.md) | 81 | `result-track:2434a342490a3ef6d05f6873c185fc03fe31d511083712546f8105c184a4b81d` |
| 6 | `lemma` | [mapBifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapobj-ext--bcd2368001403aeb5f7b5cfd.md) | 92 | `result-track:bcd2368001403aeb5f7b5cfdaab072f3d8cf92376b8fdf20b10a1eb54806351f` |
| 7 | `def` | [mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapobjdesc--a9d60453b3eaf2203d1c20f8.md) | 104 | `declaration-track:a9d60453b3eaf2203d1c20f85ab0d4a378eef2348c230457116bd04d335533e5` |
| 8 | `lemma` | [ι_mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapobjdesc--9f0803a335a9e0b254c5736f.md) | 112 | `result-track:9f0803a335a9e0b254c5736fce5f8b0b87905e5ee8287204c8a6f483dbb6c3ee` |
| 9 | `def` | [mapBifunctorMapMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormapmapiso--7bdce528e7a4822b43e16c40.md) | 128 | `declaration-track:7bdce528e7a4822b43e16c4091bab94cda15fe923c53db73dd5d99a1cfba95ec` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/instance--26749c92f7bb9fd6b5ae0881.md) | 135 | `declaration-track:26749c92f7bb9fd6b5ae0881b2c64ece0fea0ef1e9fb5319290542064a8a1f48` |
| 11 | `def` | [mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantef813c44072818e17db7a5ddf4eee7a5d299a30469045f6d61582fc34dbe0504.lean/declarations/mapbifunctormap--53772b40f920abbeafddebc2.md) | 148 | `declaration-track:53772b40f920abbeafddebc271774f54a79b33236051171e53e26a9197bafa88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
