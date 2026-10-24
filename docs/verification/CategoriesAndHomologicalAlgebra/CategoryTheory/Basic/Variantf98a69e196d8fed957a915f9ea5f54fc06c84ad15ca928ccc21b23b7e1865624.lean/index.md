# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40f08cfe5c83edd38ecb66eadc5e0147847146c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40f08cfe5c83edd38ecb66eadc5e0147847146c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RestateAxiom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extCore'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/extcore--45cdd23372fe89e1f3ef3302.md) | 92 | `declaration-track:45cdd23372fe89e1f3ef3302e019b44604ad67b70122a6e29141ce728600175e` |
| 2 | `class` | [CategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/categorystruct--a583765dc1e9553bdc3fa920.md) | 104 | `declaration-track:a583765dc1e9553bdc3fa9201ba62a90892039d2f086e30876ff3f19d8dedd19` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/macro--854699acc96ff59c2584d892.md) | 125 | `declaration-track:854699acc96ff59c2584d892644d4fc733f2214ad2e0f5f2cabf9b3a4c36b4a1` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/macro--8a548a430719c8030c383470.md) | 133 | `declaration-track:8a548a430719c8030c3834702b406940bf47f34adfec13529eb6f0f9da9a7931` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/macro--b3cc715f7662427587d104c5.md) | 142 | `declaration-track:b3cc715f7662427587d104c5b5f01286ab41ff004840b2be79863cab0a5579bf` |
| 6 | `class` | [Category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/category--507a57c319c9cc619c75b0a3.md) | 163 | `declaration-track:507a57c319c9cc619c75b0a3247f6287f26ba1b46c785e06b398486a2695ed53` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/example--bd42b84759ee4102bfed1193.md) | 183 | `declaration-track:bd42b84759ee4102bfed11938f6cda194a06f0c6481090f9a05223ff287b0ab7` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/example--68ab558ec653221cd41dbe95.md) | 184 | `declaration-track:68ab558ec653221cd41dbe959a010b7c46151c76fe4799fe65ab49ea72e63c80` |
| 9 | `abbrev` | [LargeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/largecategory--a188cc045972e4b47c73f058.md) | 190 | `declaration-track:a188cc045972e4b47c73f0582c203b5f616f227faf581cf396043cfebab06f89` |
| 10 | `abbrev` | [SmallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/smallcategory--9e4f28f65aaefbe36aaf64bb.md) | 195 | `declaration-track:9e4f28f65aaefbe36aaf64bb489f5213e4fb1e5cb8f564e7614736efdfb27295` |
| 11 | `theorem` | [eq_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/eq-whisker--d7220ed2b1a737cc75c6d0a5.md) | 205 | `result-track:d7220ed2b1a737cc75c6d0a57e45285d6cfc2ac0541b1724bb6aa6ef65fe27b5` |
| 12 | `theorem` | [whisker_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/whisker-eq--d4e110a08fa740bbb830bd82.md) | 209 | `result-track:d4e110a08fa740bbb830bd82a87fa1afd0600c6e622a3169e1fb565351403fd0` |
| 13 | `theorem` | [eq_of_comp_left_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/eq-of-comp-left-eq--f90fde6487a5f9ba614b940a.md) | 224 | `result-track:f90fde6487a5f9ba614b940a25aa3f41f49f6f12c3049c2ed076c3bf7de683a6` |
| 14 | `theorem` | [eq_of_comp_right_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/eq-of-comp-right-eq--d10696854a9939ad6487b1b6.md) | 230 | `result-track:d10696854a9939ad6487b1b65960e82ecb8afc7600e59f75f0a8e867cd4e019d` |
| 15 | `theorem` | [eq_of_comp_left_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/eq-of-comp-left-eq--41c6eeb64670a4bbf4068329.md) | 236 | `result-track:41c6eeb64670a4bbf4068329ef19cd47f1693841501db8995e713de076a3ae37` |
| 16 | `theorem` | [eq_of_comp_right_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/eq-of-comp-right-eq--20734f7b850c1036c199497f.md) | 241 | `result-track:20734f7b850c1036c199497ff52fe7ca3134ee8253221b68c55db8e749b09cc5` |
| 17 | `theorem` | [id_of_comp_left_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/id-of-comp-left-id--73b90f7e6b2ce7478456f782.md) | 246 | `result-track:73b90f7e6b2ce7478456f782ec49d1ccf0cc9d79340b97d7555f3d9cee1f48cd` |
| 18 | `theorem` | [id_of_comp_right_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/id-of-comp-right-id--daae9ac64af985b78b162ba8.md) | 251 | `result-track:daae9ac64af985b78b162ba81c86462746647ae889788213d3db355afd63f0d4` |
| 19 | `theorem` | [comp_ite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/comp-ite--447e1c931387eb3530b0491e.md) | 256 | `result-track:447e1c931387eb3530b0491eb8ce4a7f2e915bdb2b11fa9551c30f9733c92b30` |
| 20 | `theorem` | [ite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/ite-comp--d853e5b3ff7df01efa5b41e9.md) | 260 | `result-track:d853e5b3ff7df01efa5b41e92e89c00a44a67192cc0b1c5102333e066e2f7bf9` |
| 21 | `theorem` | [comp_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/comp-dite--6149333a864f13793113aace.md) | 264 | `result-track:6149333a864f13793113aace2bde7ec04509047516e887c2df9755f644bf2806` |
| 22 | `theorem` | [dite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/dite-comp--6ccd247436f491d5ca409800.md) | 269 | `result-track:6ccd247436f491d5ca4098004f149088f657bcdd9b1cebdabd8709383d6e1ce0` |
| 23 | `class` | [Epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/epi--338de733d2a907a41611c59e.md) | 279 | `declaration-track:338de733d2a907a41611c59e73289a947ce7a457f767e912e3a8a4ad9b02dafd` |
| 24 | `class` | [Mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/mono--ac3bf90ce49fc5a7b887a375.md) | 289 | `declaration-track:ac3bf90ce49fc5a7b887a375529d8406d92d0ed20d4b0efbae188ebea4500538` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/instance--97d90bd56a351826947bd2f0.md) | 294 | `declaration-track:97d90bd56a351826947bd2f00fefbc58a8e60949c806d1eecf255e5acb7c8a3c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/instance--1d92839347d5ddf781e35d81.md) | 297 | `declaration-track:1d92839347d5ddf781e35d81334397e9b28794afb857b5aa56be17ee7671dd7c` |
| 27 | `theorem` | [cancel_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/cancel-epi--02d3b33215975f14156a5d4c.md) | 300 | `result-track:02d3b33215975f14156a5d4ce631926445de3c0ee3b89b0a4d3db09f934d82b0` |
| 28 | `theorem` | [cancel_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/cancel-mono--5d2be701b80a6c199539abf4.md) | 304 | `result-track:5d2be701b80a6c199539abf46e4bd615bc6abd2109260b369a91f6cab16f9ef3` |
| 29 | `theorem` | [cancel_epi_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/cancel-epi-id--b61b848d103ad06e80c9a341.md) | 309 | `result-track:b61b848d103ad06e80c9a341c1a65a1962a72a0da528ef55f82d2436e4ec5c61` |
| 30 | `theorem` | [cancel_mono_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/cancel-mono-id--24367e0ddf5297614267514f.md) | 314 | `result-track:24367e0ddf5297614267514fe53aea3ceeda6879d4615d1428c797e3406b14f1` |
| 31 | `theorem` | [epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/epi-comp--5cac57fc116166129ed295bc.md) | 319 | `result-track:5cac57fc116166129ed295bc16aaa1dbace62478da2ab6e550c74457f231ae62` |
| 32 | `theorem` | [mono_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/mono-comp--ffea74874586c6a5a8e8cac4.md) | 327 | `result-track:ffea74874586c6a5a8e8cac4130ea59c7259ed2e2f5aa3b64d4049b2c237755f` |
| 33 | `theorem` | [mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/mono-of-mono--295bbfd0d47eb8bcb22a07a5.md) | 335 | `result-track:295bbfd0d47eb8bcb22a07a53588e08194e6298bda34cfa7bb933ed6e0650240` |
| 34 | `theorem` | [mono_of_mono_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/mono-of-mono-fac--2524e4dfc1564ffc498dcfee.md) | 344 | `result-track:2524e4dfc1564ffc498dcfee97219a2fbd851f44256246880ab4950187a01c05` |
| 35 | `theorem` | [epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/epi-of-epi--3f3c6f3b6ade0d1076beb807.md) | 350 | `result-track:3f3c6f3b6ade0d1076beb8071c685a7dbad224fa7486473cc8cdf02abf6370f1` |
| 36 | `theorem` | [epi_of_epi_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/epi-of-epi-fac--48a06b9beee91222bf1f9cf2.md) | 359 | `result-track:48a06b9beee91222bf1f9cf2750f5b764c7267ef547d9644daf25da48ec6803c` |
| 37 | `instance` | [uliftCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/uliftcategory--3f6aa58d735000b19af95d70.md) | 374 | `declaration-track:3f6aa58d735000b19af95d7053dc5b3383f8f3f7c78f070d591d64322c635ee3` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/declarations/example--7a6679827211b0dd83e2b490.md) | 381 | `declaration-track:7a6679827211b0dd83e2b49098b02256c8226a2f358f4e304813353f8b15f325` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
