# Verification target: GRWTSK.Algebra.LinearAlgebra.ZeroMultiplicity.Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5dc98878147f35c4d035215fa8768507d31828f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5dc98878147f35c4d035215fa8768507d31828f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_count_eq_dim_sub_rank](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/declarations/zero-count-eq-dim-sub-rank--59a4f60a8032e5ad2f972df2.md) | 15 | `result-track:59a4f60a8032e5ad2f972df2c9fdc8eeb193177c9735ec64ffb22f85cd841a74` |
| 2 | `theorem` | [rank_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/declarations/rank-congruence--e84acb407635944756c7c4de.md) | 21 | `result-track:e84acb407635944756c7c4de7b87e860d5f3051a475d6db4b5acad08d7e7208a` |
| 3 | `theorem` | [zero_count_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/declarations/zero-count-congruence--e3a706b6e2024661defcd0ee.md) | 27 | `result-track:e3a706b6e2024661defcd0ee795a2d39157a93efaa8c672d1ef806e460bfb446` |
| 4 | `theorem` | [zero_count_constructed_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant3a797654c9a7f99806f2e13568f7e646c5314b4b17e25542c74ad05b6faac323.lean/declarations/zero-count-constructed-congruence--7738d87f9edc0427510c896d.md) | 34 | `result-track:7738d87f9edc0427510c896d8fc0fb029b3fb0d964bf38e33eb54c509af9196a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
