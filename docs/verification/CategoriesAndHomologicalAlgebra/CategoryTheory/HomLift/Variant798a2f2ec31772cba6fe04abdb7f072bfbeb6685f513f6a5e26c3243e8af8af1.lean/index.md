# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomLift.Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08bba803143aa27ad75b3be31d3f546b0053d0e3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08bba803143aa27ad75b3be31d3f546b0053d0e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CommSq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsHomLiftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/ishomliftaux--4ecb3f3c713fd4bc8a0a835d.md) | 46 | `declaration-track:4ecb3f3c713fd4bc8a0a835d268ed0f38be3314ba245e2521000358265926b29` |
| 2 | `class` | [Functor.IsHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/functor-ishomlift--ec1f06d165a46aea0df199f2.md) | 59 | `declaration-track:ec1f06d165a46aea0df199f2fc085c8c81af97288bbb1edf96e8d49a67ba7715` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/macro--24158248ff9c6cb0f4993765.md) | 63 | `declaration-track:24158248ff9c6cb0f4993765c523157b05cee8d23e54e3d5bfec4a7050cac6c8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/instance--2b4316b508d5d882ac553436.md) | 68 | `declaration-track:2b4316b508d5d882ac5534362404c1667bb05a8e22e4e863a520123aead599b7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/instance--5d1a60f2d7625502d8ddc29f.md) | 72 | `declaration-track:5d1a60f2d7625502d8ddc29f352d0eca58fc74f266743d2507c957dce9b2f07e` |
| 6 | `lemma` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/id--d3cc2a8d0077376e9701bcaa.md) | 77 | `result-track:d3cc2a8d0077376e9701bcaac1ecc1adf9ff8eb670594c9b56191a4179c6d64c` |
| 7 | `lemma` | [domain_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/domain-eq--f2570ada3868b8216eebc256.md) | 84 | `result-track:f2570ada3868b8216eebc256111e42bca5bf4b8ed5793556d7ecb892826bf5e9` |
| 8 | `lemma` | [codomain_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/codomain-eq--15370f9c17393b178319ce8a.md) | 87 | `result-track:15370f9c17393b178319ce8a145662b8eb10334fbb25c9709c6845dea3762b03` |
| 9 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/fac--38603fe784f2bf25220c473b.md) | 92 | `result-track:38603fe784f2bf25220c473b29010723c4e08e2510d2bf56478c10dadf5fa04c` |
| 10 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/fac--a33b56dc71ad608db9152cf9.md) | 95 | `result-track:a33b56dc71ad608db9152cf9e69fab9305931fe6cbf61ac0a652beccc8d6fd6f` |
| 11 | `lemma` | [commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/commsq--5cb5506c43545eeaee96eeda.md) | 98 | `result-track:5cb5506c43545eeaee96eeda0d07766fe3090f8d5d4a7b8020c08db7bc5eabaa` |
| 12 | `lemma` | [eq_of_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/eq-of-ishomlift--0cb05b35b18285c21aed06c9.md) | 103 | `result-track:0cb05b35b18285c21aed06c9a3b2d21e5fbfd7bf35e14a1de1c33fcaca7d3b13` |
| 13 | `lemma` | [of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/of-fac--65d52cbd1854ad746ef9932b.md) | 107 | `result-track:65d52cbd1854ad746ef9932b4b9fe35803419253bb1183a3eae9f3c0a80ea2a9` |
| 14 | `lemma` | [of_fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/of-fac--f31a9636d5f9f1fc44036c86.md) | 111 | `result-track:f31a9636d5f9f1fc44036c86187ab5a3c0c442e44ab84d9b155dda8a1dce02d2` |
| 15 | `lemma` | [of_commsq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/of-commsq--88536f138452de9a5c37c06e.md) | 117 | `result-track:88536f138452de9a5c37c06e57fcf325712f980a06c0e9d96adc429b0de6e78e` |
| 16 | `lemma` | [of_commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/of-commsq--fba448fdaaca4ade3b9714e1.md) | 123 | `result-track:fba448fdaaca4ade3b9714e1fbe606951a8f5da2f3c4d7528ffec75283e6519a` |
| 17 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp--db6ec5989a21f66d6cfafaed.md) | 127 | `declaration-track:db6ec5989a21f66d6cfafaed2a5919b9acd57dc32625f549916a85d25abc1b85` |
| 18 | `instance` | [lift_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-id-comp--b6709387ca3bbb859677bb8a.md) | 135 | `declaration-track:b6709387ca3bbb859677bb8a4aecf4960b9d929702e0a21d0c1729b679e53813` |
| 19 | `instance` | [comp_lift_id_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-lift-id-right--b579963be1f88148d6023c3c.md) | 139 | `declaration-track:b579963be1f88148d6023c3cae766073631cfd0fb004c01e2841c8366e7c6ff2` |
| 20 | `lemma` | [comp_lift_id_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-lift-id-right--2b612b3cc0999e8e062119e8.md) | 144 | `result-track:2b612b3cc0999e8e062119e87465dadd89850bc29b310d8446b17ff856b8f4d6` |
| 21 | `instance` | [comp_lift_id_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-lift-id-left--76b8a671bb26060dfd375ba3.md) | 149 | `declaration-track:76b8a671bb26060dfd375ba310fe34d320c9e0113a219a75fef673db49e3353c` |
| 22 | `lemma` | [comp_lift_id_left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-lift-id-left--6dafb140bfb62760940e8c44.md) | 154 | `result-track:6dafb140bfb62760940e8c4473124f33693d23aaf172269afc172fd86ca83a82` |
| 23 | `lemma` | [eqToHom_domain_lift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/eqtohom-domain-lift-id--c5a4b1485b8509fdc29c0258.md) | 159 | `result-track:c5a4b1485b8509fdc29c0258bcd0e6e2336c2b8ad43a7d9544d33232665bdbf1` |
| 24 | `lemma` | [eqToHom_codomain_lift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/eqtohom-codomain-lift-id--3f35da9b450ab3c73d31205f.md) | 163 | `result-track:3f35da9b450ab3c73d31205feced1bd6ba03833821da9818520936ce98c09737` |
| 25 | `lemma` | [id_lift_eqToHom_domain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/id-lift-eqtohom-domain--483cf41968dee8ec309e2f6d.md) | 167 | `result-track:483cf41968dee8ec309e2f6d9e4b4de83a57227c6ea9d1586a6ea606fe6f000d` |
| 26 | `lemma` | [id_lift_eqToHom_codomain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/id-lift-eqtohom-codomain--f2d779c38187dbf78f92a147.md) | 171 | `result-track:f2d779c38187dbf78f92a147d93339c1a5c2d28641e7f0975519dd8975e3088a` |
| 27 | `instance` | [comp_eqToHom_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-eqtohom-lift--177a3c9d5ee59a43a026e0f8.md) | 175 | `declaration-track:177a3c9d5ee59a43a026e0f828c3296df2a87f33157d8c0952e1143b62252294` |
| 28 | `instance` | [eqToHom_comp_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/eqtohom-comp-lift--0bb8b17146ae1676fe097739.md) | 179 | `declaration-track:0bb8b17146ae1676fe09773949e69c5a08127344dc7fedc4925f7e9e338e3fa4` |
| 29 | `instance` | [lift_eqToHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-eqtohom-comp--ee10cc29a04f3fdfd29803a0.md) | 183 | `declaration-track:ee10cc29a04f3fdfd29803a023d909d7f38a2876cae9c2557eb8c7b3121915ee` |
| 30 | `instance` | [lift_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-comp-eqtohom--2763c41723932a598966e947.md) | 187 | `declaration-track:2763c41723932a598966e947b42560040ecfb65a4206e2d425f0ff6ffc6c4932` |
| 31 | `lemma` | [comp_eqToHom_lift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/comp-eqtohom-lift-iff--9c38876ff104501fdbc9c90e.md) | 192 | `result-track:9c38876ff104501fdbc9c90e6828b8ed28463278e107dc5ffe08d1976fbc8ccd` |
| 32 | `lemma` | [eqToHom_comp_lift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/eqtohom-comp-lift-iff--aad37fe2adba28b02d8b72f8.md) | 198 | `result-track:aad37fe2adba28b02d8b72f85f467a41e2ee84b8c73c1d09235377402336c0be` |
| 33 | `lemma` | [lift_eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-eqtohom-comp-iff--bd1e162dad3edcd93ed821c1.md) | 204 | `result-track:bd1e162dad3edcd93ed821c125fa49f33e52c215d9a89e4174a3e25710f4b396` |
| 34 | `lemma` | [lift_comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-comp-eqtohom-iff--d0bf13a24483323bdaec840b.md) | 210 | `result-track:d0bf13a24483323bdaec840bf7f814776ef98df0c13016756adcf5020cede382` |
| 35 | `def` | [isoOfIsoLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/isoofisolift--b2864283de8f743f5baf9c1a.md) | 222 | `declaration-track:b2864283de8f743f5baf9c1a0a4d28aadaa71294c8099ba8cdf012091cdf5e71` |
| 36 | `lemma` | [isoOfIsoLift_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/isoofisolift-inv-hom-id--9242503b946e7926d38989c3.md) | 230 | `result-track:9242503b946e7926d38989c3adcf173000b38e36dd769866b8263aa2d8ce4987` |
| 37 | `lemma` | [isoOfIsoLift_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/isoofisolift-hom-inv-id--3328c5fdcd313971b7abd97b.md) | 235 | `result-track:3328c5fdcd313971b7abd97b2b769cbe52d4e82fe1e1a685bc5de10535f531b6` |
| 38 | `lemma` | [isIso_of_lift_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/isiso-of-lift-isiso--47c942e281e5fcc8aa385b28.md) | 240 | `result-track:47c942e281e5fcc8aa385b28f3ab5b1de129bbc274da1334206301c5ba6f75b9` |
| 39 | `instance` | [inv_lift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/inv-lift-inv--c0fd6c29b1de6454c4cc2cfc.md) | 245 | `declaration-track:c0fd6c29b1de6454c4cc2cfc148b97d9e162ec808bc7486c07529c9a852b2e6f` |
| 40 | `instance` | [inv_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/inv-lift--2007ab5f4bc0b1e749983ebd.md) | 252 | `declaration-track:2007ab5f4bc0b1e749983ebdbd00a0648a6118ff56a6d4f22b34c71ee6a955ee` |
| 41 | `instance` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/inv--31f26cd359816b543ad7dcd5.md) | 258 | `declaration-track:31f26cd359816b543ad7dcd5627573a9445891a1e019174c6f0b2ac1787a6a21` |
| 42 | `instance` | [lift_id_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-id-inv--2d9faa59e572af61b0db4f26.md) | 267 | `declaration-track:2d9faa59e572af61b0db4f26a3e0df6c2329be073c6f69edef39af45f46a9ca0` |
| 43 | `instance` | [lift_id_inv_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/declarations/lift-id-inv-isiso--9888f97ea401337f44c96901.md) | 272 | `declaration-track:9888f97ea401337f44c96901ce9cf0e61be2db531e955e28d18cba054e83d45a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
