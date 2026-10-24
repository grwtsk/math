# Verification target: GRWTSK.Topology.GeneralTopology.Module.Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37429d8859e3e5536d69258faaad6b4c3b2bd9e3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37429d8859e3e5536d69258faaad6b4c3b2bd9e3`.

Source path: `GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/instance--0436ac6276bfb616819c6bac.md) | 37 | `declaration-track:0436ac6276bfb616819c6bac4c92df0f5ebace18758ca4c0ba662ea2b43fa39d` |
| 2 | `theorem` | [smul_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/smul-apply--b312a4888c8c1a4697f56af5.md) | 40 | `result-track:b312a4888c8c1a4697f56af5c50cf18e491d3b7f1f9c7a16d7b39f66489aa787` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/coe-smul--930f8c73cd2fbff5c5bd44d0.md) | 45 | `result-track:930f8c73cd2fbff5c5bd44d0e3528ea4816d65595e1637e2a5928e2142f6b28f` |
| 4 | `instance` | [smulCommClass](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/smulcommclass--ceeba6cacc72642c38e5d6c6.md) | 49 | `declaration-track:ceeba6cacc72642c38e5d6c67baf9452397dab059dd81b4422753f1f62e1a819` |
| 5 | `instance` | [isScalarTower](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/isscalartower--347b752709ac52b2572f3ae6.md) | 54 | `declaration-track:347b752709ac52b2572f3ae6dc91722ba6a7ea24b5ce5aed7fae00a8573d986c` |
| 6 | `instance` | [isCentralScalar](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/iscentralscalar--2ccaffacec3a5c75a2d6734f.md) | 59 | `declaration-track:2ccaffacec3a5c75a2d6734fe9f34c41781ee5cec2e597b3e88eb2d901037414` |
| 7 | `instance` | [distribMulAction](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/distribmulaction--931e25d15191a1c129b513b3.md) | 66 | `declaration-track:931e25d15191a1c129b513b3760f5b7df5ad2fe29277a664adfc7716b0468647` |
| 8 | `instance` | [module](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/module--0fd42874fa5a5e63ee938f31.md) | 72 | `declaration-track:0fd42874fa5a5e63ee938f314743243db0f9894197cf6e5621ad0a086498c50d` |
| 9 | `def` | [coeFnLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/coefnlinearmap--6b21b041ad182e0aab419e7f.md) | 82 | `declaration-track:6b21b041ad182e0aab419e7fcdbb480194f5c0d5b538ab5e18bb6ac43b4e36a4` |
| 10 | `lemma` | [coeFnLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/coefnlinearmap-apply--76893cb020a02240baa8b210.md) | 89 | `result-track:76893cb020a02240baa8b210767f5909b189e100f6aa58539bcd8ef35eef3b63` |
| 11 | `theorem` | [filter_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/filter-smul--aec11a97a0fd2957deeb40b2.md) | 96 | `result-track:aec11a97a0fd2957deeb40b2ed22858eb8f3eb02b914751e4ec90f0ea0453457` |
| 12 | `def` | [filterLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/filterlinearmap--7470d56a28e333fa2c718a67.md) | 105 | `declaration-track:7470d56a28e333fa2c718a678c8c1d838c7d17c02c53714ecaff05c38c69b1e3` |
| 13 | `theorem` | [subtypeDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/subtypedomain-smul--3394f24942d761ed484f2ad6.md) | 114 | `result-track:3394f24942d761ed484f2ad61dd82a915ad7bcac67d83d19acc3c7d5adc96527` |
| 14 | `def` | [subtypeDomainLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/subtypedomainlinearmap--19bece6f7923718ce806ccdb.md) | 123 | `declaration-track:19bece6f7923718ce806ccdb411c9fb5d7ee011e3a5ed930a28dac9510c577bb` |
| 15 | `theorem` | [mk_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/mk-smul--a175bd06cdbffe2ce892921b.md) | 139 | `result-track:a175bd06cdbffe2ce892921b850b03d8016c012f6a7c4d2fe2bf314f37e7241b` |
| 16 | `theorem` | [single_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/single-smul--85c0334f01777b8798234833.md) | 144 | `result-track:85c0334f01777b87982348330f0dc827ce926391c752baf9fdb46ddc1ada2c42` |
| 17 | `theorem` | [support_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/support-smul--89b331281d892de62e4924a2.md) | 153 | `result-track:89b331281d892de62e4924a28f9468f7eabe93442d754e2c75e8e763f9694331` |
| 18 | `theorem` | [comapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/comapdomain-smul--ae84fd82aad9d01d6b770eba.md) | 167 | `result-track:ae84fd82aad9d01d6b770eba3cf51ea00631839d3a379510e00c7e10d19c4943` |
| 19 | `theorem` | [comapDomain'_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/comapdomain-smul--e96d0433f8fcfc8790176e5b.md) | 174 | `result-track:e96d0433f8fcfc8790176e5bfac7e8b896ccf29f04fdf4376b2236fa5d7eed43` |
| 20 | `instance` | [distribMulAction₂](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/distribmulaction--6a2f9dc90c14b719ea55b2ec.md) | 184 | `declaration-track:6a2f9dc90c14b719ea55b2ecdb14255aa056964abb249d639dd1caf87957d231` |
| 21 | `theorem` | [equivProdDFinsupp_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/declarations/equivproddfinsupp-smul--b6bd9249bac7f075eb8d6372.md) | 192 | `result-track:b6bd9249bac7f075eb8d6372d423021e6bacd9d65222acce1a4b777b8d461dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
