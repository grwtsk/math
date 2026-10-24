# Verification target: GRWTSK.Topology.GeneralTopology.Archimedean.Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96fa78d3fef8c548b27c0554ddfc9fc2bc60445",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96fa78d3fef8c548b27c0554ddfc9fc2bc60445`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/nat-comap-cast-attop--795326169c3e1ec03d3f7cb2.md) | 27 | `result-track:795326169c3e1ec03d3f7cb21b82077de071912c562fe1822027563e4103f060` |
| 2 | `theorem` | [tendsto_nat_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-nat-cast-attop-iff--b07116037deb85aa96f45b9c.md) | 32 | `result-track:b07116037deb85aa96f45b9c1e31cce851d3da034d06960a1c5eb61c435be756` |
| 3 | `theorem` | [tendsto_nat_cast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-nat-cast-attop-attop--db1c8db38c1f19946c1e425a.md) | 37 | `result-track:db1c8db38c1f19946c1e425a66bc3e0844e0855d4a4a2e4bb5d2e4b4e2eeda60` |
| 4 | `theorem` | [Filter.Eventually.nat_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/filter-eventually-nat-cast-attop--f63142ad411047ffaf83165b.md) | 42 | `result-track:f63142ad411047ffaf83165b9efaaf779f64d3d78b8f5577c755ea694cbdba2d` |
| 5 | `theorem` | [Int.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/int-comap-cast-attop--6bbfcc0146cd5a51bd832a8e.md) | 46 | `result-track:6bbfcc0146cd5a51bd832a8eadd99255633a7f8cb18f257a0e28e7a85ac7cd7b` |
| 6 | `theorem` | [Int.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/int-comap-cast-atbot--a11bb40442aaf3294a07a37b.md) | 53 | `result-track:a11bb40442aaf3294a07a37b07b628d8e1193e129468d42e9ea415d25c1a81d8` |
| 7 | `theorem` | [tendsto_int_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-int-cast-attop-iff--15404ed2e11ef19233e9bc94.md) | 60 | `result-track:15404ed2e11ef19233e9bc9484a289e65608474e14ee4dc2f6843e1df0ceacec` |
| 8 | `theorem` | [tendsto_int_cast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-int-cast-atbot-iff--8b9c37962e0401c0149dd108.md) | 65 | `result-track:8b9c37962e0401c0149dd108acf0ded7a034e58afdb8130062ae3b0fb59e4217` |
| 9 | `theorem` | [tendsto_int_cast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-int-cast-attop-attop--9e0247f8d1025097edb48f63.md) | 70 | `result-track:9e0247f8d1025097edb48f6385fc9897988ecce3441328c96c52b2a51a0225fb` |
| 10 | `theorem` | [Filter.Eventually.int_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/filter-eventually-int-cast-attop--def35f5e8f40c817eafa755c.md) | 75 | `result-track:def35f5e8f40c817eafa755c8f554fea78cffeadfc021708e3df8a111c2ec9d1` |
| 11 | `theorem` | [Filter.Eventually.int_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/filter-eventually-int-cast-atbot--7e67cfaae5a14d259956ec57.md) | 79 | `result-track:7e67cfaae5a14d259956ec57331954e75905f6e242e161e8d09f98dfa34b7a11` |
| 12 | `theorem` | [Rat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/rat-comap-cast-attop--dbea090d326eeeb534760e0b.md) | 84 | `result-track:dbea090d326eeeb534760e0b92d4821445fb7be9ff8cf09ced4be81c61b82262` |
| 13 | `theorem` | [Rat.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/rat-comap-cast-atbot--af3881d8bfcc09f91c06e626.md) | 90 | `result-track:af3881d8bfcc09f91c06e62625dffcf9247effa2a6ba3a3eb65d346b96f4453b` |
| 14 | `theorem` | [tendsto_rat_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-rat-cast-attop-iff--7d49a99a22891847220c18f4.md) | 97 | `result-track:7d49a99a22891847220c18f416cdf9b648bc933f41faa23595a21e15278418d3` |
| 15 | `theorem` | [tendsto_rat_cast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-rat-cast-atbot-iff--bd2493146128f636af37d84d.md) | 102 | `result-track:bd2493146128f636af37d84dd9c2d3364d6ee7a9f084c79e94e9f1ed9cad2760` |
| 16 | `theorem` | [Filter.Eventually.rat_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/filter-eventually-rat-cast-attop--4dcfe66b285e212bdc924286.md) | 107 | `result-track:4dcfe66b285e212bdc9242861769898775b7040c2d323623e20f787d2ec0aa52` |
| 17 | `theorem` | [Filter.Eventually.rat_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/filter-eventually-rat-cast-atbot--b62bb76773fd00da2a380005.md) | 111 | `result-track:b62bb76773fd00da2a380005a5f4ae1fd926ece334cf1a1ad7bbee37ad97edaf` |
| 18 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/attop-hasantitonebasis-of-archimedean--d071002ab7c6cf29202038bb.md) | 116 | `result-track:d071002ab7c6cf29202038bb5420c0465a2ff4f195777ee84f77b4342aad1873` |
| 19 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/attop-hascountablebasis-of-archimedean--66ea3579be2670da2e35c155.md) | 126 | `result-track:66ea3579be2670da2e35c155abbfde60f1fc85e7f2c8d7b03ab90180db81e3b0` |
| 20 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/atbot-hascountablebasis-of-archimedean--e0fb1ab687add5c10c31e76c.md) | 132 | `result-track:e0fb1ab687add5c10c31e76c1ca8202855112ecef876484a39da4ed5bd860498` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/instance--fd70b091256b23be4b208440.md) | 141 | `declaration-track:fd70b091256b23be4b2084409f726527b9948e22f398ee350dff34da48158e3b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/instance--c04c816f057c1a712a48be01.md) | 146 | `declaration-track:c04c816f057c1a712a48be01103b9ec5441ee2d0340b347d1332ffeb6fa38148` |
| 23 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-const-mul-attop--d591d56209093fc0c66a3889.md) | 163 | `result-track:d591d56209093fc0c66a38891191456dedc3cfee41c227520d3cb82071ce4da4` |
| 24 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-mul-const--f83e28ca10f68f5db663e45b.md) | 182 | `result-track:f83e28ca10f68f5db663e45bb7b93f5355ca416233b6cb4505996368dcfb07e9` |
| 25 | `theorem` | [Tendsto.atTop_mul_neg_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-mul-neg-const--5a95e40cc675be2e6e99e51c.md) | 205 | `result-track:5a95e40cc675be2e6e99e51c2817a9e97844104ec2d5f270e2d57d2452d04d0d` |
| 26 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-atbot-mul-const--f3735f16cc5bf6acb532f5aa.md) | 212 | `result-track:f3735f16cc5bf6acb532f5aa9879394712ed2cafcfcf962b9bf85265a8a18033` |
| 27 | `theorem` | [Tendsto.atBot_mul_neg_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-atbot-mul-neg-const--694cd44c94aa2cd12dad60a1.md) | 220 | `result-track:694cd44c94aa2cd12dad60a1a63d2f07ac26e070bf9f65e741a709f9563f7474` |
| 28 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-nsmul-const--e9751ca82b84d53f08bfe706.md) | 231 | `result-track:e9751ca82b84d53f08bfe7062f404438623471c88b660e87ad6cad32d218f261` |
| 29 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-nsmul-neg-const--49821a2a1647b4a19e118d34.md) | 244 | `result-track:49821a2a1647b4a19e118d34b6562764158de215b94cabf6450f9636bee2a894` |
| 30 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-zsmul-const--49815904beadd34bfaf56a32.md) | 248 | `result-track:49815904beadd34bfaf56a322c9af6670d2745596e3aee807674cef2f1b01c68` |
| 31 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-attop-zsmul-neg-const--a6fc8199c3a60cacc51b1fe6.md) | 256 | `result-track:a6fc8199c3a60cacc51b1fe630abd4d428ecf94fc045c69b59f709f845aece57` |
| 32 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-atbot-zsmul-const--c00383fb400b03dc802aec82.md) | 260 | `result-track:c00383fb400b03dc802aec82722056702de0da4aea5dceacebd60089c3889234` |
| 33 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant9221886b576284b973d615469bedeeb555a172cec3ea2a94704b2b6e4c107176.lean/declarations/tendsto-atbot-zsmul-neg-const--eb2b44cbf04766786441dbb0.md) | 266 | `result-track:eb2b44cbf04766786441dbb0724d93d7305a6c1f3d6909404b3dcf35a9ca64f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
