# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomEquiv.Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9b8065a89266a5dc7e1a92ab3115005b5990948",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9b8065a89266a5dc7e1a92ab3115005b5990948`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Restriction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Boundary` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/haslift--a8877530d959ae88fb1d82fe.md) | 51 | `declaration-track:a8877530d959ae88fb1d82fef77f473ac505ce6ad8e0878fdf048370d1783646` |
| 2 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/f--667c272891d20971b2ca6f96.md) | 63 | `declaration-track:667c272891d20971b2ca6f96944c055ae9d245b27fc3e867a34ca034fd33dd6f` |
| 3 | `lemma` | [f_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/f-eq--f49822180842ac3d308f3a76.md) | 69 | `result-track:f49822180842ac3d308f3a76c4b28195d04dc108eb330cb47e3c7161554eb091` |
| 4 | `lemma` | [comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/comm--9436ca119b529d2d62cd5cc7.md) | 79 | `result-track:9436ca119b529d2d62cd5cc7bd7b52ba47cf0a6b1e0972969b16d4c8d369d7bc` |
| 5 | `def` | [liftExtend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/liftextend--6dda334184e10beeb609e3c5.md) | 111 | `declaration-track:6dda334184e10beeb609e3c57f3138dd7746bb06b9990bd28b054d1eb08c4632` |
| 6 | `lemma` | [liftExtend_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/liftextend-f--6ea8ff55cc5ca8a7828909a4.md) | 118 | `result-track:6ea8ff55cc5ca8a7828909a43f34ad6ea73b06198ec99948878b16a1a7f13b7e` |
| 7 | `def` | [liftExtendfArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/liftextendfarrowiso--eb92fe5e69c5a1eb83b10480.md) | 126 | `declaration-track:eb92fe5e69c5a1eb83b104803b0726ea5bc87f411682844bdf3e74f84cc70266` |
| 8 | `lemma` | [isIso_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/isiso-liftextend-f-iff--cedc58060fbec9f625662301.md) | 131 | `result-track:cedc58060fbec9f62566230134176b8ab1a729d2b90b57889050286cf4ea75a5` |
| 9 | `lemma` | [mono_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/mono-liftextend-f-iff--8069ea093fb354e45804095b.md) | 135 | `result-track:8069ea093fb354e45804095bd08afae552591695ab245de6982109a1dd56374e` |
| 10 | `lemma` | [epi_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/epi-liftextend-f-iff--cabf379485a80661fca3713a.md) | 139 | `result-track:cabf379485a80661fca3713a8fd02cc9ffc18cd7653931e79c5432b00d369031` |
| 11 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/f--ae99554bf5b401690d4fa953.md) | 151 | `declaration-track:ae99554bf5b401690d4fa953c5d45c71f0478b87bfc04c0e13a10a39095bff6d` |
| 12 | `lemma` | [f_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/f-eq--1d92318b0ee74c564bb5f94d.md) | 154 | `result-track:1d92318b0ee74c564bb5f94d9c95e643a37bb855b3a9e50d36237153ef4b435a` |
| 13 | `lemma` | [comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/comm--e493db820326142fede6c6fb.md) | 160 | `result-track:e493db820326142fede6c6fb382073373711c53b600386eb34f648682781c9e0` |
| 14 | `def` | [homRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict--a39f89a89cbd0e19f819c24e.md) | 168 | `declaration-track:a39f89a89cbd0e19f819c24ea2031d93fc759f09b6a2b8be77590098a14c1605` |
| 15 | `lemma` | [homRestrict_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict-f--3d216d100c2ec0eac6d708f3.md) | 171 | `result-track:3d216d100c2ec0eac6d708f3ec99038ef496bf7631ece8b439013547de3375cb` |
| 16 | `lemma` | [homRestrict_hasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict-haslift--d27247e2c8308d834ca0decc.md) | 175 | `result-track:d27247e2c8308d834ca0decc42a39f4a78dce7b16c37cf2c65c210c9573390cf` |
| 17 | `lemma` | [liftExtend_homRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/liftextend-homrestrict--267aad7529018a7f826a394a.md) | 185 | `result-track:267aad7529018a7f826a394af7358174b4e8ad250184791bed378fd13122c8c8` |
| 18 | `lemma` | [homRestrict_liftExtend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict-liftextend--ab7df6535ce7180714c26d2a.md) | 194 | `result-track:ab7df6535ce7180714c26d2a6d9ba48ea6b98207ac675ff83d7a300b162986a8` |
| 19 | `lemma` | [homRestrict_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict-precomp--fd98c11c61a91fe136b91657.md) | 200 | `result-track:fd98c11c61a91fe136b916574eb0a14039e25266019589f18d40f94aee8aebf7` |
| 20 | `lemma` | [homRestrict_comp_extendMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homrestrict-comp-extendmap--63143dfe3e160ed918a89eb2.md) | 206 | `result-track:63143dfe3e160ed918a89eb231aff0b3b39669858d74e489a35f20afda8df8ba` |
| 21 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantb30033d31804fc9e5c810118b036619c7407181653bad77d2177ec6950924716.lean/declarations/homequiv--f762f97247208452acff2c3a.md) | 217 | `declaration-track:f762f97247208452acff2c3a15e3690102528d2056c948f0a3b4d8869b2fe800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
