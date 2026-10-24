# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LaplaceTransform.Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c25f11e1fbe5a610500f7cb37b0dedbe43d005",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c25f11e1fbe5a610500f7cb37b0dedbe43d005`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplaceintegrand--690be60d3b74e28bd4ec138e.md) | 41 | `declaration-track:690be60d3b74e28bd4ec138e1f47f945a4e55c830bc2da166f0ecbeefbb8be14` |
| 2 | `def` | [primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplace--d03032d596449a854f7c6d9e.md) | 47 | `declaration-track:d03032d596449a854f7c6d9e07b508ad97a61f42364aacf850d42818a0c43f19` |
| 3 | `theorem` | [continuous_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/continuous-primitiveweillaplaceintegrand--670ec4f7fa739d89c3c8c64f.md) | 54 | `result-track:670ec4f7fa739d89c3c8c64feb66b6df9d7dd48633b647a59c95f16bc09cf5a0` |
| 4 | `theorem` | [support_primitiveWeilLaplaceIntegrand_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/support-primitiveweillaplaceintegrand-subset--4ec9cea5bd0b07af3692c740.md) | 62 | `result-track:4ec9cea5bd0b07af3692c740ad10a5619628f7c820d53cb27ca34c18b3b395c1` |
| 5 | `theorem` | [hasCompactSupport_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/hascompactsupport-primitiveweillaplaceintegrand--fd362fc9edb5af46a6bf02f2.md) | 73 | `result-track:fd362fc9edb5af46a6bf02f26190487de2c2a0b13313fe9f8ed68b307ba4aa73` |
| 6 | `theorem` | [integrable_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/integrable-primitiveweillaplaceintegrand--92d613bba62d842c82918c3f.md) | 80 | `result-track:92d613bba62d842c82918c3f0637e79578d1c46022211c706232fecc005ea1ee` |
| 7 | `def` | [primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplacederivativeintegrand--0321756641491bab08d0ad77.md) | 89 | `declaration-track:0321756641491bab08d0ad77f784af418cb2b25f2691ff1916ed47ac4fafb5bf` |
| 8 | `theorem` | [hasDerivAt_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/hasderivat-primitiveweillaplaceintegrand--5e9bcd565eb46a9e45e5bad4.md) | 93 | `result-track:5e9bcd565eb46a9e45e5bad47c03019aeab5de0f552b49c89d06dded0198872b` |
| 9 | `def` | [primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplacederivativebound--30c10eacfb7bb1a5b0facf8e.md) | 104 | `declaration-track:30c10eacfb7bb1a5b0facf8e204769ec60df16073b7451cd91f4f5d0c0c19fe0` |
| 10 | `theorem` | [integrable_primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/integrable-primitiveweillaplacederivativebound--4135bf2e4843c07da7356478.md) | 109 | `result-track:4135bf2e4843c07da735647851d38f9f8c1616566b52e01547c2b20278ba9cb4` |
| 11 | `theorem` | [primitiveWeilLaplaceDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplacederivative-le--f8c10267ed0d19934f3917c6.md) | 128 | `result-track:f8c10267ed0d19934f3917c6f4cf035e24bc4f1600e953f67a4659541b8de1c3` |
| 12 | `theorem` | [continuous_primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/continuous-primitiveweillaplacederivativeintegrand--cc044f0b372c6ebe3d758420.md) | 157 | `result-track:cc044f0b372c6ebe3d758420edad4f4123663fcc574ca8d6688c8d5f3122d15c` |
| 13 | `theorem` | [hasDerivAt_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/hasderivat-primitiveweillaplace--6e2a32258549c3ff543d323c.md) | 167 | `result-track:6e2a32258549c3ff543d323c2d84eae5359e0bc836a9942da33c576c625e7e4a` |
| 14 | `theorem` | [differentiable_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/differentiable-primitiveweillaplace--aac51900931aaa38e6533e8d.md) | 192 | `result-track:aac51900931aaa38e6533e8da18fa5981e676c12589576a8cc6e7d0e712b43cb` |
| 15 | `theorem` | [primitiveWeilLaplace_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplace-star--c71aa7c478e9047d479bdd36.md) | 199 | `result-track:c71aa7c478e9047d479bdd362d375b18e75c6373f6e0ab940b89b47ee8bf3449` |
| 16 | `theorem` | [primitiveWeilLaplaceIntegrand_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplaceintegrand-autocorrelation--9a52e481cf8b02b027b08fed.md) | 219 | `result-track:9a52e481cf8b02b027b08fed773fb1f4fca701c08844baf6bd1f659d4a1a931f` |
| 17 | `theorem` | [primitiveWeilLaplace_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/declarations/primitiveweillaplace-autocorrelation--68901198d7d2a5f9775b4f4d.md) | 251 | `result-track:68901198d7d2a5f9775b4f4dae301db4771d619b2cd6476e42b0ca0010ea3f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
