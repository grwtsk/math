# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9eeeceba049f8dbd7dca85b6502d9a4b1d37a9f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9eeeceba049f8dbd7dca85b6502d9a4b1d37a9f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limsup_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/limsup-lintegral-le--0797df30fff71a9d0d0eb2ff.md) | 37 | `result-track:0797df30fff71a9d0d0eb2ffdc19fd0bee8a9737675e319f4925ca3316429b7b` |
| 2 | `theorem` | [tendsto_lintegral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-lintegral-of-dominated-convergence--84107d8f89b84b4674a8bec8.md) | 56 | `result-track:84107d8f89b84b4674a8bec85c9f0ca95fa7410ea6a83e05cdd248682eed3745` |
| 3 | `theorem` | [tendsto_lintegral_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-lintegral-of-dominated-convergence--d6ab9452262e86fc57b650ec.md) | 71 | `result-track:d6ab9452262e86fc57b650ecc505a6a900f341d6555fff498c159f85775e0333` |
| 4 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--f7c5ea89c585a1a1bb43fa57.md) | 91 | `result-track:f7c5ea89c585a1a1bb43fa57a86c5ee92fffded48fd34e6cf33f93520a3cfb22` |
| 5 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--a50e3f50575b37a68b4f4eef.md) | 120 | `result-track:a50e3f50575b37a68b4f4eefca17a263971d4b4b8fa0dc40af061ac187b7bef6` |
| 6 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone-aux--aa01ebcad7d844b62375a6c5.md) | 132 | `result-track:aa01ebcad7d844b62375a6c5b4260062267f9f610a79d549774589595cb0a28c` |
| 7 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone--d00e6d91c7a0933aca0e5583.md) | 171 | `result-track:d00e6d91c7a0933aca0e5583750b660db1cf20f4603ebba4b2c862e13f6a7b07` |
| 8 | `lemma` | [tendsto_of_lintegral_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/declarations/tendsto-of-lintegral-tendsto-of-antitone--54691b22e277d920cb627a77.md) | 213 | `result-track:54691b22e277d920cb627a77cae7b533712a74718aef7c1a99299ea16cf35f35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
