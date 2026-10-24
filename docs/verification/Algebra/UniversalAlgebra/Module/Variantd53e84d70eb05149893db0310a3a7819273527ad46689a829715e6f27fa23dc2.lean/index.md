# Verification target: GRWTSK.Algebra.UniversalAlgebra.Module.Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03fd009b22b95d23cf497457eb3de1f6830aeaa5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03fd009b22b95d23cf497457eb3de1f6830aeaa5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.RingHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/instsmul--14f0c8208ff4572bbb41d81a.md) | 39 | `declaration-track:14f0c8208ff4572bbb41d81ab08da09bf6397a6660b63aab08988f4dece90b48` |
| 2 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/coe-smul--12b9c00cd70a06bea11bb9b9.md) | 43 | `result-track:12b9c00cd70a06bea11bb9b9a2e2be695191dcc545d8b293a6701897f388ab8c` |
| 3 | `lemma` | [mk_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/mk-smul--483b6f6b84618db1191a21c5.md) | 47 | `result-track:483b6f6b84618db1191a21c53aa6778bb4f8d1184f88b64e447820553d479844` |
| 4 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/instisscalartower--c9c12ae752b6105c214822e2.md) | 56 | `declaration-track:c9c12ae752b6105c214822e2cda3caa0406ed11e134405f8b693a8b647efc6d0` |
| 5 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/instsmulwithzero--35a3f715c339ab24bbfae963.md) | 65 | `declaration-track:35a3f715c339ab24bbfae96388847b1a577342d3e39d2c4d2e0e80ad4b0f575a` |
| 6 | `instance` | [instOrderedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/instorderedsmul--b7a9c32e0fe613d8dfb6601a.md) | 76 | `declaration-track:b7a9c32e0fe613d8dfb6601a9770e0088060e1acc0d3c01d7892f95977d6d7e8` |
| 7 | `instance` | [instModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variantd53e84d70eb05149893db0310a3a7819273527ad46689a829715e6f27fa23dc2.lean/declarations/instmodule--783b56f4fedb7c85a15b8bfd.md) | 86 | `declaration-track:783b56f4fedb7c85a15b8bfdacab6e89277ccf22783d5c4d1c026db518c9f63f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
