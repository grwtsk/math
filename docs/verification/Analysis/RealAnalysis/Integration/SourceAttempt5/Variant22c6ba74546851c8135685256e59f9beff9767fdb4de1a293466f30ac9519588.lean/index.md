# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt5.Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bfd1f10186dd2fae474e4ae7c5e7ee905d9dc28",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bfd1f10186dd2fae474e4ae7c5e7ee905d9dc28`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/divideddifference--aef09123e7f09d58b10873af.md) | 29 | `declaration-track:aef09123e7f09d58b10873af5f17c3ab0ed41711ac38c8366f766fa05b4a32eb` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/divideddifference-bound--bb961c6b55a39964a36639f6.md) | 32 | `result-track:bb961c6b55a39964a36639f6d6ea1b9ed686f0bac9865326194e84b15613fb51` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/divideddifference-integrable--e9e29d1c8e7cba9acae868ed.md) | 52 | `result-track:e9e29d1c8e7cba9acae868ed64e49f462624e8dcc461fbf79fd388b75bcd1949` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/divideddifference-integral--c1ecf189d17b569aedd231d2.md) | 63 | `result-track:c1ecf189d17b569aedd231d21d81b11df7fd4f60c93d30a9ff669869b938e9ba` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/physicalrate--c940a19d54199c3d62bf74a2.md) | 75 | `declaration-track:c940a19d54199c3d62bf74a209816437c3e892551d99c964832ae311f2db0928` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/compensatedterm--21bb8d7e32218519c4dbb2e9.md) | 77 | `declaration-track:21bb8d7e32218519c4dbb2e980e9b009221c5560ce0029bf7c0db7e7111ef4a2` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/physicalrate-pos--1b947c94d0441a45663ee977.md) | 80 | `result-track:1b947c94d0441a45663ee977472fd631bbf5236e2c662fd2186f0c6c741bd573` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/shifted-physicalrate-pos--c06e9c6250fed5b56d753d07.md) | 82 | `result-track:c06e9c6250fed5b56d753d071ad7b0ef0c70a265020dd647c7d994584656d773` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/compensatedterm-nonneg--fec5a65ab6bf56d2a4a7b525.md) | 87 | `result-track:fec5a65ab6bf56d2a4a7b5256000e605c09aecd4e9af8790502792172901f5f6` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/compensatedterm-split--2836e5d2af4b534d48014776.md) | 93 | `result-track:2836e5d2af4b534d48014776a93c3bf5b86a4b86d3b241468e26a5b5edbfd7b4` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/compensatedterm-integrable--1ff9b3e528485f6e0a544378.md) | 106 | `result-track:1ff9b3e528485f6e0a54437876561b07b0bd2cf73b07e56ce48c2b106106f175` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant22c6ba74546851c8135685256e59f9beff9767fdb4de1a293466f30ac9519588.lean/declarations/compensatedterm-integral--3356ca471335032496094450.md) | 115 | `result-track:3356ca4713350324960944507f400d445722c348210e6dd99e88437c813659eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
