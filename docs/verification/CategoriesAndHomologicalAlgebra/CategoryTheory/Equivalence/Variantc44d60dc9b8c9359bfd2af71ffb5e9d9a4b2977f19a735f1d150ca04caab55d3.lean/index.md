# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66a42272f49db670d93c69add9dca478751465f5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66a42272f49db670d93c69add9dca478751465f5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesLocallyBijective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--850d8c70dcb0ddb2fcbc88bd.md) | 59 | `declaration-track:850d8c70dcb0ddb2fcbc88bd909c4989fcafcae1cc1bea929b3a41c6623edf6c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--964a03912594b9c816736f29.md) | 71 | `declaration-track:964a03912594b9c816736f2974dde9b3eac0ab34062aeca7b5e7de11a4c56f2e` |
| 3 | `lemma` | [eq_inducedTopology_of_isDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/eq-inducedtopology-of-isdensesubsite--abdc4e8d49ae496806a3ac24.md) | 80 | `result-track:abdc4e8d49ae496806a3ac2400f3b6d1f6b8269de11e129b21e21b0a2b1f7b78` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--e2354f513494615ceb44b45a.md) | 87 | `declaration-track:e2354f513494615ceb44b45a18f93d6b34a555c051a909bbf2f7973cf165a73b` |
| 5 | `def` | [sheafCongr.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/sheafcongr-functor--3ed7ba345bed07c6ffae6fb6.md) | 93 | `declaration-track:3ed7ba345bed07c6ffae6fb6c4200a7447ba282d5e2dc7adc89a288f028fa76e` |
| 6 | `def` | [sheafCongr.inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/sheafcongr-inverse--0972446d32b30d012a4ce581.md) | 99 | `declaration-track:0972446d32b30d012a4ce581128b5097f2041d09378423107d94f8017fe741c8` |
| 7 | `def` | [sheafCongr.unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/sheafcongr-unitiso--0e7a99b62725299611d10691.md) | 105 | `declaration-track:0e7a99b62725299611d10691644dbbeb4929f7031f9adc8c5a51e0095b7b7917` |
| 8 | `def` | [sheafCongr.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/sheafcongr-counitiso--55f1b59d3c4aee5c2c3b5cc4.md) | 113 | `declaration-track:55f1b59d3c4aee5c2c3b5cc446930f9e5409942efbd1b8db19f6a17951ea2fb8` |
| 9 | `def` | [sheafCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/sheafcongr--ad33cd69f2f02567624afcde.md) | 120 | `declaration-track:ad33cd69f2f02567624afcde1131d252391b48e5be3246f6ad1818237d0f399d` |
| 10 | `def` | [transportAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/transportandsheafify--46340606b5446fd216667e94.md) | 139 | `declaration-track:46340606b5446fd216667e9477e175530289157d8475bf3d143d1f962eedc110` |
| 11 | `def` | [transportIsoSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/transportisosheaftopresheaf--fcad092c48ee067dd985def3.md) | 144 | `declaration-track:fcad092c48ee067dd985def3602a4892b2764c3e9abce5706ed1e21364940c94` |
| 12 | `def` | [transportSheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/transportsheafificationadjunction--b9d3631769e2dbf7b6c0fc9d.md) | 151 | `declaration-track:b9d3631769e2dbf7b6c0fc9d24383034a3c482da90140897985cf56868e6b052` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--a0c3a2209de4039acd8e698b.md) | 156 | `declaration-track:a0c3a2209de4039acd8e698b6570c5ec96ef2d018128c1385cdfd837d48205b6` |
| 14 | `theorem` | [hasSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/hassheafify--8e88fd4c4cb434263b9c367b.md) | 161 | `result-track:8e88fd4c4cb434263b9c367b5ea339c2809c27c99725cf6a423904cbfa7f039f` |
| 15 | `theorem` | [hasSheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/hassheafcompose--4732e1fc754a3deba49d39f3.md) | 168 | `result-track:4732e1fc754a3deba49d39f3db29957dfbfeebfc65bcc7525dc93154513021b3` |
| 16 | `def` | [smallSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/smallsheafify--d23c8a860c9327cdf0ab82ab.md) | 189 | `declaration-track:d23c8a860c9327cdf0ab82ab1d0614a602b7f2ae5584f055a39afb8b174cedc5` |
| 17 | `def` | [smallSheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/smallsheafificationadjunction--10c38905e0f6fd3373635f90.md) | 197 | `declaration-track:10c38905e0f6fd3373635f902775897f7e40795b7e0b6b26e42515568889fcd4` |
| 18 | `instance` | [hasSheafifyEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/hassheafifyessentiallysmallsite--e4dac41bc2f277a0898a9e21.md) | 200 | `declaration-track:e4dac41bc2f277a0898a9e2120335d66ce16e5fb7db3049d89f952b30770e07d` |
| 19 | `instance` | [hasSheafComposeEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/hassheafcomposeessentiallysmallsite--1802d865e7177735100219c6.md) | 203 | `declaration-track:1802d865e7177735100219c6da48d3cc06a972e1d66a7ba2ecb001c99a1cb3df` |
| 20 | `instance` | [hasLimitsEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/haslimitsessentiallysmallsite--eb4eb3d77690127dac1243ed.md) | 206 | `declaration-track:eb4eb3d77690127dac1243ed3d28bb1eea54f477080fad1407d3f8bf5eab1363` |
| 21 | `instance` | [hasColimitsEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/hascolimitsessentiallysmallsite--ecd827cf6ff591c3134c91b6.md) | 212 | `declaration-track:ecd827cf6ff591c3134c91b63b97dd16ab626a182be70ef5aca478e468e2b3aa` |
| 22 | `lemma` | [W_inverseImage_whiskeringLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/w-inverseimage-whiskeringleft--e959f629d5b1992d02588b6b.md) | 230 | `result-track:e959f629d5b1992d02588b6b3b67c5a283abab8b511f5cab9f5c4a14473ecde0` |
| 23 | `lemma` | [W_whiskerLeft_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/w-whiskerleft-iff--9038dac7364eadb73c1f8f4b.md) | 261 | `result-track:9038dac7364eadb73c1f8f4bfb4f4bb47caab2f6c5ef1dc5e480d1751838ce22` |
| 24 | `lemma` | [PreservesSheafification.transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/preservessheafification-transport--0c05784821d982d9c6e092f2.md) | 268 | `result-track:0c05784821d982d9c6e092f27d4df82a9ef084156a7e1764bd8d942effdadde3` |
| 25 | `lemma` | [WEqualsLocallyBijective.transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/wequalslocallybijective-transport--92e17a5871e18e42d8f2bd53.md) | 286 | `result-track:92e17a5871e18e42d8f2bd53c722243fb9e77af866ca89372ccf6da58ced6c2d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--40c76b86c52b560cb43979b1.md) | 295 | `declaration-track:40c76b86c52b560cb43979b174500e9ad6cd405a7c53d169b35f9b03e8a18046` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/declarations/instance--c7ab91bb2fbb53982799d5db.md) | 303 | `declaration-track:c7ab91bb2fbb53982799d5dbd055b19dffe7b94a99cba611fcd409acb56a93cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
