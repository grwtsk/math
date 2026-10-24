# Verification target: GRWTSK.Analysis.ComplexAnalysis.CountingFunction.Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e8dc88b8694641418f9402620a1b0702a4f5461",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e8dc88b8694641418f9402620a1b0702a4f5461`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toClosedBall](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/toclosedball--bf7a8b43e4f98ea0429e7bd1.md) | 60 | `declaration-track:bf7a8b43e4f98ea0429e7bd1686dd5446f85637fd26aab4a8ff90f7b3136a735` |
| 2 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting--30430de7b52106ef41cad774.md) | 80 | `declaration-track:30430de7b52106ef41cad774834dce58e4a012d55292f4ccb6a82ffa8f3ebf74` |
| 3 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-eval-zero--6128023c96c51488902919d4.md) | 106 | `result-track:6128023c96c51488902919d4d766b92d21f34a89465a4abf6e06e345de516be5` |
| 4 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting--4fc76600cfaf37105ee62c0a.md) | 132 | `declaration-track:4fc76600cfaf37105ee62c0a7e64984b6937f84aa668ce6649dec13b00c29df7` |
| 5 | `lemma` | [logCounting_coe](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-coe--262155091c3543c38d140b37.md) | 141 | `result-track:262155091c3543c38d140b37af492aafeaf9218b836fa12d47ada6706ccd651a` |
| 6 | `lemma` | [logCounting_coe_eq_logCounting_sub_const_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-coe-eq-logcounting-sub-const-zero--97f7bd33ed3f82881e8294a1.md) | 149 | `result-track:97f7bd33ed3f82881e8294a162969fd3c8b68e93c2b6d021da6983ef26c726e6` |
| 7 | `lemma` | [logCounting_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-zero--0b1b96a26d703392854f2986.md) | 157 | `result-track:0b1b96a26d703392854f2986f6e85c73d6f489e4fc59333d9e1c82bd5f0ad8f5` |
| 8 | `lemma` | [logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-top--857f81fcbfe91244bd5bbeeb.md) | 165 | `result-track:857f81fcbfe91244bd5bbeeba044a687ba372274c21e09796bf436edef630f50` |
| 9 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-eval-zero--3b6e5b4f3dafe91bdc925909.md) | 172 | `result-track:3b6e5b4f3dafe91bdc92590973ed260c57c970ac9fabc990ff6ece009038c108` |
| 10 | `theorem` | [log_counting_zero_sub_logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/log-counting-zero-sub-logcounting-top--c26fa28265979a9bb0d5c060.md) | 180 | `result-track:c26fa28265979a9bb0d5c060e04996dd0ffc3c5c00e56a8acafc3824d11431fc` |
| 11 | `theorem` | [logCounting_inv](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-inv--44d2c0eaeef35c570dee0cf9.md) | 191 | `result-track:44d2c0eaeef35c570dee0cf9dadf1ce4e2efcc8d4eae2a356468131c58e3a602` |
| 12 | `theorem` | [logCounting_add_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-add-analyticon--133cf158ba9f28eba059e156.md) | 198 | `result-track:133cf158ba9f28eba059e15671228ddd68c05160c8c891ddad215ab46a3dce88` |
| 13 | `theorem` | [logCounting_add_const](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-add-const--f125b2606013bd5d429be03b.md) | 207 | `result-track:f125b2606013bd5d429be03b832abeafb1127b2e2bbeac1e67009bf5ed007a01` |
| 14 | `theorem` | [logCounting_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant31f0a22df64e538f012b15f57ff60ae873a23654dc3e0ee1ab1a5448aa3db3bf.lean/declarations/logcounting-sub-const--606ad8f5e37e33ef72d64eb2.md) | 215 | `result-track:606ad8f5e37e33ef72d64eb2b50580cf85e6a86b04d1153baed23df0f9e1d733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
