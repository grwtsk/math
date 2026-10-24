# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Zero.Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4263ea3c87715d077ee107709044c2c2d0e3b693",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4263ea3c87715d077ee107709044c2c2d0e3b693`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveszeromorphisms--f7c1eca0bba66004895a95d7.md) | 52 | `declaration-track:f7c1eca0bba66004895a95d7292596734ef1586bf3314b78cc886bb6ab5019b0` |
| 2 | `theorem` | [map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/map-zero--ecdc1b84ad0b0801777591d7.md) | 57 | `result-track:ecdc1b84ad0b0801777591d7d37bf3cf9e23d989b4e12a71a750a3dd95bf4a6e` |
| 3 | `lemma` | [map_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/map-iszero--ad602695c187ef3175756094.md) | 61 | `result-track:ad602695c187ef317575609467fb2596f3e2bd759886ca6625a9d3e83582115e` |
| 4 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/zero-of-map-zero--5dd63f0aae9bec7072825e55.md) | 66 | `result-track:5dd63f0aae9bec7072825e55930ea47201ac60a04a6cc0abfe9063c57080169c` |
| 5 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/map-eq-zero-iff--e87bac57797612ff25c0bb8d.md) | 70 | `result-track:e87bac57797612ff25c0bb8d8f106b3148bf73e66c7d3eb33923b71a0e5d80a8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--610f1b3b8dae4ff6ed0b9b2a.md) | 76 | `declaration-track:610f1b3b8dae4ff6ed0b9b2a997dddd894014e5f12e2c6ee448edc674c26f2ea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--baf1083c8ee065b1b44775c6.md) | 89 | `declaration-track:baf1083c8ee065b1b44775c6e9a9657785457d7e8d1c65b684ac874b1a83a040` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--8ca354ed2f3548a722de2d5c.md) | 101 | `declaration-track:8ca354ed2f3548a722de2d5c823ab71e26ad3202cd9a039456de23daf4110b5f` |
| 9 | `instance` | [preservesZeroMorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveszeromorphisms-comp--60fc722c53f082aaca520f07.md) | 108 | `declaration-track:60fc722c53f082aaca520f0718796940a86936ec2a6eb3f18ae5bac8964bff64` |
| 10 | `lemma` | [preservesZeroMorphisms_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveszeromorphisms-of-iso--e92e5b6e4e7e7e478251fe37.md) | 112 | `result-track:e92e5b6e4e7e7e478251fe3713308784a518b2a4ef1dd550a2a730b800f4c159` |
| 11 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveszeromorphisms-evaluation-obj--41ace8d1d88c2b1e89435771.md) | 117 | `declaration-track:41ace8d1d88c2b1e8943577154e38456199e61fbf5037dd61f7730bc46f31c9b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--cf001c7f605d01d739605a80.md) | 120 | `declaration-track:cf001c7f605d01d739605a808953424416df8c67109afcf557f3e97e39691f08` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--7f7d210b3fd807c4554384dd.md) | 123 | `declaration-track:7f7d210b3fd807c4554384ddc46610998a3614584ee3469a04a63ea622312a8c` |
| 14 | `def` | [mapZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/mapzeroobject--4e81b595e9cdff8e283cd569.md) | 138 | `declaration-track:4e81b595e9cdff8e283cd5690c4776922b9594de287de20ee118e56e698464af` |
| 15 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveszeromorphisms-of-map-zero-object--eebab337b9579e6081977f78.md) | 146 | `result-track:eebab337b9579e6081977f782d7890e7527026bccdfa1672e7b7e32ceaf01e18` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--2344be305f852f7d9fb49a0a.md) | 153 | `declaration-track:2344be305f852f7d9fb49a0a0b4fe8e5e62e50d4f7a167807063fba1c8cd40c9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/instance--26879ff55d796baa3395c0bc.md) | 159 | `declaration-track:26879ff55d796baa3395c0bc03e483b539bd2148cf1dd3967ce6d831c791491a` |
| 18 | `lemma` | [preservesTerminalObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preservesterminalobject-of-preserveszeromorphisms--c3ef930cb57528f5abc27533.md) | 168 | `result-track:c3ef930cb57528f5abc2753333b2f5ffe42ae96543473207d00d8dcad3580d8f` |
| 19 | `lemma` | [preservesInitialObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preservesinitialobject-of-preserveszeromorphisms--b3b4747263620881909691c4.md) | 174 | `result-track:b3b4747263620881909691c4a450dc1918356466cee8b55e3385f18939d85474` |
| 20 | `lemma` | [preservesLimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveslimitsofshape-of-iszero--4e89818f15bd0b38f9e06ebe.md) | 190 | `result-track:4e89818f15bd0b38f9e06ebeb6fe877b179beba4b14562367dce037c7178a897` |
| 21 | `lemma` | [preservesColimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preservescolimitsofshape-of-iszero--0ae546970369e878da45a426.md) | 196 | `result-track:0ae546970369e878da45a4264f28f5389bad87ca322931dff79c21cd410d41a3` |
| 22 | `lemma` | [preservesLimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preserveslimitsofsize-of-iszero--6bf45174bf3d342ebbe87792.md) | 202 | `result-track:6bf45174bf3d342ebbe87792d598ec3a711205bf223ce0350a9abc7fe499343c` |
| 23 | `lemma` | [preservesColimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/declarations/preservescolimitsofsize-of-iszero--9daeb5f8c318d7de4e50a52f.md) | 206 | `result-track:9daeb5f8c318d7de4e50a52f46db57f72a52228c0054539d68f86b3e56881575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
