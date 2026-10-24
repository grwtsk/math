# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6519dca04db6ebe90f209211fed3f78ed0fc3a22",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6519dca04db6ebe90f209211fed3f78ed0fc3a22`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerleft--6ff42ab9b930b9825db6e5dd.md) | 55 | `declaration-track:6ff42ab9b930b9825db6e5dd01479e4e3eeaeb9d4a6cbbb261766372f7349b58` |
| 2 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright--cb8f3376a72ecb8abe4f2939.md) | 66 | `declaration-track:cb8f3376a72ecb8abe4f29395f4c9b7e8a811c7b9771cc5e7018221369e57b0d` |
| 3 | `def` | [whiskeringLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskeringleft--3d93b446acd4ed47937901f7.md) | 82 | `declaration-track:3d93b446acd4ed47937901f7d9faa8e135edbf15c16dde77c937f93ce019aa42` |
| 4 | `def` | [whiskeringRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskeringright--e6f73b6dbade9f5514ba179a.md) | 102 | `declaration-track:e6f73b6dbade9f5514ba179aff3602dda826754263d01d6bc9dde0e9fa980e1d` |
| 5 | `instance` | [faithful_whiskeringRight_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/faithful-whiskeringright-obj--8d3bfefbd149e2484819c227.md) | 118 | `declaration-track:8d3bfefbd149e2484819c2272d19e9c19e8b8e3ce3db2ff7d220966d8e2028f9` |
| 6 | `theorem` | [whiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerleft-id--f81328cd8a6a05b5d50c431c.md) | 126 | `result-track:f81328cd8a6a05b5d50c431ccbbc53c8cb48ece9fe90f4f59a3abc0d8af966bc` |
| 7 | `theorem` | [whiskerLeft_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerleft-id--4c5764573074d76bb4c07125.md) | 132 | `result-track:4c5764573074d76bb4c07125192e4e03550803f0705bd15a6a2d0b50bda60e59` |
| 8 | `theorem` | [whiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright-id--0790f7f9aa1da3665738d483.md) | 137 | `result-track:0790f7f9aa1da3665738d483f4328b417832f4cb47726b05c3025a93656664d5` |
| 9 | `theorem` | [whiskerRight_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright-id--c56636b1492c63babe3fd7dd.md) | 143 | `result-track:c56636b1492c63babe3fd7dda73e0ff4ae60c8c460d6948580e61aeebfbfa8e5` |
| 10 | `theorem` | [whiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerleft-comp--c33ba092ecd16b6ef341e718.md) | 148 | `result-track:c33ba092ecd16b6ef341e71847dc56533d017be23868733676bb65ebdeb187c9` |
| 11 | `theorem` | [whiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright-comp--93115e6668b9ec3973e118b9.md) | 154 | `result-track:93115e6668b9ec3973e118b9dd8d892b44fb49d84f0e2567580a07b58d479b90` |
| 12 | `def` | [isoWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerleft--3a1e12f7d521d68f685eb16e.md) | 162 | `declaration-track:3a1e12f7d521d68f685eb16ed3d1c5055b5c83a31f35676cccc3b1ad1499c814` |
| 13 | `theorem` | [isoWhiskerLeft_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerleft-hom--a9efd37ad5ee6ed1b43b17dc.md) | 167 | `result-track:a9efd37ad5ee6ed1b43b17dc2806b9b48a3edb68a14773b6d185c0687f55165d` |
| 14 | `theorem` | [isoWhiskerLeft_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerleft-inv--6f6bb7ddd738af2822d51ecd.md) | 173 | `result-track:6f6bb7ddd738af2822d51ecd8fcba6dd8fa4c246a42a94de0938a360d769fd40` |
| 15 | `def` | [isoWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerright--d6105bb1b97a040253a02fe3.md) | 181 | `declaration-track:d6105bb1b97a040253a02fe3ea01113b346ae85b12a11a90b303f7625aa14365` |
| 16 | `theorem` | [isoWhiskerRight_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerright-hom--364bf61fd4461ed3a55a271e.md) | 186 | `result-track:364bf61fd4461ed3a55a271e5b12bf2853ff931a58a7d23e9929e286caa29646` |
| 17 | `theorem` | [isoWhiskerRight_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isowhiskerright-inv--c9bbe2c294b7084a8290ae55.md) | 192 | `result-track:c9bbe2c294b7084a8290ae55b8d9048e0d58729a5413d880bd4f113b6e584bc1` |
| 18 | `instance` | [isIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isiso-whiskerleft--a39d30e74b4e735e1b5b2beb.md) | 197 | `declaration-track:a39d30e74b4e735e1b5b2bebc04e797409ce95b8a6bbedd1a8519f23037ae6b1` |
| 19 | `instance` | [isIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/isiso-whiskerright--9524816885bda7d74d952aab.md) | 202 | `declaration-track:9524816885bda7d74d952aabb0e278f0ca62d4bb976c95b160098e67da5e71b4` |
| 20 | `theorem` | [whiskerLeft_twice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerleft-twice--86f289434f3f4d0532bf9d9d.md) | 214 | `result-track:86f289434f3f4d0532bf9d9d33ded21565c9ba3fca424cb06ea618e9a0b6691e` |
| 21 | `theorem` | [whiskerRight_twice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright-twice--fb89a12f3445a0f5a140b60a.md) | 220 | `result-track:fb89a12f3445a0f5a140b60ae6b5457cfb5bca4ddc8f931cd840934478539df8` |
| 22 | `theorem` | [whiskerRight_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/whiskerright-left--af26513ce1d4dbf0ea657e9c.md) | 225 | `result-track:af26513ce1d4dbf0ea657e9c38bb5a55bac6acdbe473a101523724aea992864d` |
| 23 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/leftunitor--421c53c00da78bbe926a2362.md) | 243 | `declaration-track:421c53c00da78bbe926a23620fde8d0337e682b46cfdc51416ebe2381630165b` |
| 24 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/rightunitor--c97a0640524b0c3de6c66400.md) | 254 | `declaration-track:c97a0640524b0c3de6c66400b3c41906fe3e5ce306e59dce7e2083c23fd54171` |
| 25 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/associator--59e9e42ffeb2a5a56ff2260c.md) | 272 | `declaration-track:59e9e42ffeb2a5a56ff2260c660f3b1f004eabe4084194c069501803cd0abf78` |
| 26 | `theorem` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/assoc--c817c5015cb1015a817d912a.md) | 280 | `result-track:c817c5015cb1015a817d912a655d67ac3448d17b990aa69ffa036058c3967821` |
| 27 | `theorem` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/triangle--3b240958cb7effda8d552771.md) | 284 | `result-track:3b240958cb7effda8d5527710e900ff32cd309677d6eb2c592bb29a4251f0cc2` |
| 28 | `theorem` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/declarations/pentagon--38a63dcfce49ce6e52b71b55.md) | 294 | `result-track:38a63dcfce49ce6e52b71b55ebdc85c30fccaf316c84011fc314e165c9b479dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
