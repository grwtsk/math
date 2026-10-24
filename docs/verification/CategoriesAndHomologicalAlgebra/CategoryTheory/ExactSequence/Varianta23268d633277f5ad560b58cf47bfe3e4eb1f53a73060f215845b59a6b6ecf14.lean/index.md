# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactSequence.Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d76c1c67ed1f6c794425376082466418eeea8623",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d76c1c67ed1f6c794425376082466418eeea8623`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ShortComplex.toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-tocomposablearrows--cea71854bb303994c4cadbc2.md) | 44 | `declaration-track:cea71854bb303994c4cadbc27022c19f3ec8f02db6ec99d3a5c137389d0cd364` |
| 2 | `def` | [ShortComplex.mapToComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows--417fb28260c64d4f5329cdc3.md) | 48 | `declaration-track:417fb28260c64d4f5329cdc321c4b2dcd07b00310c2ebdd8fc503a8a41bbb61f` |
| 3 | `theorem` | [ShortComplex.mapToComposableArrows_app_0](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows-app-0--92d9478708cab74dbee12ad9.md) | 53 | `result-track:92d9478708cab74dbee12ad97a47ce2e12c8d3e4a17626a0e2f5d81ba830e9d6` |
| 4 | `theorem` | [ShortComplex.mapToComposableArrows_app_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows-app-1--16bd4e80a65f8ecdcab4fbe7.md) | 57 | `result-track:16bd4e80a65f8ecdcab4fbe7d87d6eab694bbc825e2160ed654df5f48b4fba05` |
| 5 | `theorem` | [ShortComplex.mapToComposableArrows_app_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows-app-2--7783affb6cb6faf2c6486825.md) | 61 | `result-track:7783affb6cb6faf2c6486825f5e6207798658f8d3eaab69dce134278bb390777` |
| 6 | `theorem` | [ShortComplex.mapToComposableArrows_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows-id--3dd48980db715c8a068f7faf.md) | 65 | `result-track:3dd48980db715c8a068f7fafa9cd93b05110968626829504a9c4f9659371e3ff` |
| 7 | `theorem` | [ShortComplex.mapToComposableArrows_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/shortcomplex-maptocomposablearrows-comp--627f53f1ad4a931f735d0ce1.md) | 70 | `result-track:627f53f1ad4a931f735d0ce15b874839da4f872c7efc9e5dd5d08b81c38e2706` |
| 8 | `structure` | [IsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex--b9d8f10e6e5677f9d96eb2a8.md) | 81 | `declaration-track:b9d8f10e6e5677f9d96eb2a822ed89f5943ee1dbc9e8a7c8885219b95a38b4b9` |
| 9 | `lemma` | [IsComplex.zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex-zero--2c08a40a2055b8699f3f3f42.md) | 91 | `result-track:2c08a40a2055b8699f3f3f421a8e14822ac1e41c068f877d66c439ab388443fa` |
| 10 | `lemma` | [isComplex_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex-of-iso--2c4433e6fdc84cf865958d72.md) | 97 | `result-track:2c4433e6fdc84cf865958d72ff2eaadd45291cde5a10c8fb5dc021a0e4218bdd` |
| 11 | `lemma` | [isComplex_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex-iff-of-iso--f54dd4608aad8b4893410ee9.md) | 104 | `result-track:f54dd4608aad8b4893410ee9c0a1434a5cec4169dd150d495f2eb979d154ad25` |
| 12 | `lemma` | [isComplex₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex--b15c2e0d6e7d7e4d8796dac1.md) | 108 | `result-track:b15c2e0d6e7d7e4d8796dac12f69d634434cc4d1186f32a524a34580a3b9d319` |
| 13 | `lemma` | [isComplex₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex--dff6e6514e6da5138e51735b.md) | 113 | `result-track:dff6e6514e6da5138e51735bce173934bae7b0a899289e1850f4c78f8877a1ba` |
| 14 | `abbrev` | [sc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/sc--83cd2edde049b9c862f12fd8.md) | 120 | `declaration-track:83cd2edde049b9c862f12fd8d4262fe47cb43c1c94aa6d1b81665f8de540e8ef` |
| 15 | `abbrev` | [sc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/sc--1e8e0d57368d757541ca4656.md) | 127 | `declaration-track:1e8e0d57368d757541ca4656bd038300ffa80f9f95b349504951a65ded48e461` |
| 16 | `structure` | [Exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact--bed89f857be30328461bb779.md) | 133 | `declaration-track:bed89f857be30328461bb779f576e6da04fd78dd65a7442a47f0329013c7bd91` |
| 17 | `lemma` | [Exact.exact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-exact--96c092b40d7b3ab3f7bb8e57.md) | 138 | `result-track:96c092b40d7b3ab3f7bb8e57b6d78ce05d711dd21fdcfb684ca535730fa64926` |
| 18 | `def` | [sc'Map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/sc-map--996da6189f48cc33a38cd55a.md) | 146 | `declaration-track:996da6189f48cc33a38cd55aeef9c6626d1eaf5689606a11d7e12647117d9cfa` |
| 19 | `def` | [scMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/scmap--11fad6fb1b4b27d9f49ec3c2.md) | 156 | `declaration-track:11fad6fb1b4b27d9f49ec3c24d0dbd614d191e3429362288edc1960b775c2a71` |
| 20 | `def` | [sc'MapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/sc-mapiso--6588c2b9f76be828f9bd5973.md) | 164 | `declaration-track:6588c2b9f76be828f9bd59733de0323a06d32484a3f006602e16fcd07ba126ac` |
| 21 | `def` | [scMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/scmapiso--f55551e15968705813aab50a.md) | 176 | `declaration-track:f55551e15968705813aab50ab86db62fbd80926f98445ae860ada6d6b955436e` |
| 22 | `lemma` | [exact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-of-iso--5cd95a6a047de146aba98928.md) | 185 | `result-track:5cd95a6a047de146aba98928aba1ee45d99ac5d8e56eccaf741e1d642023f22a` |
| 23 | `lemma` | [exact_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-iff-of-iso--a31c90681ad60aa9f083637a.md) | 191 | `result-track:a31c90681ad60aa9f083637af2c38cf3531abe450dfb8e1ae4c9eb82b6eaf5b0` |
| 24 | `lemma` | [exact₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact--139d08599f90d9cdaa6b34f9.md) | 195 | `result-track:139d08599f90d9cdaa6b34f9a59fb571f12d00fdd5f2f04e9ba3cd7528fd2706` |
| 25 | `lemma` | [exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact--64f3657a0463841541b0b5b6.md) | 200 | `result-track:64f3657a0463841541b0b5b60a798865a315cb1628047fb491a85ae5ded63e90` |
| 26 | `lemma` | [isComplex₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex-iff--efebf5daea06b2b86d02aa10.md) | 204 | `result-track:efebf5daea06b2b86d02aa10bb3c552aa118e97e677ee9db4bcab592b5cca248` |
| 27 | `lemma` | [isComplex₂_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/iscomplex-mk--173ba27b3afc0913f54bf09c.md) | 214 | `result-track:173ba27b3afc0913f54bf09c6f6f6871c2ce61edd93170c28dd92e5dbc036273` |
| 28 | `lemma` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsComplex.Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.CategoryTheory.ShortComplex.isComplex_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-iscomplex-var--5ed7a785248e49da9aafb3a4.md) | 224 | `result-track:5ed7a785248e49da9aafb3a46ccb71e0101c7c4ffa89765148a6948592973867` |
| 29 | `lemma` | [exact₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-iff--3f5cefbd8dbc8f5ac492380d.md) | 228 | `result-track:3f5cefbd8dbc8f5ac492380d70f76e511b4a8da8eb10c1a01d6351c07ae9c576` |
| 30 | `lemma` | [exact₂_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-mk--e11ec1ea85190303092af01e.md) | 238 | `result-track:e11ec1ea85190303092af01e0e52c9ee9793ab9713855f465261e18df8b18fd0` |
| 31 | `lemma` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsComplex.Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.CategoryTheory.ShortComplex.Exact.exact_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-iscomplex-var--50bcfe38ef83359ca8c14966.md) | 242 | `result-track:50bcfe38ef83359ca8c14966b2836974ce95861348a98a6662a67a03c147d27c` |
| 32 | `lemma` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsComplex.Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.CategoryTheory.ShortComplex.exact_iff_exact_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-iscomplex-var--5781cb7bc6bf9b8acfff75d2.md) | 247 | `result-track:5781cb7bc6bf9b8acfff75d284b880ab6f8c7a667f0b4b3cc0688e665d11e4cf` |
| 33 | `lemma` | [exact_iff_δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-iff--69cce11188714463a88eba4f.md) | 252 | `result-track:69cce11188714463a88eba4f42477b535e711725d7bc0f97deb53fa978d5f55a` |
| 34 | `lemma` | [Exact.δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact--eeae46344373ccede291c990.md) | 272 | `result-track:eeae46344373ccede291c99069e8d7c4ecb97db2a2c95942df123af97d3f81d8` |
| 35 | `lemma` | [exact_of_δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-of--7ac65017c309469214b9d6f3.md) | 281 | `result-track:7ac65017c309469214b9d6f31ff28bf8a5d18d96c8b65d49e5301783fb4bb0e9` |
| 36 | `lemma` | [exact_iff_δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-iff-last--3aad30a8bab65650b971380f.md) | 286 | `result-track:3aad30a8bab65650b971380fd9c159bde4772051e6d8e28b881b55f3f88080cf` |
| 37 | `lemma` | [Exact.δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-last--24a10efd74ddf5922866c15a.md) | 308 | `result-track:24a10efd74ddf5922866c15a56d3e1aec617b4d297111907a73dd8d6e4ebaf95` |
| 38 | `lemma` | [exact_of_δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Varianta23268d633277f5ad560b58cf47bfe3e4eb1f53a73060f215845b59a6b6ecf14.lean/declarations/exact-of-last--aa1114aa156ca803217cc682.md) | 313 | `result-track:aa1114aa156ca803217cc682cda97e61f4915b7020250c0ff74bb9a90f797f87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
