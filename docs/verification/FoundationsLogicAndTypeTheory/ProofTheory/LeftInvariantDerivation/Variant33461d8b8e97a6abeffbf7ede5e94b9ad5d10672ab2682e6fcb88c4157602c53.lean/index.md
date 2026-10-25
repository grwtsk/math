# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53fdd16318ac95af37d0a32e78c10e94bd38d982",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53fdd16318ac95af37d0a32e78c10e94bd38d982`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Lie` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.DerivationBundle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInvariantDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/leftinvariantderivation--8aff6ad955884b0fb5b4387c.md) | 51 | `declaration-track:8aff6ad955884b0fb5b4387cc9f37967639ae0527ba7a1eca674fd49927d7cd5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--fc467851a4550194699bd265.md) | 61 | `declaration-track:fc467851a4550194699bd26589834d3138ec55959cd9438eaf5947f21d7992c8` |
| 3 | `theorem` | [toDerivation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/toderivation-injective--7b6c7ca94891f5d3ddacc85f.md) | 66 | `result-track:7b6c7ca94891f5d3ddacc85fda26d51a08fbae0c95c4f090fa3fede6f7c41734` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--e7b4f75ba1eadd8e6cbcf438.md) | 71 | `declaration-track:e7b4f75ba1eadd8e6cbcf438cbe65e278059d8862f26c16a9ff49c18ee32f102` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--551dacd37c9f6e5cd3946a11.md) | 77 | `declaration-track:551dacd37c9f6e5cd3946a11657b3287bff6aafd73aaa7bcd2c44e53a6b5fd14` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/tofun-eq-coe--0ff7c4d516aa8902cee7a945.md) | 83 | `result-track:0ff7c4d516aa8902cee7a945921cfa5a268a8c9e65a55eb5fe5cd4080e089d0a` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-injective--0502dccd578f31d211194bf0.md) | 92 | `result-track:0502dccd578f31d211194bf071e1777dba371a9e91fb410d1dfd53822ccaaca0` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/ext--f8af8490987bc8c605b57b2b.md) | 98 | `result-track:f8af8490987bc8c605b57b2b5f08111aa09496f2ca23f0ccf719a8893a1c9f35` |
| 9 | `theorem` | [coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-derivation--a2d978745f4164fe1178d1db.md) | 103 | `result-track:a2d978745f4164fe1178d1dbcad13be41d4ee8ac1ccb51b5ebbaf1c210c9db6f` |
| 10 | `theorem` | [left_invariant'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/left-invariant--f411588f568cf40cb4524126.md) | 109 | `result-track:f411588f568cf40cb4524126ede7d627ec48600d3881f0278b68450e67602285` |
| 11 | `theorem` | [map_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/map-add--b697d130c62560db27e4b291.md) | 115 | `result-track:b697d130c62560db27e4b291bfab8a06bec7c18f095fc383050e5f8b6c05ad21` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/map-zero--80b43d0b90b9e325777d85d8.md) | 119 | `result-track:80b43d0b90b9e325777d85d849ff0c2743fdc86055a44eeb2653133d6cfd227a` |
| 13 | `theorem` | [map_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/map-neg--c203be9e43f079e518efdb5a.md) | 123 | `result-track:c203be9e43f079e518efdb5a3404de8cbcdb25f14f540311815abed43a8b3698` |
| 14 | `theorem` | [map_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/map-sub--d423770121e4d4bf90c00c6f.md) | 127 | `result-track:d423770121e4d4bf90c00c6fdbfe8f2e6e9467cfafa464c1d3ff26693bf1ff17` |
| 15 | `theorem` | [map_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/map-smul--0b71f23a38a4b72c7219d114.md) | 131 | `result-track:0b71f23a38a4b72c7219d114cf10bfc83b283fe2c17590c23d1304a9da862ddc` |
| 16 | `theorem` | [leibniz](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/leibniz--8ac7d7997e53a46c87d2693a.md) | 135 | `result-track:8ac7d7997e53a46c87d2693add5166e59a841f9243a73c1632deb19488a1accf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--133003c5f0b43458aabb7e0a.md) | 139 | `declaration-track:133003c5f0b43458aabb7e0a8677c20d385cd770237b424685d9b3253d5648fc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--ff1ba011ca5a57c8796b9fd9.md) | 142 | `declaration-track:ff1ba011ca5a57c8796b9fd905630a2fe71f83bd41840ab009f246baa719f369` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--4784f7a1bac63351d89d7c9c.md) | 145 | `declaration-track:4784f7a1bac63351d89d7c9cf97b0cb890df5976be40e5e784234488c4437b18` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--e9fc210777666c77e006d62e.md) | 151 | `declaration-track:e9fc210777666c77e006d62e645f3e8d8df71b58ebaadc3562a824b42c1558ab` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--3572d83496281c5d0ebe3021.md) | 159 | `declaration-track:3572d83496281c5d0ebe3021bc969c1407fd9c035cdc6049c04de7e73c4d553b` |
| 22 | `theorem` | [coe_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-add--752590518ff25fe4bb8be132.md) | 167 | `result-track:752590518ff25fe4bb8be13269802e72e0db2fb64e18d6021b605a604133e5ea` |
| 23 | `theorem` | [coe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-zero--5f5eb11a376c458a44ed8961.md) | 172 | `result-track:5f5eb11a376c458a44ed89616caaf8b4eb9ff21b1855645499c88213cbd38da1` |
| 24 | `theorem` | [coe_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-neg--e27979e17e79e23058e98101.md) | 177 | `result-track:e27979e17e79e23058e981010c679edff61e291dab66eb15b956873fad86dd06` |
| 25 | `theorem` | [coe_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-sub--88717c0ee08ae737c9d909ae.md) | 182 | `result-track:88717c0ee08ae737c9d909ae0af11674963daf3125bcf1be5239e439c1ceb3ac` |
| 26 | `theorem` | [lift_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/lift-add--24d9b5687b0c8388d3926548.md) | 187 | `result-track:24d9b5687b0c8388d3926548265e9d351de4d3416bde23ef71dda783f042cba7` |
| 27 | `theorem` | [lift_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/lift-zero--a1a4c4f4db92d80e639949c0.md) | 192 | `result-track:a1a4c4f4db92d80e639949c02308d501a1c17001fad2119ddefb7c55a2703100` |
| 28 | `instance` | [hasNatScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/hasnatscalar--628e02a9dbcf0ed30ad5bca6.md) | 197 | `declaration-track:628e02a9dbcf0ed30ad5bca6f3930429f685787e46bead7bfebe533b6eac3e60` |
| 29 | `instance` | [hasIntScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/hasintscalar--2c3bdc5af3df943f1f139fed.md) | 201 | `declaration-track:2c3bdc5af3df943f1f139fedfbe1c25ff4c95ab725bc1d4c1d225d1e15fc0506` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--ad132dc37b13dd0cff25dbcb.md) | 205 | `declaration-track:ad132dc37b13dd0cff25dbcbe55491a83b8d35f4b9ac3dec8788e1c42cfc026d` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--e865bcecc17492e15d6fcf26.md) | 208 | `declaration-track:e865bcecc17492e15d6fcf26a6f3c31d4c5ca5915aa512f4c9ca3867a73f6d9c` |
| 32 | `theorem` | [coe_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coe-smul--660aaa6d604214c078a9d379.md) | 214 | `result-track:660aaa6d604214c078a9d379539a08658b0e8c31eea7fe3101ca296a52e568b7` |
| 33 | `theorem` | [lift_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/lift-smul--4a0d2bf62ae194dc7e37ebca.md) | 219 | `result-track:4a0d2bf62ae194dc7e37ebcaa2952cf3fc924b09468914e129132c69ac508d61` |
| 34 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/coefnaddmonoidhom--cb2819093933f8626e9991dd.md) | 227 | `declaration-track:cb2819093933f8626e9991dd02b9fec62cd014d2fbcf64f68fa17c3a03300b47` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--6b3943ac5c8b14db0944291d.md) | 233 | `declaration-track:6b3943ac5c8b14db0944291df8d4ec2b6a233110faa4109e8097a8727be18a58` |
| 36 | `def` | [evalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/evalat--2ce1afe380301737f120fc1d.md) | 238 | `declaration-track:2ce1afe380301737f120fc1df02a29ebdc189180e136ea560467d5901f246917` |
| 37 | `theorem` | [evalAt_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/evalat-apply--320c484dc1585bf6b7c61dd5.md) | 244 | `result-track:320c484dc1585bf6b7c61dd535212b08f5f764bfa9d4ebc88ceb78b1e92734d9` |
| 38 | `theorem` | [evalAt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/evalat-coe--8aac2745c4adf9f7b311c201.md) | 249 | `result-track:8aac2745c4adf9f7b311c201100aca158e1c2dea273d7eca5d4d3aaa235302bc` |
| 39 | `theorem` | [left_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/left-invariant--8840224b633a214606ff65ba.md) | 253 | `result-track:8840224b633a214606ff65ba84d8e10f891eb0b367c5b0bf39be67a6fb0562e7` |
| 40 | `theorem` | [evalAt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/evalat-mul--372cd0a319b67e88ad345d77.md) | 257 | `result-track:372cd0a319b67e88ad345d775a08a3442a8ed2175b4f5997e971bd9f8df0fa82` |
| 41 | `theorem` | [comp_L](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/comp-l--14abf5764bc2fdfd1999a95d.md) | 266 | `result-track:14abf5764bc2fdfd1999a95d69d9c0215c72db1acade0d2b4876546777ffc1e6` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--c9b7d698269a2426abc50a48.md) | 274 | `declaration-track:c9b7d698269a2426abc50a48228bc12c2e8b37743da483b86e4919a04f8daaec` |
| 43 | `theorem` | [commutator_coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/commutator-coe-derivation--854de9f40d5f0bb736e88784.md) | 288 | `result-track:854de9f40d5f0bb736e8878448f84a5fc942c97ed270cc4c08cf79a5afbf9631` |
| 44 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/commutator-apply--3de171cf8c91352b3dd39208.md) | 295 | `result-track:3de171cf8c91352b3dd39208f15c87b1d50fe8fbdcf11f24bc31824727fc6a32` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--fd07380a103e627b1cc23a80.md) | 299 | `declaration-track:fd07380a103e627b1cc23a80e3b2dae8d51abbc85c57fc52dbfc4cc427548615` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant33461d8b8e97a6abeffbf7ede5e94b9ad5d10672ab2682e6fcb88c4157602c53.lean/declarations/instance--c0b0a78ce0a15d550b7506b2.md) | 314 | `declaration-track:c0b0a78ce0a15d550b7506b28bb2681c9efb443594ff6faf06d744693d4dbb1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
