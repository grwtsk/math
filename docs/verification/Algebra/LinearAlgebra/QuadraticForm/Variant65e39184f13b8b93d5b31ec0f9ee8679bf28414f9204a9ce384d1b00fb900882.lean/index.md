# Verification target: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc4215c28427de8084694963d37122ac783055db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc4215c28427de8084694963d37122ac783055db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/b--a25c43ac7c5047548ef6f8be.md) | 38 | `declaration-track:a25c43ac7c5047548ef6f8be1513118895d37ac7b9c3a03888feb22565d5d22b` |
| 2 | `theorem` | [B_apply](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/b-apply--cd9df173b6e3067d9bb113d3.md) | 44 | `result-track:cd9df173b6e3067d9bb113d3e82fcf87937ec9a29c3615c8b05bcdeb2e48fc23` |
| 3 | `theorem` | [isSymm_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/issymm-b--fe998b6a99c32255a280e7e8.md) | 48 | `result-track:fe998b6a99c32255a280e7e84025690925a8af5ddff7f4a862ee3a8663f01fbd` |
| 4 | `theorem` | [isAlt_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/isalt-b--c5175998c90487a3e1bcff48.md) | 51 | `result-track:c5175998c90487a3e1bcff482cb848ae4c991772f48db0f6217edf4e5569d767` |
| 5 | `theorem` | [B_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/b-ne-zero--d10b43cd4ac0e1f9f25cfbaa.md) | 54 | `result-track:d10b43cd4ac0e1f9f25cfbaa211127b442e84d3f80fe348168cab0c6385fefe0` |
| 6 | `theorem` | [BilinForm.not_injOn_toQuadraticForm_isSymm.](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/declarations/bilinform-not-injon-toquadraticform-issymm--8d7a712b1716227bae9fe9b7.md) | 61 | `result-track:8d7a712b1716227bae9fe9b7d4c52b6ed5ff323e9b64840907c7e496e65b0e4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
