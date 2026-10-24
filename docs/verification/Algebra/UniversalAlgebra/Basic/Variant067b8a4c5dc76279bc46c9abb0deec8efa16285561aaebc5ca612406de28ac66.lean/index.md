# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56cdac95e948a2869941c643f4530564b80ff353",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56cdac95e948a2869941c643f4530564b80ff353`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalRat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/intervalrat--96efd7d12873ae045918161a.md) | 39 | `declaration-track:96efd7d12873ae045918161a843fa0f7c97d16ce2ed9048ae4ad07f6ae44ba09` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/instance--5a693f7100189fcc2d56122d.md) | 46 | `declaration-track:5a693f7100189fcc2d56122d025a8e8aefa117cdf62c002d47e8ba139dd79e4f` |
| 3 | `def` | [toSet](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/toset--27ea67ae7007c97cb711b482.md) | 52 | `declaration-track:27ea67ae7007c97cb711b4820cc3c835b5f44723bdb75042a5a5ebeb26f15aee` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/instance--846c701b7f12e7b24646a623.md) | 55 | `declaration-track:846c701b7f12e7b24646a623a93aaf6031dbf1b7261ecbd1b11739618e659bab` |
| 5 | `theorem` | [mem_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-def--ecf8fc851a5c11b87265b3c1.md) | 59 | `result-track:ecf8fc851a5c11b87265b3c1d0b24190ef44940574695daa158ef8891ea9b970` |
| 6 | `theorem` | [mem_iff_mem_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-iff-mem-icc--d143dd2e6b8a48cc8f8bdb07.md) | 63 | `result-track:d143dd2e6b8a48cc8f8bdb07ecebc2eeaec9803a7bac4478172d29fd027e9c92` |
| 7 | `theorem` | [forall_mem_iff_forall_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/forall-mem-iff-forall-icc--8441cffd44a3e3101c6676d7.md) | 67 | `result-track:8441cffd44a3e3101c6676d71c26e42573784c1ebbad763d76f375a4b1234859` |
| 8 | `theorem` | [exists_mem_iff_exists_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/exists-mem-iff-exists-icc--1ecc6f1c31f75f3603f391bf.md) | 72 | `result-track:1ecc6f1c31f75f3603f391bfa712f7d659b8a553130606a327c3a359b83c1679` |
| 9 | `def` | [singleton](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/singleton--d8023d4937ea1eb75caddce2.md) | 77 | `declaration-track:d8023d4937ea1eb75caddce2a3dfb93afb97ba61cc35f0d09e7d93b3b01c9acf` |
| 10 | `theorem` | [mem_singleton](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-singleton--e5f21c5fb3b81196a97f5ac3.md) | 79 | `result-track:e5f21c5fb3b81196a97f5ac35ef9d27e1cc7f87063d087c764ffd52791627ad9` |
| 11 | `def` | [width](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/width--1dd783e352c7be0acfb29aaf.md) | 83 | `declaration-track:1dd783e352c7be0acfb29aaf06bc28bce3e39192a51ead74c093bd530bb4cb2f` |
| 12 | `theorem` | [width_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/width-nonneg--109158d7e5f0256f6802db02.md) | 85 | `result-track:109158d7e5f0256f6802db0232e34b0111df21d8162065524e87bb1382982d19` |
| 13 | `def` | [midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint--5e44a2ef352796bbf49cb549.md) | 90 | `declaration-track:5e44a2ef352796bbf49cb549b69225f52f8a986536a0636f71c59869c97f680c` |
| 14 | `theorem` | [midpoint_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-mem--783aa46e5cacc79dfe550595.md) | 93 | `result-track:783aa46e5cacc79dfe5505953d9004675cd01f7129aae65e902d2fa12085ea28` |
| 15 | `def` | [add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/add--a903d353b95e66c22c99d630.md) | 111 | `declaration-track:a903d353b95e66c22c99d63016c4ab42bcbac19538d7a79491e0f50fd4505928` |
| 16 | `theorem` | [mem_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-add--7ab9f643d10283002c540e6d.md) | 117 | `result-track:7ab9f643d10283002c540e6d8f562467992bcab61d42e52f51e9633c8245322f` |
| 17 | `def` | [neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/neg--6cb55cbee70cc189bf380cc5.md) | 126 | `declaration-track:6cb55cbee70cc189bf380cc54bf88b8da3f6f7a1bdb432caf595732c192ac398` |
| 18 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-neg--904ef9f38afe58c584e7fd88.md) | 132 | `result-track:904ef9f38afe58c584e7fd88f5dc15acf0bf11828c4caa571e0c0c026b16676d` |
| 19 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/sub--7701c89c2654762e3f9bd042.md) | 140 | `declaration-track:7701c89c2654762e3f9bd0423e005dce78b63025a69d105efb13d175841d0a86` |
| 20 | `theorem` | [mem_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-sub--8702390ad62ad9b4c75e788b.md) | 143 | `result-track:8702390ad62ad9b4c75e788bfa30640abb7e31493848031c5d6c0f5e355a12e1` |
| 21 | `def` | [min4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/min4--03d32d197ec74ce233bee5b4.md) | 151 | `declaration-track:03d32d197ec74ce233bee5b46be561c195768d61fe41589dbf27b446429c2fb2` |
| 22 | `def` | [max4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/max4--58bdd4ce04d7463198dfcf7b.md) | 154 | `declaration-track:58bdd4ce04d7463198dfcf7b0db91b51b3ca815725fe73c0a288ad9231a76c04` |
| 23 | `theorem` | [min4_le_all](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/min4-le-all--0f29eeb968933324f3223321.md) | 156 | `result-track:0f29eeb968933324f3223321c549d7ded2f2e4b668514bac19c923283cbbf8ea` |
| 24 | `theorem` | [all_le_max4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/all-le-max4--4dec4f12a4c0f71c48ada0f9.md) | 165 | `result-track:4dec4f12a4c0f71c48ada0f9a083c6d9fd0da4c68bb07817e970c011df328ff4` |
| 25 | `theorem` | [le_min4_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/le-min4-iff--1f902b80c26abcd2692b69d3.md) | 174 | `result-track:1f902b80c26abcd2692b69d368ce1c8a19695fbb93f17eb96739593e8e67a17e` |
| 26 | `theorem` | [max4_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/max4-le-iff--1d6eddbd0ae5fe84ba9acc04.md) | 178 | `result-track:1d6eddbd0ae5fe84ba9acc042dff78a85883f1a08a8505792e89bf81ac8f4587` |
| 27 | `def` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul--49856116232dc45300130fc5.md) | 183 | `declaration-track:49856116232dc45300130fc57168cb4b3c2be8986f5c4904b4f3a2862e1292b4` |
| 28 | `def` | [mulFast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mulfast--d05dad43ddfd83fb1e072d44.md) | 195 | `declaration-track:d05dad43ddfd83fb1e072d44d33eeec07f58d0158f89585e783c8c3d1408742f` |
| 29 | `theorem` | [mul_mem_endpoints_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul-mem-endpoints-left--32330bc061e7bb615ac73bda.md) | 223 | `result-track:32330bc061e7bb615ac73bda1ebbcc4b14a4d678bdf281d1d64246599622bdbb` |
| 30 | `theorem` | [mul_mem_endpoints_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul-mem-endpoints-right--fa7f3c66487a69bdd32062d0.md) | 244 | `result-track:fa7f3c66487a69bdd32062d0c7d1bd9c76b64beb6bd1bb757200ec997dfaceea` |
| 31 | `theorem` | [mul_lower_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul-lower-bound--fb73bbcbba56fff44b93c60d.md) | 263 | `result-track:fb73bbcbba56fff44b93c60de5780106c53aa3b1b995a2eb9f1911c31eacbf9b` |
| 32 | `theorem` | [mul_upper_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul-upper-bound--833f505574220d46a48fb03e.md) | 289 | `result-track:833f505574220d46a48fb03e5aaf4824650dab8272e4cedc66bce97c58848c63` |
| 33 | `theorem` | [mul_mem_corners](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mul-mem-corners--5fe52d693bb7e76a749c5939.md) | 313 | `result-track:5fe52d693bb7e76a749c5939613a6e360d0fadff1873a3ce31d38d5932e506b4` |
| 34 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-mul--6f853ca91100c4891dd263e9.md) | 320 | `result-track:6f853ca91100c4891dd263e9fe3d40da0e635ec78722c50b7b879a5d46da8209` |
| 35 | `theorem` | [eq_min4_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-min4-of-le--12ed4f84d2693d4738000e66.md) | 327 | `result-track:12ed4f84d2693d4738000e66e29da5bb9016b2c3f32f347d7bf041ba505d979b` |
| 36 | `theorem` | [eq_min4_of_le2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-min4-of-le2--86dc3495a61c26154d003bae.md) | 330 | `result-track:86dc3495a61c26154d003baed041d242c2482d6bd24d5739571766ddfc8867ea` |
| 37 | `theorem` | [eq_min4_of_le3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-min4-of-le3--6bfa42355ff2ba13a3761dd4.md) | 333 | `result-track:6bfa42355ff2ba13a3761dd403ed4b3a8593bf9275f0fde4ef9442e30c8d612d` |
| 38 | `theorem` | [eq_min4_of_le4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-min4-of-le4--1462e5db80d5f76d646cc902.md) | 336 | `result-track:1462e5db80d5f76d646cc902c7236e6f8916c5805a7af93b9fd4d8e29b00f8b0` |
| 39 | `theorem` | [eq_max4_of_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-max4-of-ge--3d3507f42b711ed376c4553d.md) | 339 | `result-track:3d3507f42b711ed376c4553d19560ff2878d75655330a432cd8482dd7f6a566d` |
| 40 | `theorem` | [eq_max4_of_ge2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-max4-of-ge2--228bfd989b0bc102ed84bad3.md) | 342 | `result-track:228bfd989b0bc102ed84bad347ee4acee75e550f29286645715e5d37d9221fc1` |
| 41 | `theorem` | [eq_max4_of_ge3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-max4-of-ge3--ed2ede584b1db7c56864eae0.md) | 345 | `result-track:ed2ede584b1db7c56864eae0126d53ebf63dc29978967807c0186c1a8a39fad2` |
| 42 | `theorem` | [eq_max4_of_ge4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/eq-max4-of-ge4--0e2e9c5e8d3c3b636598bcb3.md) | 348 | `result-track:0e2e9c5e8d3c3b636598bcb3f98174182f0649766c612905d8034033df19b028` |
| 43 | `theorem` | [mulFast_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mulfast-lo--09f741780a73736ecf95f17e.md) | 352 | `result-track:09f741780a73736ecf95f17e0d22f3391e09e34198ad882f13ccb3bc41fa6d55` |
| 44 | `theorem` | [mulFast_hi](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mulfast-hi--cf80044927eaa4a20042a738.md) | 373 | `result-track:cf80044927eaa4a20042a738b4d863a24922280622fc084dd762eff7d22b094c` |
| 45 | `theorem` | [mem_mulFast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-mulfast--ae65bb4402914682bbdbd3da.md) | 396 | `result-track:ae65bb4402914682bbdbd3da3ce0a28ce06a96d7806930d0e5b812e04504690d` |
| 46 | `def` | [containsZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/containszero--f0f0ebf48214e726507ce9b1.md) | 405 | `declaration-track:f0f0ebf48214e726507ce9b13a7bf0b68bb08ae4e3ddf4f138efd6236153a57f` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/instance--86b3369c9bb1b21c7a98f4d3.md) | 408 | `declaration-track:86b3369c9bb1b21c7a98f4d3b8f75ec542080c537f06e38c413b3c5b449718d4` |
| 48 | `structure` | [IntervalRatNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/intervalratnonzero--e0e2200a9c3171492fe340d9.md) | 412 | `declaration-track:e0e2200a9c3171492fe340d9299f8a86eb7b08ce3e4e4317db2ba5ed7a8ba8d0` |
| 49 | `def` | [invNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/invnonzero--d2df8df43152c0b64a8c79d4.md) | 418 | `declaration-track:d2df8df43152c0b64a8c79d4b761acb6b17d2829ca69d6881cb04054b2380508` |
| 50 | `theorem` | [mem_invNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-invnonzero--ce012af18b184959d06a798e.md) | 442 | `result-track:ce012af18b184959d06a798e3587827b2bcb2fe5d8b39892e180badde457966e` |
| 51 | `def` | [scale](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/scale--125e8eb372e4aef1ad6e3d0e.md) | 473 | `declaration-track:125e8eb372e4aef1ad6e3d0ec83f87e96bf882d30d82453339d3b87e0ff06764` |
| 52 | `theorem` | [mem_scale](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-scale--8719842b6a79308eccaf8e2e.md) | 484 | `result-track:8719842b6a79308eccaf8e2e3155d7a984a6f9438554fae82733e65dd80a537b` |
| 53 | `def` | [bisect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/bisect--f67d660a406ba1d0771436ee.md) | 501 | `declaration-track:f67d660a406ba1d0771436eeb7ce335939092ac089dc66fafc4965d1a1cb8464` |
| 54 | `theorem` | [mem_bisect_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-bisect-left--012deeecdcff5d62aa07b202.md) | 506 | `result-track:012deeecdcff5d62aa07b2029f6f6b0cd2459e4ab78e8d44e8450091d0780642` |
| 55 | `theorem` | [mem_bisect_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-bisect-right--24fce810018252b35c97cb07.md) | 511 | `result-track:24fce810018252b35c97cb07a1c57e47cc224e773857fcd7f470efcb40b6f61e` |
| 56 | `theorem` | [midpoint_sub_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-sub-lo--f7b84b995189f0c2c08bca51.md) | 517 | `result-track:f7b84b995189f0c2c08bca5195f32a9d3cc17d0ab25aa5370de0368dd1e63dca` |
| 57 | `theorem` | [hi_sub_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/hi-sub-midpoint--f60f74fcb9f05d3f9e8c4efa.md) | 524 | `result-track:f60f74fcb9f05d3f9e8c4efac1b08bac29fbf4b16879269955111b2b4f8b95be` |
| 58 | `theorem` | [midpoint_ge_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-ge-lo--e99cc5497e06eb1bae288d07.md) | 531 | `result-track:e99cc5497e06eb1bae288d07326a0c438e973d54abefd08c87e7de6cae96068c` |
| 59 | `theorem` | [midpoint_le_hi](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-le-hi--42df669656cab4a5727f0f45.md) | 537 | `result-track:42df669656cab4a5727f0f45590f3ff508984025bbe96da89e422a4572353185` |
| 60 | `theorem` | [midpoint_ge_lo_real](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-ge-lo-real--b15cc16fed5497dd0b043116.md) | 543 | `result-track:b15cc16fed5497dd0b0431166fe0b37a8b6002ec377a1c165c2873f2f5e30a38` |
| 61 | `theorem` | [midpoint_le_hi_real](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/midpoint-le-hi-real--6c2ef7534ab5de9fb83a63b3.md) | 548 | `result-track:6c2ef7534ab5de9fb83a63b30dca2ec56890a56102d9750208dd90186cad21ac` |
| 62 | `theorem` | [mem_of_mem_bisect_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-of-mem-bisect-left--0363858a956406fddf933ad5.md) | 553 | `result-track:0363858a956406fddf933ad531c68753cb8a9754f8d8a6894dbceda6fd7c1cc5` |
| 63 | `theorem` | [mem_of_mem_bisect_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-of-mem-bisect-right--f4e83494e13257366893c2ef.md) | 560 | `result-track:f4e83494e13257366893c2ef32c1939d0a0a28dadf3270c2916865c80afdaa09` |
| 64 | `theorem` | [mem_bisect_or](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-bisect-or--ba01c937780690ff0f3037e7.md) | 567 | `result-track:ba01c937780690ff0f3037e724c0a453523077daa05751dc8d5812feb6cec52c` |
| 65 | `theorem` | [mem_default](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-default--8b6ab728da3f013a6b1d67c9.md) | 574 | `result-track:8b6ab728da3f013a6b1d67c993333b361c83991e111e7c8e27afcd5b939674d2` |
| 66 | `def` | [intersect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/intersect--8d9395fa0b7bce236b7817ec.md) | 583 | `declaration-track:8d9395fa0b7bce236b7817ec99d338c7408b5a6dee26f5f2d45f018ff875c4d8` |
| 67 | `theorem` | [mem_intersect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/mem-intersect--4f6502bbbcae03ee265b9aba.md) | 592 | `result-track:4f6502bbbcae03ee265b9abaaec9c9ce380190c7b38f51ca2845730a5839257f` |
| 68 | `theorem` | [intersect_subset_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/intersect-subset-left--49ac822b408b5ed30a724579.md) | 620 | `result-track:49ac822b408b5ed30a72457949e67e8921c9e5905500245cc6f5ddd00affade9` |
| 69 | `theorem` | [intersect_subset_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/declarations/intersect-subset-right--b7322742d3ac42b27d1bd79b.md) | 630 | `result-track:b7322742d3ac42b27d1bd79b47a935cc3375a4a07e60468f57d430d0a5176644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
