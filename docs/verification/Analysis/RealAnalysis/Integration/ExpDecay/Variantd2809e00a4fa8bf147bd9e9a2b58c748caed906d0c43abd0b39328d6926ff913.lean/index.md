# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ExpDecay.Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be4f2c268465afb67ae617e58b8b86ae76e0903f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be4f2c268465afb67ae617e58b8b86ae76e0903f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_neg_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean/declarations/exp-neg-integrableon-ioi--c5646fb6bf328b6f005970c4.md) | 36 | `result-track:c5646fb6bf328b6f005970c47da239684f3669976ba63165f85912c2b61f2680` |
| 2 | `theorem` | [integrable_of_isBigO_exp_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variantd2809e00a4fa8bf147bd9e9a2b58c748caed906d0c43abd0b39328d6926ff913.lean/declarations/integrable-of-isbigo-exp-neg--637db649f84f2a4ad054fc56.md) | 46 | `result-track:637db649f84f2a4ad054fc560c3a09d1214f332bedb24562f18f77150b6850ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
