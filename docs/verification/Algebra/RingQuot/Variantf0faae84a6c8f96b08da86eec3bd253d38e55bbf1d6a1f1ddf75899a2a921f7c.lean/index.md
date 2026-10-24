# Verification target: GRWTSK.Algebra.RingQuot.Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e037adeab9b192f45e09e36d49b0dec6fee6d9e",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e037adeab9b192f45e09e36d49b0dec6fee6d9e`.

Source path: `GRWTSK/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--386b8570e2c625458204d19b.md) | 34 | `declaration-track:386b8570e2c625458204d19bea7e2e71bc2a587e2af12c1e4520f2c16235a715` |
| 2 | `theorem` | [coe_algebraMap](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/coe-algebramap--bdd9671a0c78bd2856ba0974.md) | 41 | `result-track:bdd9671a0c78bd2856ba0974a5f835b82f303f5b9d225980743186d4e50c1991` |
| 3 | `inductive` | [Rel](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel--c133702bd05a70cd9c5432a5.md) | 53 | `declaration-track:c133702bd05a70cd9c5432a54ff76a0db0bc06ecb8e4283c86d0b5d27ef5b3dc` |
| 4 | `theorem` | [Rel.add_right](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel-add-right--f4e62c173199cbbb2e4f56ee.md) | 59 | `result-track:f4e62c173199cbbb2e4f56eebb317132730f11a10160cdf221295076da866571` |
| 5 | `theorem` | [Rel.neg](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel-neg--465df22cc90b8820c7742c9a.md) | 63 | `result-track:465df22cc90b8820c7742c9a8d67bbbebca2d3c88af9f7ec59380503ba9850fd` |
| 6 | `theorem` | [Rel.sub_left](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel-sub-left--33d0bff352ce291522c36e0a.md) | 66 | `result-track:33d0bff352ce291522c36e0a952781d3e3fe2dff4c8fb41a21d36472b6dc8cc7` |
| 7 | `theorem` | [Rel.sub_right](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel-sub-right--4f77d793b4d83ca6e9204770.md) | 69 | `result-track:4f77d793b4d83ca6e92047703acb7ceaae2d9d387a57643d2927c8ed9a8a2d2c` |
| 8 | `theorem` | [Rel.smul](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/rel-smul--b460ad560e07f4909863bdaa.md) | 72 | `result-track:b460ad560e07f4909863bdaa8cff4f3d2338374d2513068040d13b4472cf647c` |
| 9 | `def` | [ringCon](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringcon--50984c8cf1229fd0b7173562.md) | 76 | `declaration-track:50984c8cf1229fd0b71735629671acfb68bb04b62ca6f4fc0f49fdce5c75e361` |
| 10 | `theorem` | [eqvGen_rel_eq](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/eqvgen-rel-eq--8d8751b064e40fe1f9da7a5b.md) | 112 | `result-track:8d8751b064e40fe1f9da7a5b27c85d91e00598a74c787e96bb1ec17fb00eb82c` |
| 11 | `structure` | [RingQuot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquot--636b58dc88a9cb9904984611.md) | 137 | `declaration-track:636b58dc88a9cb99049846111b67b755024e6f493efec06608678525533c65c6` |
| 12 | `def` | [natCast](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/natcast--0a1531c544c8620021756fc5.md) | 145 | `declaration-track:0a1531c544c8620021756fc59a181c4474374437d3104b219f211d02d443d66c` |
| 13 | `def` | [smul](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/smul--2c4f3c6a212205396f08ec2d.md) | 181 | `declaration-track:2c4f3c6a212205396f08ec2d6c3662d9431b02f257aa4d98bcba38cd7b297ce7` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--9bec5a3ed7a145262264012b.md) | 184 | `declaration-track:9bec5a3ed7a145262264012bcd030f4e67530a6e403633a3844d4cdc16c552db` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--59125de0dc767c3374cb5f47.md) | 187 | `declaration-track:59125de0dc767c3374cb5f47b495d46db72598480863adf8541afc1eb576f2e5` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--4e449ab981d9104c876ac656.md) | 190 | `declaration-track:4e449ab981d9104c876ac65632a231dad1bd0b7778ae211230068b7f97e1ca30` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--b39ad63e08e03bb39086f1af.md) | 193 | `declaration-track:b39ad63e08e03bb39086f1afdf3cf9554b51cefa24dd4c4648f69d63fa57d93f` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--0895d82f3d9cb5b92e9e4fa7.md) | 196 | `declaration-track:0895d82f3d9cb5b92e9e4fa77e3ccb2f7e18bd7754bfdf49989b5c37c91a2db8` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--ab1a7d4200772c3c705756ba.md) | 199 | `declaration-track:ab1a7d4200772c3c705756ba5a3614cbdf59d37de35380dbe4808601e0f08f8c` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--f8ca9a15235b17847eef6e46.md) | 202 | `declaration-track:f8ca9a15235b17847eef6e46e9647907a48119d75a87ef7d4abf659888c10698` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--7b0c6c1221a4a9f5f747f5d5.md) | 205 | `declaration-track:7b0c6c1221a4a9f5f747f5d5412bd23dae273aa193598b07c696f5b49248226e` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--1de5f1d2d5117848dedb444c.md) | 208 | `declaration-track:1de5f1d2d5117848dedb444c5b54f039c05ded836c382fae9bcb7c2441662106` |
| 23 | `theorem` | [zero_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/zero-quot--2bcab485123b89929d03196f.md) | 211 | `result-track:2bcab485123b89929d03196fce8737425299d66e70bfee8e55d83e0f91614246` |
| 24 | `theorem` | [one_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/one-quot--1db85d8b71c7bb31c8df5d08.md) | 214 | `result-track:1db85d8b71c7bb31c8df5d08a3e7b2d82f91aab61d0197dc48e09052d4d40936` |
| 25 | `theorem` | [add_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/add-quot--545b77fa515af8fff5a01c4d.md) | 217 | `result-track:545b77fa515af8fff5a01c4d8688622605cf51a0eba33040ca1838e728270137` |
| 26 | `theorem` | [mul_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mul-quot--04071f2e866d016f13193ae2.md) | 222 | `result-track:04071f2e866d016f13193ae201fe080e167b83423a1798f7b12bcb724233658d` |
| 27 | `theorem` | [pow_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/pow-quot--dd66cef59927e7cc05a2dcaa.md) | 227 | `result-track:dd66cef59927e7cc05a2dcaa68792d3e81f0a39bcbf1b633212412872c732c63` |
| 28 | `theorem` | [neg_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/neg-quot--02f62ce9ecbc0e36b79a4b09.md) | 231 | `result-track:02f62ce9ecbc0e36b79a4b09b2c5eaa2d0cadaec214f0395e49a8df23585e609` |
| 29 | `theorem` | [sub_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/sub-quot--6737f6278a61190acc51dc0c.md) | 237 | `result-track:6737f6278a61190acc51dc0c2f3d0a845172fb6943cbecd971dab70bba74003d` |
| 30 | `theorem` | [smul_quot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/smul-quot--bd716b0acce55a1cb9a4ce60.md) | 243 | `result-track:bd716b0acce55a1cb9a4ce608e346aeee80ad572e3d4645541a0e81e7559d116` |
| 31 | `instance` | [instIsScalarTower](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instisscalartower--c8f5779f8aed8583f609f188.md) | 249 | `declaration-track:c8f5779f8aed8583f609f18866d3b9940064536576a0b038a59192250f624d5c` |
| 32 | `instance` | [instSMulCommClass](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instsmulcommclass--5f84403d2ce72db651131373.md) | 253 | `declaration-track:5f84403d2ce72db651131373d29a4db2679d4c7fd0f8990de337d6e2b400964f` |
| 33 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instaddcommmonoid--5b6c90064562d4d59ca0c7b9.md) | 257 | `declaration-track:5b6c90064562d4d59ca0c7b9f93d034471ad4fc109cab6ac2b4752c9720bd605` |
| 34 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instmonoidwithzero--64eb09b72cb322f8b4e8345a.md) | 281 | `declaration-track:64eb09b72cb322f8b4e8345aad6a5ec964c2e0e11d66bba719bf69a0f9d70d71` |
| 35 | `instance` | [instSemiring](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instsemiring--e43ee7e20720fbe396a4bfbe.md) | 305 | `declaration-track:e43ee7e20720fbe396a4bfbe35a8127201badbb218241067efc3c24ef85573bf` |
| 36 | `def` | [intCast](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/intcast--60f9f43302cd9583d9435750.md) | 327 | `declaration-track:60f9f43302cd9583d9435750cf23975edd7d35a0aecc3a0483d8803e7d7e77c3` |
| 37 | `instance` | [instRing](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instring--7364da5bddb9337ec6cc8919.md) | 330 | `declaration-track:7364da5bddb9337ec6cc89193aa44b07224919d10b05e16900ddfd6433d5b3c2` |
| 38 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instcommsemiring--329dc02de0bd308405df97f7.md) | 357 | `declaration-track:329dc02de0bd308405df97f75182f3ca8901a89c996fb38273e009fd4bab2c9a` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instance--d4cde06846d48974528cc3cf.md) | 364 | `declaration-track:d4cde06846d48974528cc3cf14cbac7c29f2e4b08f16ada59983ddc0dca5c82e` |
| 40 | `instance` | [instInhabited](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instinhabited--5dbe294b43b9ea5bcb3b3ddc.md) | 367 | `declaration-track:5dbe294b43b9ea5bcb3b3ddcbeacd5df7e5e61a996265c7700d76400969e2098` |
| 41 | `instance` | [instAlgebra](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/instalgebra--584d70acc096cbdc4742b1ea.md) | 370 | `declaration-track:584d70acc096cbdc4742b1ead7c13a3304a81f605ff5914539b331fefac0108a` |
| 42 | `theorem` | [mkRingHom_rel](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mkringhom-rel--6382372d4e3c81fd8c7904b8.md) | 394 | `result-track:6382372d4e3c81fd8c7904b858afa3aede941c0e3fde9e5242cbc6395169623e` |
| 43 | `theorem` | [mkRingHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mkringhom-surjective--6829c77b4a62673e9a596466.md) | 397 | `result-track:6829c77b4a62673e9a5964663d2d2043c41fbc4ee95dc6e583f4c78702a91fee` |
| 44 | `theorem` | [ringQuot_ext](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquot-ext--829b71e86ee790e8ea5f1d74.md) | 403 | `result-track:829b71e86ee790e8ea5f1d741cf6839796c9a2196ac28d59d9024b879abce85d` |
| 45 | `theorem` | [lift_mkRingHom_apply](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/lift-mkringhom-apply--7349b72661514e2b95c3072f.md) | 449 | `result-track:7349b72661514e2b95c3072f25161aa06476d19622431f3586a4d0c8c23bb030` |
| 46 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/lift-unique--c99e10bf2160528dc4e4e1ba.md) | 455 | `result-track:c99e10bf2160528dc4e4e1ba3667b21b27e86f6c020f84a2a3a2ec2b81456793` |
| 47 | `theorem` | [eq_lift_comp_mkRingHom](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/eq-lift-comp-mkringhom--4bc3580afc2772dff3641dd5.md) | 460 | `result-track:4bc3580afc2772dff3641dd5a5e44ebb30dc24c007ce3c91da70beeb4a063a01` |
| 48 | `def` | [ringQuotToIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquottoidealquotient--de9ce8086ba1dc3b8b793b89.md) | 477 | `declaration-track:de9ce8086ba1dc3b8b793b899801daf8f6782dc0633e0bbae0ba26b7f6005e98` |
| 49 | `theorem` | [ringQuotToIdealQuotient_apply](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquottoidealquotient-apply--7d5449a0b55469491222954a.md) | 483 | `result-track:7d5449a0b55469491222954af36616f2e0f4ca6b91f422616560a8caf8a1fd93` |
| 50 | `def` | [idealQuotientToRingQuot](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/idealquotienttoringquot--8b1a2d5ae2ec76f48d8592e0.md) | 489 | `declaration-track:8b1a2d5ae2ec76f48d8592e0f8a8ef1011c1417e8224b83d16d6ede4a69bf9e5` |
| 51 | `theorem` | [idealQuotientToRingQuot_apply](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/idealquotienttoringquot-apply--f86e027f008bda2eee539590.md) | 504 | `result-track:f86e027f008bda2eee539590719ebe49b208b4a4ee1c276355f5c737450bf183` |
| 52 | `def` | [ringQuotEquivIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquotequividealquotient--a7770e07df1ef89df22d29cb.md) | 511 | `declaration-track:a7770e07df1ef89df22d29cb995b7e6461e155db7beb690237cba2f1ead35c24` |
| 53 | `theorem` | [mkAlgHom_coe](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mkalghom-coe--95a4d7fd8e2d155c70ad1310.md) | 539 | `result-track:95a4d7fd8e2d155c70ad1310eac36c996af54ee1567046d44246059c16a017f0` |
| 54 | `theorem` | [mkAlgHom_rel](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mkalghom-rel--c5f7b1c850f19e544e986ea3.md) | 543 | `result-track:c5f7b1c850f19e544e986ea3e0096b462d503c140c640483e40cbf1cc8882dc9` |
| 55 | `theorem` | [mkAlgHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/mkalghom-surjective--0b26ee3f4fd1252151aaa1b5.md) | 547 | `result-track:0b26ee3f4fd1252151aaa1b5cd05737c0f5724b76c5288c25c74a6f5235aa334` |
| 56 | `theorem` | [ringQuot_ext'](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/ringquot-ext--a8cc8340201998369f73c819.md) | 556 | `result-track:a8cc8340201998369f73c819f8cec1bbe688ac7cd7f049ecc4b049c6d4f0cffc` |
| 57 | `theorem` | [liftAlgHom_mkAlgHom_apply](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/liftalghom-mkalghom-apply--f1419f852a5cca69d5a79e3a.md) | 604 | `result-track:f1419f852a5cca69d5a79e3af9947c8b7b3506fffa36b9a0de1b025eed054f89` |
| 58 | `theorem` | [liftAlgHom_unique](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/liftalghom-unique--884d355aaff605d0ab669f65.md) | 610 | `result-track:884d355aaff605d0ab669f65bb4634fb0af47d5cf8f599331924f339d772caaf` |
| 59 | `theorem` | [eq_liftAlgHom_comp_mkAlgHom](../../../../mathematics/Algebra/RingQuot/Variantf0faae84a6c8f96b08da86eec3bd253d38e55bbf1d6a1f1ddf75899a2a921f7c.lean/declarations/eq-liftalghom-comp-mkalghom--421218f071911407c5e824ea.md) | 615 | `result-track:421218f071911407c5e824eaccc462e3b4b2aa0dd5537fa7a6ee250accca5442` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
