# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7811de23e368269d332cd5864c603b50a2bffd7",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7811de23e368269d332cd5864c603b50a2bffd7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Curry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExteriorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/exterioralgebra--b07d0f020c2b2dbc3085f4a1.md) | 55 | `declaration-track:b07d0f020c2b2dbc3085f4a19f871c722f54849b82048f6c6289926e19de6d96` |
| 2 | `abbrev` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/anonymous--a0cc4f7980b1089491f0decf.md) | 64 | `declaration-track:a0cc4f7980b1089491f0decfb7e06511e46ffd553fab2a478e8e7625be8b9102` |
| 3 | `abbrev` | [exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/exteriorpower--d8b9f8a43a411e716e0b68c6.md) | 74 | `declaration-track:d8b9f8a43a411e716e0b68c675c0a1b01eb3ad9ae85530164edc2db75d398911` |
| 4 | `theorem` | [ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/sq-zero--1debbd8625438c4e1b13c572.md) | 85 | `result-track:1debbd8625438c4e1b13c572730eda8c291227ef377d59fc53ca8836aa398272` |
| 5 | `theorem` | [comp_ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/comp-sq-zero--bb0b573c30924469f8643622.md) | 91 | `result-track:bb0b573c30924469f8643622dbb04581991637264ec969140ca10ad3ef21f8ec` |
| 6 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/lift--e0db718136c16b58d364adad.md) | 101 | `declaration-track:e0db718136c16b58d364adaddf86c7e06a20590cfd40ed22430b755e128399a5` |
| 7 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/comp-lift--b5489032c07517c3698abc58.md) | 105 | `result-track:b5489032c07517c3698abc58bf7ec7efcb299bf52f0df9c4a05c3a6f34395395` |
| 8 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/lift-apply--ef3dd299273ad67b371138e1.md) | 110 | `result-track:ef3dd299273ad67b371138e11480197086a5a8e011329fe119af71315b631ad7` |
| 9 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/lift-unique--5853961f770350b422dbd495.md) | 115 | `result-track:5853961f770350b422dbd495688f76e293b470587aa072ac871c553d59b8c6cb` |
| 10 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/lift-comp--e4ce4345f356511c9de4b666.md) | 122 | `result-track:e4ce4345f356511c9de4b6667e9e32764705c76420f3f21959a57627d52ca98d` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/hom-ext--85c226997f968878ffb682bc.md) | 128 | `result-track:85c226997f968878ffb682bcaa1ff0259859f1ac1d024299dbcd4658b7ff14b4` |
| 12 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/induction--a76155eccaf9daaf9f1b0cfc.md) | 136 | `result-track:a76155eccaf9daaf9f1b0cfcfee57f03e2e1d7023a9363e3d584132b3bf3a9d3` |
| 13 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/algebramapinv--42a243100b2cb688dc8b9bf4.md) | 143 | `declaration-track:42a243100b2cb688dc8b9bf4261bbf95885ba052898a713a856c9389e5bafc32` |
| 14 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/algebramap-leftinverse--e26cbfb67523925e3de26af4.md) | 148 | `result-track:e26cbfb67523925e3de26af420c4ed1a5045db12d4bc97751a3235a6ea156332` |
| 15 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/algebramap-inj--7f2190f6ea70a35bfe0679d8.md) | 153 | `result-track:7f2190f6ea70a35bfe0679d8f87287e9ea0273dfdf7abac7859ba798cc960224` |
| 16 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/algebramap-eq-zero-iff--2f395359d1c67de730ae1bd7.md) | 158 | `result-track:2f395359d1c67de730ae1bd7f9b1451284dc962c03383b87bbd38ffa28c38722` |
| 17 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/algebramap-eq-one-iff--18316673c9aa6d47fcf58319.md) | 162 | `result-track:18316673c9aa6d47fcf583191bbcdea7fde07fd31031bec8368c977583396c11` |
| 18 | `theorem` | [isLocalHom_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/islocalhom-algebramap--0ba21a78ee676faa7795f811.md) | 166 | `result-track:0ba21a78ee676faa7795f8118855cae731c1e2899ed3bf459ebdb2699237a4ae` |
| 19 | `theorem` | [isUnit_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/isunit-algebramap--d0f9c8d85663d75285e21bd5.md) | 169 | `result-track:d0f9c8d85663d75285e21bd55b9f04905690cc1992f73acaca6ac9df91e090c9` |
| 20 | `def` | [invertibleAlgebraMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/invertiblealgebramapequiv--9d56b79fa3233403d368a2a6.md) | 174 | `declaration-track:9d56b79fa3233403d368a2a6ebff295d3724611840ded3f6e8044e1f36496c98` |
| 21 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/totrivsqzeroext--17af967569730dbd7a5a7237.md) | 182 | `declaration-track:17af967569730dbd7a5a7237e31478c957c7cef1dceff431d09f912d898796b0` |
| 22 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/totrivsqzeroext--03feed9b3e0f5e8d5a68f3cf.md) | 187 | `result-track:03feed9b3e0f5e8d5a68f3cff20190e0f21464e91041ad585cf7deb72c6a0d5e` |
| 23 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/inv--de131c396b499d3f4be17dd8.md) | 195 | `declaration-track:de131c396b499d3f4be17dd814e28c6df4c5b0090b1df324ab2bed8253648f41` |
| 24 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/leftinverse--dfaf6e1e4bb1378aaad96c7a.md) | 200 | `result-track:dfaf6e1e4bb1378aaad96c7a7dfe428d0419ebcdfff5668dcd27d6588fd8a1df` |
| 25 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/inj--39dca9de03b4b21d83f1b2f9.md) | 205 | `result-track:39dca9de03b4b21d83f1b2f906f7febf8e125155e6ce8d5ec613da150a2c52b7` |
| 26 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/eq-zero-iff--f988f8e8f1ea7bd1a40bf36a.md) | 209 | `result-track:f988f8e8f1ea7bd1a40bf36a006cc8ff56ff995785ee962ab2bdab59bd09aa29` |
| 27 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/eq-algebramap-iff--33c8d56e0c005780ffb70898.md) | 212 | `result-track:33c8d56e0c005780ffb708986ce9086eb32ab9b1e0c8ddd7b22e72367c4e5bfe` |
| 28 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/ne-one--de106c0662d4c35570c180c8.md) | 224 | `result-track:de106c0662d4c35570c180c8af94a46c42cdc34920cabe3460d2eb95130c5105` |
| 29 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/range-disjoint-one--54827f4ccba1ad8db9f10f9a.md) | 229 | `result-track:54827f4ccba1ad8db9f10f9a8f43bcb07b42cc072d15816f04027d43fc60c7f7` |
| 30 | `theorem` | [ι_add_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/add-mul-swap--3da403ad3aedbe247b839c48.md) | 239 | `result-track:3da403ad3aedbe247b839c48298c01050ba9882203ae0ea5d98e9dd7c5f9be2e` |
| 31 | `theorem` | [ι_mul_prod_list](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/mul-prod-list--f45b62f0fa2c1c4083c7a92d.md) | 242 | `result-track:f45b62f0fa2c1c4083c7a92d6d3cc685589b7d44c4b794ea01e9aba8ff707715` |
| 32 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi--089c7c567b5d926d46e9af1e.md) | 264 | `declaration-track:089c7c567b5d926d46e9af1e35d5696f330d64182facaaf471d17b02a5d379ea` |
| 33 | `theorem` | [ιMulti_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-apply--36c68c940fccbebc9d9dcc0e.md) | 293 | `result-track:36c68c940fccbebc9d9dcc0e9fd103d72d1dd2090258c239235b8cf2aa477414` |
| 34 | `theorem` | [ιMulti_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-zero-apply--9f51551940a885833d2bc535.md) | 297 | `result-track:9f51551940a885833d2bc535f692fd45b97baa79cb4698d1277de96dae4b047c` |
| 35 | `theorem` | [ιMulti_succ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-succ-apply--a85ac9cba053cc90d52f913e.md) | 301 | `result-track:a85ac9cba053cc90d52f913e1fceb8072b48e65e36e62684113800975b5aa5d0` |
| 36 | `theorem` | [ιMulti_succ_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-succ-curryleft--023ec51807fd03db7229cfac.md) | 305 | `result-track:023ec51807fd03db7229cfac7bb05415e1b7442c608976b79f67f8c0b58ada90` |
| 37 | `lemma` | [ιMulti_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-range--a5f36bdd77ad976c645e740c.md) | 315 | `result-track:a5f36bdd77ad976c645e740cd0930141482366b15fc24e8063d78592de634a2e` |
| 38 | `lemma` | [ιMulti_span_fixedDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-span-fixeddegree--bccf2ea1d058fa2515488b4c.md) | 326 | `result-track:bccf2ea1d058fa2515488b4c0ae09c40737116cfe6b6ee293659cee84f998928` |
| 39 | `abbrev` | [ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/multi-family--7abca9ce47632a543152cb78.md) | 340 | `declaration-track:7abca9ce47632a543152cb78c3163c4ab31a578e0d82279184e301dc0794523e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/instance--e173d52c8e0aa12ab25a2cf2.md) | 347 | `declaration-track:e173d52c8e0aa12ab25a2cf210b39316712888891c1c5b1a8bf1ef77481958af` |
| 41 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map--1ac65772bdf668a5b510b74a.md) | 355 | `declaration-track:1ac65772bdf668a5b510b74a4bedb91c5a4992f2c60530514b4928cc24311ac5` |
| 42 | `theorem` | [map_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-comp--e3adeb589ec875b573851241.md) | 359 | `result-track:e3adeb589ec875b573851241d046b688da8943208e74d15b6de13c66389b43c7` |
| 43 | `theorem` | [map_apply_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-apply--b70d11d638b479e0963b5057.md) | 363 | `result-track:b70d11d638b479e0963b5057bd8c2fa10dcbb72b2a4517218932f5cadf1ec879` |
| 44 | `theorem` | [map_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-apply-multi--aa61879fba1cdce57d56238a.md) | 367 | `result-track:aa61879fba1cdce57d56238a983c932646fd073ff32bec52120b88274eff5cfe` |
| 45 | `theorem` | [map_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-comp-multi--80e07a4c40c71f26503b073e.md) | 373 | `result-track:80e07a4c40c71f26503b073e6edb32754693620f19ee7423230ea793a2577c6d` |
| 46 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-id--1ca5b8bfa8719c33c692aae4.md) | 380 | `result-track:1ca5b8bfa8719c33c692aae4c625758349b57d146cdfae105e8abb55ad89274c` |
| 47 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-comp-map--d6ae7e5378798fbcb85ff827.md) | 385 | `result-track:d6ae7e5378798fbcb85ff8277fddd6269fd3253156a0f2a032d8850d173efe5e` |
| 48 | `theorem` | [ι_range_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/range-map-map--fad680e1c1185a0bd30c137a.md) | 390 | `result-track:fad680e1c1185a0bd30c137abf7018efb7d4a8cdd7983cb1daae3f2cd4f50e30` |
| 49 | `theorem` | [toTrivSqZeroExt_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/totrivsqzeroext-comp-map--60d37523da19defce62e8cc9.md) | 395 | `result-track:60d37523da19defce62e8cc976d0c610993e25f7f0c2a4ade5f0f808ccd4bf81` |
| 50 | `theorem` | [ιInv_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/inv-comp-map--af653c8e76d40e47f290e2db.md) | 403 | `result-track:af653c8e76d40e47f290e2dbb2a1394519256e683b18ab86ad810cfe51284665` |
| 51 | `lemma` | [leftInverse_map_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/leftinverse-map-iff--76bef3f450583f3d767688c1.md) | 419 | `result-track:76bef3f450583f3d767688c1ab6c62f284d8ee1b4e6555ae96f3daf25be55f9f` |
| 52 | `lemma` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-injective--c6014c4395db0994efaf7cca.md) | 426 | `result-track:c6014c4395db0994efaf7cca8f8f4d56a0a76eb2f53d9473cfee588c101a59d4` |
| 53 | `lemma` | [map_surjective_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-surjective-iff--41904e0093ba037ec2a69b36.md) | 433 | `result-track:41904e0093ba037ec2a69b3657b1afbd704859eb0106ef8feb053295a541213f` |
| 54 | `lemma` | [map_injective_field](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/map-injective-field--ce635d60568c24bab9e2f5d0.md) | 445 | `result-track:ce635d60568c24bab9e2f5d07d3cae5826e7c7ce07158e58a13bcfcb0facff11` |
| 55 | `def` | [toExterior](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/toexterior--d67dd77d1cfe117bdc01b78f.md) | 457 | `declaration-track:d67dd77d1cfe117bdc01b78f60d554c7760b065ad790a16a477b4000372d09b9` |
| 56 | `theorem` | [toExterior_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/declarations/toexterior--33823c95f918535690722967.md) | 461 | `result-track:33823c95f91853569072296795339c28c9082b795da73603c3426a5e9a5a129c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
