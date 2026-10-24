# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776b83abbdfc63d29f11e1babf686168eec8a828",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776b83abbdfc63d29f11e1babf686168eec8a828`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Star` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasDerivAtFilter.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/hasderivatfilter-star--9c2e6d339017d013acd84a5b.md) | 29 | `result-track:9c2e6d339017d013acd84a5b112e0c4dcddbcd1e8718aad5b1a4a53368f8ceb2` |
| 2 | `theorem` | [HasDerivWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/hasderivwithinat-star--03afb2c31cd795e086ea8a26.md) | 33 | `result-track:03afb2c31cd795e086ea8a26508d5d3855977290c2403ab47ed14c91cecb8c69` |
| 3 | `theorem` | [HasDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/hasderivat-star--b4c844034e00300155f18173.md) | 37 | `result-track:b4c844034e00300155f18173d20c787306e2fc7ab6466ba8b5a0da786d83a0c7` |
| 4 | `theorem` | [HasStrictDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/hasstrictderivat-star--e1a5d9df6566fc4d5365a144.md) | 41 | `result-track:e1a5d9df6566fc4d5365a144e57de02ba9bdfca6ebd568115fc273e9f1623e41` |
| 5 | `theorem` | [derivWithin.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/derivwithin-star--91fdbb3f4b5ccee6e9b167c7.md) | 44 | `result-track:91fdbb3f4b5ccee6e9b167c7afb0893b7cea22c0022407a93250fee631832c35` |
| 6 | `theorem` | [deriv.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/deriv-star--5e1cdbd88e483cf7576afb39.md) | 50 | `result-track:5e1cdbd88e483cf7576afb3984faf2ca01a5bbb9bb9f6366276d989f8b741a72` |
| 7 | `theorem` | [deriv.star'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed.lean/declarations/deriv-star--6e2630bff7e2d4f0578d8cb9.md) | 54 | `result-track:6e2630bff7e2d4f0578d8cb91c83bf75c74bcb1ac84872b33a16252140155d60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
