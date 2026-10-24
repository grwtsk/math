# Verification target: GRWTSK.Algebra.LinearAlgebra.FixedSubmodule.Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3213d313135a7758e096ddabb8d516d67ac7484e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3213d313135a7758e096ddabb8d516d67ac7484e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule--53fbff55baafdf7569192377.md) | 31 | `declaration-track:53fbff55baafdf7569192377e0ec67ce2ce76de093f8c5875aeb5d0e45ba393a` |
| 2 | `theorem` | [mem_fixedSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/mem-fixedsubmodule-iff--95cce8881ae041e210633323.md) | 38 | `result-track:95cce8881ae041e210633323fd0273eccebabbb3b587d930b76760eca3312a72` |
| 3 | `theorem` | [fixedSubmodule_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule-eq-ker--c36ddce3e5e87c2de73c84c3.md) | 42 | `result-track:c36ddce3e5e87c2de73c84c3b57061a345801d124d7f52377fd6b9bb50a85f95` |
| 4 | `theorem` | [fixedSubmodule_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule-eq-top-iff--aba6d231b7b4a8026150cce1.md) | 47 | `result-track:aba6d231b7b4a8026150cce180e101ce0b41c372f2fdb851c9f3ad31b64b1d17` |
| 5 | `theorem` | [fixedSubmodule_inf_fixedSubmodule_le_comp](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule-inf-fixedsubmodule-le-comp--fea0eba9f2950bdb06632229.md) | 51 | `result-track:fea0eba9f2950bdb0663222911cf23433e856cb98d4ebf8ac9137645d2e34175` |
| 6 | `theorem` | [fixedSubmodule_comp_inf_fixedSubmodule_le](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule-comp-inf-fixedsubmodule-le--5a7ec4de69fe15013d7192e3.md) | 55 | `result-track:5a7ec4de69fe15013d7192e3ed6f9651cf4ba8984ad346c75def3468ad35059c` |
| 7 | `theorem` | [fixedSubmodule_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedsubmodule-eq-top-iff--a9af77452ff736d245ec640a.md) | 71 | `result-track:a9af77452ff736d245ec640a05b9bf01c7b3f9ecc0bf810693fdbcf34be144bc` |
| 8 | `theorem` | [mem_stabilizer_submodule_of_le_fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/mem-stabilizer-submodule-of-le-fixedsubmodule--c85e8ab7eadd69b8d7b8fd21.md) | 75 | `result-track:c85e8ab7eadd69b8d7b8fd21cb8eb691c184b644d70c069a7febc640548942be` |
| 9 | `theorem` | [mem_stabilizer_fixedSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/mem-stabilizer-fixedsubmodule--ba2dadbb5111932b19442bec.md) | 90 | `result-track:ba2dadbb5111932b19442bec22525d687f0af85e287e9fccd5d7e155cebf003a` |
| 10 | `theorem` | [map_eq_of_mem_fixingSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/map-eq-of-mem-fixingsubgroup--f97720bf3f3b3048bcc4ff77.md) | 94 | `result-track:f97720bf3f3b3048bcc4ff77b964e50e940c0618a87ef33e9f8a9033b3d4e333` |
| 11 | `def` | [reduce](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/reduce--a6bfb83715b1dd244ab1c001.md) | 109 | `declaration-track:a6bfb83715b1dd244ab1c0013a52d544bb108eb64b579f456fca665853422023` |
| 12 | `theorem` | [reduce_mk](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/reduce-mk--95a0c190e946b9b53639b288.md) | 118 | `result-track:95a0c190e946b9b53639b2889b7bab8805869d64226759d456837cf33f2bb477` |
| 13 | `theorem` | [reduce_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/reduce-mkq--c4922f6db591c1d75ca6106f.md) | 122 | `result-track:c4922f6db591c1d75ca6106f0997f7c077ad46acb5e96d7f4a9b2b238dc9a7fb` |
| 14 | `def` | [fixedReduce](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedreduce--ab997ab5b1613a608510890c.md) | 128 | `declaration-track:ab997ab5b1613a608510890c79cf68a469c8c662eb5c5be5dd139828fe4d3820` |
| 15 | `theorem` | [fixedReduce_mk](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedreduce-mk--4963bc2f87d797c97929dbaa.md) | 133 | `result-track:4963bc2f87d797c97929dbaa3dba3811a01a6bd3266f41e64b673e7406184996` |
| 16 | `theorem` | [fixedReduce_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedreduce-mkq--06bc8f78ccc6db75c4865b99.md) | 138 | `result-track:06bc8f78ccc6db75c4865b99210e73b797e8edc5625d72733c1bd5dbcedc17f3` |
| 17 | `theorem` | [fixedReduce_eq_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedreduce-eq-smul-iff--d7a55686c3a91492ed98e8c7.md) | 142 | `result-track:d7a55686c3a91492ed98e8c7e3cadd5884180366182919b38db09b0982277851` |
| 18 | `theorem` | [fixedReduce_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/declarations/fixedreduce-eq-one--83163451e9ef9f895f913180.md) | 153 | `result-track:83163451e9ef9f895f913180a2c4383de943993f6705b3be9bee5ee581cd2196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
