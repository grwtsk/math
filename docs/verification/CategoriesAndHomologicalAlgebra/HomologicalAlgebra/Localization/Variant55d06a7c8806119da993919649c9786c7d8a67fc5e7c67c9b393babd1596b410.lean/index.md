# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Localization.Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14e2ed14e77e3a841999f34dd9bd9b7e54c3b443",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14e2ed14e77e3a841999f34dd9bd9b7e54c3b443`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCofiber` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Composition` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HomologicalComplex.homologyFunctor_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologicalcomplex-homologyfunctor-inverts-quasiiso--7e18f452c5e38f3918094efe.md) | 43 | `result-track:7e18f452c5e38f3918094efef7923d9186fc7e0d57361ab95645773fb632b859` |
| 2 | `abbrev` | [HomologicalComplexUpToQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologicalcomplexuptoquasiiso--b87227044f116beb7ceb1d62.md) | 52 | `declaration-track:b87227044f116beb7ceb1d621eab87ad28299a70262080861796575d5991e54f` |
| 3 | `abbrev` | [HomologicalComplexUpToQuasiIso.Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologicalcomplexuptoquasiiso-q--037f1dc03c6cb3b62c3aae2c.md) | 56 | `declaration-track:037f1dc03c6cb3b62c3aae2c04347f168fd9a28fb866ee90e7cfa88688f13ec7` |
| 4 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologyfunctor--e297615924b3ce716e880dbb.md) | 63 | `declaration-track:e297615924b3ce716e880dbb9c2201d99ad7bf6c0aa3308f29f064d0f09f41e8` |
| 5 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologyfunctorfactors--8a3d1b30f492176672b3a68d.md) | 68 | `declaration-track:8a3d1b30f492176672b3a68df8b858ffdc43ffcaeaa6375251345ff09545b177` |
| 6 | `lemma` | [isIso_Q_map_iff_mem_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/isiso-q-map-iff-mem-quasiiso--97c62ad2ea6857711f23677e.md) | 74 | `result-track:97c62ad2ea6857711f23677e6fb3646efc643ae0bacdb82b1e232f76fc8c22d0` |
| 7 | `lemma` | [HomologicalComplexUpToQuasiIso.Q_inverts_homotopyEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologicalcomplexuptoquasiiso-q-inverts-homotopyequivalences--ab0bfc7ce60ea61883914316.md) | 96 | `result-track:ab0bfc7ce60ea61883914316dd07b9e3f59c1ad4124f0dee4825d9d7e462b0b1` |
| 8 | `def` | [quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/quasiiso--9c4afa97308f90f596994682.md) | 107 | `declaration-track:9c4afa97308f90f5969946829d8f24f0cdbb5998b6d4b065618710f625d1126a` |
| 9 | `lemma` | [mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/mem-quasiiso-iff--9dc377121f67da5aac69e9e4.md) | 112 | `result-track:9dc377121f67da5aac69e9e43e80340d3458e8336bd394a20e238f41a7f60e04` |
| 10 | `lemma` | [quotient_map_mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/quotient-map-mem-quasiiso-iff--c80071feb622c999fea1fd88.md) | 116 | `result-track:c80071feb622c999fea1fd88669b6c2c509c3f1fe7069947d060f77cfeb79397` |
| 11 | `instance` | [respectsIso_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/respectsiso-quasiiso--1f0b53b94e3bd79950455f30.md) | 125 | `declaration-track:1f0b53b94e3bd79950455f303d53699043da12b50e304e743f976ab007a68fbc` |
| 12 | `lemma` | [homologyFunctor_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologyfunctor-inverts-quasiiso--7069ee2333d24466cc8c83e2.md) | 131 | `result-track:7069ee2333d24466cc8c83e2e2c4d0d9a46f43aba93d5fba92d8b9972f9579a7` |
| 13 | `lemma` | [quasiIso_eq_quasiIso_map_quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/quasiiso-eq-quasiiso-map-quotient--3bd05822e39c12cab8e93787.md) | 134 | `result-track:3bd05822e39c12cab8e9378708a8bd792eac1f06e46a0f0ba47ecb950d2a69f1` |
| 14 | `class` | [ComplexShape.QFactorsThroughHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/complexshape-qfactorsthroughhomotopy--606e5131570efd8ae4f6b991.md) | 150 | `declaration-track:606e5131570efd8ae4f6b991fba46ea09c56f3270c64f983da2c5ea8a221e8d2` |
| 15 | `lemma` | [Q_map_eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/q-map-eq-of-homotopy--768f2f27ba90ea9f974e8496.md) | 161 | `result-track:768f2f27ba90ea9f974e8496068b282a9839eebefc1fe7da9b489b4066e659af` |
| 16 | `def` | [Qh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/qh--62b8b7c6ec9172a8a2e96d86.md) | 167 | `declaration-track:62b8b7c6ec9172a8a2e96d860ceae49f9c1dd7bf9d2dd4ea28b68ea27038f082` |
| 17 | `def` | [quotientCompQhIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/quotientcompqhiso--857afb5768b40f768ce5cf13.md) | 175 | `declaration-track:857afb5768b40f768ce5cf136fa1dfea42b261ab1982a30f72d1032e806bbd02` |
| 18 | `lemma` | [Qh_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/qh-inverts-quasiiso--419bf73ab08e4a71e3aa8ae2.md) | 178 | `result-track:419bf73ab08e4a71e3aa8ae2f263ad1b72fdd73e510f9a5b1d9a028f8ebd143f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--b43be00e522b996939852ff4.md) | 185 | `declaration-track:b43be00e522b996939852ff4509156c76e9f429a650f15c2717fb742aa94da89` |
| 20 | `def` | [homologyFunctorFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/homologyfunctorfactorsh--adc0fabd2a1aabaee7df92fd.md) | 191 | `declaration-track:adc0fabd2a1aabaee7df92fd4c1891ad97913094ded5c76f22eaefe7d9bb8772` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--aaacbc0c221fd6abd3eee4cb.md) | 205 | `declaration-track:aaacbc0c221fd6abd3eee4cb5465e0582f146ddad56c0df4699af45508064b79` |
| 22 | `def` | [ComplexShape.strictUniversalPropertyFixedTargetQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/complexshape-strictuniversalpropertyfixedtargetquotient--833d9db71fb275a13a1d9f58.md) | 226 | `declaration-track:833d9db71fb275a13a1d9f5807bef00f9681dd3169e10d60158ef428e9f2ce90` |
| 23 | `lemma` | [ComplexShape.quotient_isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/complexshape-quotient-islocalization--24d62b4a4f7e765327c183d8.md) | 237 | `result-track:24d62b4a4f7e765327c183d809023ee16b6886e7323a4a527fa4be267e0af1fe` |
| 24 | `lemma` | [ComplexShape.QFactorsThroughHomotopy_of_exists_prev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/complexshape-qfactorsthroughhomotopy-of-exists-prev--1329a74a47e64c1008393794.md) | 243 | `result-track:1329a74a47e64c1008393794f2e53c33005553fddede4e85461917c9eb4b7dd5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--8bf528f498b29ec830cea962.md) | 259 | `declaration-track:8bf528f498b29ec830cea96254dea86e39b08d7c21171c68bfd23678800bcedc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--b3724ee85824f93ebcfc3b51.md) | 265 | `declaration-track:b3724ee85824f93ebcfc3b51172fb7b831db0dd7505b8feee718d258ed8d90fd` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/example--cddca983103ffffe124dc70e.md) | 268 | `declaration-track:cddca983103ffffe124dc70ef0a8011366b245b0969d8ce54f808a1b99b36c12` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--b9d81e080eb29074db7efcab.md) | 284 | `declaration-track:b9d81e080eb29074db7efcabcd796af8749874c7c2e7e63036e5fa9420b93790` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--673d7b2f110d1b7039ec7cf5.md) | 290 | `declaration-track:673d7b2f110d1b7039ec7cf53cc9700dee4d475fa4c98f79ca1f80d485f03a20` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/example--8d707e886b30952c7e37635e.md) | 297 | `declaration-track:8d707e886b30952c7e37635e685e938bef754a32ee0d1eec2e954d205c7139b6` |
| 31 | `def` | [mapHomologicalComplexUpToQuasiIsoLocalizerMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplexuptoquasiisolocalizermorphism--fed9aa360919f1871d7ffad6.md) | 319 | `declaration-track:fed9aa360919f1871d7ffad6cdfea81714fd9c9bf69097e90e84b9a49c787eba` |
| 32 | `lemma` | [mapHomologicalComplex_upToQuasiIso_Q_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplex-uptoquasiiso-q-inverts-quasiiso--a2c8106c08c1b23af1f41c01.md) | 324 | `result-track:a2c8106c08c1b23af1f41c010c331a4c28f47edbc8974be318cb3aae4bca9b20` |
| 33 | `def` | [mapHomologicalComplexUpToQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplexuptoquasiiso--507d6ab74ed8b58ee0d66b3e.md) | 333 | `declaration-track:507d6ab74ed8b58ee0d66b3ee05f6b1cd98f6eb0639e152b8ce242578f289342` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--ee17e919aeaf01dfa3bd29cc.md) | 338 | `declaration-track:ee17e919aeaf01dfa3bd29cccd0a3b3253c314fe0cfb2d7cb6961c7cacc0922e` |
| 35 | `def` | [mapHomologicalComplexUpToQuasiIsoFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplexuptoquasiisofactors--26972a9895739048bac0fba7.md) | 347 | `declaration-track:26972a9895739048bac0fba7da44f73d262d2889b28abe25c60cc46630e6c592` |
| 36 | `def` | [mapHomologicalComplexUpToQuasiIsoFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplexuptoquasiisofactorsh--7bb12948a3f87c2bd13f9eff.md) | 359 | `declaration-track:7bb12948a3f87c2bd13f9eff3ea4ca4a54c0f2e81b3c66b216e1320c954348ef` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/instance--a0073fc3b33675efe1a0c7ad.md) | 370 | `declaration-track:a0073fc3b33675efe1a0c7ad266f3d55d6ef936b73923fb474bc3df26b70b8e7` |
| 38 | `lemma` | [mapHomologicalComplexUpToQuasiIsoFactorsh_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/declarations/maphomologicalcomplexuptoquasiisofactorsh-hom-app--1d6cb7594dd48f9c72badf02.md) | 379 | `result-track:1d6cb7594dd48f9c72badf028dac7544e2cf4391e2f2f41d0899d89e40fddb20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
