# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bounds.Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa94e3f3d0338f4080d1dc90434d1833a942e34e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa94e3f3d0338f4080d1dc90434d1833a942e34e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/macro-rules--4ea6c8243eeb3596b1b9e113.md) | 44 | `declaration-track:4ea6c8243eeb3596b1b9e113e2840aa3b9794f596bd8f13cdf7019b58a2ed7d2` |
| 2 | `theorem` | [sin_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/sin-lt--21375a9d325c7d43813047ce.md) | 53 | `result-track:21375a9d325c7d43813047cee23e298491e576f72cdfd0a9403261fea5597527` |
| 3 | `theorem` | [sin_gt_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/sin-gt-sub-cube--aa5fa83578b6acec63ef9da5.md) | 71 | `result-track:aa5fa83578b6acec63ef9da5bfe1e27adcb5bad5f9fcd2ac53eb4c86f0362b2b` |
| 4 | `theorem` | [deriv_tan_sub_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/deriv-tan-sub-id--4bf7415fecccc7fe02b5d0ef.md) | 84 | `result-track:4bf7415fecccc7fe02b5d0efde13a80f51b1ac8b8ba3404623892ef49da07815` |
| 5 | `theorem` | [lt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/lt-tan--39a370b44b48ba947579757c.md) | 93 | `result-track:39a370b44b48ba947579757c5886a4bdc963f443a27e40916ab8b3d5ed78333e` |
| 6 | `theorem` | [le_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/le-tan--d00c83e848c0921eb503bb84.md) | 128 | `result-track:d00c83e848c0921eb503bb8443d79c0fe6abaccc43da439981c29173c1be1736` |
| 7 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/cos-lt-one-div-sqrt-sq-add-one--70b249a9be2dd38589d8e88c.md) | 134 | `result-track:70b249a9be2dd38589d8e88ca34e35a6abc6b26b0c82c3717f895d5960d55178` |
| 8 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variantd9330e811c885962fe5ebd502b99cb43d2a09301d61258fe287e6609dbdfaf06.lean/declarations/cos-le-one-div-sqrt-sq-add-one--87a9225e61e35ca42f227128.md) | 158 | `result-track:87a9225e61e35ca42f227128c3a173c96789718f5cbbfbf4e81e2db99cd5c9b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
