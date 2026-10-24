# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf9a1717a2ff69f61f03d974cf19e7061cb7abc4",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf9a1717a2ff69f61f03d974cf19e7061cb7abc4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coalgebrastruct--f1eddadfbd45aaa02c8c7856.md) | 32 | `declaration-track:f1eddadfbd45aaa02c8c78561fed65fbe626a80e62dc492cbc1c971aa5d6af70` |
| 2 | `structure` | [Coalgebra.Repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coalgebra-repr--f10fe84d714770e47f7bd3a7.md) | 43 | `declaration-track:f10fe84d714770e47f7bd3a766071ca42175697bbd64c1f71349a019afc1ee30` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coalgebra-repr-arbitrary--8f3ea6183efa3df4c890f665.md) | 57 | `declaration-track:8f3ea6183efa3df4c890f6655b1fd77427882c161c97657ed5e25152a4bec645` |
| 4 | `class` | [Coalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coalgebra--679c6d42344d18b7554cc750.md) | 74 | `declaration-track:679c6d42344d18b7554cc75093ac4919a53fe17a053a0e16d597c7a9c72b32f3` |
| 5 | `theorem` | [coassoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coassoc-apply--9753f9964cbaf7c197190018.md) | 88 | `result-track:9753f9964cbaf7c197190018998fe340ba107f03fff4d1316159a9a7b8dd1f05` |
| 6 | `theorem` | [coassoc_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coassoc-symm-apply--12088491ad214e98aad6ac77.md) | 93 | `result-track:12088491ad214e98aad6ac777dc1e36bafb19ad96de531e229b8f1ebbbb077ea` |
| 7 | `theorem` | [coassoc_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/coassoc-symm--6314cb70550c486aea82f91f.md) | 98 | `result-track:6314cb70550c486aea82f91fa7f0c65fa8aa88cc17bf4fc066b0e1e7cf960cdd` |
| 8 | `theorem` | [rTensor_counit_comul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/rtensor-counit-comul--60ff45081f9efef9b6b41be1.md) | 104 | `result-track:60ff45081f9efef9b6b41be1c3f4ce1b450da693238bb37f26560f3e21f39809` |
| 9 | `theorem` | [lTensor_counit_comul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/ltensor-counit-comul--aceb3b31daabd0da817681df.md) | 108 | `result-track:aceb3b31daabd0da817681df0228b705f6040e1c3710c5b5770aa91bea34a6ff` |
| 10 | `lemma` | [sum_counit_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-counit-tmul-eq--53f62830550910370f45e87e.md) | 112 | `result-track:53f62830550910370f45e87ee1cbb7652d3104b34dbf13d1bf84b0d3d8808d16` |
| 11 | `lemma` | [sum_tmul_counit_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-tmul-counit-eq--07d704d458a177b278bb7ecc.md) | 117 | `result-track:07d704d458a177b278bb7ecce1d02b59dd433c1c0e7bdb1d216c1b9ae6193520` |
| 12 | `lemma` | [sum_tmul_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-tmul-tmul-eq--c844eeb9657e2de60114d8c9.md) | 122 | `result-track:c844eeb9657e2de60114d8c9a1b3653f38f1ae53f9d0c1cadf4d5c1aa90ddc13` |
| 13 | `theorem` | [sum_counit_tmul_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-counit-tmul-map-eq--a6a90e79a25478c98d973ba3.md) | 132 | `result-track:a6a90e79a25478c98d973ba3c8c22485017a548afe3dc055ff643907158676ad` |
| 14 | `theorem` | [sum_map_tmul_counit_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-map-tmul-counit-eq--65d2b74d63ee332f26ce16a5.md) | 140 | `result-track:65d2b74d63ee332f26ce16a599cbbcbfea72b04a6caaae768125d15e84635f9b` |
| 15 | `theorem` | [sum_map_tmul_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/sum-map-tmul-tmul-eq--9f9de6356d4b4065c8eb478e.md) | 148 | `result-track:9f9de6356d4b4065c8eb478ebda7fea9a0b3fe515acbad39a2b4f5ca2166ec17` |
| 16 | `instance` | [toCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/tocoalgebra--b5feed43198a502097e76e2e.md) | 168 | `declaration-track:b5feed43198a502097e76e2ed7afb7ec5f9fba0086a57c9ed5c8e716edc885a0` |
| 17 | `theorem` | [comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-apply--369b3ab8051a20b39117c955.md) | 176 | `result-track:369b3ab8051a20b39117c955be4ecf97fad96751abe39d3f3e43500b98ff011a` |
| 18 | `theorem` | [counit_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-apply--505d42e06944f7fb4e49c86b.md) | 179 | `result-track:505d42e06944f7fb4e49c86b7c194e7c3d6075d53366f0126b4ba2a6fe88176f` |
| 19 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebrastruct--8fcd2b6b377d700af2cca817.md) | 190 | `declaration-track:8fcd2b6b377d700af2cca817648e1439c50fa824039aec5faed5dfcb0e1063d6` |
| 20 | `theorem` | [comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-apply--e4af20d3081f480a997cb74e.md) | 197 | `result-track:e4af20d3081f480a997cb74ee56c6602071b4329259fd78464fc2f1bda1cece8` |
| 21 | `theorem` | [counit_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-apply--a8fa9cc3576636eed5a3d8e6.md) | 203 | `result-track:a8fa9cc3576636eed5a3d8e6f270d54b5c7f49168f3ac0688b71c47a06b341db` |
| 22 | `theorem` | [comul_comp_inl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-inl--cc061f0c64f829a1f5a664a0.md) | 205 | `result-track:cc061f0c64f829a1f5a664a0b039f7a37df51477f72b774637f7b69c54e7e7f1` |
| 23 | `theorem` | [comul_comp_inr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-inr--d3bf76df20b854b0aa5e11f1.md) | 209 | `result-track:d3bf76df20b854b0aa5e11f1c16557c5ec8c033f0aef2a486f7c66b45687c6c2` |
| 24 | `theorem` | [comul_comp_fst](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-fst--ff0234c69f37f88f22552404.md) | 213 | `result-track:ff0234c69f37f88f22552404888541b53938bd414d7f166065430451c054ee45` |
| 25 | `theorem` | [comul_comp_snd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-snd--8476f19768ac46d2537734ee.md) | 221 | `result-track:8476f19768ac46d2537734ee67d14a12a5f22d6cd77d01aa5b7f5301c22d037a` |
| 26 | `theorem` | [counit_comp_inr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-comp-inr--7741dfa9b0e6d4f1a4d119cb.md) | 229 | `result-track:7741dfa9b0e6d4f1a4d119cb338b4dca97f1955a7e277d0a52f7adbecd538759` |
| 27 | `theorem` | [counit_comp_inl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-comp-inl--176395af8dc7e91415094fdc.md) | 231 | `result-track:176395af8dc7e91415094fdcb8295345f844b3da0b0135dd7e3c8843639954f2` |
| 28 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebra--75702a52956ed8998756f76d.md) | 233 | `declaration-track:75702a52956ed8998756f76dc40a991383dcbe33bcaa8da31eb8a5974572423f` |
| 29 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebrastruct--a2e37a7bac6365f81b06758b.md) | 267 | `declaration-track:a2e37a7bac6365f81b06758b28a8ca9ec79b59f9718e72d472996f7b6a1f113a` |
| 30 | `theorem` | [comul_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-single--17141240e8deebd5f12191a7.md) | 273 | `result-track:17141240e8deebd5f12191a7f293e6200bfc090546d7005efa19ff93d8017ed9` |
| 31 | `theorem` | [counit_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-single--5f57e79b6d060853bc5e7c39.md) | 279 | `result-track:5f57e79b6d060853bc5e7c396b75f4f5ad67d17374de688bae96692952748e60` |
| 32 | `theorem` | [comul_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-lsingle--48233b8ed2027e1cc0f53257.md) | 282 | `result-track:48233b8ed2027e1cc0f53257676ccbd7ad0d10c5ae67de7ca94519589c7088a0` |
| 33 | `theorem` | [comul_comp_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-lapply--e3f880c55ad16a2668372c6b.md) | 286 | `result-track:e3f880c55ad16a2668372c6b9e89501d20c70a9aab0af838e997e4cfab1c0c63` |
| 34 | `theorem` | [counit_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-comp-lsingle--31e04926238c7db45270dec1.md) | 295 | `result-track:31e04926238c7db45270dec106046548498d3e124664db0aa11ad16e491d49dc` |
| 35 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebra--0eb1b79f1eb6b1f42335e100.md) | 304 | `declaration-track:0eb1b79f1eb6b1f42335e100f13e9f79f7aef66629df834769053fab4ad3129a` |
| 36 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebrastruct--ff96ad1b65e5602dd8ff4394.md) | 328 | `declaration-track:ff96ad1b65e5602dd8ff439483895aae2ce250d2e0d63bcc32e45ec701b436fb` |
| 37 | `theorem` | [comul_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-single--917c827c73d53bdbc6e15a93.md) | 334 | `result-track:917c827c73d53bdbc6e15a9311f2da14e4012cb08d02d53dd0eb283fc63fff2a` |
| 38 | `theorem` | [counit_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-single--518ad315c5e852465b6eb605.md) | 340 | `result-track:518ad315c5e852465b6eb6059977dc9f1d002951d43be383f20ed603ba9c8171` |
| 39 | `theorem` | [comul_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-lsingle--573b27120082ff7683d1a6c4.md) | 343 | `result-track:573b27120082ff7683d1a6c44de1cc46ec54770d777bd006ce0b4a3fbed7c009` |
| 40 | `theorem` | [comul_comp_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/comul-comp-lapply--3f2de306ebbd0ed5585075a3.md) | 347 | `result-track:3f2de306ebbd0ed5585075a31a7bd30a565be993166dc1a8d174a592fdce2943` |
| 41 | `theorem` | [counit_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/counit-comp-lsingle--2e9155414c6668e4bf40e28a.md) | 356 | `result-track:2e9155414c6668e4bf40e28a9360c8dcc29349a7365529d0705b8ed889cd7d79` |
| 42 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/declarations/instcoalgebra--96058a36c1ca78c959046a23.md) | 363 | `declaration-track:96058a36c1ca78c959046a23aabfdc01eecb55cd5e325f4e7397c469b73b3120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
