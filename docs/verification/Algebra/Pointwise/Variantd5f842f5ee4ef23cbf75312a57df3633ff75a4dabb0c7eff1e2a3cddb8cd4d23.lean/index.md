# Verification target: GRWTSK.Algebra.Pointwise.Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "994259f43d1b0491ff769be679150a75b6b18083",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `994259f43d1b0491ff769be679150a75b6b18083`.

Source path: `GRWTSK/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Submonoid.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwisemulaction--a3673730ead520adfcbaac66.md) | 44 | `declaration-track:a3673730ead520adfcbaac668c1bb9df5ca678818482b393db5678f510bc56f9` |
| 2 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-def--0392c1ff790fb066c024010d.md) | 54 | `result-track:0392c1ff790fb066c024010dde1fda5f148de71d79c171823e165841e1f64643` |
| 3 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/coe-pointwise-smul--5be709bb57421c493a4ed395.md) | 59 | `result-track:5be709bb57421c493a4ed39576953717a8235c0c52425a3264916474d895194b` |
| 4 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-toaddsubmonoid--648d31b1aa4f1c52351f5054.md) | 63 | `result-track:648d31b1aa4f1c52351f5054de2e60e526a23c1f284da20c2167df97a146032e` |
| 5 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-mem-pointwise-smul--7b88003a25fd476fdc9e1254.md) | 67 | `result-track:7b88003a25fd476fdc9e1254bf354a9eb5bbf3172948f8a010b64e8ca90233d4` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/instance--40e65621da58bc5e3282b7c2.md) | 70 | `declaration-track:40e65621da58bc5e3282b7c266726ae6b1d414c403d494c8f98be59f1aea874c` |
| 7 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/mem-smul-pointwise-iff-exists--6db0928d72938cc8110aa282.md) | 73 | `result-track:6db0928d72938cc8110aa2821d8108619283914228baedc5c395abcee3c2627d` |
| 8 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-bot--fad605fcf8906a540d209202.md) | 78 | `result-track:fad605fcf8906a540d20920246c0800adf4c7cd3a097dbb8f228d7afeff2719c` |
| 9 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-sup--fdc2629decd0eb5cdef7b63f.md) | 81 | `result-track:fdc2629decd0eb5cdef7b63fc1d38bb44a1de3c12d1784b7e417448a548091e7` |
| 10 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-closure--ee77e1b500c5dc9182bf9c42.md) | 84 | `result-track:ee77e1b500c5dc9182bf9c4244731d3f1e17f38e7d0b12c06fca027a0d697d0c` |
| 11 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-central-scalar--9b54c1779ec876578bb88c1d.md) | 87 | `declaration-track:9b54c1779ec876578bb88c1d40a68b77103849c5df83f452a0fdc5f998e813e3` |
| 12 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-mem-pointwise-smul-iff--4e6f15b5c06f52bb9bf354fe.md) | 100 | `result-track:4e6f15b5c06f52bb9bf354fe767eecc947ed03e53149b59c43a8b3a844fa9e6c` |
| 13 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--934a787eec07393a57f543d3.md) | 103 | `result-track:934a787eec07393a57f543d3dbf69a0bef185cd38aa9cfbb97bc67923969ddec` |
| 14 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/mem-inv-pointwise-smul-iff--690da31e713e7c8a603d0e83.md) | 107 | `result-track:690da31e713e7c8a603d0e8358d53ec30ef67d226d5e9fb3d37fc8496da122fd` |
| 15 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-le-pointwise-smul-iff--e321371dfdc5771acc9ad5e5.md) | 111 | `result-track:e321371dfdc5771acc9ad5e5360bf9942433251fb21bd52c7b3bc9a942442b32` |
| 16 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-subset-iff--16749cef92dabb64a2821447.md) | 115 | `result-track:16749cef92dabb64a282144790fbaea2f9f4f4c00574273f9a1bccce2f4e134b` |
| 17 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/subset-pointwise-smul-iff--156cf039a288f3bf7edeeb89.md) | 118 | `result-track:156cf039a288f3bf7edeeb8992fabf40169f8eeb2566ac37b51803950a360cb5` |
| 18 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/smul-mem-pointwise-smul-iff--7cd51ae140907de668299796.md) | 133 | `result-track:7cd51ae140907de668299796b5bc59394a360b94df6de7b4522e15213ca77e86` |
| 19 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--b104ea520a669d37bdb16813.md) | 137 | `result-track:b104ea520a669d37bdb1681347f88a1ef77eb68bd77190698e26cf1fbe4b5723` |
| 20 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/mem-inv-pointwise-smul-iff--beeb9884224b4ab67e55c6b6.md) | 141 | `result-track:beeb9884224b4ab67e55c6b63bb3eb78fb4521abda253db632fb0c625f97410e` |
| 21 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-le-pointwise-smul-iff--1b9444fcdb784e5ae882cfff.md) | 146 | `result-track:1b9444fcdb784e5ae882cfff2474b8745d09ca9c99787a5918027d37dd07f7ea` |
| 22 | `theorem` | [pointwise_smul_le_iff₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/pointwise-smul-le-iff--5db1ca199e433b0bb4386781.md) | 150 | `result-track:5db1ca199e433b0bb4386781bd16cec3f7e5f535268e0922c7f02c6eaae182e2` |
| 23 | `theorem` | [le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variantd5f842f5ee4ef23cbf75312a57df3633ff75a4dabb0c7eff1e2a3cddb8cd4d23.lean/declarations/le-pointwise-smul-iff--ec57f8ca0ca67727e9e99a53.md) | 154 | `result-track:ec57f8ca0ca67727e9e99a539f1ab3e6536f5a33701e34428e1e02c9d6508fb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
