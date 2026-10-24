# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Extra13SourceActualSharpZeroTail.Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "882b46fb9ca6a2abfb7f3762d63a5c0c1ebee114",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `882b46fb9ca6a2abfb7f3762d63a5c0c1ebee114`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_norm_joint_strip_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/pole-norm-joint-strip-le--bae6739aef0d9e21049af77e.md) | 27 | `result-track:bae6739aef0d9e21049af77e35a6c7f886e064dc31d1d9e44d19d5ade03fe750` |
| 2 | `theorem` | [endpoint_minus_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpoint-minus-norm-le--a49e0686d05f850b01b8bb54.md) | 49 | `result-track:a49e0686d05f850b01b8bb549812fde84e1507a6d58176300db8b2118f13e3aa` |
| 3 | `theorem` | [endpoint_plus_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpoint-plus-norm-le--fb17ffe3546f749de7242b7a.md) | 60 | `result-track:fb17ffe3546f749de7242b7a79e12ed0664615f3d33fe9e94113de1b53da5b47` |
| 4 | `theorem` | [actual_bump_complete_endpoint_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/actual-bump-complete-endpoint-norm-le--958e5c23d75909d7dfe388d4.md) | 72 | `result-track:958e5c23d75909d7dfe388d4944a5692fee588bf549311450e2de29fbae0962b` |
| 5 | `def` | [endpointScale](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpointscale--37ba3724cdbd687494b925b3.md) | 97 | `declaration-track:37ba3724cdbd687494b925b331a6e8b780a4172dd9836ce20c0d3513cf425bd4` |
| 6 | `theorem` | [endpointScale_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpointscale-pos--c5620358ee551fceb95971a2.md) | 100 | `result-track:c5620358ee551fceb95971a2bff4a6a5d4c398d1a62cb9a116c9f944199d30ab` |
| 7 | `theorem` | [endpointScale_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpointscale-antitone--772539128dd7ae9b975f6eb6.md) | 104 | `result-track:772539128dd7ae9b975f6eb6d4a16f30499d9144fdf98bcd3e0aae62d9283026` |
| 8 | `theorem` | [actual_bump_endpoint_scale_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/actual-bump-endpoint-scale-norm-le--1cc93662fcced8c73b80d5a3.md) | 117 | `result-track:1cc93662fcced8c73b80d5a3defbab25e868017df942640cfb895f300d6d64cf` |
| 9 | `theorem` | [exp_pair_le_of_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/exp-pair-le-of-abs-le--c75f3e73b3659d45c1569ec7.md) | 135 | `result-track:c75f3e73b3659d45c1569ec7e6d71fdc5ce157a95134a17e37ac12f2583a1769` |
| 10 | `theorem` | [endpointScale_three_sixty_four_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/endpointscale-three-sixty-four-lt--e86bc87d1b9a5b3e92874f74.md) | 142 | `result-track:e86bc87d1b9a5b3e92874f7459cab11b72b045bc6dc6e031ebb2522f8db5063a` |
| 11 | `theorem` | [actual_bump_strip_high_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/actual-bump-strip-high-norm-le--b5350ec16038fad123d4b7ca.md) | 146 | `result-track:b5350ec16038fad123d4b7ca8d3a02b9e3a6a1d6d335e209eb8271c7ee001583` |
| 12 | `theorem` | [exp_neg_large_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/exp-neg-large-le--ac5f14ea6091da45afd503e7.md) | 175 | `result-track:ac5f14ea6091da45afd503e7072162f007ccf7f88c7769cb54b2fe7f476a3df8` |
| 13 | `theorem` | [actualInitialPrimeMellin_sharp_strip_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/actualinitialprimemellin-sharp-strip-norm-le--8ad91d0e1db23c02c43a1eab.md) | 195 | `result-track:8ad91d0e1db23c02c43a1eabfdd1e9936c606acc305ee9ba41c80369d4f5c2f6` |
| 14 | `theorem` | [actualZeroHeightTail_sharp_norm_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/declarations/actualzeroheighttail-sharp-norm-bound--943b0398dc672451d2f43fc1.md) | 277 | `result-track:943b0398dc672451d2f43fc18c6a7a488abd7c322bc3b5287a20f842e5353bff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
