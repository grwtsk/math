# Verification target: GRWTSK.Algebra.Basic.Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e31332236473030a63735df6a7d17142a665de4",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e31332236473030a63735df6a7d17142a665de4`.

Source path: `GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Generators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Localization` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Presentation](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/algebra-presentation--fdcae8e12a28a7bc957ebdd0.md) | 57 | `declaration-track:fdcae8e12a28a7bc957ebdd0bdefe0ffb14008f958bfcf51e58790bd50016a74` |
| 2 | `lemma` | [aeval_val_relation](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aeval-val-relation--799e24503e24b3f907386022.md) | 72 | `result-track:799e24503e24b3f9073860224cfb171b5c7f6125aadca151745bbb1fc2884c19` |
| 3 | `lemma` | [relation_mem_ker](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/relation-mem-ker--c334958fb3e8e21dd77335c7.md) | 76 | `result-track:c334958fb3e8e21dd77335c71e44e17aa7a09efdcc339e37f2c4c96350bfb1a2` |
| 4 | `abbrev` | [Quotient](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/quotient--911c5991844d64b106f92c42.md) | 82 | `declaration-track:911c5991844d64b106f92c4254b44d1896722671f7a426ea895f71988a181489` |
| 5 | `def` | [quotientEquiv](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/quotientequiv--5e95c9445b0e9ab535c6dc34.md) | 85 | `declaration-track:5e95c9445b0e9ab535c6dc3489278790d8e3638001bb7ab1b06fd3f57c9df3f5` |
| 6 | `lemma` | [quotientEquiv_mk](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/quotientequiv-mk--efbafe5a13ae9c3779414b2d.md) | 90 | `result-track:efbafe5a13ae9c3779414b2da4cb56325eff2d6fc427391c63a974174de74409` |
| 7 | `lemma` | [quotientEquiv_symm](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/quotientequiv-symm--0f08aeee57dba48a59e77ff8.md) | 94 | `result-track:0f08aeee57dba48a59e77ff81f9c04dbc2474505c44c347a7f92bb588ca0b386` |
| 8 | `def` | [dimension](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/dimension--e8ae2690a03508ff619b77de.md) | 105 | `declaration-track:e8ae2690a03508ff619b77de0bc431ed5f2b60f13dd05a6d275c5869561a857e` |
| 9 | `class` | [IsFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/isfinite--caca6c0fb961f4b55865a608.md) | 110 | `declaration-track:caca6c0fb961f4b55865a608aff889bea2e903a0e46ad04fb497d76c1c26181f` |
| 10 | `lemma` | [ideal_fg_of_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/ideal-fg-of-isfinite--9f7ad11114bf30bf96ccb61e.md) | 116 | `result-track:9f7ad11114bf30bf96ccb61e9901950448c700774b2e19c386272131297a154c` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/instance--abbf7eb7b35728868e7cc5ea.md) | 122 | `declaration-track:abbf7eb7b35728868e7cc5eae0e63b6f0ec7e22daa4a48d5a2c10430476a33ec` |
| 12 | `lemma` | [finitePresentation_of_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/finitepresentation-of-isfinite--65153bb7f87ef427130675cf.md) | 125 | `result-track:65153bb7f87ef427130675cfc0e79198747e6dfe757126f1162b3f5da7e59eee` |
| 13 | `def` | [ofFinitePresentation](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/offinitepresentation--f901372529ad9670ecaf5abd.md) | 132 | `declaration-track:f901372529ad9670ecaf5abdac733764676a73bbfb95e747e87dde4ec6bc704b` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/instance--1cf396eca3fda5976f2a1986.md) | 147 | `declaration-track:1cf396eca3fda5976f2a19862c2caf6777e3ba047a10df0821d79f35f299b688` |
| 15 | `def` | [ofBijectiveAlgebraMap](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/ofbijectivealgebramap--ea2f2fb6381240fafb5d22cc.md) | 154 | `declaration-track:ea2f2fb6381240fafb5d22cce8ce7423825bec55f6f75eb433ae4cf640912019` |
| 16 | `instance` | [ofBijectiveAlgebraMap_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/ofbijectivealgebramap-isfinite--3441638e6002eab3f48dda01.md) | 167 | `declaration-track:3441638e6002eab3f48dda0107f7dbded20f0fe7989641927e5cb0133cb867a4` |
| 17 | `lemma` | [ofBijectiveAlgebraMap_dimension](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/ofbijectivealgebramap-dimension--54e279e23eca33ad41cf3e75.md) | 172 | `result-track:54e279e23eca33ad41cf3e757794b9a7dce644091b70ef0a5c6448624bf49d3a` |
| 18 | `def` | [id](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/id--b21b9ef12c38a60990ca59da.md) | 179 | `declaration-track:b21b9ef12c38a60990ca59da371485bc8ce366ffc944bc40e6ca62bdce8ae157` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/instance--453bcbc6619c450e7bdc91b5.md) | 181 | `declaration-track:453bcbc6619c450e7bdc91b5657dccb6c8de7e29ec249b675de1481149299efc` |
| 20 | `lemma` | [id_dimension](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/id-dimension--dfd658e493244f315047dd8f.md) | 183 | `result-track:dfd658e493244f315047dd8f091f080e03a6259a097054001e8db5d1e17e8dae` |
| 21 | `lemma` | [_root_.Algebra.Generators.ker_localizationAway](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/root-algebra-generators-ker-localizationaway--05fc35668492caaaafcc08c1.md) | 192 | `result-track:05fc35668492caaaafcc08c1a6e33fa2ea06543d174ca8e3803c877929a04634` |
| 22 | `def` | [localizationAway](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/localizationaway--ef943549b9ee9ce88e71cc62.md) | 213 | `declaration-track:ef943549b9ee9ce88e71cc628073460409254f324c52d52efbc276250e2a21c0` |
| 23 | `instance` | [localizationAway_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/localizationaway-isfinite--56b289980d53681aeb78505c.md) | 221 | `declaration-track:56b289980d53681aeb78505c19c340f4837c8e17f429dddd54e0706fc048755f` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/instance--7e2c401c847458c54edcdbaf.md) | 225 | `declaration-track:7e2c401c847458c54edcdbaf9fec8369255ce4f3e12f54cd54080814f52e8e48` |
| 25 | `lemma` | [localizationAway_dimension_zero](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/localizationaway-dimension-zero--1c6f2ea68c2881bd197410c1.md) | 229 | `result-track:1c6f2ea68c2881bd197410c115dad3f530b7a7417b3ff53b19379dc8325ff35f` |
| 26 | `lemma` | [span_range_relation_eq_ker_baseChange](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/span-range-relation-eq-ker-basechange--5d6a44bd8c4906fdb61d7625.md) | 238 | `result-track:5d6a44bd8c4906fdb61d7625036efd1912934a5eca09f9fadf3bd500b9330577` |
| 27 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/basechange--a8b73a75953c428b97881b7e.md) | 293 | `declaration-track:a8b73a75953c428b97881b7e83373c38ac71d4191b064045f1e6ba567725c204` |
| 28 | `lemma` | [baseChange_toGenerators](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/basechange-togenerators--ecd6bb7a02ed7b386bf34ec9.md) | 299 | `result-track:ecd6bb7a02ed7b386bf34ec9e88322b50cf425679d6b4854a3948c2e4aa76e5a` |
| 29 | `instance` | [baseChange_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/basechange-isfinite--315b9becba651fc72fd8bf88.md) | 301 | `declaration-track:315b9becba651fc72fd8bf88ae86d835144df24503b18dc564c7fd9d1297f75a` |
| 30 | `def` | [aux](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux--9085ea703e3c6bc3e53344c6.md) | 350 | `declaration-track:9085ea703e3c6bc3e53344c66d42eea1ec11f6d0521720a58d7bf2ab62e55880` |
| 31 | `def` | [comp_relation_aux](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp-relation-aux--fc8c1a1c39bba50348b4eb56.md) | 354 | `declaration-track:fc8c1a1c39bba50348b4eb56b44514b9a203e5da51087315180204465a0d9aa6` |
| 32 | `lemma` | [aux_X](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux-x--113dd8e9130af00dd63b9bcc.md) | 359 | `result-track:113dd8e9130af00dd63b9bcc084297fb70fc891b536b1b919e0adbe70d29f159` |
| 33 | `lemma` | [comp_relation_aux_map](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp-relation-aux-map--ec06eb7ec2485dd4791f5ec0.md) | 363 | `result-track:ec06eb7ec2485dd4791f5ec057b7d9761dd8dd464c88720109217d9da0c34fb8` |
| 34 | `lemma` | [aux_surjective](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux-surjective--6d985f590438ab76d9137991.md) | 374 | `result-track:6d985f590438ab76d91379915ac2fc76e516e52115ac696caa9144cab7903086` |
| 35 | `lemma` | [aux_image_relation](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux-image-relation--95e24687a9907a8ad9f15a83.md) | 394 | `result-track:95e24687a9907a8ad9f15a83ad478c3e6d608a14e580eba448dd92a18d23fbb8` |
| 36 | `lemma` | [aux_eq_comp](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux-eq-comp--6f58a2bd4d5a51a4ad3b49d1.md) | 404 | `result-track:6f58a2bd4d5a51a4ad3b49d1818294719d8bf8ef78bf14cd9bf803f3a76c49a7` |
| 37 | `lemma` | [aux_ker](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aux-ker--e8d4d9ba4eaf9e9308b5d05a.md) | 409 | `result-track:e8d4d9ba4eaf9e9308b5d05aa5b9f749da54f9e04ce7ec79e1b3da91a41f883b` |
| 38 | `lemma` | [aeval_comp_val_eq](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/aeval-comp-val-eq--3b44ac77ea6c5cd259453d89.md) | 418 | `result-track:3b44ac77ea6c5cd259453d894631f102cfe5b46af1eed3f305e5db99bcef5f6f` |
| 39 | `lemma` | [span_range_relation_eq_ker_comp](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/span-range-relation-eq-ker-comp--2c9fcbe6d0cf82de861e4f12.md) | 426 | `result-track:2c9fcbe6d0cf82de861e4f12bb80fe3f9a292a01ef46c399b5b8141ccc8c510e` |
| 40 | `def` | [comp](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp--92e41655ed370cd923c6b905.md) | 442 | `declaration-track:92e41655ed370cd923c6b905308399a26a63a1ab975112ccb57c7cb91c1efc04` |
| 41 | `lemma` | [toGenerators_comp](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/togenerators-comp--118ddfdf6ba6ee95de53c35d.md) | 449 | `result-track:118ddfdf6ba6ee95de53c35d9a80f3739cf5ff68931761d54eff2a1aa60f7aad` |
| 42 | `lemma` | [comp_relation_inr](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp-relation-inr--18de7922db0c48e47c32c81f.md) | 452 | `result-track:18de7922db0c48e47c32c81fb62d521e40d8ae5ff512d6a0fe4d344cb0cfb1be` |
| 43 | `lemma` | [comp_aeval_relation_inl](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp-aeval-relation-inl--b79e60588bc76d0628dda545.md) | 456 | `result-track:b79e60588bc76d0628dda5450ac14125ddf76e56f5f8397e2c2a5dd2276b1c1f` |
| 44 | `instance` | [comp_isFinite](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/comp-isfinite--926772cbac690a824925f8df.md) | 462 | `declaration-track:926772cbac690a824925f8df4a9e52a21a5a1f8007371440371d9779572440f9` |
| 45 | `def` | [reindex](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/reindex--b0f36432b09745934466e53a.md) | 472 | `declaration-track:b0f36432b09745934466e53a51e6604bf91d374a9f95de4fc7a65093e16c6dfc` |
| 46 | `lemma` | [isFinite_reindex_iff](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/isfinite-reindex-iff--11f41cb4e278476e4d3f7642.md) | 489 | `result-track:11f41cb4e278476e4d3f76426b166b9f488192940dbbbe5072a3e3cda68855b7` |
| 47 | `lemma` | [dimension_reindex](../../../../mathematics/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/declarations/dimension-reindex--0be628f42a8b356fe8a671a2.md) | 497 | `result-track:0be628f42a8b356fe8a671a25f7949bff83716bde90de15eedafaac7e12fe8d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
