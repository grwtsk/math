# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroEta.Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "413a776a9b9ee6d5396830fe6badbe892b90acdd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `413a776a9b9ee6d5396830fe6badbe892b90acdd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/pair--277f63015ede22bd96e95858.md) | 23 | `declaration-track:277f63015ede22bd96e95858320197d51265b4fe79dd9697f28474d181d1cf89` |
| 2 | `theorem` | [pair_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/pair-bound--36213c01d78bb8b278407851.md) | 26 | `result-track:36213c01d78bb8b278407851dd9aea42e9050561c2b1c7c2ccb6b210b0d408fa` |
| 3 | `theorem` | [pair_bound_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/pair-bound-uniform--5ecec7b59564cf63fa6d9105.md) | 47 | `result-track:5ecec7b59564cf63fa6d9105ef442fe1055903dfca8537f3a535e32bd95c351d` |
| 4 | `theorem` | [summable_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/summable-majorant--e036b3d5a1147c3f211dc661.md) | 61 | `result-track:e036b3d5a1147c3f211dc661aef3f52d72da51c487037265d045327b1f6c06af` |
| 5 | `theorem` | [pair_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/pair-summable--30e65bb9629977388ffe53b3.md) | 68 | `result-track:30e65bb9629977388ffe53b3f6c0459815e4483aef06bf46180ea62230b7b06f` |
| 6 | `def` | [eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/eta--c26b1c2bd1af00e9fdc03783.md) | 71 | `declaration-track:c26b1c2bd1af00e9fdc03783d814093590325afa3bd408faf51ee5e0ce264fd4` |
| 7 | `theorem` | [differentiableAt_eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/differentiableat-eta--8a0103672e8f7c30f556895b.md) | 73 | `result-track:8a0103672e8f7c30f556895b0bc0749a6b134c873f9e9bc46de110d1920e5aad` |
| 8 | `theorem` | [eta_eq_zeta_of_one_lt_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/eta-eq-zeta-of-one-lt-re--e688db7791dba7804ab07510.md) | 94 | `result-track:e688db7791dba7804ab07510e4534de897a1cb3c6a1487cd13c82e847baeedbe` |
| 9 | `def` | [regularizedZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/regularizedzeta--48e94976ac33ca7b598e10a9.md) | 131 | `declaration-track:48e94976ac33ca7b598e10a9a0a7fd3a0d1cc92764eb98478ec9f49d224f7fe8` |
| 10 | `theorem` | [regularizedZeta_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/regularizedzeta-eq--d2bf4ce1405057334a12eccf.md) | 134 | `result-track:d2bf4ce1405057334a12eccf722f2bb40429b5ea8de70e40dd01cbb451ae07db` |
| 11 | `theorem` | [differentiable_regularizedZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/differentiable-regularizedzeta--8738032b8b1671abbea501de.md) | 142 | `result-track:8738032b8b1671abbea501de4c4367bf6aa2cbb96af93944fdf93ac478945ad4` |
| 12 | `theorem` | [eta_eq_zeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/eta-eq-zeta--c574220b782f299471785b5f.md) | 147 | `result-track:c574220b782f299471785b5f415885b9fbf5cbc63075a71b66f0a6823306f135` |
| 13 | `theorem` | [pair_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/pair-ofreal--6d2b4bbd19057c416a986cb2.md) | 184 | `result-track:6d2b4bbd19057c416a986cb2b665e244fe68fbc8ddc13330a8976d8c7f19b066` |
| 14 | `theorem` | [paired_eta_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/paired-eta-identity--2d93fa7c2f780f524674d499.md) | 190 | `result-track:2d93fa7c2f780f524674d499e12c90830932a5570bc4297a7cfa812ca1167db3` |
| 15 | `theorem` | [real_zero_exclusion](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/real-zero-exclusion--e7fbea8cd86b388e1de5b6f5.md) | 202 | `result-track:e7fbea8cd86b388e1de5b6f57239ae758cef078d75a6635690cbe192a6cf96b8` |
| 16 | `theorem` | [zero_object_admission](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variantc7b7328717f25097ca0d20e4e1558c1dca0999321d0146571f3eddd468daffa1.lean/declarations/zero-object-admission--9054157ac617f832283083bb.md) | 205 | `result-track:9054157ac617f832283083bbe141bdfd93024c84c3f2c8c73259c5aedae21052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
