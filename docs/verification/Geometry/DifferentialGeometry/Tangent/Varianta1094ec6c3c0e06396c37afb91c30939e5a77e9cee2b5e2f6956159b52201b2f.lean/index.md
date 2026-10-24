# Verification target: GRWTSK.Geometry.DifferentialGeometry.Tangent.Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f5614cf647a2a6c40b47155bab39268e2e7dc91",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f5614cf647a2a6c40b47155bab39268e2e7dc91`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_fderiv_coord_change](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/contdiffon-fderiv-coord-change--9b4ce2cc3ddabbf13423834d.md) | 53 | `result-track:9b4ce2cc3ddabbf13423834d0a3697d24f12b38741a3598655a777d78ab6040e` |
| 2 | `def` | [tangentBundleCore](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlecore--4db9776821d429619909b9cf.md) | 79 | `declaration-track:4db9776821d429619909b9cf7baff4d0cdb6d817df6c98e277dd81e1efd2848d` |
| 3 | `theorem` | [tangentBundleCore_baseSet](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlecore-baseset--5c06947fcaa7c0172b71aa07.md) | 116 | `result-track:5c06947fcaa7c0172b71aa07ea79aca8aadfe8939fe73d8cb04f42e6666ed641` |
| 4 | `theorem` | [tangentBundleCore_coordChange_achart](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlecore-coordchange-achart--fbb8fc5816977940b4c2080d.md) | 120 | `result-track:fbb8fc5816977940b4c2080d0ac7f3341502255087d8fb8e8fb798bdd48039bb` |
| 5 | `def` | [TangentSpace](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentspace--417e85541785b9725fd07d95.md) | 131 | `declaration-track:417e85541785b9725fd07d9562047d6eb0aceb312a68923e3779958af1b521e0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--155ba55509e276a6fa168c2d.md) | 137 | `declaration-track:155ba55509e276a6fa168c2db0547e0bbb1ee7a7119e558521b78f97eb84b2e5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--c131e5101a70d6ed1eb4f8e0.md) | 138 | `declaration-track:c131e5101a70d6ed1eb4f8e0d09f5034f445f8532f665e659a3f102919cf08cc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--c4dd17b03f94689335250be3.md) | 139 | `declaration-track:c4dd17b03f94689335250be3a4f0a1dfc1ab53df31c248bd01c5bc4d60b09ace` |
| 9 | `def` | [TangentBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundle--5e4a20b179a5938edac3deb9.md) | 147 | `declaration-track:5e4a20b179a5938edac3deb990cd1a38ca59ddfd3031b87b3b4f7a385859b7b3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--5b7a91568936be391684bf6c.md) | 162 | `declaration-track:5b7a91568936be391684bf6c0fdf500a031b3c573616fb64e1a7c3b4cfdd1087` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--22037fe8c1691af631a8ef3d.md) | 164 | `declaration-track:22037fe8c1691af631a8ef3d7f4848920a82550ee02a5838b39f3848bf6e7565` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--c0bba2e182ba24c4b0dada55.md) | 170 | `declaration-track:c0bba2e182ba24c4b0dada553848cda07b58eab129724f9e53a9e4e9a1f42806` |
| 13 | `instance` | [TangentSpace.fiberBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentspace-fiberbundle--42fa0383730bae16c0362d07.md) | 173 | `declaration-track:42fa0383730bae16c0362d07031e6057df03d888a87ee62c4e95aa7f4019b0fb` |
| 14 | `instance` | [TangentSpace.vectorBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentspace-vectorbundle--741a312741b23640fe396c53.md) | 176 | `declaration-track:741a312741b23640fe396c538013dbb144006ec7ed1a8541a8b24d9038c7bfe3` |
| 15 | `theorem` | [chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/chartat--0063f1eaa7cdf1f3ff498a52.md) | 181 | `result-track:0063f1eaa7cdf1f3ff498a52590dd7a6584eb4197c99eadd51dba7be8bd20d93` |
| 16 | `theorem` | [chartAt_toLocalEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/chartat-tolocalequiv--fd9f207fc382f67e24a6c541.md) | 188 | `result-track:fd9f207fc382f67e24a6c54140586a5003ba37c3e2793b71cc0ca4b3167cf72f` |
| 17 | `theorem` | [trivializationAt_eq_localTriv](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-eq-localtriv--c32df30cecb97f2983a4bb4e.md) | 195 | `result-track:c32df30cecb97f2983a4bb4ecc77971363d62d64124d6775ccdd3799e7870781` |
| 18 | `theorem` | [trivializationAt_source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-source--f9d8269d6fc88dda03dab208.md) | 202 | `result-track:f9d8269d6fc88dda03dab20875629293278b147556b47fe193987b17224e3e6d` |
| 19 | `theorem` | [trivializationAt_target](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-target--a337eb576aae564fec032e11.md) | 209 | `result-track:a337eb576aae564fec032e1127c42839a0adb01a6367511b4483c8f5733432a4` |
| 20 | `theorem` | [trivializationAt_baseSet](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-baseset--528d278cc01ce33aa3f615ba.md) | 215 | `result-track:528d278cc01ce33aa3f615ba84ad442e72dc7f0357468194168325741b79c3f5` |
| 21 | `theorem` | [trivializationAt_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-apply--7b4cea54fcfef2721e50275b.md) | 220 | `result-track:7b4cea54fcfef2721e50275bc282fa9e5cff8d55cb5c5efdb9138d7ea6f85319` |
| 22 | `theorem` | [trivializationAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-fst--f0df406cfc8b46ba38628953.md) | 228 | `result-track:f0df406cfc8b46ba3862895368760a6e8d51cf109631d5e1ffcf8f903f839fcc` |
| 23 | `theorem` | [mem_chart_source_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/mem-chart-source-iff--43ea2fb61078c6a86bdffcf1.md) | 233 | `result-track:43ea2fb61078c6a86bdffcf18d8d1cf097c188476a9991cc221733e50cd0b18d` |
| 24 | `theorem` | [mem_chart_target_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/mem-chart-target-iff--4084fe882c02f19f6fb6b6c7.md) | 239 | `result-track:4084fe882c02f19f6fb6b6c790f2234610bf35f68452cc8e6e296fefd42ae8a3` |
| 25 | `theorem` | [coe_chartAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/coe-chartat-fst--1b7dadf67d579f156b60ea9d.md) | 251 | `result-track:1b7dadf67d579f156b60ea9d13a6213cb7f5df28afe4e4668986265ec173fa1a` |
| 26 | `theorem` | [coe_chartAt_symm_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/coe-chartat-symm-fst--193ec61364a05a6085f7f6a6.md) | 256 | `result-track:193ec61364a05a6085f7f6a6ee27e2b433469195270a06fcda9b62f8f9d3ead7` |
| 27 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-continuouslinearmapat--a96861a2806ccaf38d92ef7e.md) | 262 | `result-track:a96861a2806ccaf38d92ef7e119d068586b481e40db8fe3d915882c9e27f8a86` |
| 28 | `theorem` | [trivializationAt_symmL](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/trivializationat-symml--d9c7f0e10ffefea2c2c1e697.md) | 270 | `result-track:d9c7f0e10ffefea2c2c1e697acabbcb1072b12bbf3a2c85c8d9ac67298ac2163` |
| 29 | `theorem` | [coordChange_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/coordchange-model-space--befd58c1dcd299d0f138abf5.md) | 280 | `result-track:befd58c1dcd299d0f138abf5cd01b1b51949cd80236b03c249a4bda8591e2565` |
| 30 | `theorem` | [symmL_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/symml-model-space--0a2c883c983447479326a2a1.md) | 288 | `result-track:0a2c883c983447479326a2a1a57e4a75d0a975b6ab02604626ed8bc4fcddaf71` |
| 31 | `theorem` | [continuousLinearMapAt_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/continuouslinearmapat-model-space--1ee492e66d50c231f8709c0d.md) | 297 | `result-track:1ee492e66d50c231f8709c0d70bc3d0a58f82b742202b01466966b3c8bd19600` |
| 32 | `instance` | [tangentBundleCore.isSmooth](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlecore-issmooth--7e254f9bf2f5135f0c99d174.md) | 305 | `declaration-track:7e254f9bf2f5135f0c99d1746edf7d5b361845a20870ca29d17c64a063ab4a51` |
| 33 | `instance` | [TangentBundle.smoothVectorBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundle-smoothvectorbundle--81b705a4ce3645bba4e40cbd.md) | 316 | `declaration-track:81b705a4ce3645bba4e40cbdf190dd7b1772953a23b46f1c073db5e60750f9a4` |
| 34 | `theorem` | [tangentBundle_model_space_chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundle-model-space-chartat--9c8ab8817351a0d934570925.md) | 328 | `result-track:9c8ab8817351a0d934570925cd57d5ea2ed7faf7269bb090fe918e9d5d767529` |
| 35 | `theorem` | [tangentBundle_model_space_coe_chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundle-model-space-coe-chartat--8bf78bfc9e14ba2b09bef24e.md) | 342 | `result-track:8bf78bfc9e14ba2b09bef24e0564babbcfea3af9399a176b64ce13ece7ab6aaa` |
| 36 | `theorem` | [tangentBundle_model_space_coe_chartAt_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundle-model-space-coe-chartat-symm--2b93dc77a55484d9a43e4fae.md) | 348 | `result-track:2b93dc77a55484d9a43e4fae500eef222f2d93d70a0f7eb1bb618daab7862cc4` |
| 37 | `theorem` | [tangentBundleCore_coordChange_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlecore-coordchange-model-space--1644ec5acc0e772d9e9c8225.md) | 355 | `result-track:1644ec5acc0e772d9e9c8225c815e2cc7b86ec03cfefcd2697b8dd467be384e7` |
| 38 | `def` | [tangentBundleModelSpaceHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlemodelspacehomeomorph--e55e4416a067a58bdfec2cc5.md) | 364 | `declaration-track:e55e4416a067a58bdfec2cc561cd010191d6f1b371539af910a7a77568220c15` |
| 39 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlemodelspacehomeomorph-coe--f1d529b1f6a20933a7e28d96.md) | 383 | `result-track:f1d529b1f6a20933a7e28d96dee47d6bca277a0bac07aeb2c26e64654d6e422d` |
| 40 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/tangentbundlemodelspacehomeomorph-coe-symm--d5912fe48fec7261d7dfcd87.md) | 390 | `result-track:d5912fe48fec7261d7dfcd87b81f349e174cf94412fdf9a276ce4636040f6a67` |
| 41 | `theorem` | [inCoordinates_tangent_bundle_core_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/incoordinates-tangent-bundle-core-model-space--476b1d67ffe49d86a00ccc2f.md) | 401 | `result-track:476b1d67ffe49d86a00ccc2f4a3d32128735fcd5759b65b36ef08ab8276928ca` |
| 42 | `def` | [inTangentCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/intangentcoordinates--1461408e320af3725d7c17d6.md) | 419 | `declaration-track:1461408e320af3725d7c17d6359bf39b8a967e622cbc6527f214a9117c94ad96` |
| 43 | `theorem` | [inTangentCoordinates_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/intangentcoordinates-model-space--ccd12ee7f7a6624ac3cc3e0d.md) | 423 | `result-track:ccd12ee7f7a6624ac3cc3e0df33a4e292db1218b2bb624016f4c0491bb45a549` |
| 44 | `theorem` | [inTangentCoordinates_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/intangentcoordinates-eq--f5290d233d6cf02ee5c310ba.md) | 428 | `result-track:f5290d233d6cf02ee5c310ba8f4c5cdf47e7d119ab705dc31b5b391f276e3406` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Varianta1094ec6c3c0e06396c37afb91c30939e5a77e9cee2b5e2f6956159b52201b2f.lean/declarations/instance--df919dddb6887f1b701a50b1.md) | 446 | `declaration-track:df919dddb6887f1b701a50b1ae473cf4df7b6409ced5327a8c2fff565cdaa850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
