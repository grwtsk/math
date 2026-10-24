# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opens.Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dbb28bf02031f4eb52a17285586d7725bab0e81",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dbb28bf02031f4eb52a17285586d7725bab0e81`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [opensHomHasCoeToFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/openshomhascoetofun--ca496de3a73b2bbb02d66f09.md) | 49 | `declaration-track:ca496de3a73b2bbb02d66f0922b5f06097d1c66b7fef5754d698fbb35ba53d1e` |
| 2 | `def` | [infLELeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/infleleft--b192608e9e3b1e0bf8a08ad7.md) | 61 | `declaration-track:b192608e9e3b1e0bf8a08ad70c72fd5a62a29c95d499c915d19f1eeac84b5c6b` |
| 3 | `def` | [infLERight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/infleright--8f217360c80bb8ba53726e76.md) | 67 | `declaration-track:8f217360c80bb8ba53726e76bbb8bf0ef296971f8a3e057743d9dd89c548eb71` |
| 4 | `def` | [leSupr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/lesupr--8afc4178b8ce5ef453ecc42f.md) | 73 | `declaration-track:8afc4178b8ce5ef453ecc42fd022598b20120107913f6ad3690b80f4f080c00a` |
| 5 | `def` | [botLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/botle--72a53a7bf43ab042e621cf8b.md) | 79 | `declaration-track:72a53a7bf43ab042e621cf8b0176cc9aa08973565ce055286f7f6a2e6e364162` |
| 6 | `def` | [leTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/letop--ffac7c54141e83ec5ae3d23d.md) | 85 | `declaration-track:ffac7c54141e83ec5ae3d23d03f10abaf8fbfed56eb3575ccc8b910a1f771d84` |
| 7 | `theorem` | [infLELeft_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/infleleft-apply--0cdfe9b5a681e5c16f1c878a.md) | 91 | `result-track:0cdfe9b5a681e5c16f1c878ab3188913a6f59125b3baf585228ca6eae8715dd8` |
| 8 | `theorem` | [infLELeft_apply_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/infleleft-apply-mk--d3bd0660a90a861f5cc237f8.md) | 97 | `result-track:d3bd0660a90a861f5cc237f81f8f674096333527ad8422028800f23ade68b920` |
| 9 | `theorem` | [leSupr_apply_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/lesupr-apply-mk--4df8482fdb3f6133a0b96f2e.md) | 103 | `result-track:4df8482fdb3f6133a0b96f2edf44c5ad007c3bd81df85bd8ce8a71847e12cb38` |
| 10 | `def` | [toTopCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/totopcat--8146db1ccab39549cd41080e.md) | 111 | `declaration-track:8146db1ccab39549cd41080ef9a6a89857e43bc93646c61c840929a6e1eb4549` |
| 11 | `theorem` | [toTopCat_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/totopcat-map--0160162aedff7d7fdded3e97.md) | 120 | `result-track:0160162aedff7d7fdded3e972ee08c0581ac0996057156a8de7b01236598247d` |
| 12 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/inclusion--638eaabdb80d186317db029b.md) | 129 | `declaration-track:638eaabdb80d186317db029b3cee7f7c3792a8e7b2e55718a1589c8299858686` |
| 13 | `theorem` | [openEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/openembedding--201a2ff7ace6074834883646.md) | 134 | `result-track:201a2ff7ace60748348836465cce1393ae9f99fe81e20ca056147bc33bb26633` |
| 14 | `def` | [inclusionTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/inclusiontopiso--99e7a14da80a0f58dd432e48.md) | 140 | `declaration-track:99e7a14da80a0f58dd432e48dc10d4a8754f4f9ddb5719b93f15bcf83e6c5497` |
| 15 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map--25db85d63527ef5327dbad61.md) | 147 | `declaration-track:25db85d63527ef5327dbad61a704ac7bff512242e0d877383f5af16ee0285427` |
| 16 | `theorem` | [map_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-coe--360103a20ffb4d26ec85c07f.md) | 152 | `result-track:360103a20ffb4d26ec85c07fde43a0c80cf2b0a599412833b3ad3b7a601d36c9` |
| 17 | `theorem` | [map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-obj--0fff01c08915a490e27bb77f.md) | 157 | `result-track:0fff01c08915a490e27bb77ff6ef72472317c9d9d5bc85821eccae9fda09309f` |
| 18 | `theorem` | [map_id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-id-obj--9c185a9813ba52cb99471057.md) | 162 | `result-track:9c185a9813ba52cb994710576595b4a85668dd27f4483fdf17c85e869f9ac7fa` |
| 19 | `theorem` | [map_id_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-id-obj--4b85f99a086a02d11ca88cd5.md) | 168 | `result-track:4b85f99a086a02d11ca88cd5c43a9bebc66f58b2941aef5222d99a43c9a8eba9` |
| 20 | `theorem` | [map_id_obj_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-id-obj-unop--9bc762288b41094aed1a4864.md) | 173 | `result-track:9bc762288b41094aed1a48648842a44b73c322bff379b6f63093ccca97530d45` |
| 21 | `theorem` | [op_map_id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/op-map-id-obj--e78e30054bff8f03afe499d8.md) | 179 | `result-track:e78e30054bff8f03afe499d85d921163b48c124f89aaba5717230d66cf96be89` |
| 22 | `def` | [leMapTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/lemaptop--6de65d10e5a590e6110c8b8f.md) | 184 | `declaration-track:6de65d10e5a590e6110c8b8fcb8d2db4404675d51403789b1e4103ab724efaf4` |
| 23 | `theorem` | [map_comp_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-comp-obj--695761ca1f509cc7193a8bca.md) | 189 | `result-track:695761ca1f509cc7193a8bca3f13669c8914879cecd850cd3d0f61860c40cac3` |
| 24 | `theorem` | [map_comp_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-comp-obj--542b3962298e7977345f9f14.md) | 195 | `result-track:542b3962298e7977345f9f140083ce13ac4cb7d4e855b022f47e3fab01f336c2` |
| 25 | `theorem` | [map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-comp-map--d449d59c750ee5ea9c6da139.md) | 201 | `result-track:d449d59c750ee5ea9c6da139e3b5d764e0122f8123f8e59bb261af29e1f0c6c0` |
| 26 | `theorem` | [map_comp_obj_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-comp-obj-unop--788eb5b74556f22aec585cfa.md) | 207 | `result-track:788eb5b74556f22aec585cfa6aa0940cae9c843082c3f644d122d1a7908713be` |
| 27 | `theorem` | [op_map_comp_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/op-map-comp-obj--fd28774a9227e311c43cf5c2.md) | 213 | `result-track:fd28774a9227e311c43cf5c2d66d4b29ef9a4ffd614b5f0616bc049a8c19a399` |
| 28 | `theorem` | [map_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-isup--7c52a9aa3843735784847c91.md) | 218 | `result-track:7c52a9aa3843735784847c91430669c295d1a10ee555d256eea4603eb5b491bf` |
| 29 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapid--7c8b19d22fb3b19113e76b0f.md) | 232 | `declaration-track:7c8b19d22fb3b19113e76b0f81e208c37d4979e93e6fb0656a0f64aeee030433` |
| 30 | `theorem` | [map_id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-id-eq--468420fcbf41a2516808fc04.md) | 237 | `result-track:468420fcbf41a2516808fc04f4d6f25573a5db0a170a8b39a60122c1bdb2910e` |
| 31 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapcomp--61d97524363dce11a8c084cd.md) | 247 | `declaration-track:61d97524363dce11a8c084cd29673adc8ba038b74568f1f9110b84b2ec444d21` |
| 32 | `theorem` | [map_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-comp-eq--205eab0f266670c3861f32e9.md) | 252 | `result-track:205eab0f266670c3861f32e93ea31fbc5b94f239acc877b845533c48e45b835b` |
| 33 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapiso--e18b23e22790e77f9d6aa02f.md) | 261 | `declaration-track:e18b23e22790e77f9d6aa02f0990fd1b6c8563c8865edea6182c38672817ddf9` |
| 34 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-eq--d2411793693919f4ad4ea7ba.md) | 265 | `result-track:d2411793693919f4ad4ea7ba21d7b4405d5c13bfac7f10a476ebf13ecd5ecb3f` |
| 35 | `theorem` | [mapIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapiso-refl--080ff739d1f3ad9003b28ee4.md) | 271 | `result-track:080ff739d1f3ad9003b28ee48c94cdd61ef02c8389da459dd2bf3c590362beb8` |
| 36 | `theorem` | [mapIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapiso-hom-app--df62e4fdbf23e1c33cb50926.md) | 276 | `result-track:df62e4fdbf23e1c33cb50926d2f202815641d431b9d41a99e59fd0b8f4881187` |
| 37 | `theorem` | [mapIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapiso-inv-app--d43126bb46a88781bdf7f3b3.md) | 282 | `result-track:d43126bb46a88781bdf7f3b32dda29373a0cfdeaa65b1a338c1f4df4384b79f6` |
| 38 | `def` | [mapMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/mapmapiso--ba0fdf6aadb09270528ce54f.md) | 292 | `declaration-track:ba0fdf6aadb09270528ce54fe534ad1bab2aea1d072766a9e9cdf2bf4e80db39` |
| 39 | `def` | [IsOpenMap.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/isopenmap-functor--641fa1af7fb66c76f1d5e746.md) | 304 | `declaration-track:641fa1af7fb66c76f1d5e746c6ad3a107ed2bd25a06140071518ba245772cc89` |
| 40 | `def` | [IsOpenMap.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/isopenmap-adjunction--f8402fa09114cc3421cac70b.md) | 311 | `declaration-track:f8402fa09114cc3421cac70b52329b81314420d3c0cfa7d0ec123392cbabd0c5` |
| 41 | `instance` | [IsOpenMap.functorFullOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/isopenmap-functorfullofmono--52a9994750f68906fcef370d.md) | 318 | `declaration-track:52a9994750f68906fcef370de381d7354788e1e8d6628796011a3200f83bf316` |
| 42 | `instance` | [IsOpenMap.functor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/isopenmap-functor-faithful--7543354fc8fb2e3c7909c94e.md) | 326 | `declaration-track:7543354fc8fb2e3c7909c94e82de2355edf283d120b4baa225bdd18d1d242ba4` |
| 43 | `theorem` | [openEmbedding_obj_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/openembedding-obj-top--d42576e10e3feacfb8beccb9.md) | 335 | `result-track:d42576e10e3feacfb8beccb943ba754f2580de65c19266ed59a914ac21b0c377` |
| 44 | `theorem` | [inclusion_map_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/inclusion-map-eq-top--384529e4d9ef95c491f537ee.md) | 342 | `result-track:384529e4d9ef95c491f537eeac67d609fffbbbdc2af1b2ac396a73c2dc4f51d2` |
| 45 | `theorem` | [adjunction_counit_app_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/adjunction-counit-app-self--25a155a05833f7b046732070.md) | 348 | `result-track:25a155a05833f7b046732070223d3ed732aa33943479e146f7f80581b8c8dc6e` |
| 46 | `theorem` | [inclusion_top_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/inclusion-top-functor--d32f19cf7e0e6c53fbe2ac7f.md) | 352 | `result-track:d32f19cf7e0e6c53fbe2ac7f4615e8775fd04a06e6a4416a8df41c9a0d78226f` |
| 47 | `theorem` | [functor_obj_map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/functor-obj-map-obj--1ffa039754b7a4d3cb43200b.md) | 362 | `result-track:1ffa039754b7a4d3cb43200bc15ba46ddcab5466ce910692e00869010c64e7af` |
| 48 | `lemma` | [set_range_forget_map_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/set-range-forget-map-inclusion--b8e7642324abf98e0c63f33c.md) | 373 | `result-track:b8e7642324abf98e0c63f33cf20f6c7bcd82a8e8dcd735e1f3906f5ae6b5dd16` |
| 49 | `theorem` | [functor_map_eq_inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/functor-map-eq-inf--337e5c6380beeedce8cf769c.md) | 383 | `result-track:337e5c6380beeedce8cf769cff3b0dda5aa87af69ced50c05aa39aef1a7c1746` |
| 50 | `theorem` | [map_functor_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-functor-eq--db823895b580e799ae4c3ef4.md) | 391 | `result-track:db823895b580e799ae4c3ef45e0cfe4df1420af1e09dadb8896fd653b68676dd` |
| 51 | `theorem` | [map_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/map-functor-eq--f95c1b9810e65cfa073764ea.md) | 397 | `result-track:f95c1b9810e65cfa073764ea3f8ce6f2298dec259d52a54c070b34c9dc52dd1d` |
| 52 | `theorem` | [adjunction_counit_map_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant9b9ba9cb7453b445e7170c0aa996dc83389248bec5be88140344d147ca372217.lean/declarations/adjunction-counit-map-functor--629930f071a0c16f2e9df881.md) | 403 | `result-track:629930f071a0c16f2e9df881437ca0c1589f472de6c0fd2a50667e922553e54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
