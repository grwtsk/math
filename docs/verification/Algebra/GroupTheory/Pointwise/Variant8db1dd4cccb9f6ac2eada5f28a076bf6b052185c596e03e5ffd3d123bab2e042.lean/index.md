# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce56d5b2f1fa1128a959c1f78c8c6cbba334608",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce56d5b2f1fa1128a959c1f78c8c6cbba334608`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/instance--700f6b1ddfb353a59d9115fd.md) | 31 | `declaration-track:700f6b1ddfb353a59d9115fde837b615a233ff18a87d23ffbda4990b0c6bd1b8` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/coe-one--f79421f8414e44193d2a3911.md) | 36 | `result-track:f79421f8414e44193d2a391179024a5a1edfd26c3105d35e5515e0fff978b376` |
| 3 | `theorem` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/mem-one--b5b2802f1d4734af6337733d.md) | 41 | `result-track:b5b2802f1d4734af6337733d7a34ec538d71833bbd567532d61ca55d9f16a617` |
| 4 | `theorem` | [subset_coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/subset-coe-one--7b783954289b452914bda802.md) | 45 | `result-track:7b783954289b452914bda8026c04949dc3ff89862d0639f4850531129ce6d037` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/instance--fa468c8dcdafe6aea51f2fff.md) | 55 | `declaration-track:fa468c8dcdafe6aea51f2fffbc8a15b107e5b19ecf545eea7da95d50fc41dfc9` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/coe-mul--24d04984aaea05fc931d20fe.md) | 62 | `result-track:24d04984aaea05fc931d20fe13b791f9ccf1e43474585606f7546075f842b728` |
| 7 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/mem-mul--7a67645475fd88f5ab78cb40.md) | 66 | `result-track:7a67645475fd88f5ab78cb40785a220264600ab1691cdd18285cad0775cf74de` |
| 8 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/muloneclass--2582e94cb014d54d2f8a9487.md) | 77 | `declaration-track:2582e94cb014d54d2f8a9487d4abcbe3cf94988734c5b10cdc6a57346f87faf8` |
| 9 | `instance` | [semiGroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/semigroup--addfcd819ae55468e17e05c8.md) | 103 | `declaration-track:addfcd819ae55468e17e05c83331416b91a62717d1ec32953dd32712536b7aaf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/instance--3d1dba31dc5c1faba687fe0c.md) | 114 | `declaration-track:3d1dba31dc5c1faba687fe0c006aff63af3ecbd98179dc3092cb0cdef5a8b4ea` |
| 11 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/coe-pow--54caeff840074fffbe218bd6.md) | 120 | `result-track:54caeff840074fffbe218bd664da11760ec3b9ec6201697c93b8e9f49a9a09c3` |
| 12 | `theorem` | [subset_coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/declarations/subset-coe-pow--83e3940a6b854516b81a6f4f.md) | 127 | `result-track:83e3940a6b854516b81a6f4f9adcee766605e1111eb0083f0e7e8b1ef45057e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
