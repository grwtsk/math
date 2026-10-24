# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39c8281afdb7c752229044f8134ce20c505c59f4",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39c8281afdb7c752229044f8134ce20c505c59f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/categorystruct--edcd4897c360b15342e24593.md) | 93 | `declaration-track:edcd4897c360b15342e245938666f97ba782fde0807cdb3ed5ee3f6dca078c72` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/syntax--6edcecb53b5440f44b39b190.md) | 108 | `declaration-track:6edcecb53b5440f44b39b19033533d23d8ac27bc06fb3ae796297b5a26fea293` |
| 3 | `def` | [evalSorryIfSorry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/evalsorryifsorry--44a9a8d57bc0e94aa47b974a.md) | 111 | `declaration-track:44a9a8d57bc0e94aa47b974ace308340bd607276dbde081eac2957554d12cbf1` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/macro--1b2953a4da0ab8ab678a9ed8.md) | 137 | `declaration-track:1b2953a4da0ab8ab678a9ed849f1aadd7e03c2a31b19651e27c2d15a4c66a7eb` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/macro--e313004d5397de0dc3dc6d47.md) | 145 | `declaration-track:e313004d5397de0dc3dc6d478be10f57d1cd2f6ac70a3ba9b7747fb376744c1b` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/macro--96215486e3d6cdec03b42c7d.md) | 154 | `declaration-track:96215486e3d6cdec03b42c7ded62cb2f003244787271ac0d80ca25e237bf8308` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/macro--27e165baa1c5820c7af3f077.md) | 164 | `declaration-track:27e165baa1c5820c7af3f077376e8a985e3d5d7144ad56ffd20310098ef8338f` |
| 8 | `class` | [Category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/category--1b466b3d7d6bf1632d3e7591.md) | 175 | `declaration-track:1b466b3d7d6bf1632d3e7591ec5b4b988341024ae945020715b8f25a17abd775` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/example--11ed6674568367a5e2279b7b.md) | 187 | `declaration-track:11ed6674568367a5e2279b7b54363631f1cbeb47d70e225bb76d59e0792a29b8` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/example--359abc54bcf36152728ced41.md) | 188 | `declaration-track:359abc54bcf36152728ced4140a9ba1bbb15be3ec08f1096c0e56ea4bdb8a336` |
| 11 | `abbrev` | [LargeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/largecategory--aca081b3781892b2e1099151.md) | 194 | `declaration-track:aca081b3781892b2e1099151331c63264f85a33988102bf355ba0e4d3468bc59` |
| 12 | `abbrev` | [SmallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/smallcategory--7fa262f1fd90496c91de9d25.md) | 198 | `declaration-track:7fa262f1fd90496c91de9d254a35382d813a3a2753c704287b671260ccc02175` |
| 13 | `theorem` | [eq_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/eq-whisker--0e3240cd5acec100aa2554cf.md) | 207 | `result-track:0e3240cd5acec100aa2554cf4cc2e77dcd7b3682eb705874b41fb9ae74a0e680` |
| 14 | `theorem` | [whisker_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/whisker-eq--ff93b1b39bd769a9e1bbc02a.md) | 210 | `result-track:ff93b1b39bd769a9e1bbc02a622a00d8c316826dc4fb5f2b55ba9f6c4ddeef88` |
| 15 | `theorem` | [eq_of_comp_left_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/eq-of-comp-left-eq--f13d07937e0cc7148b9308f8.md) | 224 | `result-track:f13d07937e0cc7148b9308f8662e9d2c36c51e35eb86aacd7469d7964978bd30` |
| 16 | `theorem` | [eq_of_comp_right_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/eq-of-comp-right-eq--c33c3897495f440d6e53d155.md) | 228 | `result-track:c33c3897495f440d6e53d1550bdb1adb70d7b68bdc47d2349e51a0b47d764caf` |
| 17 | `theorem` | [eq_of_comp_left_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/eq-of-comp-left-eq--e02c9980a09d8dde68108459.md) | 232 | `result-track:e02c9980a09d8dde68108459163128155a7cbcc0d4223c43109dcafee8953751` |
| 18 | `theorem` | [eq_of_comp_right_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/eq-of-comp-right-eq--cb6a38b5a6ff892afee93dd1.md) | 236 | `result-track:cb6a38b5a6ff892afee93dd11b429812d21e47bbe1cfbdf88e4fc9c25bab3591` |
| 19 | `theorem` | [id_of_comp_left_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/id-of-comp-left-id--3bf4e94962b74df3afc77949.md) | 240 | `result-track:3bf4e94962b74df3afc77949350bd736a7e1faf816bec006b60ce5f54332e857` |
| 20 | `theorem` | [id_of_comp_right_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/id-of-comp-right-id--9dff7b1b002b60a7be6519ce.md) | 244 | `result-track:9dff7b1b002b60a7be6519ce96c5ca9e0637ee149c2e689d46ee760aece2e912` |
| 21 | `theorem` | [comp_ite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/comp-ite--e564e678599c7c2bc73b2777.md) | 248 | `result-track:e564e678599c7c2bc73b27772da7a795ff44f4f4824af3fed25db8352f23b7ad` |
| 22 | `theorem` | [ite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/ite-comp--917221bb4097b5c51d9d995d.md) | 251 | `result-track:917221bb4097b5c51d9d995dffb3f27a4a29c672d3ac2ec724139ecced399b35` |
| 23 | `theorem` | [comp_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/comp-dite--427e429c953f003953d11791.md) | 254 | `result-track:427e429c953f003953d117917ecc90bbe35d31d6aae8a33ac16cc79f9d3ca859` |
| 24 | `theorem` | [dite_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/dite-comp--593882a5dba3caf8f248c525.md) | 258 | `result-track:593882a5dba3caf8f248c5256315e86910010bd8425ab6256a797ed7605f45f9` |
| 25 | `class` | [Epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/epi--d5b8e53636248769980d08ce.md) | 265 | `declaration-track:d5b8e53636248769980d08ce27f0538e4356021a48da76687d1bafc69af99723` |
| 26 | `class` | [Mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/mono--d2221eec559fb8c80b4f8713.md) | 272 | `declaration-track:d2221eec559fb8c80b4f8713b478a23bb7ade56e156740ff3d1bc1c160f1fc23` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/instance--5d2934cdbf3d769482d4b9bf.md) | 276 | `declaration-track:5d2934cdbf3d769482d4b9bf2d458b1a06621bce7740004137c5f46fe259acd7` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/instance--ef9c930e5528e0ed8cb6754e.md) | 279 | `declaration-track:ef9c930e5528e0ed8cb6754ec311b7b42d91695a76bb8643927339397c27da62` |
| 29 | `theorem` | [cancel_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-epi--bbb8d0af97acf9261b99bddf.md) | 282 | `result-track:bbb8d0af97acf9261b99bddf35aa121aa3f7de34425475a66f96d8317ecc984c` |
| 30 | `theorem` | [cancel_epi_assoc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-epi-assoc-iff--cf2c633eccdf71cd2159e27f.md) | 285 | `result-track:cf2c633eccdf71cd2159e27faf1b5fdeff54fdfd4e626778d063301e42dc2889` |
| 31 | `theorem` | [cancel_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-mono--9f20a306cc17b724db5a2dac.md) | 289 | `result-track:9f20a306cc17b724db5a2dacab75ca1bdf51bc79395ea2b4ec782caed1c85055` |
| 32 | `theorem` | [cancel_mono_assoc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-mono-assoc-iff--cd9557b25a45fd86dee3b7a0.md) | 293 | `result-track:cd9557b25a45fd86dee3b7a0ba17d15342fffab10b4a1944a5ba2e407ebf5245` |
| 33 | `theorem` | [cancel_epi_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-epi-id--0d97adc285727b4125821989.md) | 297 | `result-track:0d97adc285727b41258219898aef1dc3158eb842120c5d69ba60cbe20659d526` |
| 34 | `theorem` | [cancel_mono_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/cancel-mono-id--9c47547bc38c4d82d41dac86.md) | 301 | `result-track:9c47547bc38c4d82d41dac8634e9ac1494d2871f02cb700a4b25c2e773c0da82` |
| 35 | `instance` | [epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/epi-comp--bb082d8f30f1edf44eef92cf.md) | 307 | `declaration-track:bb082d8f30f1edf44eef92cf42c78ff574da5e4b14feb0750efce8018196f331` |
| 36 | `theorem` | [epi_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/epi-comp--891ab6e6f089943c4db1d959.md) | 312 | `result-track:891ab6e6f089943c4db1d95959efb7ae11c21d155ce24004dddb39a94d89ffc0` |
| 37 | `instance` | [mono_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/mono-comp--71605ea89fa11384e5d4cee5.md) | 318 | `declaration-track:71605ea89fa11384e5d4cee5577ea5ca4a21b0c94765b4c8b6b045079040cc8f` |
| 38 | `theorem` | [mono_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/mono-comp--cd67202791887fab39a4cb04.md) | 324 | `result-track:cd67202791887fab39a4cb04705a45964069b5a5d6909b1aad0b885dd69a415c` |
| 39 | `theorem` | [mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/mono-of-mono--3ef6c71965bca80134599e02.md) | 328 | `result-track:3ef6c71965bca80134599e02cf18a7389b566d5f12475065c07ab2246c4d16d9` |
| 40 | `theorem` | [mono_of_mono_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/mono-of-mono-fac--c04fd593efb788fcf67e4b02.md) | 331 | `result-track:c04fd593efb788fcf67e4b02ff62f932c7bbc407ec2b6bb8f1c2c0cc20b0a918` |
| 41 | `theorem` | [epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/epi-of-epi--5a45d99287a215bbf727731a.md) | 335 | `result-track:5a45d99287a215bbf727731a4a4a7b9edfaddaf488df9489982bf648b0c14f51` |
| 42 | `theorem` | [epi_of_epi_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/epi-of-epi-fac--5763dff903218a820505a330.md) | 338 | `result-track:5763dff903218a820505a330b25e94c23661a6242c90fab61ebd3fec745aaa29` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/instance--43859ea880fa07dcc392b2ce.md) | 346 | `declaration-track:43859ea880fa07dcc392b2ce54ed3312d15687bb7a0c5afa389241e37652f140` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/instance--6d241a2402fcbbb41553a868.md) | 349 | `declaration-track:6d241a2402fcbbb41553a868863aa9307f7c01a4cd655e7c34553be5540bb1db` |
| 45 | `instance` | [uliftCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/uliftcategory--0383b9898b58d372de8f3fff.md) | 363 | `declaration-track:0383b9898b58d372de8f3fff6dab44a82fe45318fa6b056427ecbf4958a71e88` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/declarations/example--910554c6897ba032ae5b2d34.md) | 369 | `declaration-track:910554c6897ba032ae5b2d34ed7a96701e3199a3704002e70514c4f28778f396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
