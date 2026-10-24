# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products.Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f38819ed11707cfab7a921b1db712ff7a26ea95",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f38819ed11707cfab7a921b1db712ff7a26ea95`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaTail_ratio_eq_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/declarations/thetatail-ratio-eq-product--3ba382732e0a49e8fe6eec98.md) | 12 | `result-track:3ba382732e0a49e8fe6eec984f833de464ec1b622d618bb3364b1a6af1ed1646` |
| 2 | `theorem` | [thetaTail_ratio_product_antitone_of_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/declarations/thetatail-ratio-product-antitone-of-succ--ac3ffa3281ae0559ac0e6e23.md) | 32 | `result-track:ac3ffa3281ae0559ac0e6e2308587b40c2a0baf8ed711de50116f752e5d73139` |
| 3 | `theorem` | [thetaTail_div_antitone_of_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/declarations/thetatail-div-antitone-of-succ--ca5ef43f413773370d831000.md) | 40 | `result-track:ca5ef43f413773370d831000fed2de67d7bb7d1ff621bd771fbdf5113f680eb5` |
| 4 | `theorem` | [thetaTailSignRegular_two_of_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/declarations/thetatailsignregular-two-of-succ--da33042cbe71041e9ebe89e1.md) | 48 | `result-track:da33042cbe71041e9ebe89e1a7b9bfbd5fce32fb2c7a7778b4bfc7f84e7245d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
