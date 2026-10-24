# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7c070425f287a777a6e3bf529c0cb396d4a3bc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7c070425f287a777a6e3bf529c0cb396d4a3bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [imageToKernel_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/imagetokernel-op--d37aee009fe051cf38b6cc1c.md) | 47 | `result-track:d37aee009fe051cf38b6cc1c73f9d9a2903ae071f2ce423c55ba9057513dfdb4` |
| 2 | `theorem` | [imageToKernel_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/imagetokernel-unop--d98c63bf8cbeada7f1dd2271.md) | 60 | `result-track:d98c63bf8cbeada7f1dd2271fa03ae60ece7f113b0f0fa58bb0f9949841b62b8` |
| 3 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyop--0b6b0e5165052c2afb5f3ba3.md) | 75 | `declaration-track:0b6b0e5165052c2afb5f3ba34ee9d3d1a42062410b65c2f164ee8f906ca2eb76` |
| 4 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyunop--8e906f581dc7cd5b1bf4ebc0.md) | 85 | `declaration-track:8e906f581dc7cd5b1bf4ebc0d0883bd959c54802e7558dd0b48972fc16c0c0ad` |
| 5 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/op--30de7e789cb816bd947d0a87.md) | 105 | `declaration-track:30de7e789cb816bd947d0a878a61190068d03d506a85c85b66dae33ee4f295a3` |
| 6 | `def` | [opSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opsymm--eb664b7a8b02543ccd9090e8.md) | 114 | `declaration-track:eb664b7a8b02543ccd9090e806078ee14dcf0f8c54d57757dd9832e916d24e3c` |
| 7 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unop--4d999561918b93d0f100696f.md) | 123 | `declaration-track:4d999561918b93d0f100696f53700d79a72b9949cac3caec5e1f1d8bf7954eb5` |
| 8 | `def` | [unopSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopsymm--83310cca581343ee1e48706e.md) | 132 | `declaration-track:83310cca581343ee1e48706e3a0df40c3d04a56dcd9b14fb7e0ca7ab739e5ee6` |
| 9 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opfunctor--0e9ccaa6d0b20d6e307d9777.md) | 143 | `declaration-track:0e9ccaa6d0b20d6e307d9777e9b1e4d304d239708ec605e832af29d2d723f81f` |
| 10 | `def` | [opInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opinverse--521cba89e28072380c4e1ecd.md) | 152 | `declaration-track:521cba89e28072380c4e1ecdda27c541d36ddb126cfbd1ef0a66f3bf52df7e41` |
| 11 | `def` | [opUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opunitiso--b035aefe5c9c57653ce65389.md) | 160 | `declaration-track:b035aefe5c9c57653ce653892cdb3a3928ca1b3b50a61c2d7000cf73463d0633` |
| 12 | `def` | [opCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opcounitiso--18a7f091641ae73620c2d675.md) | 177 | `declaration-track:18a7f091641ae73620c2d675ee946cc04b488cffedc686da0ad5e3738877902c` |
| 13 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opequivalence--98f495113efb9e48db936c9e.md) | 185 | `declaration-track:98f495113efb9e48db936c9edad8740ca65eff067635c38d0791e43dc229c8f8` |
| 14 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopfunctor--de401ecc23bbc911ef471122.md) | 199 | `declaration-track:de401ecc23bbc911ef471122ac064e317591e6dd0a052a6f9a18b87f350e83b7` |
| 15 | `def` | [unopInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopinverse--6c89da288917555caf00bb40.md) | 208 | `declaration-track:6c89da288917555caf00bb40c7d6ae53937d643f9a24bb70d9972ab6f0ad41dc` |
| 16 | `def` | [unopUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopunitiso--fbaf82fa3b2d46ee91a7c195.md) | 216 | `declaration-track:fbaf82fa3b2d46ee91a7c195e447782a53f00cee79f127fa25a3a4fd3cd62189` |
| 17 | `def` | [unopCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopcounitiso--cb3a0207f4c3ac59a39d73ad.md) | 233 | `declaration-track:cb3a0207f4c3ac59a39d73ad4f13be262e3929a364ee91ac7744bb8682d5dc25` |
| 18 | `def` | [unopEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopequivalence--db91158e9f24f12a44cd3266.md) | 241 | `declaration-track:db91158e9f24f12a44cd3266e8794c4c849664a4f190e978c15ef3cfb639e2e5` |
| 19 | `instance` | [opFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/opfunctor-additive--dbe9ab58fb0c3ba6adf69521.md) | 255 | `declaration-track:dbe9ab58fb0c3ba6adf695211765c073164cc5d8b834b712bceac06a060a91de` |
| 20 | `instance` | [unopFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/unopfunctor-additive--1bb74082ee082a6f68bdbea3.md) | 258 | `declaration-track:1bb74082ee082a6f68bdbea383594628eaca33d85dc6c82f6ebcbbe81c3c20b3` |
| 21 | `def` | [homologyOpDef](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyopdef--9da84ddce40934d7781ed7b8.md) | 266 | `declaration-track:9da84ddce40934d7781ed7b88023d950873b3900912a39d0c7b02dfe6a417599` |
| 22 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyop--2782e28806028f19fd0fdb1f.md) | 273 | `declaration-track:2782e28806028f19fd0fdb1ffa950fc4232ae2538194502a7e1584a772a0f526` |
| 23 | `def` | [homologyUnopDef](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyunopdef--d6f87d2d50f523536ab12ca0.md) | 278 | `declaration-track:d6f87d2d50f523536ab12ca0dacef43af35b343101277c3cda71fddffdde982e` |
| 24 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4.lean/declarations/homologyunop--f5cf35bb547f70cb75dd2012.md) | 287 | `declaration-track:f5cf35bb547f70cb75dd2012b8ccdd009ddfd15a34189c6d3de7d49b627fbbce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
