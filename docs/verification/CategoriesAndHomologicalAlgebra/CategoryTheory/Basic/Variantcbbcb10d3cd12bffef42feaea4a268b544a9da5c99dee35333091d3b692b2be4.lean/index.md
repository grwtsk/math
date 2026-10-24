# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7571fc9bf8e5b629698c7ef419cf64612c16520",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7571fc9bf8e5b629698c7ef419cf64612c16520`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Filtered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape--a4ea257d23bd74e76fe6892d.md) | 64 | `declaration-track:a4ea257d23bd74e76fe6892d941bfe70b031f9289eadf909032119408d96eccb` |
| 2 | `class` | [HasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape--471c2fad70a72fc999742ca4.md) | 73 | `declaration-track:471c2fad70a72fc999742ca43317ff89eead8fe0c846befa08b8bc72dffe4472` |
| 3 | `lemma` | [HasExactColimitsOfShape.domain_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-domain-of-functor--018898cdf3c8f11d1e093308.md) | 86 | `result-track:018898cdf3c8f11d1e0933087cdb727f99fc0703014d822d74d191706f18a322` |
| 4 | `lemma` | [HasExactLimitsOfShape.domain_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-domain-of-functor--835fc1626fe24186a7dd9b27.md) | 104 | `result-track:835fc1626fe24186a7dd9b27a78b8fc3312199352dc8dc6b1a58569743c3fcce` |
| 5 | `lemma` | [HasExactColimitsOfShape.of_domain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-of-domain-equivalence--622c9d0167c633b71ea1841a.md) | 129 | `result-track:622c9d0167c633b71ea1841aedf275100ac60384d114646f64d3621751ac3ef5` |
| 6 | `lemma` | [HasExactColimitsOfShape.of_codomain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-of-codomain-equivalence--195f70060396d9483400ec52.md) | 137 | `result-track:195f70060396d9483400ec5279af8bf9eea9cb82113c2706be3bc2b1cadb8ed0` |
| 7 | `lemma` | [HasExactLimitsOfShape.of_domain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-of-domain-equivalence--6e8006af2d8f613d2e95b13b.md) | 153 | `result-track:6e8006af2d8f613d2e95b13bc0ba6bb24ca586ae2347a64dc7ceef3f2c53c6d3` |
| 8 | `lemma` | [HasExactLimitsOfShape.of_codomain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-of-codomain-equivalence--e64c3cc579ce7589d94adbbb.md) | 161 | `result-track:e64c3cc579ce7589d94adbbbefe84c734e5e65318010d2a89734340bf674281c` |
| 9 | `lemma` | [hasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape--07d64b69dc6fde4fe6d02409.md) | 178 | `result-track:07d64b69dc6fde4fe6d024090d10cdb046d391cc51fe83925c29922464000ffe` |
| 10 | `lemma` | [hasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape--958406776e7b63caaaca92d8.md) | 195 | `result-track:958406776e7b63caaaca92d85326c095b8ee8a0c1c985fba264fada4257aa630` |
| 11 | `class` | [AB4OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4ofsize--f5ab01ab3b188fd622a241aa.md) | 217 | `declaration-track:f5ab01ab3b188fd622a241aa1978d581c69bc2b62f60e2a1bc9db1ed23a19bc9` |
| 12 | `abbrev` | [AB4](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4--fbdec1e9bb7204065a760687.md) | 227 | `declaration-track:fbdec1e9bb7204065a76068793d5c3908bd1e1ecac44d949c87833e837128936` |
| 13 | `lemma` | [AB4OfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4ofsize-shrink--a441c354b4e441006a977aac.md) | 229 | `result-track:a441c354b4e441006a977aacc6e03a3dc6186cfad720cc239f4c223cff49fe18` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/instance--be1c521c3d45b75548505b5d.md) | 236 | `declaration-track:be1c521c3d45b75548505b5de5999e0f7be1e5751fdc722557d9d781034da721` |
| 15 | `class` | [AB4StarOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4starofsize--c9dee1c61d3f871dae84979e.md) | 243 | `declaration-track:c9dee1c61d3f871dae84979ec464e5596f0d6efd0c5f0fa48804bfd253f0c1e2` |
| 16 | `abbrev` | [AB4Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4star--92560c3272be2e5664481a72.md) | 250 | `declaration-track:92560c3272be2e5664481a72f9c1a00fe385e0ee77a113fde17a374e03fcd7c0` |
| 17 | `lemma` | [AB4StarOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4starofsize-shrink--514834b99f173ae439df4e19.md) | 252 | `result-track:514834b99f173ae439df4e19c8225f4cfd36a7af8ce6a78d086f384ad2353c07` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/instance--6f94f73dd3fc79947f251483.md) | 259 | `declaration-track:6f94f73dd3fc79947f2514837623df559ef340f383ba1c81dd346b2b4c369437` |
| 19 | `class` | [CountableAB4](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4--f60c54500abf6c1b590055b4.md) | 267 | `declaration-track:f60c54500abf6c1b590055b4e9ad63390e202a52cc10fd7a00e59af15330dce0` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/instance--682d3edd6bc10d3c06042379.md) | 270 | `declaration-track:682d3edd6bc10d3c060423792b51c5b3cdfd7527ee0fb3ea9cc86cf38715867c` |
| 21 | `class` | [CountableAB4Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4star--7114f7bd4f4e2a8101aac7e3.md) | 277 | `declaration-track:7114f7bd4f4e2a8101aac7e3708532efc22f3a412c78469348a0ec7ba191dc34` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/instance--9b8b169643863a76b5187513.md) | 280 | `declaration-track:9b8b169643863a76b51875138a781624e4b51e44ac8ef3a08ecec6231369b0c3` |
| 23 | `class` | [AB5OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5ofsize--a6f51905026a31afc29e6e55.md) | 293 | `declaration-track:a6f51905026a31afc29e6e55ac67170946d236f1aee0101b6f5416353633474b` |
| 24 | `abbrev` | [AB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5--d4055f37f78fbb40dfbac35e.md) | 303 | `declaration-track:d4055f37f78fbb40dfbac35e9ee545f96d05262a2b43c4f0dd83d1a78fca7c5a` |
| 25 | `lemma` | [AB5OfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5ofsize-of-univle--d54fdf16ff827add2269a4c4.md) | 305 | `result-track:d54fdf16ff827add2269a4c462964b9a0f3f2cc01af732ce8550ab484e6368dc` |
| 26 | `lemma` | [AB5OfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5ofsize-shrink--b0cccd768c552d46e75118aa.md) | 317 | `result-track:b0cccd768c552d46e75118aa1bb918e701cabf61409bfdf4811a1ad56e4eb9f1` |
| 27 | `class` | [AB5StarOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5starofsize--dbefa9eeb796eee47d0165e1.md) | 328 | `declaration-track:dbefa9eeb796eee47d0165e198a9f1bac855fdd0c1bce858ccfaa738b4bcbe85` |
| 28 | `abbrev` | [AB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5star--19771490bb185f357cc72f1e.md) | 337 | `declaration-track:19771490bb185f357cc72f1e9a5882d417825655507d3827ee5d0ce406a35b6b` |
| 29 | `lemma` | [AB5StarOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5starofsize-of-univle--a19d8975f747a804f5e36705.md) | 339 | `result-track:a19d8975f747a804f5e36705fef76f98da1cc616512aa18079c8369b721ee97f` |
| 30 | `lemma` | [AB5StarOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab5starofsize-shrink--515b2d5cd59e35d856f8ee96.md) | 351 | `result-track:515b2d5cd59e35d856f8ee965c7c7a81ddbee933451db11427acf81a17ede991` |
| 31 | `lemma` | [hasExactColimitsOfShape_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-of-final--70b74154e92113e63676f1c3.md) | 358 | `result-track:70b74154e92113e63676f1c33eeb9816b504a80e8ba9649fb4ff4c7da46a283d` |
| 32 | `lemma` | [hasExactLimitsOfShape_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-of-initial--d064c6040020d9da6ce8d75e.md) | 367 | `result-track:d064c6040020d9da6ce8d75e56e1a6766456aa3f0e85454f2f66019ab603bce4` |
| 33 | `instance` | [preservesFiniteLimits_liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/preservesfinitelimits-lifttofinset--2b1b6959d91ff64b82bb786e.md) | 381 | `declaration-track:2b1b6959d91ff64b82bb786ef6ec9c0f8902727304e393728c60216cefa0270a` |
| 34 | `lemma` | [hasExactColimitsOfShape_discrete_of_hasExactColimitsOfShape_finset_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-discrete-of-hasexactcolimitsofshape-finset-discr--d0a39680cee3b9d82940056f.md) | 398 | `result-track:d0a39680cee3b9d82940056f4cb31e27d085421fe6c9d1d5c0f4324f3bbb33da` |
| 35 | `lemma` | [AB4.of_AB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4-of-ab5--1cf6b9144fc6c23439d003c2.md) | 408 | `result-track:1cf6b9144fc6c23439d003c20b4fc882f92eb817d461b33c36dfc6551495e978` |
| 36 | `lemma` | [CountableAB4.of_countableAB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4-of-countableab5--832828a975eeb976710047c7.md) | 416 | `result-track:832828a975eeb976710047c77b5c432d4e19961542732b6bea7d59e4e23395c8` |
| 37 | `instance` | [preservesFiniteColimits_liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/preservesfinitecolimits-lifttofinset--f439e383eea8328397b0e263.md) | 433 | `declaration-track:f439e383eea8328397b0e26322365a012d772a49554d71dd7a0c4356d6ab51ef` |
| 38 | `lemma` | [hasExactLimitsOfShape_discrete_of_hasExactLimitsOfShape_finset_discrete_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-discrete-of-hasexactlimitsofshape-finset-discrete--30da7672042ad41613a1355b.md) | 449 | `result-track:30da7672042ad41613a1355b403b43f70b131f4aff6730d872f2de07da725d89` |
| 39 | `lemma` | [AB4Star.of_AB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/ab4star-of-ab5star--d6a3ba02b8dc7aa66586e7f6.md) | 460 | `result-track:d6a3ba02b8dc7aa66586e7f61752e55997186512d44a3dbe5e69e482ef21a486` |
| 40 | `lemma` | [CountableAB4Star.of_countableAB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4star-of-countableab5star--0feec1bda92bd15058904c92.md) | 468 | `result-track:0feec1bda92bd15058904c920f6ad2363b730109c2dc1e2aaa32ad049913d3a8` |
| 41 | `lemma` | [CountableAB4.of_hasExactColimitsOfShape_nat_and_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4-of-hasexactcolimitsofshape-nat-and-finite--1b39dfe4b743c5b0c6a6566c.md) | 484 | `result-track:1b39dfe4b743c5b0c6a6566c69aaa8ddf221bab2d1d0a4a2d920a5b65900bf8e` |
| 42 | `lemma` | [CountableAB4Star.of_hasExactLimitsOfShape_nat_and_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4star-of-hasexactlimitsofshape-nat-and-finite--dcb7ef671096868e29ae256d.md) | 500 | `result-track:dcb7ef671096868e29ae256d42a0ef1038c200853dea2891f9218681da62b749` |
| 43 | `instance` | [hasExactColimitsOfShape_discrete_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-discrete-finite--324f996a306f3ef86376787c.md) | 520 | `declaration-track:324f996a306f3ef86376787c4f60671e4509fb82d919dfacbc4863e49e9248b6` |
| 44 | `instance` | [hasExactLimitsOfShape_discrete_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-discrete-finite--23e470d155ca1cbce2911d9a.md) | 524 | `declaration-track:23e470d155ca1cbce2911d9abd0cff0d4c8d97f9ed12c524e98fd315a77bcab1` |
| 45 | `lemma` | [CountableAB4.of_hasExactColimitsOfShape_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4-of-hasexactcolimitsofshape-nat--2c76915b6857d3bfc25e59e3.md) | 532 | `result-track:2c76915b6857d3bfc25e59e3c59a84f92aa3eae4626012801aeaf6686d3be95b` |
| 46 | `lemma` | [CountableAB4Star.of_hasExactLimitsOfShape_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/countableab4star-of-hasexactlimitsofshape-nat--33565a92ce54f31ce4b8237d.md) | 542 | `result-track:33565a92ce54f31ce4b8237db5462db035c3b856c2199f22fdb1ed5bdfe339ee` |
| 47 | `lemma` | [hasExactColimitsOfShape_of_preservesMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactcolimitsofshape-of-preservesmono--538c7b22fe97de4c0f98a22e.md) | 559 | `result-track:538c7b22fe97de4c0f98a22e9e73057ec87733a334edfd408e6a8e30fafe7636` |
| 48 | `lemma` | [hasExactLimitsOfShape_of_preservesEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/declarations/hasexactlimitsofshape-of-preservesepi--5a4182b48f5926d389e59800.md) | 570 | `result-track:5a4182b48f5926d389e5980003d7f35d0bb7825fd525fe7a9ca11b0b03bc4efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
