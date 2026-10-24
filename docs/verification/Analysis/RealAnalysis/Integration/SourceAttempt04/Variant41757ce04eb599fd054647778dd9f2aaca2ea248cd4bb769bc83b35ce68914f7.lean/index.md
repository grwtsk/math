# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt04.Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2669454943ae7ee103c3c811321581fc975546",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2669454943ae7ee103c3c811321581fc975546`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/kernel--96e17905c0876304312e8119.md) | 13 | `declaration-track:96e17905c0876304312e8119c9e7368b84641075e98dc0d50835412aa0bf794e` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/secondmomentintegrand--c64985e578c362eae0da2f89.md) | 14 | `declaration-track:c64985e578c362eae0da2f89962a55004fa4e5bcd0f71fec8a9ae8c06bec5298` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/majorant--327a6b79638a310ddfc06b32.md) | 15 | `declaration-track:327a6b79638a310ddfc06b3298690c3990f532f54c43eb0ff100eae7778cd842` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/denominator-pos--61ba8d23533955ecd264af46.md) | 17 | `result-track:61ba8d23533955ecd264af46c0f9247e20403598957121a1fb449ab97e1b7392` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/kernel-nonneg--93c04731b2dfe228546313dc.md) | 22 | `result-track:93c04731b2dfe228546313dcc37441b3e4aa231407ee8bbb1006243ce307e2e7` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/reciprocal-denominator-bound--2c9e88be38e8af86750d1bbc.md) | 25 | `result-track:2c9e88be38e8af86750d1bbc77f4f69db7918b2021fc2b933755a4a3ec18ec46` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/secondmoment-bound--98a4fa0e8e4e5a1a99b286be.md) | 37 | `result-track:98a4fa0e8e4e5a1a99b286be1a7873ad7f88663b082ceef6bc1fa2d0b3c2db95` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/polynomial-exp-integrable--c37a5c1749199c242f2693e7.md) | 49 | `result-track:c37a5c1749199c242f2693e7515af6d2ab992527a09c8d7411d1cde436527926` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7.lean/declarations/polynomial-exp-integral--681a47dce5d610b829a84773.md) | 58 | `result-track:681a47dce5d610b829a8477322da62c066b105e0dcea716e5af7c47d3ba4e60c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
