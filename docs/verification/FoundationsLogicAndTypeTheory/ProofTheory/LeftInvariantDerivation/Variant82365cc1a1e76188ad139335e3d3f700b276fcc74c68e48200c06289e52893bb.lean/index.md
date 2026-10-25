# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3470be3a9c1a1f1469bd67357520e4a2014313be",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3470be3a9c1a1f1469bd67357520e4a2014313be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Lie` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.DerivationBundle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInvariantDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/leftinvariantderivation--0cbee74d7bd090927dd8edae.md) | 49 | `declaration-track:0cbee74d7bd090927dd8edaedb2d04d97c14f020a9f04c0580e0eb3361a37041` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--a44c067a4f136ccfa9d8e0fd.md) | 58 | `declaration-track:a44c067a4f136ccfa9d8e0fd82adfed141420bc36dc633233950dd3261179ca2` |
| 3 | `theorem` | [toDerivation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/toderivation-injective--a723d719633b544a6eef6293.md) | 63 | `result-track:a723d719633b544a6eef629320ef2bf7144d353771c2cfceae4038168044b800` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--f616643cddc0a01b8f5ecd05.md) | 67 | `declaration-track:f616643cddc0a01b8f5ecd05074be8d02fb48238e12f6be01eb193165597fad6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--27158e19e0275f3e25f9512c.md) | 71 | `declaration-track:27158e19e0275f3e25f9512c1dd6e19af1fe59d02015bcd7d94c853948581759` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/tofun-eq-coe--717f75d83edd1ca2363b9913.md) | 77 | `result-track:717f75d83edd1ca2363b9913e542b7190ed094c9d15cbc68fb154dce953b532f` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-injective--d60a6f2830ee5d6a90bd7111.md) | 82 | `result-track:d60a6f2830ee5d6a90bd71119a2f3127eb5a32da6f89849d8f17c732bd14a070` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/ext--d35ee9a809c82eefd5ac73dd.md) | 87 | `result-track:d35ee9a809c82eefd5ac73dd3ad76bb665593ab3eed45015dc937a3da16c65b2` |
| 9 | `theorem` | [coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-derivation--9c2ddc3b84e198b6d8de4d4d.md) | 91 | `result-track:9c2ddc3b84e198b6d8de4d4d67aa80f55f16da94df5806cc6525ab0e0f90a10f` |
| 10 | `theorem` | [left_invariant'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/left-invariant--d5aeabb4962b77b76f3bdcbe.md) | 96 | `result-track:d5aeabb4962b77b76f3bdcbedfb9b0913598fff40511b5cec1bed56c0065e103` |
| 11 | `theorem` | [map_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/map-add--158caf87773fd2bb81cf378f.md) | 100 | `result-track:158caf87773fd2bb81cf378ffc26c1350d006d73ed0104413e0b6ddc779648f7` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/map-zero--8a4152ca68cb1f43f12778ad.md) | 102 | `result-track:8a4152ca68cb1f43f12778ade9a9363ab32fb4ec05f7a62f594fde5d6e85dd7e` |
| 13 | `theorem` | [map_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/map-neg--215976eefabe8932e7d24826.md) | 104 | `result-track:215976eefabe8932e7d24826cd1404204ed0ad22eee6649b5863126f4c6972f0` |
| 14 | `theorem` | [map_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/map-sub--20252ec33b6256a40b5eb181.md) | 106 | `result-track:20252ec33b6256a40b5eb181bd045af89c16bde69c88f41b929291bb095467ea` |
| 15 | `theorem` | [map_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/map-smul--0d1ed40681efde02b98241b6.md) | 108 | `result-track:0d1ed40681efde02b98241b6a73409438a442a62990cc2b5b61639ee764ae3e8` |
| 16 | `theorem` | [leibniz](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/leibniz--2499878224835f7705d9f092.md) | 111 | `result-track:2499878224835f7705d9f092d21c4366ec94c91c4a68824628230add11ea0b85` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--5f9cf7b45e06293ad772ec87.md) | 114 | `declaration-track:5f9cf7b45e06293ad772ec874ae1a0ec3f89316eb8064b578f0eb61ed51b883e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--8bb075d2de0cab317104857c.md) | 117 | `declaration-track:8bb075d2de0cab317104857cb24d647a7e290ce543a2e89e283024d17d70b2f7` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--0a4819608c2eef018bd3bd9e.md) | 120 | `declaration-track:0a4819608c2eef018bd3bd9efc77b2214608c505b8e9c35e999385759f3219dd` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--629eed973512df4b1802ff81.md) | 125 | `declaration-track:629eed973512df4b1802ff81115e381a9ce955888e8a5aa400c738e32d1844c8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--fb05fd7f8870d60671528b6e.md) | 128 | `declaration-track:fb05fd7f8870d60671528b6e736d253696169ba56062f2a1d7296739a87550aa` |
| 22 | `theorem` | [coe_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-add--846b8f0d1c08aea4e42c0d5b.md) | 132 | `result-track:846b8f0d1c08aea4e42c0d5b605ea968d3085e01ba690dad7fd79f7255d44617` |
| 23 | `theorem` | [coe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-zero--35ff05ddccf42bd3ab0bd019.md) | 136 | `result-track:35ff05ddccf42bd3ab0bd01944b3d183ef2d039dedb3007d7374d17393dad08c` |
| 24 | `theorem` | [coe_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-neg--a1ba0e8f707919bc3f076ef1.md) | 140 | `result-track:a1ba0e8f707919bc3f076ef128ecba66884cbd967963168bbfc934063c558a98` |
| 25 | `theorem` | [coe_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-sub--ffe2aa55e1f5c366f557c8ae.md) | 144 | `result-track:ffe2aa55e1f5c366f557c8ae89d52d9215b5ade55a6cf09e15eacdb94f765c55` |
| 26 | `theorem` | [lift_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/lift-add--5b522fda657c728e26b8e1e1.md) | 148 | `result-track:5b522fda657c728e26b8e1e1d07578d52495b95235e3c848bf77e38eae7d38ca` |
| 27 | `theorem` | [lift_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/lift-zero--08f81fc1d34262a1230cf292.md) | 152 | `result-track:08f81fc1d34262a1230cf2927a7770d2a0a7dbdf5b791b1941e8c0e885651257` |
| 28 | `instance` | [hasNatScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/hasnatscalar--6e5ea083c4daf58000093476.md) | 156 | `declaration-track:6e5ea083c4daf580000934764d18a5923958e101d4bccf4d40afb2869ad7f90c` |
| 29 | `instance` | [hasIntScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/hasintscalar--5f434025f5fb46b631633b97.md) | 159 | `declaration-track:5f434025f5fb46b631633b9783e6b1074665cf2665e0ca852306203ae491cd38` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--b8492c11da4eba5f472969af.md) | 162 | `declaration-track:b8492c11da4eba5f472969af19b61993ae18b8e62be8d858826a752082022bbd` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--b71a5d3b34e5c119fcf5e84a.md) | 165 | `declaration-track:b71a5d3b34e5c119fcf5e84a5a6547764d682e0c4669fea4e2066b092622d2d5` |
| 32 | `theorem` | [coe_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coe-smul--1111b7b484c10a0f208eb400.md) | 171 | `result-track:1111b7b484c10a0f208eb400f61dc6489709896a6d5d62c4c9d26ba7adf886b5` |
| 33 | `theorem` | [lift_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/lift-smul--95bf6991a0a1022d01d0b714.md) | 175 | `result-track:95bf6991a0a1022d01d0b7149c00c54b9ccaa6c19c753075e1f26dd44bc08353` |
| 34 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/coefnaddmonoidhom--2d4142cddf6015717ff00a47.md) | 182 | `declaration-track:2d4142cddf6015717ff00a47bba1f7d8d437a595e448801369d568885e373c18` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--69984b720e93985ee7441bed.md) | 187 | `declaration-track:69984b720e93985ee7441bed3364b2c614d00c875193b10434440fe71d28392e` |
| 36 | `def` | [evalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/evalat--c39dc608967b46aff2fdf116.md) | 192 | `declaration-track:c39dc608967b46aff2fdf116251f909198264b409b1f3766095edd42ac6967bd` |
| 37 | `theorem` | [evalAt_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/evalat-apply--3364aa9b81d3be50d219b733.md) | 197 | `result-track:3364aa9b81d3be50d219b7338e08d06cffa5a0ad758d436a2a0c64ae1e55aaef` |
| 38 | `theorem` | [evalAt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/evalat-coe--e243cae767104057d69e00b7.md) | 201 | `result-track:e243cae767104057d69e00b77211c2c53ff9cd22afcd2830f9dedd494cf17998` |
| 39 | `theorem` | [left_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/left-invariant--842eec5bda0e735b2c1c1c4f.md) | 204 | `result-track:842eec5bda0e735b2c1c1c4f9fef7406809f91893ae4c6c693e58d58953433f7` |
| 40 | `theorem` | [evalAt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/evalat-mul--4810d5f8936a92c368646c6f.md) | 207 | `result-track:4810d5f8936a92c368646c6f1964fbedde5194b5eb34eccbd059bd656677e391` |
| 41 | `theorem` | [comp_L](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/comp-l--c73e588176147fef79d1a7af.md) | 216 | `result-track:c73e588176147fef79d1a7af7164c42ee66aa775ca364e767ed66b5c8c81e521` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--48362cf8a0650d71220bad28.md) | 221 | `declaration-track:48362cf8a0650d71220bad280d2a553355642b21a21c5b48ea736ad54a08801b` |
| 43 | `theorem` | [commutator_coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/commutator-coe-derivation--2c0674040490769675839a66.md) | 235 | `result-track:2c0674040490769675839a66ec31405b876842690a56bb92a00f3347c51b5c00` |
| 44 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/commutator-apply--a269bde89f473da46161c8cd.md) | 241 | `result-track:a269bde89f473da46161c8cd374495b8b3985de4ef6d931087486ccfb53e2d36` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--6bff3d0e921a8bff3195db8c.md) | 244 | `declaration-track:6bff3d0e921a8bff3195db8c77d1d2dce9eac8d0bad27c40f025586b20712028` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant82365cc1a1e76188ad139335e3d3f700b276fcc74c68e48200c06289e52893bb.lean/declarations/instance--d2a1e10fc9814c563ebdbdc9.md) | 259 | `declaration-track:d2a1e10fc9814c563ebdbdc99cc8f0f3928aee7c88296503b2c27c6aef328042` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
