# Verification target: GRWTSK.Algebra.Tower.Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccbbf562619b9f237a0807bf6bfc286ca2c4923c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccbbf562619b9f237a0807bf6bfc286ca2c4923c`.

Source path: `GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lsmul](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/lsmul--f792113fc52352e3806ad9bb.md) | 74 | `declaration-track:f792113fc52352e3806ad9bb9ff724b887a316aacc30427daa4e7dd452ce5298` |
| 2 | `theorem` | [lsmul_coe](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/lsmul-coe--66a0ea87f63eaa0f58490c64.md) | 84 | `result-track:66a0ea87f63eaa0f58490c6439f9abe8b65f5170d5ca0f9a7fdbe43b61646afc` |
| 3 | `theorem` | [algebraMap_smul](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/algebramap-smul--9d5d0f207995ca6d85740ada.md) | 99 | `result-track:9d5d0f207995ca6d85740ada5fad7be090e73e36e97c16ac5b789e5d2520a239` |
| 4 | `theorem` | [of_algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/of-algebramap-eq--601711545cb6b157624a9ca1.md) | 113 | `result-track:601711545cb6b157624a9ca107ecceccfbec311150c2654ac45fd96de0267b2f` |
| 5 | `theorem` | [of_algebraMap_eq'](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/of-algebramap-eq--dd2b85d2457dbcc03078e1f6.md) | 119 | `result-track:dd2b85d2457dbcc03078e1f68e7ee6d5073aa5b442dd754be3351e4f4376a5d1` |
| 6 | `theorem` | [algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/algebramap-eq--e3d2b0bca2d3c5615135dbac.md) | 130 | `result-track:e3d2b0bca2d3c5615135dbacc2dfc2ac3391de71d520e50d2652cd06568944bf` |
| 7 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/algebramap-apply--bad7dce3f5d35a71317a29f2.md) | 135 | `result-track:bad7dce3f5d35a71317a29f2e435dc54e1a246ca93c9f7c2c567ee58b8f08e9c` |
| 8 | `theorem` | [Algebra.ext](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/algebra-ext--ac9855961332d011af201c9c.md) | 140 | `result-track:ac9855961332d011af201c9c56cddb850406cec7f812512391444a13d63a0f1b` |
| 9 | `def` | [toAlgHom](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/toalghom--e9e22cf7cbe8edc16e3ddd71.md) | 148 | `declaration-track:e9e22cf7cbe8edc16e3ddd713b7158b4417874302c2c4d76c96495ddc0aa138d` |
| 10 | `theorem` | [toAlgHom_apply](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/toalghom-apply--67ebe055fc913b502cf7334d.md) | 152 | `result-track:67ebe055fc913b502cf7334d83dc476d63d9f6c43e863cda86cc5ab29d10f47c` |
| 11 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-toalghom--0548beebcdaee0a40989aea4.md) | 156 | `result-track:0548beebcdaee0a40989aea40cff1611b3b68773882e146c550e473ef7af3b08` |
| 12 | `theorem` | [coe_toAlgHom'](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-toalghom--68f26e498c0170a808a0557f.md) | 161 | `result-track:68f26e498c0170a808a0557f6704caae10789fd29b1483eb7d76329740e95a2b` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.Lsmul.Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.AlgHom.map_algebraMap](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/root-grwtsk-algebra-lsmul-variante57dc82e8622075d6ece9988ba6190990cc81b4--b457fbe8f4031cda405ab76d.md) | 167 | `result-track:b457fbe8f4031cda405ab76d7aff415b4f97b460cfe6a105b76186a993a83044` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.Lsmul.Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.AlgHom.comp_algebraMap_of_tower](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/root-grwtsk-algebra-lsmul-variante57dc82e8622075d6ece9988ba6190990cc81b4--e925388cfc16b0d84388677b.md) | 175 | `result-track:e925388cfc16b0d84388677b38520d0753bcd334da2ccc983e274b5034998e70` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/instance--3f7fb3b3136e5ce3f1ff3366.md) | 181 | `declaration-track:3f7fb3b3136e5ce3f1ff3366dbe79988e993563764d7165288a903391faae275` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/instance--3ed83835f82a761b22500050.md) | 186 | `declaration-track:3ed83835f82a761b22500050c07b98db4dd8924470f369ebfeff0d48c19c6199` |
| 17 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars--3c0c9a33800ba6e19740ed59.md) | 214 | `declaration-track:3c0c9a33800ba6e19740ed596ec5fe49d97efb97ac497cb3aecb2b07f27591ff` |
| 18 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars-apply--1e13cb66c2a37df00529ddd7.md) | 221 | `result-track:1e13cb66c2a37df00529ddd7b8797a168a36f4e12de93789cd4a73b2c9b6e21b` |
| 19 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-restrictscalars--af2df3174a64bb6d55d2a922.md) | 225 | `result-track:af2df3174a64bb6d55d2a9226ed4ecee8a32b579631dd00a7fc02b66ae5a0473` |
| 20 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-restrictscalars--6f51a29ae449a34b13be86cb.md) | 229 | `result-track:6f51a29ae449a34b13be86cbddce275eb221069d6ee8f3c7ecfc6d89aac3ca09` |
| 21 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars-injective--35165ecc24d2811116d46ac1.md) | 232 | `result-track:35165ecc24d2811116d46ac12c552b0a61d869db25defb54bf7a71b3f43385dd` |
| 22 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars--d056a535c74085469011c00a.md) | 242 | `declaration-track:d056a535c74085469011c00a5b13c3e0aac103148acaf94a5b3a3aace171ec2f` |
| 23 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars-apply--c2cb63dfe906486bfd677a41.md) | 249 | `result-track:c2cb63dfe906486bfd677a41269b99bc799d994afbd5f5a72afa1529dfa220cf` |
| 24 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-restrictscalars--6a3581e589a9a74ac21f501c.md) | 253 | `result-track:6a3581e589a9a74ac21f501c75c2f2e4d4e7e1d810e284e7890f1563d29ce9d4` |
| 25 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-restrictscalars--4a63d963948f29a8ba5c8b34.md) | 257 | `result-track:4a63d963948f29a8ba5c8b341f3099668caae4eea20667f72093b68d639dccb4` |
| 26 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars-injective--c9886e09cb0705e4c15e960f.md) | 260 | `result-track:c9886e09cb0705e4c15e960f9ce4d21b303fad2a5ca6e0388b3d26088d7b3484` |
| 27 | `theorem` | [restrictScalars_span](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/restrictscalars-span--9fe170d986326d301d9e3da1.md) | 279 | `result-track:9fe170d986326d301d9e3da1b84e075531edf0f26b4fa3525d459f950996efa6` |
| 28 | `theorem` | [coe_span_eq_span_of_surjective](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/coe-span-eq-span-of-surjective--d0a5d08851cda76347707f9f.md) | 287 | `result-track:d0a5d08851cda76347707f9fef8c7b7b0a3b944325ce40a0a3574280e5e03a6b` |
| 29 | `theorem` | [smul_mem_span_smul_of_mem](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/smul-mem-span-smul-of-mem--7219ef75424ed417c36fcc38.md) | 308 | `result-track:7219ef75424ed417c36fcc38d94dc6719a26af744af5ccb15334b4f440243116` |
| 30 | `theorem` | [smul_mem_span_smul](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/smul-mem-span-smul--73c3231a55619ea98f3b7232.md) | 318 | `result-track:73c3231a55619ea98f3b72324cf10edcb05ac104f9daeb27ba88dbac4be60265` |
| 31 | `theorem` | [smul_mem_span_smul'](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/smul-mem-span-smul--eccb5789761b62c8241cf222.md) | 326 | `result-track:eccb5789761b62c8241cf222f9500048fab98f49e45ac9fa47ba1bfbe42dcd94` |
| 32 | `theorem` | [span_smul_of_span_eq_top](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/span-smul-of-span-eq-top--95af3a7fb2f0d46faa659cf7.md) | 338 | `result-track:95af3a7fb2f0d46faa659cf70e3f263e5a6acb1f6d069fe160afa978f36ef77b` |
| 33 | `theorem` | [span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/span-algebramap-image--71252eaaffed97dd725bdb31.md) | 358 | `result-track:71252eaaffed97dd725bdb31aeb9ba79525d6dae14647b15dbddd060507c7b6f` |
| 34 | `theorem` | [span_algebraMap_image_of_tower](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/span-algebramap-image-of-tower--ca357aaa73dc37a68e547ee3.md) | 363 | `result-track:ca357aaa73dc37a68e547ee38047f6103d755ef5de4da27bb77352e88131a53c` |
| 35 | `theorem` | [map_mem_span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/map-mem-span-algebramap-image--71540884dd447f61c37f3c6e.md) | 370 | `result-track:71540884dd447f61c37f3c6e7c0fa5428cea391dc857c710756af614f17a9d38` |
| 36 | `theorem` | [lsmul_injective](../../../../mathematics/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/declarations/lsmul-injective--f4ed5a24f257833addc81dfd.md) | 391 | `result-track:f4ed5a24f257833addc81dfdcb7c94029955fd53b4b942f075f81e316c064cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
