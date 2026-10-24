# Verification target: GRWTSK.Algebra.LinearAlgebra.PrefixCompatibleIncidence.Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04f108942317692ada1ef09e9e4f2d6ce84b3d09",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04f108942317692ada1ef09e9e4f2d6ce84b3d09`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixCompatibleIncidence](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleincidence--020b620e43f8a8d9b553506f.md) | 32 | `declaration-track:020b620e43f8a8d9b553506fd66347ddfc3d72b3386bad88b6e404e01f9cd511` |
| 2 | `theorem` | [PrefixCompatibleIncidence.succ_sub](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleincidence-succ-sub--9f6b66b5e972a75e1b4d2338.md) | 44 | `result-track:9f6b66b5e972a75e1b4d23386c85cba01c69a0499ede788ed5c40bbf9d06b63b` |
| 3 | `theorem` | [PrefixCompatibleIncidence.incidence_eq_sum_increments](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleincidence-incidence-eq-sum-increments--d2ed3c728478094849635dc4.md) | 57 | `result-track:d2ed3c728478094849635dc4aad5ea7818099faff805bb80f11f6df271ffda78` |
| 4 | `structure` | [PrefixCompatibleResidual](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleresidual--c1069888455f30fb576a36e9.md) | 73 | `declaration-track:c1069888455f30fb576a36e900203cd46c650a67e68a676967fff2f580bd34d5` |
| 5 | `theorem` | [PrefixCompatibleResidual.succ_sub](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleresidual-succ-sub--ac2fa9870ff73c758eb16383.md) | 82 | `result-track:ac2fa9870ff73c758eb1638368642a2e71a038f94f40438797a1fde36ef50d7c` |
| 6 | `theorem` | [PrefixCompatibleResidual.residual_eq_sum_increments](../../../../../mathematics/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/declarations/prefixcompatibleresidual-residual-eq-sum-increments--37fad3dcc14f78fbb5339b15.md) | 93 | `result-track:37fad3dcc14f78fbb5339b15eeeda23f44a62933a0b4c2f6b54c96e212290986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
