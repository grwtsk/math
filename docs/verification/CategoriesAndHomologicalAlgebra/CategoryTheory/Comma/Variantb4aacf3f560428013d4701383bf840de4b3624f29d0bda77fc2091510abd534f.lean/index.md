# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "489d3e03f727738562ad8dfa4794f6d713330a10",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `489d3e03f727738562ad8dfa4794f6d713330a10`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/comma--2d0e274dcf3791af0db609b0.md) | 60 | `declaration-track:2d0e274dcf3791af0db609b0cd2040a4847b34edfbc18cc161b161ef3ec640f8` |
| 2 | `instance` | [Comma.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/comma-inhabited--d0a229fcfff5993247dbc8c6.md) | 67 | `declaration-track:d0a229fcfff5993247dbc8c657e96d63325e9d0761caeb68b33e19c7e5823e25` |
| 3 | `structure` | [CommaMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/commamorphism--ab911ef1e4e92fd97c8261de.md) | 80 | `declaration-track:ab911ef1e4e92fd97c8261de6bed3dd699f0eab59c833f45dd6d66a904dbb553` |
| 4 | `instance` | [CommaMorphism.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/commamorphism-inhabited--0bf17c5610b6268558d9349f.md) | 87 | `declaration-track:0bf17c5610b6268558d9349ff78f385cb831e53db24f48e6be35b9343ff5a987` |
| 5 | `instance` | [commaCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/commacategory--728b184d2bf471f77ebd376a.md) | 94 | `declaration-track:728b184d2bf471f77ebd376a268f16a81c11f79cb817b451b28202af1f920d2d` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/hom-ext--7f93b28e51391fa57bce97ad.md) | 113 | `result-track:7f93b28e51391fa57bce97ad0c846a304dbea43195e3ac8ef8622c7bbabac87a` |
| 7 | `theorem` | [id_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/id-left--e913178dee20ec478af0d534.md) | 117 | `result-track:e913178dee20ec478af0d534fdd255e6176c276c62ae624696b2b76242fe66ca` |
| 8 | `theorem` | [id_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/id-right--22030a7ace4161e325aa384b.md) | 122 | `result-track:22030a7ace4161e325aa384b3a75bf1a259585a11763bc885492004204b544bd` |
| 9 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/comp-left--aa1b9621fff612482fab0f4f.md) | 127 | `result-track:aa1b9621fff612482fab0f4fd91ff2d570e36f54f2d223dffa3dbe3239d11966` |
| 10 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/comp-right--a5b6ac86d5eb5988ba9af485.md) | 132 | `result-track:a5b6ac86d5eb5988ba9af4858542d90846ed7f3b93de5f236a912448b03ef8b5` |
| 11 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/fst--73e21b2e386d0770636303cb.md) | 142 | `declaration-track:73e21b2e386d0770636303cb5f61202a2a66bab416d181ea630e587071dc4e4d` |
| 12 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/snd--69b0d772b8301626308435b7.md) | 149 | `declaration-track:69b0d772b8301626308435b78761ede90d6c94df49e8a59ae6427169b813e10b` |
| 13 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/nattrans--13f891775198f46416d602ee.md) | 159 | `declaration-track:13f891775198f46416d602ee86d01c1a9ba7f9ab2f6aa281d73544efcb7cef65` |
| 14 | `theorem` | [eqToHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/eqtohom-left--f194bd31e6a4285973daeabd.md) | 163 | `result-track:f194bd31e6a4285973daeabde4f2a2b518cdcf6a9538a12964c6d50b1a79a9d8` |
| 15 | `theorem` | [eqToHom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/eqtohom-right--5f9345d4b9d3e22148054ebc.md) | 170 | `result-track:5f9345d4b9d3e22148054ebc0222c3f7ccb02c4cab7cc46005a063917d893c97` |
| 16 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/isomk--cd4aadefb387eadffe3bb4a4.md) | 185 | `declaration-track:cd4aadefb387eadffe3bb4a463c76746b0cfc04806d1079ebeb156ff8567208b` |
| 17 | `def` | [mapLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/mapleft--18d204346e87709524584715.md) | 202 | `declaration-track:18d204346e87709524584715bdc200d0b199c842acd7837f0b425bb5e3c70964` |
| 18 | `def` | [mapLeftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/mapleftid--628d7da9e411985a0eebb5e4.md) | 215 | `declaration-track:628d7da9e411985a0eebb5e4b5e9a92c3236fe19890902cd52be33217509ef1a` |
| 19 | `def` | [mapLeftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/mapleftcomp--5f688a844ae3a9baa517e033.md) | 230 | `declaration-track:5f688a844ae3a9baa517e033846a3473f40748d11e22f3d88958bd7eea98b2f5` |
| 20 | `def` | [mapLeftEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/maplefteq--4a318d3095a64b1e84290ee8.md) | 245 | `declaration-track:4a318d3095a64b1e84290ee8fbbf28e8d00ca75506050413f8fdde0617dd3c48` |
| 21 | `def` | [mapLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/mapleftiso--82b51c28375c7f4599ef4a45.md) | 251 | `declaration-track:82b51c28375c7f4599ef4a45ee6233b8db646921be55515583199eaf4ef50844` |
| 22 | `def` | [mapRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/mapright--15ff6634538a8b091726177e.md) | 258 | `declaration-track:15ff6634538a8b091726177e78c1e03b08bde0dd0781b56501c5e0817f8848f2` |
| 23 | `def` | [mapRightId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/maprightid--33a6cfa151296722f811e363.md) | 271 | `declaration-track:33a6cfa151296722f811e3635e306df0ef13e5d55b5f3f9e75e643525b4667b3` |
| 24 | `def` | [mapRightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/maprightcomp--06f7045dee0ecdea556e31bf.md) | 286 | `declaration-track:06f7045dee0ecdea556e31bf8a47bd7b85bab446c7143eaaaef391903489a5a3` |
| 25 | `def` | [mapRightEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/maprighteq--c2d3ace430c2091e569a4148.md) | 301 | `declaration-track:c2d3ace430c2091e569a41488cbbba922ddf803b85fed9f0482cea862e51a08c` |
| 26 | `def` | [mapRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/maprightiso--2575fb0acd715f2a1d0a4443.md) | 307 | `declaration-track:2575fb0acd715f2a1d0a444341f265279df429df659d2c567ee148c804f54781` |
| 27 | `def` | [preLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/preleft--7e9f716ba1e90b1c36bdbca8.md) | 320 | `declaration-track:7e9f716ba1e90b1c36bdbca8dd062ea408a2d248d499729c826fd354f7188110` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--b9f9a3b7080ebf20abf61064.md) | 331 | `declaration-track:b9f9a3b7080ebf20abf610648ea5ed5242e456c5597c0357d90620a1b979ab89` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--d3c1216660076d4fd9caec0b.md) | 335 | `declaration-track:d3c1216660076d4fd9caec0b3c28705261eea278ffaf8c17092cb5109549821c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--bb478a64ded1b873636872ee.md) | 338 | `declaration-track:bb478a64ded1b873636872ee01f3862c6e66de35c6c3af2f00de066cd6e1dee8` |
| 31 | `def` | [isEquivalencePreLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/isequivalencepreleft--9ad06df7f8bee3422242067f.md) | 344 | `declaration-track:9ad06df7f8bee3422242067f5a0da4b1816fba1874feac601b9b61fec34428b4` |
| 32 | `def` | [preRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/preright--e9ede265e01a14c337176678.md) | 351 | `declaration-track:e9ede265e01a14c337176678c8483ea8b59e4511a421cfd078693ee8a968f8b8` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--6d969309fad163bac0641a6b.md) | 361 | `declaration-track:6d969309fad163bac0641a6b515f288d2c951fec923d311c43700e48f89617a1` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--c99448b624a973f8f62fef40.md) | 365 | `declaration-track:c99448b624a973f8f62fef40657fc51940b2336393546c8892b67516d6fbb128` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/instance--d8031114896021a868801f39.md) | 368 | `declaration-track:d8031114896021a868801f39518aed7153f9ea1d3f15bc247aa554d3dabf9ff3` |
| 36 | `def` | [isEquivalencePreRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/isequivalencepreright--9001d28ce455ae463b21b7e0.md) | 374 | `declaration-track:9001d28ce455ae463b21b7e05414fe53c6f5f9459e2fc58f6565ba6306d95c9f` |
| 37 | `def` | [post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/declarations/post--1e2b00f88cbfe6a3e2b7fc6f.md) | 381 | `declaration-track:1e2b00f88cbfe6a3e2b7fc6f2a0983f7408304261775bbd7e3ae811ab475f8d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
