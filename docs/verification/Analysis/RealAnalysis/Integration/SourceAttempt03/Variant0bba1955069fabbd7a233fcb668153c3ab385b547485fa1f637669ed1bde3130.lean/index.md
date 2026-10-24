# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt03.Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fef3e25796cbf9ef8149a967060db7ab8db91b3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fef3e25796cbf9ef8149a967060db7ab8db91b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/kernel--4605b011c86861c064a91d94.md) | 21 | `declaration-track:4605b011c86861c064a91d9403e6d53807f0d812ec8588a272de0df3c822e368` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/secondmomentintegrand--ad005fd7072b5f0e94183f98.md) | 22 | `declaration-track:ad005fd7072b5f0e94183f9873dcf92c7aaa5edaf6d123f8f379d8f056c99070` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/majorant--d7eb6d249d65d1cda479e4f1.md) | 23 | `declaration-track:d7eb6d249d65d1cda479e4f1869ac0ebc9cf54c3e55c341a349baf891cc3c018` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/denominator-pos--cc0376d7c14dbde1e382f6f0.md) | 25 | `result-track:cc0376d7c14dbde1e382f6f06c339fe62e32a5ef2f5796ceae204216104e2e5a` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/kernel-nonneg--ab480213655d9143d4759e8c.md) | 30 | `result-track:ab480213655d9143d4759e8cadeae63743d019f4ba04a78cb1e16934b4eb35a2` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/reciprocal-denominator-bound--8627a266b1c2e09ecfdee30b.md) | 33 | `result-track:8627a266b1c2e09ecfdee30bf311b251b5e3f9f44a73d06702497e79e9f0346a` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/secondmoment-bound--03949700ad732b49d39e2949.md) | 45 | `result-track:03949700ad732b49d39e2949fc1edcc7b8e1d56e9c669c0c96116d7dce011030` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/polynomial-exp-integrable--fc65d97c75ff58fa00af309e.md) | 57 | `result-track:fc65d97c75ff58fa00af309e0824286c2b1a073566622bcf710565e49d83072e` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/declarations/polynomial-exp-integral--2a2e636cf9b3724d147dfacc.md) | 64 | `result-track:2a2e636cf9b3724d147dfacc1d8fbf72aa6828143ed31b15f68aec970e502097` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
