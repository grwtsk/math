# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b9538a0270350380b3366269153f497edd1d5c5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b9538a0270350380b3366269153f497edd1d5c5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AnalyticWithinAt.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticwithinat-aeval-polynomial--d8682f57817d29f929eaea71.md) | 34 | `result-track:d8682f57817d29f929eaea716a14255009fc379486ddfda73cdeef76ecc342fe` |
| 2 | `theorem` | [AnalyticAt.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticat-aeval-polynomial--b842d379e4221e0e8e85585f.md) | 42 | `result-track:b842d379e4221e0e8e85585fa6c008af9cf1da2cd3dbccb430d8f888b761e0fa` |
| 3 | `theorem` | [AnalyticOnNhd.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-aeval-polynomial--416852a80c3f91ca31e367d9.md) | 47 | `result-track:416852a80c3f91ca31e367d95d73cc973520e62cbb1376afade9de4a2d54951e` |
| 4 | `theorem` | [AnalyticOn.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticon-aeval-polynomial--98de11f45e3b92673670d0e0.md) | 50 | `result-track:98de11f45e3b92673670d0e03abcd9a4c38a6a6d7c5653f41ad4fe20b22a52d6` |
| 5 | `theorem` | [AnalyticOnNhd.eval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-polynomial--7a22c33f7d2353f132bea1f5.md) | 53 | `result-track:7a22c33f7d2353f132bea1f5138e8912678074afb95533cf6e6001c505a0cb64` |
| 6 | `theorem` | [AnalyticOn.eval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticon-eval-polynomial--05031f5790c51d2a6f5191bd.md) | 56 | `result-track:05031f5790c51d2a6f5191bde12b82570fc533eacb767b35ddd643d432c6f3ce` |
| 7 | `theorem` | [AnalyticAt.aeval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticat-aeval-mvpolynomial--852b6740210ae4c3be808762.md) | 66 | `result-track:852b6740210ae4c3be80876226f3c4e4409d2a5db704a56ceff9711524029261` |
| 8 | `theorem` | [AnalyticOnNhd.aeval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-aeval-mvpolynomial--46c27fb24491356d4ecb1d0a.md) | 73 | `result-track:46c27fb24491356d4ecb1d0af351de74fb2c894cce6d195d84d0c7cb663a482c` |
| 9 | `theorem` | [AnalyticOnNhd.eval_continuousLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-continuouslinearmap--fa09e13760d2068432b2ed33.md) | 77 | `result-track:fa09e13760d2068432b2ed3398fc263187ceb7bd4f8a8241e6bca70d964a5e6a` |
| 10 | `theorem` | [AnalyticOnNhd.eval_continuousLinearMap'](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-continuouslinearmap--407ffd0f4dc5904fda2dedfd.md) | 81 | `result-track:407ffd0f4dc5904fda2dedfdd1735036ca9bc2eb1fd3a2a204674ba33e5892bf` |
| 11 | `theorem` | [AnalyticOnNhd.eval_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-linearmap--b72b7c7a15f16c2714f527e7.md) | 87 | `result-track:b72b7c7a15f16c2714f527e7ae6009fc3c11529db2d15ce9dcbb527266253308` |
| 12 | `theorem` | [AnalyticOnNhd.eval_linearMap'](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-linearmap--8312fade3355ccc098a837a2.md) | 91 | `result-track:8312fade3355ccc098a837a2898001d7943c28330a976c4ca9357435bd7a65a9` |
| 13 | `theorem` | [AnalyticOnNhd.eval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant77de45835e47ba6e260ca8087582b4d9f23eb3e21196134e5c4e92d12c062120.lean/declarations/analyticonnhd-eval-mvpolynomial--73d68771769a91197adf505b.md) | 94 | `result-track:73d68771769a91197adf505bd64afb9e056cedf6c5e1f71dbbe2fc43363b0904` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
