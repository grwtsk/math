# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ExpDecay.Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e1d861445ef9b93e3d754644a6335984bd560c8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e1d861445ef9b93e3d754644a6335984bd560c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_neg_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean/declarations/exp-neg-integrableon-ioi--77f3e19a0b1f6155882d4b32.md) | 28 | `result-track:77f3e19a0b1f6155882d4b32e1803aa556892f1ae3f93c14a02cf39edb3730c6` |
| 2 | `theorem` | [integrable_of_isBigO_exp_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExpDecay/Variant01c9e379eb4b03c0a553f7b590acfaa16648fc0a47782d41a98959c6bcfe31c7.lean/declarations/integrable-of-isbigo-exp-neg--7c9ac8c514821e2e81746640.md) | 38 | `result-track:7c9ac8c514821e2e81746640980ac91caca8e71934d3f6377ce8f002a21fe1a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
