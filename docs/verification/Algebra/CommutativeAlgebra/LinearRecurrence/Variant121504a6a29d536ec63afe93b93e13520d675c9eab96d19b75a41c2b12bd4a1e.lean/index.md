# Verification target: GRWTSK.Algebra.CommutativeAlgebra.LinearRecurrence.Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e57ae790a23f710a9fb24e368606cea55a67f1a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e57ae790a23f710a9fb24e368606cea55a67f1a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRecurrence](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/linearrecurrence--89ed8328448b41c3e8ef734e.md) | 47 | `declaration-track:89ed8328448b41c3e8ef734eac9cae8ccca4dabd38945fdf8eee7b854aeba2d1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/instance--7acc53a3f240dfb2248a6d00.md) | 53 | `declaration-track:7acc53a3f240dfb2248a6d001b72b776d8c981940445dea7442ed646984fbd5b` |
| 3 | `def` | [IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/issolution--0fb614826f6e3572292161e5.md) | 64 | `declaration-track:0fb614826f6e3572292161e5f3470f33b04e01ed76eb9c7cc9dd12f5aa4fc6c6` |
| 4 | `def` | [mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/mksol--6ff0217ac624573167e51966.md) | 69 | `declaration-track:6ff0217ac624573167e51966d8adf3b780fffd10f5b97bda3bba0c7348a34a94` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/is-sol-mksol--5be8eb3ddb1e16116f13952c.md) | 78 | `result-track:5be8eb3ddb1e16116f13952c9877819571a50b3f3af714494e29ae3c807970eb` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/mksol-eq-init--69b88664d22ca69f7b86e1c0.md) | 84 | `result-track:69b88664d22ca69f7b86e1c071267c5147894102326bab3f663ea573e2cca13c` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/eq-mk-of-is-sol-of-eq-init--b1ec8ea60d6c4282f36ac992.md) | 91 | `result-track:b1ec8ea60d6c4282f36ac9924d48d457d37e2e7b381dcff7105d3e68f0865ec0` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/eq-mk-of-is-sol-of-eq-init--6ad309ad3474f9d9a551ac05.md) | 107 | `result-track:6ad309ad3474f9d9a551ac051ca49954adb2a3f42fd94dcba4b947010497e0a3` |
| 9 | `def` | [solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/solspace--9003d56acd10d2e8c995c756.md) | 112 | `declaration-track:9003d56acd10d2e8c995c7561b7de10f29e0e41ec3884449d790b88d2a459912` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/is-sol-iff-mem-solspace--b6b828dd5eea138d9a1f349a.md) | 120 | `result-track:b6b828dd5eea138d9a1f349a9fcdbc2f7fe28db5937d424b6449f4220858a86f` |
| 11 | `def` | [toInit](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/toinit--78ff731555637e99c5a4da17.md) | 125 | `declaration-track:78ff731555637e99c5a4da17c4c6dd526978654a424f663633e2fd3b451471cb` |
| 12 | `theorem` | [sol_eq_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/sol-eq-of-eq-init--87618d031957c9164003d93b.md) | 138 | `result-track:87618d031957c9164003d93b5fd1bb451f3b1aa73030d10f0b5e301a47f9b4da` |
| 13 | `def` | [tupleSucc](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/tuplesucc--897c29274e72155949f5719a.md) | 156 | `declaration-track:897c29274e72155949f5719a2b824b609fc49091e82c873289e14684be9ff996` |
| 14 | `theorem` | [solSpace_rank](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/solspace-rank--18456b64c8326cc6f835f93d.md) | 175 | `result-track:18456b64c8326cc6f835f93db8a4782a1eda5fb00d01eebac0fd5083860b03b9` |
| 15 | `def` | [charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/charpoly--4728af0231ca54c56eb275e3.md) | 187 | `declaration-track:4728af0231ca54c56eb275e3d4cb8ead322885304a4284e2c49ea5441c734c5e` |
| 16 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant121504a6a29d536ec63afe93b93e13520d675c9eab96d19b75a41c2b12bd4a1e.lean/declarations/geom-sol-iff-root-charpoly--17397a2defa990ca638ecb20.md) | 192 | `result-track:17397a2defa990ca638ecb20a80a37c6d69fa4b5989ca90d6697a4ef83c68110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
