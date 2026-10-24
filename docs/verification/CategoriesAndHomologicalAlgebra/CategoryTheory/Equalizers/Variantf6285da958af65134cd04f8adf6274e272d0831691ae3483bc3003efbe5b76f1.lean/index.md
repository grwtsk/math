# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41483be4204fd2c3d579f1ca187b6168d3cba27e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41483be4204fd2c3d579f1ca187b6168d3cba27e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/constructequalizer--59f77cb7e9975642ed4b0bd5.md) | 39 | `declaration-track:59f77cb7e9975642ed4b0bd5896647235839463d23ff8ed7e27aa4ab414046e3` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/pullbackfst--b82d7a433ee17bcc2ae584f6.md) | 44 | `declaration-track:b82d7a433ee17bcc2ae584f6d4d1950bfaecbfb2c764c583d1d883b8561f1057` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/pullbackfst-eq-pullback-snd--4b76f96a462eac36f67934aa.md) | 48 | `result-track:4b76f96a462eac36f67934aabcac8bf32c4c7f45956800d3fc9b6d5320702b2a` |
| 4 | `abbrev` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/equalizercone--bf6e409022a9e9f11f33d213.md) | 55 | `declaration-track:bf6e409022a9e9f11f33d2135bfb2c1236a2f892b195fb14522022d6f7aa9af4` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/equalizerconeislimit--532d64509588e20d33577f92.md) | 67 | `declaration-track:532d64509588e20d33577f92ee620f03d1a63c71102e4e7845742090ab4ec766` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--f92e7b54d69271ce16dd7c3d.md) | 83 | `result-track:f92e7b54d69271ce16dd7c3d46a5034224e15d79836542e9e55939543b6d45b3` |
| 7 | `lemma` | [preservesEqualizers_of_preservesPullbacks_and_binaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/preservesequalizers-of-preservespullbacks-and-binaryproducts--0ad9b9095524667d90c65ee4.md) | 95 | `result-track:0ad9b9095524667d90c65ee4a2e11e1089789bf9a638dc212e4d3dbe6b4220a5` |
| 8 | `abbrev` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/constructcoequalizer--1aa6d1342de6b58608c8c110.md) | 135 | `declaration-track:1aa6d1342de6b58608c8c110beb5a9b7447aa293d0587e13518bba4ef6b179dc` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/pushoutinl--0b898a6656c88f4e40db3206.md) | 140 | `declaration-track:0b898a6656c88f4e40db3206bfc72b6deb6fabed592af822f40c8ede96f4c946` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/pushoutinl-eq-pushout-inr--fa3b3504722038bb1395d7bc.md) | 144 | `result-track:fa3b3504722038bb1395d7bc57e3429cc015df24582fdcafcc6262e7a6d112a6` |
| 11 | `abbrev` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/coequalizercocone--f2d91ca3aa43ba759d7301b6.md) | 151 | `declaration-track:f2d91ca3aa43ba759d7301b6e833e9d4df3bec385f335dfcdd59b5a8450fab73` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/coequalizercoconeiscolimit--ae611fa8570475f1273ecdc0.md) | 163 | `declaration-track:ae611fa8570475f1273ecdc0fa1859d7c90e42205b0e6f1acc864368d859a08e` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--1341a5221063758b54570b89.md) | 182 | `result-track:1341a5221063758b54570b8984ef2b3884096fc44c61cac399b6d262ac4fa91e` |
| 14 | `lemma` | [preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf6285da958af65134cd04f8adf6274e272d0831691ae3483bc3003efbe5b76f1.lean/declarations/preservescoequalizers-of-preservespushouts-and-binarycoproducts--e5a538c412038a16182b3cdb.md) | 195 | `result-track:e5a538c412038a16182b3cdb2aab6e7c12513fabf6c81c9c89ba1840961fe5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
