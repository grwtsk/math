# Verification target: GRWTSK.Algebra.FreeAlgebra.Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/index.md) · [Full source](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.UniqueProds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.NoZeroDivisors` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/pre--1d366c05e658a1de1c3e44f1.md) | 59 | `declaration-track:1d366c05e658a1de1c3e44f1f87e435d3a00f9668b77db0c131de54bb9204e1d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--d8d5b9fb2aa92016aa6d32d6.md) | 67 | `declaration-track:d8d5b9fb2aa92016aa6d32d62e3a27ef2e45d6a79f97cb66f8de4f40b1922862` |
| 3 | `def` | [hasCoeGenerator](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hascoegenerator--299d5a26bf30f670e760189b.md) | 71 | `declaration-track:299d5a26bf30f670e760189b8825d24665fab97ec9478ecc982b81792775aa92` |
| 4 | `def` | [hasCoeSemiring](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hascoesemiring--72bdca05b8c3d4a5b7a2f351.md) | 74 | `declaration-track:72bdca05b8c3d4a5b7a2f3518c4c3280b553eebea83c0d9a5ca74dc02ac4a222` |
| 5 | `def` | [hasMul](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hasmul--ca57eee5f1cd6a7474ce17c1.md) | 77 | `declaration-track:ca57eee5f1cd6a7474ce17c16ec759bb64e50324540f01492eb32858cd103262` |
| 6 | `def` | [hasAdd](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hasadd--1b5be5f0b3695ff3794e0f04.md) | 80 | `declaration-track:1b5be5f0b3695ff3794e0f04a846ede62b5565f3028279ecb495b54a3065e803` |
| 7 | `def` | [hasZero](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/haszero--f69a2ae32cf557febd318f8f.md) | 83 | `declaration-track:f69a2ae32cf557febd318f8fbca0e95f7c872bb322c8d53b2a5f82dfe9a3fc4d` |
| 8 | `def` | [hasOne](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hasone--230e2ab03ee13348a38c0835.md) | 86 | `declaration-track:230e2ab03ee13348a38c0835ec9bde589d7df88e99a74ac1795c54f934e4f75e` |
| 9 | `def` | [hasSMul](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hassmul--00d00a78e93d3662cc4a0a1a.md) | 91 | `declaration-track:00d00a78e93d3662cc4a0a1a5860887d4b732c2e786bf2b1b391ec3deaa921aa` |
| 10 | `def` | [liftFun](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/liftfun--52b78bd11cbc24c71a0925b3.md) | 100 | `declaration-track:52b78bd11cbc24c71a0925b3fa2164fb425767d103a77357fbaa5cb6f0a2df97` |
| 11 | `inductive` | [Rel](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/rel--5d29517412a6468fc7dd4c9b.md) | 110 | `declaration-track:5d29517412a6468fc7dd4c9b283d7d9f3bf87b7d04ecd0687dd14f458d1d6268` |
| 12 | `def` | [FreeAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/freealgebra--1d9af4b0126c8f49324d9556.md) | 162 | `declaration-track:1d9af4b0126c8f49324d95561151c7ae4809ab30ccc32d28433fba4e9e26b48a` |
| 13 | `instance` | [instSMul](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instsmul--ec85e33eb02904100c53050a.md) | 172 | `declaration-track:ec85e33eb02904100c53050a9af8e85a9d32304671d9acc9fc68cfdf5faa24ad` |
| 14 | `instance` | [instZero](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instzero--63c8668b64d30e8588ef6ee8.md) | 175 | `declaration-track:63c8668b64d30e8588ef6ee8680a3529f964acb8f2750dd44a46661c34f703b5` |
| 15 | `instance` | [instOne](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instone--972604b1c9e442c02cb35e59.md) | 177 | `declaration-track:972604b1c9e442c02cb35e59838fb4a86ce0ffee2b889430de26c13069622a11` |
| 16 | `instance` | [instAdd](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instadd--e9282a71cc515478b7e5c0d8.md) | 179 | `declaration-track:e9282a71cc515478b7e5c0d895a0d388e3574e3f45395fb35c57c7bff8b306cb` |
| 17 | `instance` | [instMul](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instmul--266ccf2d1dca080a33fa13f4.md) | 182 | `declaration-track:266ccf2d1dca080a33fa13f49ca387273bc31b743faaf9c2283c71f6d2168082` |
| 18 | `theorem` | [mk_mul](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/mk-mul--d9eed2f4b06d6fb3f818ad9b.md) | 186 | `result-track:d9eed2f4b06d6fb3f818ad9b22946c3e7086a1a18d4bba61ed02c3c1494b9126` |
| 19 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instmonoidwithzero--f077d4e410e756a813ade723.md) | 194 | `declaration-track:f077d4e410e756a813ade723c0c4c7accfd0dea070ff0125ce55750b2e6403c5` |
| 20 | `instance` | [instDistrib](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instdistrib--9f54493931a750980298baae.md) | 212 | `declaration-track:9f54493931a750980298baae60580ae8d850a89b3a3845790224dbfe72be078b` |
| 21 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instaddcommmonoid--0d34c448432e8c5121261aa9.md) | 220 | `declaration-track:0d34c448432e8c5121261aa935557957d020ddf84a7eb48ad4f9f852f58daa74` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--5443c4537ea7e54c8bf9a6d4.md) | 247 | `declaration-track:5443c4537ea7e54c8bf9a6d4463f055882706e760020270e69151c6fdd80835e` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--f9db1c3e6d66f7c9aa0bdc28.md) | 255 | `declaration-track:f9db1c3e6d66f7c9aa0bdc28ef96e23f1169fc219b3b65afda742f64fdbf50a3` |
| 24 | `instance` | [instAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instalgebra--a3c27ceac19d51bdc277c8e8.md) | 258 | `declaration-track:a3c27ceac19d51bdc277c8e818dbc6c53415d68efdd991f6ecb4254bf97407e0` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/example--68c19caadda9f05ff5a0c6b6.md) | 274 | `declaration-track:68c19caadda9f05ff5a0c6b62f32abe71746928ce23b3120e79adbabfc6abf41` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--78fa0bcdb9db93e1fbf1d2e3.md) | 276 | `declaration-track:78fa0bcdb9db93e1fbf1d2e3f2dbaace38dbd4853c7422b309e676f1f39490d6` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--0ce479b59954197f9b487b73.md) | 286 | `declaration-track:0ce479b59954197f9b487b731d0c9aa0f28a1ce76c2a7d4fab5bbf9d3672cbc9` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--848b2b93d4d5b6a7a1413bc7.md) | 290 | `declaration-track:848b2b93d4d5b6a7a1413bc72f6a96d7ce87d8e66b151ea6597e73338c9bf7a9` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/example--bd261ff5a4373b69f16009d2.md) | 296 | `declaration-track:bd261ff5a4373b69f16009d2dd4d7a63386659fee0d4eca9038569a5c6a03082` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/quot-mk-eq--8fa0c4c82762cf310b565ead.md) | 305 | `result-track:8fa0c4c82762cf310b565ead1b2853582cb6835c3c1f775cb2a3d3e41f5ffdb4` |
| 31 | `def` | [liftAux](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/liftaux--82e31830924f3c92ba1396ac.md) | 310 | `declaration-track:82e31830924f3c92ba1396acba82ddf010f504254be93c5508cbb7d0df23fb05` |
| 32 | `def` | [lift](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/lift--1f4907cb14029894c101dd0f.md) | 363 | `declaration-track:1f4907cb14029894c101dd0fef619ada782248401e4231dacc1dd9f569a19fc9` |
| 33 | `theorem` | [liftAux_eq](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/liftaux-eq--b6460644d8c5d7763115ba06.md) | 394 | `result-track:b6460644d8c5d7763115ba063eda51fae165f78e8772c88f3381a9a4a5950646` |
| 34 | `theorem` | [lift_symm_apply](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/lift-symm-apply--ba8f3b0bad654bb4391e4af5.md) | 399 | `result-track:ba8f3b0bad654bb4391e4af535bd13360410242917393ed3090b9687cbbcbd01` |
| 35 | `theorem` | [ι_comp_lift](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/comp-lift--1e40c13b02619f155252307f.md) | 406 | `result-track:1e40c13b02619f155252307f15d8ee545f5bd0745821a4c4e0adc8979325ccb6` |
| 36 | `theorem` | [lift_ι_apply](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/lift-apply--3c98ec9688eb8733d743f1a0.md) | 412 | `result-track:3c98ec9688eb8733d743f1a058e53b825ca93fce281f0eab983749cd90e58f2c` |
| 37 | `theorem` | [lift_unique](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/lift-unique--5da36a16bdb954212e0ea57f.md) | 417 | `result-track:5da36a16bdb954212e0ea57f7f3e481f1db75d25135524502898644def4839c7` |
| 38 | `theorem` | [lift_comp_ι](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/lift-comp--12f00285fa444032e986d15a.md) | 432 | `result-track:12f00285fa444032e986d15a6089fb93163e7f67bfb60d41289e18e16daaf929` |
| 39 | `theorem` | [hom_ext](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/hom-ext--3f92e5814949f285c01c78db.md) | 439 | `result-track:3f92e5814949f285c01c78dbb376ca332e9ce32e9fca199d27e0a5702fbee434` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/equivmonoidalgebrafreemonoid--e87eee858e52784b72bff119.md) | 449 | `declaration-track:e87eee858e52784b72bff119465630d38d27b07923529727fb11ec58598e7ab0` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instance--c68662e0dca02337c784b575.md) | 466 | `declaration-track:c68662e0dca02337c784b575be72711894a7e62a7906c4b599049447718b2cad` |
| 42 | `instance` | [instNoZeroDivisors](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instnozerodivisors--efb62282d2bb6397588ffdd4.md) | 470 | `declaration-track:efb62282d2bb6397588ffdd401340b08c69982bc63759169c25a75e38a12b311` |
| 43 | `instance` | [instIsDomain](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/instisdomain--731161995e8e7ab66eef731c.md) | 474 | `declaration-track:731161995e8e7ab66eef731c80ae579deb5cd85abd7985738bc3a779a1397b1f` |
| 44 | `def` | [algebraMapInv](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/algebramapinv--0fb2fe624e63295d54fa0a64.md) | 480 | `declaration-track:0fb2fe624e63295d54fa0a64ec9720819e16538d397ca8f0ba4b3c595f5c883c` |
| 45 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/algebramap-leftinverse--902ada132c4ae89222404cb3.md) | 483 | `result-track:902ada132c4ae89222404cb39705dd2c3dbac6227d47f4e35c6f2813c25e33e8` |
| 46 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/algebramap-inj--a7a6f9564623ef4eb5322b1c.md) | 488 | `result-track:a7a6f9564623ef4eb5322b1c144ddcdceb41fe9f93c5e67a0336d6f3d8e2fbb7` |
| 47 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/algebramap-eq-zero-iff--fdbd51cab4dc30d1829a0e14.md) | 493 | `result-track:fdbd51cab4dc30d1829a0e146b125fdc095f2b37dd7faec0ab1ad3d81747652a` |
| 48 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/algebramap-eq-one-iff--37ed1268580ff38b94ca55d9.md) | 497 | `result-track:37ed1268580ff38b94ca55d91f34daa37e9f4de8c9666389691fecbb4a641d28` |
| 49 | `theorem` | [ι_injective](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/injective--1adf675dee67c9e5fe43947a.md) | 501 | `result-track:1adf675dee67c9e5fe43947a814ebb630266513de3aa981470241130acf42ea0` |
| 50 | `theorem` | [ι_inj](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/inj--7388744048c2a9aadffbe73a.md) | 512 | `result-track:7388744048c2a9aadffbe73aa9df13677c2ba2d8bc1296acef036a23035e622f` |
| 51 | `theorem` | [ι_ne_algebraMap](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/ne-algebramap--1e17e613cbaf047e66550874.md) | 516 | `result-track:1e17e613cbaf047e66550874f96bb4bf26b160d9d551bd5b088c8981d28b8a49` |
| 52 | `theorem` | [ι_ne_zero](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/ne-zero--63201efaa8fd9412255bad90.md) | 526 | `result-track:63201efaa8fd9412255bad90a27f7f705775dbcb8b4bbd08bebbecee81c1ddbe` |
| 53 | `theorem` | [ι_ne_one](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/ne-one--0a16621f277a42c06ea3178a.md) | 530 | `result-track:0a16621f277a42c06ea3178a3c5f2fe4bc67f1cc11ffd9d1d7f85d617c1bd838` |
| 54 | `theorem` | [induction](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/induction--addbdeda7434c069d64561c5.md) | 547 | `result-track:addbdeda7434c069d64561c56df02f3a86cf53b4abc5817932d48c94d3cd969d` |
| 55 | `theorem` | [adjoin_range_ι](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/adjoin-range--1db87c09869affdf0044d32a.md) | 571 | `result-track:1db87c09869affdf0044d32ad4498c8a8c3b6ae106383c589e2a733ee7a4fb5e` |
| 56 | `theorem` | [_root_.Algebra.adjoin_range_eq_range_freeAlgebra_lift](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/root-algebra-adjoin-range-eq-range-freealgebra-lift--bce9c90cf1b7e48c38abcde1.md) | 583 | `result-track:bce9c90cf1b7e48c38abcde1880ad7cb9b13caf37f2de1ee749c6ca4a6d6bb96` |
| 57 | `theorem` | [_root_.Algebra.adjoin_eq_range_freeAlgebra_lift](../../../../mathematics/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/declarations/root-algebra-adjoin-eq-range-freealgebra-lift--e8f0f04ffded26e85b44eaf9.md) | 589 | `result-track:e8f0f04ffded26e85b44eaf9c54d256c38d0e821ed30727205a2ff4fcd22efb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
