# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Quadratic.Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71a182efdde48d930977e4cef0783d35ca3052db",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71a182efdde48d930977e4cef0783d35ca3052db`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.MV.Spacing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Uform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/declarations/uform--dbc6f70730c365ed92c68789.md) | 35 | `declaration-track:dbc6f70730c365ed92c687891b5e87c24db5c8000c06ffda343112cb36b84e4d` |
| 2 | `lemma` | [sum_erase_comm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/declarations/sum-erase-comm--db80654969db13cec578ed97.md) | 40 | `result-track:db80654969db13cec578ed97aa6c7e0ef4cd22dcc6a70368b34d27ef518515c7` |
| 3 | `lemma` | [sum_erase_erase_comm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/declarations/sum-erase-erase-comm--79c89183a1ab0193dbd0aa40.md) | 48 | `result-track:79c89183a1ab0193dbd0aa4084cf32b4d5cf42f7a6a2ea2d9f8a5d5679e3f275` |
| 4 | `theorem` | [Uform_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variant2f49a8bbb527cb7e6fd42e1e928f7606dc873124bfba60b5ace7f867f8f3ce64.lean/declarations/uform-le--0eb5cdf9816d64c55d963c98.md) | 62 | `result-track:0eb5cdf9816d64c55d963c98f0541fbf93929662e62b3a52f5ffa94d244102e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
