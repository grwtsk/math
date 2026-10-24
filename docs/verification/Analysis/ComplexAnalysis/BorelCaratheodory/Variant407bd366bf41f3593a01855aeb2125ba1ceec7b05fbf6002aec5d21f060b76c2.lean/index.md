# Verification target: GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodory.Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f5e57a1c03525694803e7881814cee6d3b608a7`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.StrongPNT` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [divRemovable_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/divremovable-zero--a6576a15b415b19002763a3d.md) | 22 | `declaration-track:a6576a15b415b19002763a3d44136a5d529eb9c2263036f689f0d5ca4aefe91e` |
| 2 | `lemma` | [divRemovable_zero_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/divremovable-zero-of-ne-zero--2c755f9bba23a9f38682e2de.md) | 36 | `result-track:2c755f9bba23a9f38682e2def281b607abbdadf1852e4c854e78fda582a8433b` |
| 3 | `lemma` | [AnalyticOn_divRemovable_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/analyticon-divremovable-zero--ce6d82bc756258b22ed39dd6.md) | 66 | `result-track:ce6d82bc756258b22ed39dd6545f77bffc8cc639476f4e6b6bebc337a98f83c5` |
| 4 | `lemma` | [AnalyticOn_divRemovable_zero_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/analyticon-divremovable-zero-closedball--dee1c4b4ed791a76d2e0e5e9.md) | 121 | `result-track:dee1c4b4ed791a76d2e0e5e90ff0d8eb29a135a3201c1546b1dbef819827b3e9` |
| 5 | `abbrev` | [schwartzQuotient](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/schwartzquotient--52d5f125c9f8fee7060c86d1.md) | 204 | `declaration-track:52d5f125c9f8fee7060c86d1bcca9440eb8d10698d0973d58fee3c3fd0ce3b14` |
| 6 | `lemma` | [AnalyticOn.schwartzQuotient](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/analyticon-schwartzquotient--d2f3f4e19ad045bcb1eb6e4c.md) | 223 | `result-track:d2f3f4e19ad045bcb1eb6e4cfdd2bf61ac29983e29a55ae6ce2d0899b11c2115` |
| 7 | `lemma` | [Complex.norm_le_norm_two_mul_sub_of_re_le](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/complex-norm-le-norm-two-mul-sub-of-re-le--54336060f769dfbd75582671.md) | 247 | `result-track:54336060f769dfbd75582671c2a1c9b1235a5f1a7f623e20be82ab7a4561ebd2` |
| 8 | `theorem` | [borelCaratheodory_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/declarations/borelcaratheodory-closedball--a197f819e1747e9332457d7d.md) | 321 | `result-track:a197f819e1747e9332457d7d57ce90b30f5ab3487fa432dddd5ad991ecba3da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
