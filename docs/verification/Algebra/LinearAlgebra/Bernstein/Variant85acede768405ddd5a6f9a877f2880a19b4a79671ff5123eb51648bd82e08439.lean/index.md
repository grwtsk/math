# Verification target: GRWTSK.Algebra.LinearAlgebra.Bernstein.Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce0f73c912f27a356d0f28d0c06b1a2e6a46f503",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce0f73c912f27a356d0f28d0c06b1a2e6a46f503`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.PDeriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernsteinPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/bernsteinpolynomial--93a9111dce1ea4ac4bcbd28a.md) | 51 | `declaration-track:93a9111dce1ea4ac4bcbd28afebaf005db20dd1038aa00089a47f93812bdfddf` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/example--c34caf3ea9772d705f61f8ef.md) | 55 | `declaration-track:c34caf3ea9772d705f61f8ef06c29070edf111ff179c7ddbca430779f60b2d72` |
| 3 | `theorem` | [eq_zero_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/eq-zero-of-lt--1cecbc1327d32308dde6320f.md) | 61 | `result-track:1cecbc1327d32308dde6320f36802a2db20c740ba33d9a650f443d5e4ce18228` |
| 4 | `theorem` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/map--8f1b3508df4fbe6bda4292f9.md) | 70 | `result-track:8f1b3508df4fbe6bda4292f93bfc31c8c112efdbb10274d07f3632220fd3fa15` |
| 5 | `theorem` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/flip--2f385f779075d8e3014be190.md) | 76 | `result-track:2f385f779075d8e3014be1909df1fbd81641471f62f176a4665625c304cf4976` |
| 6 | `theorem` | [flip'](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/flip--1e5a256e37ad5ef45ae4baf8.md) | 81 | `result-track:1e5a256e37ad5ef45ae4baf8f9938b2303274073a7d246290e7d54efbf181d3d` |
| 7 | `theorem` | [eval_at_0](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/eval-at-0--652fcc5b33d6b1b7b57b491a.md) | 86 | `result-track:652fcc5b33d6b1b7b57b491a4028a6f547dffb64259cddd5d977891afe3fa024` |
| 8 | `theorem` | [eval_at_1](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/eval-at-1--ee032ef9cf6bc9b1b5d8fcc1.md) | 93 | `result-track:ee032ef9cf6bc9b1b5d8fcc138ddd611f10c5d1536096697b5f0f4553d7ca08b` |
| 9 | `theorem` | [derivative_succ_aux](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/derivative-succ-aux--279e2119aecf40e69771ca8d.md) | 102 | `result-track:279e2119aecf40e69771ca8dcc73a701e8a800a8ac5afef1fc3b1fb85cc793f8` |
| 10 | `theorem` | [derivative_succ](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/derivative-succ--2069f359f922bcaee0d65a79.md) | 134 | `result-track:2069f359f922bcaee0d65a79988e92d25ed2810347d7bcb8046458d23807cead` |
| 11 | `theorem` | [derivative_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/derivative-zero--c604f5403ac998876b345e91.md) | 141 | `result-track:c604f5403ac998876b345e91fba7f875b0ba6b60fdca97fed0716a99e3e5e0ba` |
| 12 | `theorem` | [iterate_derivative_at_0_eq_zero_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-0-eq-zero-of-lt--cefaa473cc24c7ef00b82334.md) | 146 | `result-track:cefaa473cc24c7ef00b82334fb613fad9350032d573aee01cd5381e4602c70fd` |
| 13 | `theorem` | [iterate_derivative_succ_at_0_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-succ-at-0-eq-zero--36f513b8bf2cdeebd2b87eb0.md) | 165 | `result-track:36f513b8bf2cdeebd2b87eb08d846f2d79965f649ce64e247fb13761035f487e` |
| 14 | `theorem` | [iterate_derivative_at_0](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-0--9ab7d3321f8952e0d509bf7e.md) | 173 | `result-track:9ab7d3321f8952e0d509bf7ec68667c02df68c2e85181742f52a1e0ca1762f3c` |
| 15 | `theorem` | [iterate_derivative_at_0_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-0-ne-zero--3e70ac8f32d75bd1de67a241.md) | 196 | `result-track:3e70ac8f32d75bd1de67a2415243774e841815ade1e06bc93613c59ef01c6581` |
| 16 | `theorem` | [iterate_derivative_at_1_eq_zero_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-1-eq-zero-of-lt--5d98058fc17734e8a81cd23c.md) | 215 | `result-track:5d98058fc17734e8a81cd23c703bb9d204403e491542b29e27d477a023622695` |
| 17 | `theorem` | [iterate_derivative_at_1](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-1--f96de14c53fb69a9bb7a998e.md) | 223 | `result-track:f96de14c53fb69a9bb7a998e9e9cc80bbaa4a265b068c4b2a3145720090807b2` |
| 18 | `theorem` | [iterate_derivative_at_1_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/iterate-derivative-at-1-ne-zero--0288ca4611c9b36538532aee.md) | 235 | `result-track:0288ca4611c9b36538532aeeb9ebd97903b41d4a8638d5910003c0d6519ce980` |
| 19 | `theorem` | [linearIndependent_aux](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/linearindependent-aux--46e1148c3136cd6c59870fe0.md) | 244 | `result-track:46e1148c3136cd6c59870fe037dc5ce2ce423a793d9623f7d97716bf544219b6` |
| 20 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/linearindependent--2d2fe84c1ddcd05f5094ce59.md) | 285 | `result-track:2d2fe84c1ddcd05f5094ce596aa4dd0a56e5b50097aa747d13c79f31119f84fd` |
| 21 | `theorem` | [sum](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/sum--0857443c8f237ecbc3a9c98f.md) | 290 | `result-track:0857443c8f237ecbc3a9c98ff2c4c5fc08ec36ef8c097dad4f83eed475a0dab9` |
| 22 | `theorem` | [sum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/sum-smul--e0f2b8aa142ed1621159da43.md) | 302 | `result-track:e0f2b8aa142ed1621159da43a5d258297cb3210b3b9685f1e711eac468d3458f` |
| 23 | `theorem` | [sum_mul_smul](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/sum-mul-smul--e35e407b872f37d310d6eabb.md) | 339 | `result-track:e35e407b872f37d310d6eabbfe813c7d11ec3091e904d8f1d7dbd7ef1208eebc` |
| 24 | `theorem` | [variance](../../../../../mathematics/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/declarations/variance--1265a0afa6c4412f33b2ca20.md) | 385 | `result-track:1265a0afa6c4412f33b2ca2068ffaac1c17aeb189121f116c5baf9d688791028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
