# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Extra13SourceActualSharpZeroTail.Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43491c9d9d6c4d90d2f1acaf191038ca20d78842",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43491c9d9d6c4d90d2f1acaf191038ca20d78842`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_norm_joint_strip_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/pole-norm-joint-strip-le--a5197ebfa5bd7c8e628e8282.md) | 19 | `result-track:a5197ebfa5bd7c8e628e828253b072dbfaa3f27bb3e6284f9945376564f55819` |
| 2 | `theorem` | [endpoint_minus_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpoint-minus-norm-le--ed8d855fa07b5dd04d956371.md) | 41 | `result-track:ed8d855fa07b5dd04d9563716df8a1541368c6d1929b9a4f62ecf02f7cd23e75` |
| 3 | `theorem` | [endpoint_plus_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpoint-plus-norm-le--ca7e73e837a295a7f7ed5843.md) | 52 | `result-track:ca7e73e837a295a7f7ed5843280d0b5d13bd6c52bc8f5257a90a18a521a703a7` |
| 4 | `theorem` | [actual_bump_complete_endpoint_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/actual-bump-complete-endpoint-norm-le--b30b7a86340be375222a49fe.md) | 64 | `result-track:b30b7a86340be375222a49fe71b04cfb949bd166eedf8cf4ed178063886c4051` |
| 5 | `def` | [endpointScale](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpointscale--cfcce4a42b83f3109017bd2d.md) | 89 | `declaration-track:cfcce4a42b83f3109017bd2df9c2a770d84473e3e5772710de2f015fdb5290c3` |
| 6 | `theorem` | [endpointScale_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpointscale-pos--e4d2f1ea33952c0ccdcfc95f.md) | 92 | `result-track:e4d2f1ea33952c0ccdcfc95ff858920193830cf022e80549cbcd7f8b1b9f4f88` |
| 7 | `theorem` | [endpointScale_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpointscale-antitone--e3cf95b57288b0cbc6f6f0e9.md) | 96 | `result-track:e3cf95b57288b0cbc6f6f0e93b940e4d53135a51f473682b54b6c45815e5c06e` |
| 8 | `theorem` | [actual_bump_endpoint_scale_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/actual-bump-endpoint-scale-norm-le--9acd92d32b390b283e0f74a0.md) | 109 | `result-track:9acd92d32b390b283e0f74a05aa7eed9d59d59b2fbb247a44b429c1a92a1b659` |
| 9 | `theorem` | [exp_pair_le_of_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/exp-pair-le-of-abs-le--d1e62607d5d283ca2ccf5c5c.md) | 127 | `result-track:d1e62607d5d283ca2ccf5c5c8692ba0fd5999b2d87f7c4ffca31a6f0bd7d768e` |
| 10 | `theorem` | [endpointScale_three_sixty_four_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/endpointscale-three-sixty-four-lt--36abb3c5b91dfba48196ccb6.md) | 134 | `result-track:36abb3c5b91dfba48196ccb69fe65dad5c8f1ed25ac4c5b11ad72780915ded5e` |
| 11 | `theorem` | [actual_bump_strip_high_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/actual-bump-strip-high-norm-le--6b6fd8ca497fc7e55b8d5d88.md) | 138 | `result-track:6b6fd8ca497fc7e55b8d5d88cb0a0a4231db2470b734b346412e50858dda3e39` |
| 12 | `theorem` | [exp_neg_large_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/exp-neg-large-le--69d73bc65aa850eaa0a76f13.md) | 167 | `result-track:69d73bc65aa850eaa0a76f13f0b41695811511800755f8fbcc6f114dc518e4ca` |
| 13 | `theorem` | [actualInitialPrimeMellin_sharp_strip_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/actualinitialprimemellin-sharp-strip-norm-le--d2b808589b4a86c61b024794.md) | 187 | `result-track:d2b808589b4a86c61b024794fda8278ba76731ac02f6718d055a19a9bc5318ca` |
| 14 | `theorem` | [actualZeroHeightTail_sharp_norm_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variante1a1fb4bd37e0e376da2ffaf740bea2876c19fa6184c4eb3a735cedb8554c152.lean/declarations/actualzeroheighttail-sharp-norm-bound--9474cda74997f1abaf8e6747.md) | 269 | `result-track:9474cda74997f1abaf8e6747ec059c6e3622f4a5a5ad7739428530e40ccd1ed1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
