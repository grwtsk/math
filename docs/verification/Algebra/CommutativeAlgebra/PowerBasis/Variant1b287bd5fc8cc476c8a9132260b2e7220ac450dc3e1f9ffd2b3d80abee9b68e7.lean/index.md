# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerBasis.Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793eb36b4907170e6f62daefcbad72b68b648852",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793eb36b4907170e6f62daefcbad72b68b648852`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/powerbasis--0dbe501b47027a03cb42556b.md) | 70 | `declaration-track:0dbe501b47027a03cb42556bdd8ae56cab76c07b110b7e08d070aad8dc1534ae` |
| 2 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/coe-basis--164746ef46e2dc64e61e8019.md) | 84 | `result-track:164746ef46e2dc64e61e8019604cbe5e0b378d32aee623238979e321dbc3879b` |
| 3 | `theorem` | [finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/finitedimensional--b60e170745b289eedaaed61a.md) | 89 | `result-track:b60e170745b289eedaaed61a5ec57bd24c7940af56ff1f861278c99fd6e55e2d` |
| 4 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/finrank--71fa246fc6e6a19e68737746.md) | 93 | `result-track:71fa246fc6e6a19e6873774687fd41cf7b2e3a57974abb9c5106a260ae1752ff` |
| 5 | `theorem` | [mem_span_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/mem-span-pow--93400431a2c821cb00310b2e.md) | 97 | `result-track:93400431a2c821cb00310b2e96059f45bd3167d955d17b89e3fd53f36dfb1b1b` |
| 6 | `theorem` | [mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/mem-span-pow--ac4fb052b3ac98902c629642.md) | 113 | `result-track:ac4fb052b3ac98902c62964294c4eb82e64ea51c9071d985c31e3e41b6612748` |
| 7 | `theorem` | [dim_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/dim-ne-zero--6defe4f739d2ee4254390c4d.md) | 127 | `result-track:6defe4f739d2ee4254390c4db56e48a891c6d9832ea2b382217070fc6d73a125` |
| 8 | `theorem` | [dim_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/dim-pos--358b39be9f56500ff6203961.md) | 131 | `result-track:358b39be9f56500ff62039616344ecc961ab35c49714381412d4d42e12610783` |
| 9 | `theorem` | [exists_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/exists-eq-aeval--b596c7d20e65ef47bbb0ac2b.md) | 135 | `result-track:b596c7d20e65ef47bbb0ac2b78049ae17d6d85bc93ba5dfcd0f7c63f4dd7b6dc` |
| 10 | `theorem` | [exists_eq_aeval'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/exists-eq-aeval--53dfb8fdeab8a5ad3e9c65a7.md) | 140 | `result-track:53dfb8fdeab8a5ad3e9c65a7a000aa63d36ae3a1215404748418c0095de28c55` |
| 11 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/alghom-ext--c078ebdb042f63e315bef847.md) | 146 | `result-track:c078ebdb042f63e315bef847b475c0246e26af7844fd9246aecb780aed265d51` |
| 12 | `def` | [minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/minpolygen--752ae58d747c70dc3bfdc308.md) | 160 | `declaration-track:752ae58d747c70dc3bfdc308b755f7f6e81cfbc02f166dddab02345f2ff2b606` |
| 13 | `theorem` | [aeval_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/aeval-minpolygen--1fc79faba10c41910d28a6c5.md) | 164 | `result-track:1fc79faba10c41910d28a6c59015605a14f3bf1dcc7b86cdf58f7f1a3c1afc3d` |
| 14 | `theorem` | [minpolyGen_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/minpolygen-monic--70dde6dbd9e614d0f9f313cc.md) | 172 | `result-track:70dde6dbd9e614d0f9f313cc83c5f5d0ddfdad1f310bfcc8897e2a159ba311a0` |
| 15 | `theorem` | [dim_le_natDegree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/dim-le-natdegree-of-root--bfbec4dd06549a412687250e.md) | 179 | `result-track:bfbec4dd06549a412687250e4525ba31bacad3f3e4ea50b92dd0bfc8f5a1dedf` |
| 16 | `theorem` | [dim_le_degree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/dim-le-degree-of-root--4aef99a00245453510c87858.md) | 189 | `result-track:4aef99a00245453510c8785872f3ea53d639a2ef3322c7930299a44d7208a8c5` |
| 17 | `theorem` | [degree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/degree-minpolygen--4e799dd9df9695940499890e.md) | 195 | `result-track:4e799dd9df9695940499890ea8f7b959891fa50e92fa106e67b85a263da1521b` |
| 18 | `theorem` | [natDegree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/natdegree-minpolygen--303c8b824d8571cf1bcfce14.md) | 202 | `result-track:303c8b824d8571cf1bcfce146d2adfcc459ad94d063344984833f5712c928103` |
| 19 | `theorem` | [minpolyGen_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/minpolygen-eq--6114dc4a6bd53849d5ab0ee3.md) | 208 | `result-track:6114dc4a6bd53849d5ab0ee3c83ff4105c7b6ed8f89439f8e335083b4f02ca53` |
| 20 | `theorem` | [isIntegral_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/isintegral-gen--7d815f31b93b0fb721aa8469.md) | 215 | `result-track:7d815f31b93b0fb721aa846995ade69aabf6a75c23b6d22ddb74a546c18980a2` |
| 21 | `theorem` | [degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/degree-minpoly--2ef1550bff2e72e9d6664369.md) | 220 | `result-track:2ef1550bff2e72e9d6664369ecb6fb63c5ed61681d7a48552e89f99ce333b172` |
| 22 | `theorem` | [natDegree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/natdegree-minpoly--a58e77e9b7f0db4f429136e9.md) | 225 | `result-track:a58e77e9b7f0db4f429136e947dc64defa0f8f08c7a97095828f9905888728c5` |
| 23 | `theorem` | [leftMulMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/leftmulmatrix--d0745b732f8d7e7bd7ec3928.md) | 229 | `result-track:d0745b732f8d7e7bd7ec39288ee4015a3292c5e7c0ced068b3f90fdc8069a5f5` |
| 24 | `theorem` | [constr_pow_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/constr-pow-aeval--a8a026385960f7c00f859f76.md) | 255 | `result-track:a8a026385960f7c00f859f768b746bea7786f59b5984a2ab9dec7f9d32c21676` |
| 25 | `theorem` | [constr_pow_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/constr-pow-gen--93cdb11c52f770db5b1d6dad.md) | 275 | `result-track:93cdb11c52f770db5b1d6dad5ac901561de1bb45199ea6aec1dc67621035c914` |
| 26 | `theorem` | [constr_pow_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/constr-pow-algebramap--0a3ca8142a4eb4cb9afa4b90.md) | 280 | `result-track:0a3ca8142a4eb4cb9afa4b90669f04b8421ccb18b9c3e99517b52d073fecdb3e` |
| 27 | `theorem` | [constr_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/constr-pow-mul--81641422d30d456f9149def7.md) | 285 | `result-track:81641422d30d456f9149def73f93112a98abde9ed80416d0c908827ca8d0c388` |
| 28 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/lift--e160bb1fe547a4733f8efcb5.md) | 298 | `declaration-track:e160bb1fe547a4733f8efcb5d660f7da1685b774f06dcb600a9dc6265f82e964` |
| 29 | `theorem` | [lift_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/lift-gen--3217bb9ab1899a2da8aa82eb.md) | 308 | `result-track:3217bb9ab1899a2da8aa82eb9cd4d9b762c320564c7bbdb4216eab9d78dbd249` |
| 30 | `theorem` | [lift_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/lift-aeval--af8ecca294697040851472e1.md) | 314 | `result-track:af8ecca294697040851472e1e324c112906277dc97c1d38d4d6ab68df962b762` |
| 31 | `def` | [liftEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/liftequiv--ac8ab17ea65221820b8420a1.md) | 327 | `declaration-track:ac8ab17ea65221820b8420a1e43e797a2eec24123ab35f9166f1a143df74c233` |
| 32 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/liftequiv--2758723fc1a69cdcb85ad401.md) | 338 | `declaration-track:2758723fc1a69cdcb85ad401b264aa1f46ef61767de7684634df192b67d63bba` |
| 33 | `def` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/alghom-fintype--be246f5d83a5cba2b52b0653.md) | 348 | `declaration-track:be246f5d83a5cba2b52b06532bbdb5afc8904b921bb82b3ec4b4ae508f047b24` |
| 34 | `def` | [equivOfRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofroot--387f245d3561c610a1bdafdc.md) | 360 | `declaration-track:387f245d3561c610a1bdafdce5639c8c4cb25dcbeed6c5247ce1ab378a41eb63` |
| 35 | `theorem` | [equivOfRoot_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofroot-aeval--48f4310c0fcad1196cef3cef.md) | 375 | `result-track:48f4310c0fcad1196cef3cef8ab5a7b339c088381dfbbbfe191ae7ca4f1cf91b` |
| 36 | `theorem` | [equivOfRoot_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofroot-gen--67e500ac8d09dc885a6f88be.md) | 382 | `result-track:67e500ac8d09dc885a6f88bea342e77f87524dc47b3d9ecd7d8ee243c61601eb` |
| 37 | `theorem` | [equivOfRoot_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofroot-symm--0bdc8dab9d71dc6ad5ed9984.md) | 389 | `result-track:0bdc8dab9d71dc6ad5ed9984e1e51075c2d133cc1262ce2ef5dd51d334964d05` |
| 38 | `def` | [equivOfMinpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofminpoly--be0b427a9288f6cc5f75d49e.md) | 402 | `declaration-track:be0b427a9288f6cc5f75d49e73cd88f1c61cfcd5d2e125ef9ed49031e3bcc847` |
| 39 | `theorem` | [equivOfMinpoly_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofminpoly-aeval--a09065898d1bfec61ca895b9.md) | 408 | `result-track:a09065898d1bfec61ca895b96034a063018c201f816cbe2a04b936c62e8ca31c` |
| 40 | `theorem` | [equivOfMinpoly_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofminpoly-gen--d218641411c7afd77d832445.md) | 415 | `result-track:d218641411c7afd77d832445c8ebe5ae269b9f30345987f39aee7a9a3b8ce9cb` |
| 41 | `theorem` | [equivOfMinpoly_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofminpoly-symm--c1917cc713ff451f9975a493.md) | 421 | `result-track:c1917cc713ff451f9975a4939f3a531ff29f0672f9c560609cca181e39cbd4f5` |
| 42 | `theorem` | [linearIndependent_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/linearindependent-pow--b9c80641cbe9c40fa5980a7d.md) | 435 | `result-track:b9c80641cbe9c40fa5980a7d6f2f12886babdaa16df2ccf007b10e83675c75b5` |
| 43 | `theorem` | [IsIntegral.mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/isintegral-mem-span-pow--7a2382f2e0f79c3e9a844390.md) | 451 | `result-track:7a2382f2e0f79c3e9a844390c5b15e9004e5e6b319edd4bec08b39a5c7861ec2` |
| 44 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/map--22aaa7288aa389e34031a8d3.md) | 470 | `declaration-track:22aaa7288aa389e34031a8d388799233ec6d7baad059a915cd25328de92e3d51` |
| 45 | `theorem` | [minpolyGen_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/minpolygen-map--ec713d53b02a4bf62bd998ff.md) | 480 | `result-track:ec713d53b02a4bf62bd998ff1d7e53c7aa041b03fe75501293a57b5abc181710` |
| 46 | `theorem` | [equivOfRoot_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofroot-map--ced15a9d84702c082a1c8f67.md) | 490 | `result-track:ced15a9d84702c082a1c8f6753d2e0d45669908c9d5b83351b55d8c94bb069da` |
| 47 | `theorem` | [equivOfMinpoly_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/equivofminpoly-map--baef38ae4e4e88eab857d044.md) | 498 | `result-track:baef38ae4e4e88eab857d044b27aba673179f7a76997e40734bd45464796b142` |
| 48 | `theorem` | [adjoin_gen_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/adjoin-gen-eq-top--4e0e3781f97503c1ac6a8dba.md) | 509 | `result-track:4e0e3781f97503c1ac6a8dba8f29be15e60af136f9395938817ed370cf8dff29` |
| 49 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin--94bfb08bb0dbfae6140b48dd.md) | 516 | `result-track:94bfb08bb0dbfae6140b48dd1bad09134f9be1bad0b2fa8d4a839ef8e94c276c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
