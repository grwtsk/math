# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d82beaf34c7da45415d947877f6bd4ceb967f206",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d82beaf34c7da45415d947877f6bd4ceb967f206`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discrete--6bf06bb6935c6d37ade3f528.md) | 55 | `declaration-track:6bf06bb6935c6d37ade3f528b0033b4907b1b2799045bc25351be4b1a8f88c18` |
| 2 | `theorem` | [Discrete.mk_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discrete-mk-as--61bd32ff3a7a10f6ebdbd826.md) | 61 | `result-track:61bd32ff3a7a10f6ebdbd826b78fc3cf7522c7a505d3f53f0a276b5cb8c27e15` |
| 3 | `def` | [discreteEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discreteequiv--3819e05d5aede5f1f9a05659.md) | 66 | `declaration-track:3819e05d5aede5f1f9a056598a1846e752bed89eb7cd38ee27dded5866b6fd4f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--048c14ac5e8dea5d2d66d623.md) | 72 | `declaration-track:048c14ac5e8dea5d2d66d6234544873ddd1139c6a659927ee99ce7fb4058f03b` |
| 5 | `instance` | [discreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discretecategory--3b3ce89d60b963d18fb37e1e.md) | 80 | `declaration-track:3b3ce89d60b963d18fb37e1e4f85aa1b64e45a02069e7829c83e46599af717e2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--cfcaee7a5b5a7e2afd3d3235.md) | 94 | `declaration-track:cfcaee7a5b5a7e2afd3d3235b4dcd8cffababc3630ccdb01914d5dc23f2443e3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--a3e6d27a11d557cfc64a591b.md) | 97 | `declaration-track:a3e6d27a11d557cfc64a591b29736aae828a009ee55ac15034d3d1c39b19e60e` |
| 8 | `instance` | [instSubsingletonDiscreteHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instsubsingletondiscretehom--0b06d8ce92ff22c5332c12d7.md) | 100 | `declaration-track:0b06d8ce92ff22c5332c12d77497c779cfae1d78c82d6635b26caab30181daaf` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/macro--7ebd46c65c425ff7cfb99169.md) | 104 | `declaration-track:7ebd46c65c425ff7cfb99169467d3adab8c5338e632ac12f4d465a3bb995791a` |
| 10 | `def` | [discreteCases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discretecases--145ed06c7d0f5a29996edfc8.md) | 117 | `declaration-track:145ed06c7d0f5a29996edfc8a7a2c9cae534ea41557e566283423092a8be44b8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--f6387e03d2845edf73197d1c.md) | 126 | `declaration-track:f6387e03d2845edf73197d1cf9d1bef2ae3cc0bd936cd0835b0526da6fe359ed` |
| 12 | `theorem` | [eq_of_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/eq-of-hom--6b97af690e1ca99dffb6ca31.md) | 130 | `result-track:6b97af690e1ca99dffb6ca31fa8ab82ee57ff8034d3d5770886a30e68fbf0694` |
| 13 | `abbrev` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/eqtohom--649606733ea63e07edc4de51.md) | 135 | `declaration-track:649606733ea63e07edc4de518eecaba8c4d727dfb385bb396a9ccbb4a58c569a` |
| 14 | `abbrev` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/eqtoiso--4f75b72e535e9a5826633d07.md) | 140 | `declaration-track:4f75b72e535e9a5826633d07d6c1f9f7350ee821c36d6cbc81d273d27895569a` |
| 15 | `abbrev` | [eqToHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/eqtohom--38d512f149591e050d9b7a27.md) | 144 | `declaration-track:38d512f149591e050d9b7a270c5b164f25adb813d8b23f27701c32e3d365194f` |
| 16 | `abbrev` | [eqToIso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/eqtoiso--71e7f0bfcce96a353867d456.md) | 148 | `declaration-track:71e7f0bfcce96a353867d456504fad6a3c95301ee910c4c02ea1942f8eff3443` |
| 17 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/id-def--dea7e72147fdee2237c6883c.md) | 152 | `result-track:dea7e72147fdee2237c6883ca24b54a0cba4c2bf4cd6835a6db52186d4a52b5f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--1a73600b3658d7224157b8f3.md) | 157 | `declaration-track:1a73600b3658d7224157b8f389325f465ea9b0ef1ae1408f16823e311bb8b71b` |
| 19 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functor--5c79edf8e7daee7028009c78.md) | 164 | `declaration-track:5c79edf8e7daee7028009c781430ad120d7f3dbf5371bf5ecad7a466c0ad968d` |
| 20 | `theorem` | [functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functor-obj--62a929a63b55bafc12cd9f72.md) | 172 | `result-track:62a929a63b55bafc12cd9f72b39e767c5b784fd202cdad01c318494601a43d16` |
| 21 | `theorem` | [functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functor-map--da92418a04a561c7bca29d49.md) | 176 | `result-track:da92418a04a561c7bca29d4901b1f17d7a1f2863bcac3b864e9e4602a6674718` |
| 22 | `theorem` | [functor_obj_eq_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functor-obj-eq-as--b00e8fcc1c9a405c8602ebc0.md) | 180 | `result-track:b00e8fcc1c9a405c8602ebc019dd572a21ad65cb64daefd3abe200d761df3ba5` |
| 23 | `def` | [functorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functorcomp--3c82bd2292e1b30828a5073b.md) | 187 | `declaration-track:3c82bd2292e1b30828a5073b653d8efa8a470beebf2dd14411800b1c54e9e396` |
| 24 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/nattrans--19e6c6db2b4024153f0d901c.md) | 196 | `declaration-track:19e6c6db2b4024153f0d901c3738d76ec83c9860592014c4271423d88bbd5073` |
| 25 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/natiso--77b21bf258c0bee197fe278a.md) | 210 | `declaration-track:77b21bf258c0bee197fe278a8b0777c330b64b5be794dcee3cca5e6016fcf857` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--fe7c96a132b690396a8bcfe5.md) | 218 | `declaration-track:fe7c96a132b690396a8bcfe5171fc10b00d03d62922a52b63659bcdd460149a2` |
| 27 | `theorem` | [natIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/natiso-app--875257b2a1075dbad070572b.md) | 224 | `result-track:875257b2a1075dbad070572ba3145dacd37aa77124451fb8264af363ca253742` |
| 28 | `def` | [natIsoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/natisofunctor--08e9e0927afa14c7e454bcbe.md) | 230 | `declaration-track:08e9e0927afa14c7e454bcbe69d8f97b540f2828dbaabb74815e40b1758bee81` |
| 29 | `def` | [compNatIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/compnatisodiscrete--f85ab95f8ebdf43d27382df2.md) | 235 | `declaration-track:f85ab95f8ebdf43d27382df2895b6b95493d5fd714c2af70c6b6680d8692765d` |
| 30 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/equivalence--6fdbf5f473a4991eee8b20d8.md) | 243 | `declaration-track:6fdbf5f473a4991eee8b20d85b17ae99c71ae230fd9e4ef8b1f72c7ceef933ed` |
| 31 | `def` | [equivOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/equivofequivalence--af5a662740ec5603a4ac3a35.md) | 253 | `declaration-track:af5a662740ec5603a4ac3a35f6f6ba764906c9edf20b1223a018745cf2bbd5ca` |
| 32 | `def` | [opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/opposite--28f997b83ad11b842c66fd81.md) | 269 | `declaration-track:28f997b83ad11b842c66fd816c0328f21ff0b6643bcdddf9519fe703987b9808` |
| 33 | `theorem` | [functor_map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/functor-map-id--5a3a1736387bb1db776dfced.md) | 279 | `result-track:5a3a1736387bb1db776dfced3f856267e1e81cd4db6d062c2aec1ba9d4f2a0af` |
| 34 | `def` | [piEquivalenceFunctorDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/piequivalencefunctordiscrete--d0ab4cf328415bca693f9c5b.md) | 289 | `declaration-track:d0ab4cf328415bca693f9c5b4be8a9b66b135696c1dc604b086a7b3a1fcbf9e9` |
| 35 | `class` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/isdiscrete--9373cdaab0d6edb2b6c35f91.md) | 307 | `declaration-track:9373cdaab0d6edb2b6c35f91c4ff52e7ce70a8df808f54eb1560ecd1547d3ff4` |
| 36 | `instance` | [Discrete.isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/discrete-isdiscrete--b5e1f3902b19d39a4da072dc.md) | 313 | `declaration-track:b5e1f3902b19d39a4da072dc9f6cf817adefd8d6854f1d3849e3f397575c3a6a` |
| 37 | `lemma` | [obj_ext_of_isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/obj-ext-of-isdiscrete--c03064a94b0322bdc1a5d3f8.md) | 320 | `result-track:c03064a94b0322bdc1a5d3f8c4abe1aecf48caf4e86d7303be3dfae8466268bc` |
| 38 | `instance` | [isIso_of_isDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/isiso-of-isdiscrete--e9e8139cd926cb6565302272.md) | 322 | `declaration-track:e9e8139cd926cb65653022722c85c4c7991e005559218e7b9dcf8391356968a4` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd1a8b17e7493b13df9bd9f4d3d0da8e5a8a028650da2edec7f7d86bc13a41538.lean/declarations/instance--ecd3fc3808f2adbbb6b75e6e.md) | 325 | `declaration-track:ecd3fc3808f2adbbb6b75e6e9a01222e36f363dd2cba58c005c7940e980cf7cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
