# Verification target: GRWTSK.Algebra.GroupTheory.Unitary.Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "850608a8d5a54769347bc24e59c144d262412bfb",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `850608a8d5a54769347bc24e59c144d262412bfb`.

Source path: `GRWTSK/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/unitary--18fd636c62982a0346e0391b.md) | 37 | `declaration-track:18fd636c62982a0346e0391be2a370bc78bcb808b0585e8c85afb9cf57d9aec7` |
| 2 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/mem-iff--abb731cf3dcdf098cafc3cd9.md) | 60 | `result-track:abb731cf3dcdf098cafc3cd90c6dd33e3f4310d5f7528d7b9eae5820797e22c9` |
| 3 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-mul-self-of-mem--7d7008405e5b960fd6b14469.md) | 65 | `result-track:7d7008405e5b960fd6b14469d87a9eb408ebb2d4c5ec90062548dcb5cb5bcdfe` |
| 4 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/mul-star-self-of-mem--05eea49d7123482cffb82f2f.md) | 70 | `result-track:05eea49d7123482cffb82f2fe97427c4845dae206af3c677f0fbd23e41ae826c` |
| 5 | `theorem` | [star_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-mem--c60b725d4dce655b10ae7b33.md) | 74 | `result-track:c60b725d4dce655b10ae7b33bcfa7b3cf85fe4949eae9d9b7404dec5b82b1569` |
| 6 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-mem-iff--9e7f145a69568218fde1d5d0.md) | 79 | `result-track:9e7f145a69568218fde1d5d0292c49820942c5244df98fbbfabfbbf296483e06` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--a725e4520de286145fcc3db2.md) | 83 | `declaration-track:a725e4520de286145fcc3db2ac23b15a63d92bf1b88e59fd581ef257fde461d3` |
| 8 | `theorem` | [coe_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-star--ebf321db1ff6020d34748018.md) | 87 | `result-track:ebf321db1ff6020d347480187870a78cef77d74ddfab72add4a20e591013504e` |
| 9 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-star-mul-self--dc753f4ccd9135354bd6246d.md) | 91 | `result-track:dc753f4ccd9135354bd6246d979fe62e6e95846a7d0b39ba1b94071e2af8b6e2` |
| 10 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-mul-star-self--21658080a3e719c90718a32a.md) | 95 | `result-track:21658080a3e719c90718a32ad29736d8adefaa4e9798b73ec3073ee20da33328` |
| 11 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-mul-self--164686787a36ad49f79527c8.md) | 100 | `result-track:164686787a36ad49f79527c8ed19233f586900a229abf3cff479fd4567042f6b` |
| 12 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/mul-star-self--b9183e62aaf8e6e6a6d1b3f7.md) | 105 | `result-track:b9183e62aaf8e6e6a6d1b3f783ce90eab9116ce22e6c8fd843929512e803a0dd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--8bff8eaa79a1fdac3876ae7f.md) | 109 | `declaration-track:8bff8eaa79a1fdac3876ae7f794484dd1380f8b22b3e6c7de8c68083ac8f6883` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--e413759e0e75697baf433efe.md) | 114 | `declaration-track:e413759e0e75697baf433efefdc8d85e9d5bb0cdc7901d9495e7d2cff520655f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--f3246dad4551a848e567c6a0.md) | 120 | `declaration-track:f3246dad4551a848e567c6a0619a316bd679e66b68e3a89b132a8452af518c62` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--8ddd408bad5705e71ee4fd51.md) | 126 | `declaration-track:8ddd408bad5705e71ee4fd51d8ab8aec14ea2e856760604360bb97a825339fad` |
| 17 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-eq-inv--f399d2fc5d1fe84458996056.md) | 129 | `result-track:f399d2fc5d1fe84458996056fbd1c033e6f8b67b1968af0bdad836a007ad429e` |
| 18 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/star-eq-inv--7d688829ea4ea94623953e4d.md) | 133 | `result-track:7d688829ea4ea94623953e4d7b9ceeaeb2c01d11818976e7fe64cf99579c6dbd` |
| 19 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/tounits--dfd92d4707344e532e8fcca8.md) | 139 | `declaration-track:dfd92d4707344e532e8fcca865f42699033fc57d1a85136aa3ca297f1a85cb7a` |
| 20 | `theorem` | [to_units_injective](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/to-units-injective--a144a6e117a8c83966891bbc.md) | 146 | `result-track:a144a6e117a8c83966891bbcdc6175b89541aa7e042589378b1be52e0d975632` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--df515f9e197617664e4ca995.md) | 156 | `declaration-track:df515f9e197617664e4ca995b752c6159fd0a76f160a1b33ee69a72ff3577493` |
| 22 | `theorem` | [mem_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/mem-iff-star-mul-self--955753adedd5e3aaeebe1846.md) | 159 | `result-track:955753adedd5e3aaeebe18460d5cd37e86c696a170cd84842d68da4b31341894` |
| 23 | `theorem` | [mem_iff_self_mul_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/mem-iff-self-mul-star--cd0183bd37f49fbdf40f4405.md) | 163 | `result-track:cd0183bd37f49fbdf40f4405d0c78a1e27a98aef0e4ba0a466bb13412652ecd7` |
| 24 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-inv--c44d9c53f422547c70546479.md) | 174 | `result-track:c44d9c53f422547c70546479c0f34e157a9978d34ebbfc968e07d5ebdf1f06a4` |
| 25 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-div--23bb102389c7c7749538aa06.md) | 179 | `result-track:23bb102389c7c7749538aa066edf46504f4b20fcf3e201cdf6377ab2a5ebf407` |
| 26 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-zpow--f1859220284e027a7c68c8af.md) | 184 | `result-track:f1859220284e027a7c68c8af09f4518ada52f099968eb51574c482fd667f8b0d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--a6678eecfdeaff1404c8f49e.md) | 196 | `declaration-track:a6678eecfdeaff1404c8f49ed63a4eb411071c89b0a40cf1ad4db96fa1acc188` |
| 28 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/coe-neg--3792fd816749350b08e7fbf0.md) | 201 | `result-track:3792fd816749350b08e7fbf01ad7df306fdc7ae117b6a96e2b759b421b54d48b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/declarations/instance--8625a76e6f06772c56313b0c.md) | 205 | `declaration-track:8625a76e6f06772c56313b0cfed6a68308397453227d87a6375785917a1925d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
