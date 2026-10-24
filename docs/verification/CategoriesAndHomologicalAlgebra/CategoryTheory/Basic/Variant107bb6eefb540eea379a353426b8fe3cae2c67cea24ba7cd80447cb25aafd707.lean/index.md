# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a18f0f688384f4dcbfdf62a819ecc35308049764",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a18f0f688384f4dcbfdf62a819ecc35308049764`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discrete--8f535ca508fcb560b5239329.md) | 47 | `declaration-track:8f535ca508fcb560b523932906b1c5afddb19c43c6a87808d04adbe11b2cdfde` |
| 2 | `theorem` | [Discrete.mk_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discrete-mk-as--3026bcaa4ed6ea7894a24965.md) | 53 | `result-track:3026bcaa4ed6ea7894a249651a2141e811b7b560efc317a549a708d272ac0e4d` |
| 3 | `def` | [discreteEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discreteequiv--f78388171bc910329520b0af.md) | 58 | `declaration-track:f78388171bc910329520b0af32d7984bd372bebc1dbed263d628c0bc02c1c612` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--8d943f8552818e2f7e163730.md) | 64 | `declaration-track:8d943f8552818e2f7e16373050be1d5039ea5936aba2ef978ad79bc9880ded8d` |
| 5 | `instance` | [discreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discretecategory--a5aefd6b557db68d0add3551.md) | 72 | `declaration-track:a5aefd6b557db68d0add3551df83eebce766e67d097ad8e31b14a9db353b86b2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--767383d0f4bd6e99b8213533.md) | 86 | `declaration-track:767383d0f4bd6e99b8213533cfe29bf50c46553500a20b022cab8980d50c063a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--78c80110cb55f698ac7dfe24.md) | 89 | `declaration-track:78c80110cb55f698ac7dfe24414a7e471ec85fee503dea2819822d2963233322` |
| 8 | `instance` | [instSubsingletonDiscreteHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instsubsingletondiscretehom--b9252f46f3299394918a7612.md) | 92 | `declaration-track:b9252f46f3299394918a76127b83da9bad7a192538c5ac9d4c32a01b27adacb8` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/macro--65b44291c543a99d9c982471.md) | 96 | `declaration-track:65b44291c543a99d9c982471e44a613b70ccfb30a820cf5a487c860b4afb4f82` |
| 10 | `def` | [discreteCases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discretecases--e6cf05aff0cfacc24fa4d543.md) | 109 | `declaration-track:e6cf05aff0cfacc24fa4d543d7326e1fcc4cd5f075201c94ebcdd424823cdb41` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--1b6b89e6b2847cb84d511433.md) | 118 | `declaration-track:1b6b89e6b2847cb84d511433f31b258b1e52b75d001f213174e4a95f61b32f1f` |
| 12 | `theorem` | [eq_of_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/eq-of-hom--099631555a24325d29b264e4.md) | 122 | `result-track:099631555a24325d29b264e415ce38e9c4e4dabe049f8e9144524f0da4709f86` |
| 13 | `abbrev` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/eqtohom--844508c2187517da8d103d95.md) | 127 | `declaration-track:844508c2187517da8d103d9572566fd019e2a181240ae159726dffddacb76f90` |
| 14 | `abbrev` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/eqtoiso--b24f21b5e2b1b5833a8f15a4.md) | 132 | `declaration-track:b24f21b5e2b1b5833a8f15a4b6cba985f29c8fc6e5f391d67cee263a68ff9754` |
| 15 | `abbrev` | [eqToHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/eqtohom--7148aea00cb22435cf663ca0.md) | 136 | `declaration-track:7148aea00cb22435cf663ca037c1f6ebcd61510566593bafe3b0280b14d630c9` |
| 16 | `abbrev` | [eqToIso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/eqtoiso--a9f14ce76760bff34a88d994.md) | 140 | `declaration-track:a9f14ce76760bff34a88d994617e5d8e1ae5073c9529c2929466e71edd06acbb` |
| 17 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/id-def--8ba6ca9a6bd7111fbb932bd3.md) | 144 | `result-track:8ba6ca9a6bd7111fbb932bd3d9827a2335cd667a103b025afb3a56c097849d64` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--12a3f121961c829192d0734e.md) | 149 | `declaration-track:12a3f121961c829192d0734e1e588f3f0a579a9fee9e01365fa32d2d4b13693a` |
| 19 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functor--e4d1f4114e8aee086888db99.md) | 156 | `declaration-track:e4d1f4114e8aee086888db9931a49aba39b7e38a7ced48b9003df78ede92e507` |
| 20 | `theorem` | [functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functor-obj--84e472b05bce23f140593b5f.md) | 164 | `result-track:84e472b05bce23f140593b5f2a720cea460c97ba8357467e8e53e5142de142ff` |
| 21 | `theorem` | [functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functor-map--11ad00e3abf18eaacf30305d.md) | 168 | `result-track:11ad00e3abf18eaacf30305dac9255f4b5b1507a7559f04a3dfd9f1211d7bd2d` |
| 22 | `theorem` | [functor_obj_eq_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functor-obj-eq-as--54d4f1a065d1bfbb392d2416.md) | 172 | `result-track:54d4f1a065d1bfbb392d241648691b5cd8af8371f484c8f646d1517056f16a55` |
| 23 | `def` | [functorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functorcomp--64341e08cb69c4546b1c1f61.md) | 179 | `declaration-track:64341e08cb69c4546b1c1f6189b96209f66e5919000eb1c039645b3bc4caa4d4` |
| 24 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/nattrans--592fe7eae7752233196735d1.md) | 188 | `declaration-track:592fe7eae7752233196735d1407c582a3056f93c004ab7ccd36b64ef69cd21e0` |
| 25 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/natiso--629d2381f47bc126af5b44df.md) | 202 | `declaration-track:629d2381f47bc126af5b44dfe67e0a331e26e42c5cf79c798c2d5a551ba00095` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--3da40b14bcb8adaf6457c850.md) | 210 | `declaration-track:3da40b14bcb8adaf6457c850292e699f2f704ef98fccaeb270cf9d77fc5e4185` |
| 27 | `theorem` | [natIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/natiso-app--3f6d076deb3b99e1a4365786.md) | 216 | `result-track:3f6d076deb3b99e1a43657869cf60b9b13af2667a7b90f9d4f24251c0daad852` |
| 28 | `def` | [natIsoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/natisofunctor--bb9ae1540d4a8d9686f30857.md) | 222 | `declaration-track:bb9ae1540d4a8d9686f308579ca87dd4cccf77b1ed4ece5a92f02d7282ecb064` |
| 29 | `def` | [compNatIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/compnatisodiscrete--0596270600a3b344544fea4a.md) | 227 | `declaration-track:0596270600a3b344544fea4a628d121781ff871adcd39d7fd8237f613f860247` |
| 30 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/equivalence--238949edb41d3de20e9bc141.md) | 235 | `declaration-track:238949edb41d3de20e9bc141687317c4f192d5701605f7a3c88e9625f81d4b4c` |
| 31 | `def` | [equivOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/equivofequivalence--b00b02969b95ede5b2389988.md) | 245 | `declaration-track:b00b02969b95ede5b2389988723486c7a85fe37c94366c9ccb0d391d1c24ad94` |
| 32 | `def` | [opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/opposite--0ca065443c9f23eb80b25257.md) | 261 | `declaration-track:0ca065443c9f23eb80b25257ca32cb4b1849932f733e6f2e10f7217e65ca682c` |
| 33 | `theorem` | [functor_map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/functor-map-id--3ad02c678d3d9988221bb54c.md) | 271 | `result-track:3ad02c678d3d9988221bb54c92e91259e71b8da22b49d666057a1df34e4e836c` |
| 34 | `def` | [piEquivalenceFunctorDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/piequivalencefunctordiscrete--f84392c18020392299aebb40.md) | 281 | `declaration-track:f84392c18020392299aebb4083cbc44bf165297b72d657cceba7836dd9e64c03` |
| 35 | `class` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/isdiscrete--8ccded5f651b906cce416a22.md) | 299 | `declaration-track:8ccded5f651b906cce416a22f436c1fd1ce0cc6781b42aa2a4387bb6a5244a1f` |
| 36 | `instance` | [Discrete.isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/discrete-isdiscrete--d89a740223cb28e6e67cb8c5.md) | 305 | `declaration-track:d89a740223cb28e6e67cb8c5223d7f2c4420a021f839dcbefd0e127724f44816` |
| 37 | `lemma` | [obj_ext_of_isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/obj-ext-of-isdiscrete--80208cc9ffe5bc7bb5ab1da6.md) | 312 | `result-track:80208cc9ffe5bc7bb5ab1da6d6af60e2c26243b8fb72b9f98684229326a83522` |
| 38 | `instance` | [isIso_of_isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/isiso-of-isdiscrete--441f32da801b61c1063e65f9.md) | 314 | `declaration-track:441f32da801b61c1063e65f9921b984ebbd4da1ddd5bbe4a7fff909c50646277` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant107bb6eefb540eea379a353426b8fe3cae2c67cea24ba7cd80447cb25aafd707.lean/declarations/instance--71bc2c173409a33880dc6d12.md) | 317 | `declaration-track:71bc2c173409a33880dc6d123f019eeea2f66f4a6ee097b13da6c8e5a46194a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
