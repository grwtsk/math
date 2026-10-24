# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseSchur.Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21fa892b996de3c45287ca4f76f4d202a90225fa",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21fa892b996de3c45287ca4f76f4d202a90225fa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/generalizedinverseblockrealization--68dbbcd96f32b6bb1dc75e87.md) | 38 | `declaration-track:68dbbcd96f32b6bb1dc75e87ab657fce555f9c1a24dc1607db1f966cf8df82e2` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/solve--0c9f53c574a3979e3120ec1f.md) | 64 | `declaration-track:0c9f53c574a3979e3120ec1fea9a40e8777ed292fe93df69aac43a0e0613c1a2` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/solve-apply--d3b909f970444ac9494e42e4.md) | 69 | `result-track:d3b909f970444ac9494e42e47470cd09217fa8f4f2570f76b231c2c1a26a8820` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/provenance-mulvec-solve--2b127c3fdb23dea367fe2433.md) | 74 | `result-track:2b127c3fdb23dea367fe2433506413f670117d29a740cea89dd7491859f428b4` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/form-sub-right--b70bf33c63efa4faeeee6325.md) | 79 | `result-track:b70bf33c63efa4faeeee632542b3529f41b6d73d834ce026fd7b26210bed91b6` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/blockschursolver--79db8b26d6c2ff14b88f9e23.md) | 91 | `declaration-track:79db8b26d6c2ff14b88f9e23734c5a5976939da7b3164ec3090927b101af0735` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/blockschursolver-solve--00e9b00ac18de486f12ddf43.md) | 102 | `result-track:00e9b00ac18de486f12ddf43bc71b2058ae9ba15429c6b7af7874f474716c750` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/generalizedschurmatrix--60a6e830dd3b40beff8629df.md) | 107 | `declaration-track:60a6e830dd3b40beff8629df5813f7cb714d7ad7fc82590c9ced1298de36dad0` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/generalizedschurcorrection-pairing--7a3506ad0d5c374d8733b504.md) | 114 | `result-track:7a3506ad0d5c374d8733b504a7747230819b64e5421f7233b4c4ff4bd8eb7ad3` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/schurform-eq-generalizedschurmatrix--ea68a9f4f769eabf09a9116c.md) | 128 | `result-track:ea68a9f4f769eabf09a9116ca15010c2189963125c8c88ecc7c4acec95e97b5a` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/generalizedschurmatrix-nonnegative--946f50b602cbaa55062396b0.md) | 139 | `result-track:946f50b602cbaa55062396b0eb34c51b71505b4a2e505a6c6373442be2b152ec` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/declarations/autonomous-energy-decomposition--cff4caebb77e06c02fd1f425.md) | 147 | `result-track:cff4caebb77e06c02fd1f425c805f3bcd1765933687f7b3fe3b417fbc98640b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
