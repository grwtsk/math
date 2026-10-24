# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "632f6508a0c14eeedb22f30efbc642fb23f70f4a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `632f6508a0c14eeedb22f30efbc642fb23f70f4a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-algebramap-mem-graded--b2e2086ecec1682bdb16da0e.md) | 64 | `result-track:b2e2086ecec1682bdb16da0e4f5a32adee865deefa07f0d25cbb0d1950774fd3` |
| 2 | `theorem` | [SetLike.natCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-natcast-mem-graded--e101a4b04d42db2d119d80d0.md) | 69 | `result-track:e101a4b04d42db2d119d80d092c22802d378314f87e57de33934c2082eeb93d4` |
| 3 | `theorem` | [SetLike.intCast_mem_graded](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-intcast-mem-graded--136f02894b16f9b8994e7080.md) | 79 | `result-track:136f02894b16f9b8994e7080984a0f58b2fce78ecf00433798733ce18e882fdf` |
| 4 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/gnonunitalnonassocsemiring--b38b068bb252c9c2e873b9a6.md) | 98 | `declaration-track:b38b068bb252c9c2e873b9a62a901156b2c71e6ddfcf84fbd89c9aab59e65c95` |
| 5 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/gsemiring--8c4dccb17d34a2baa5425e65.md) | 108 | `declaration-track:8c4dccb17d34a2baa5425e6529e6ca85cd5193fe62fc7f036c04cca4105bffa9` |
| 6 | `instance` | [gcommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/gcommsemiring--9462df283ebdd314baa28f1f.md) | 120 | `declaration-track:9462df283ebdd314baa28f1f7ab43b66963839eb9d7aeb475e7cbbf367b9cba8` |
| 7 | `instance` | [gring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/gring--83f3fbf43383e57c75541a37.md) | 125 | `declaration-track:83f3fbf43383e57c75541a373c2537c811f1707d4ba01aa107a25f2f12bc94ad` |
| 8 | `instance` | [gcommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/gcommring--68ef47a3591c081c406e7afe.md) | 133 | `declaration-track:68ef47a3591c081c406e7afe4a73d6cb55cdfdc63bb2d3bf9b946392871b7add` |
| 9 | `def` | [coeRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coeringhom--5d04eed876650a177c6c4e08.md) | 146 | `declaration-track:5d04eed876650a177c6c4e08dbe1dd9c43994b301a56cdd043f94a097e35a66c` |
| 10 | `theorem` | [coeRingHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coeringhom-of--84e15f3c404fa43067d26611.md) | 151 | `result-track:84e15f3c404fa43067d266111f83a805d639b9a3d24a6bd6ddc3997ce4f3f520` |
| 11 | `theorem` | [coe_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-apply--536ee038608f53b787708a3c.md) | 155 | `result-track:536ee038608f53b787708a3c1c18ab473e1cbd6582af60ef431b71814e20a094` |
| 12 | `theorem` | [coe_mul_apply_eq_dfinsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-apply-eq-dfinsuppsum--227adf6e4728e95a64a1af9a.md) | 162 | `result-track:227adf6e4728e95a64a1af9aa9f2dbfb01f7926312b8c26573d7f4cdc997482e` |
| 13 | `theorem` | [coe_of_mul_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply-aux--6888bc68afc2c760fe2322bc.md) | 179 | `result-track:6888bc68afc2c760fe2322bc5a08b0b0ac479a7b16d3e8639d97a2748cdd1d58` |
| 14 | `theorem` | [coe_mul_of_apply_aux](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply-aux--35202437dcfe37814e215e97.md) | 193 | `result-track:35202437dcfe37814e215e973d7c1f9bc704fbea4d86b19adc8db75c1cad0e1e` |
| 15 | `theorem` | [coe_of_mul_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply-add--de69eddfc2de4a8419afcf26.md) | 207 | `result-track:de69eddfc2de4a8419afcf26448108eab0bd2b9f1c556b156ff2c781c8d2c65c` |
| 16 | `theorem` | [coe_mul_of_apply_add](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply-add--b4216924f136395c4a61fae0.md) | 211 | `result-track:b4216924f136395c4a61fae059baa377fbfcce5522916fd58588490c5a571ad6` |
| 17 | `theorem` | [coe_of_mul_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply-of-mem-zero--4624a36a0bfcbd739ba7d1e4.md) | 215 | `result-track:4624a36a0bfcbd739ba7d1e4355157c8647a478a97c069de6e1d34c5e8d23c9c` |
| 18 | `theorem` | [coe_mul_of_apply_of_mem_zero](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply-of-mem-zero--4d355063b9c044eb2d4be0bd.md) | 219 | `result-track:4d355063b9c044eb2d4be0bd34f7a1a200f0d7e5450515ce385543548aa91b7c` |
| 19 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply-of-not-le--69e5e95b3084cb9f60ae12ef.md) | 230 | `result-track:69e5e95b3084cb9f60ae12ef460bcfff7a86b484e8a4a7f20bb280bd31c0d7cc` |
| 20 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply-of-not-le--ac50b6f25901e35ac59f83c4.md) | 241 | `result-track:ac50b6f25901e35ac59f83c4d029a6a0d68890b41d0cc5cf774e7d95705c0a54` |
| 21 | `theorem` | [coe_mul_of_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply-of-le--bb56810396eae85208dec440.md) | 256 | `result-track:bb56810396eae85208dec440d3e6d5f939475cb5a4b6abf0e68893793245ce6a` |
| 22 | `theorem` | [coe_of_mul_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply-of-le--1b9b6587697c7e443d7ef6aa.md) | 260 | `result-track:1b9b6587697c7e443d7ef6aa0791bdc3e2bf1b69228796634d69f3f02774f1c3` |
| 23 | `theorem` | [coe_mul_of_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-mul-of-apply--67728370e8ca2d47324378ed.md) | 264 | `result-track:67728370e8ca2d47324378ed5b9a39a01c337d366eb5ac89b5b9fc817aa47e62` |
| 24 | `theorem` | [coe_of_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-of-mul-apply--e6757196d9863173458ac0cb.md) | 269 | `result-track:e6757196d9863173458ac0cb8cca7469b522bb27092dc8cc6f771c9177299ccc` |
| 25 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/galgebra--b959c2bed15fc25b889e7f5d.md) | 283 | `declaration-track:b959c2bed15fc25b889e7f5dbc150e2f9e46cfcaf89622e9d6c816e6b384e8d9` |
| 26 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-coe-galgebra-tofun--ccd1a05eaf1a5f19b9e31dc8.md) | 294 | `result-track:ccd1a05eaf1a5f19b9e31dc84742af045173e8d2ce34b75ea5be722b48483e24` |
| 27 | `instance` | [nat_power_gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/nat-power-gradedmonoid--5c87e795ab476dc40a17ee40.md) | 300 | `declaration-track:5c87e795ab476dc40a17ee401d81bf97364f437b399234f542e8fecb04f26d45` |
| 28 | `def` | [DirectSum.coeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/directsum-coealghom--85a48e67102d6037d7fcda83.md) | 311 | `declaration-track:85a48e67102d6037d7fcda83d6718a5ee96e5651cec42aeb1f056c3c93673d4c` |
| 29 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/submodule-isup-eq-tosubmodule-range--6fb717c405a47cf532d48e47.md) | 317 | `result-track:6fb717c405a47cf532d48e47b8760902b0f9b1e40fea6a820df51abd184c795e` |
| 30 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/directsum-coealghom-of--4f54299b36b9673fce2b53f6.md) | 323 | `result-track:4f54299b36b9673fce2b53f67fe05cfb929f363af5dc680f5f9ed4ef4c6204e2` |
| 31 | `def` | [subsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/subsemiring--1fe5c1fedcdf6236ba8d25d3.md) | 339 | `declaration-track:1fe5c1fedcdf6236ba8d25d32e7c7f0813448892b5e54667d8651aca9dd7b7ce` |
| 32 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instsemiring--70cb801caf831911b01cfde0.md) | 347 | `declaration-track:70cb801caf831911b01cfde067488adb0a3689a162644332226711e4ca475952` |
| 33 | `theorem` | [coe_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-natcast--ece9846f224b73751433625e.md) | 349 | `result-track:ece9846f224b73751433625e64ae4efdc2e8fde0fccf5d4c56900683d27670e7` |
| 34 | `theorem` | [coe_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-ofnat--197268504cf0dd5ca655d17f.md) | 351 | `result-track:197268504cf0dd5ca655d17f4d44f1a960bcdb8fa33c0d119302eaeff602bd5b` |
| 35 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instcommsemiring--bbf1903d6acb06abd06e5269.md) | 363 | `declaration-track:bbf1903d6acb06abd06e52694e4d00974754f167b91b7aeebb4188ee26c30a7f` |
| 36 | `def` | [subring](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/subring--42c9332bb64716a10c2091b9.md) | 372 | `declaration-track:42c9332bb64716a10c2091b9d22d1b01b3025fe7193871a0de7821733b257d3c` |
| 37 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instring--12a9d378b39552c535caa615.md) | 379 | `declaration-track:12a9d378b39552c535caa615321a4865070afad2daa1049a903421f3102469a7` |
| 38 | `theorem` | [coe_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-intcast--d6e4cfd64c3a192e7eabd598.md) | 381 | `result-track:d6e4cfd64c3a192e7eabd598be30097b83166a0e404fd8b277d26fad7f020d4d` |
| 39 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instcommring--c956fe39d04e8f152371d27b.md) | 391 | `declaration-track:c956fe39d04e8f152371d27b1ae3654740e4ab5a1380431bbbaf7215efe40bc5` |
| 40 | `def` | [subalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/subalgebra--33a618583200a63e6d696c3a.md) | 400 | `declaration-track:33a618583200a63e6d696c3a69c7be5e239a47b321662a8a0066d3619ef68301` |
| 41 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instalgebra--37137a91b62d2adfa2612801.md) | 407 | `declaration-track:37137a91b62d2adfa261280110a62d1623ef8df956b99cbf923e8d33dbdce12d` |
| 42 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/coe-algebramap--8c565c414b31e2658023f0c1.md) | 409 | `result-track:8c565c414b31e2658023f0c1bf5865756b9cc72b03457d9bb76b606e080c013b` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/instance--81abee947af8779df6adc84e.md) | 419 | `declaration-track:81abee947af8779df6adc84e7cf00f5995cc656f7ca366b8c32490a909f96dac` |
| 44 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/algebramap-apply--b09d54e69cd836693d14e272.md) | 421 | `result-track:b09d54e69cd836693d14e2721b940f078d13d385c4de7312bedc2db0cf167dbe` |
| 45 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-homogeneous-zero-submodule--d98366f2073a25b1793b9f5b.md) | 429 | `result-track:d98366f2073a25b1793b9f5bbc9c901cf49b1a889339ff6f58bdcb82e417c348` |
| 46 | `theorem` | [SetLike.Homogeneous.smul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant5bae2307cb58ca88a81a82819cf9bb19180997d87a889a7c64216d3ae7911953.lean/declarations/setlike-homogeneous-smul--dff1560fb9fcf9cb2f0ea11f.md) | 433 | `result-track:dff1560fb9fcf9cb2f0ea11fc3a56835b4d3e7c8edde35fbfc3a384991a32a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
