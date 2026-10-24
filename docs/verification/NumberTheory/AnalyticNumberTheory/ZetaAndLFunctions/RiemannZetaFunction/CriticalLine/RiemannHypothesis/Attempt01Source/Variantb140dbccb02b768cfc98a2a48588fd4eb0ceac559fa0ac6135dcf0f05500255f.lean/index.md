# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01Source.Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a74ac863c89384d5c6dafa9badc529479c4d5af",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a74ac863c89384d5c6dafa9badc529479c4d5af`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualHalfHarmonicZeta` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualVaughanMeanBound` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredHalfZetaMain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/actualcenteredhalfzetamain--5d6abafa4127ba738bede2db.md) | 23 | `declaration-track:5d6abafa4127ba738bede2dbcd2ecffa41eaf3e2a4a4f0278034f4083b8a7f2c` |
| 2 | `def` | [halfHarmonicQuotientDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/halfharmonicquotientdefect--cfebc485d217767fb4cc45bc.md) | 28 | `declaration-track:cfebc485d217767fb4cc45bc51c6bb7112180f319c1fdda9c6b3db837a110e6b` |
| 3 | `theorem` | [halfHarmonicQuotientDefect_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/halfharmonicquotientdefect-abs-le--8fcb07858f811f15ab11bfb2.md) | 34 | `result-track:8fcb07858f811f15ab11bfb2857665b17e9c753f0f792f65799c36e113bc545c` |
| 4 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/closedcenteredhalfinventory-sub-zetamain-eq--76575aa24dda28dab531c413.md) | 103 | `result-track:76575aa24dda28dab531c413de0029af173256ebf4b8c88f098ce4df74ba3f3d` |
| 5 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/closedcenteredhalfinventory-sub-zetamain-abs-le--52ca31a8d99b5c879d9237c8.md) | 128 | `result-track:52ca31a8d99b5c879d9237c8c46bf17ede4c4a0e97689fabe60ab36f31f536d7` |
| 6 | `theorem` | [actualCenteredColumnHalfInventory_sub_zetaMain_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f.lean/declarations/actualcenteredcolumnhalfinventory-sub-zetamain-abs-le--b0268594cb1545717fc6a33f.md) | 163 | `result-track:b0268594cb1545717fc6a33f6cb1c4ff44ca31ff168c7d96e64265874d36c2d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
