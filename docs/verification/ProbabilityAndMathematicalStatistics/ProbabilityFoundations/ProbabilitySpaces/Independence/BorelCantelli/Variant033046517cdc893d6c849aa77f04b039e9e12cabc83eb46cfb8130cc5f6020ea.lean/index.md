# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.BorelCantelli.Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fab6bba9ce51e70d4f4a7befc213819a090de7c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fab6bba9ce51e70d4f4a7befc213819a090de7c`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.BorelCantelli` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalExpectation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iIndepFun.indep_comap_natural_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/declarations/iindepfun-indep-comap-natural-of-lt--913c153c02e295e4a6d02eef.md) | 39 | `result-track:913c153c02e295e4a6d02eefab0eb288f060992cb55056fdbb4f8954b8544a20` |
| 2 | `theorem` | [iIndepFun.condExp_natural_ae_eq_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/declarations/iindepfun-condexp-natural-ae-eq-of-lt--17e63e3becf9ee390a103f69.md) | 46 | `result-track:17e63e3becf9ee390a103f69b9ea912e03e9ab74d308595692c96ea803eabbfd` |
| 3 | `theorem` | [iIndepSet.condExp_indicator_filtrationOfSet_ae_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/declarations/iindepset-condexp-indicator-filtrationofset-ae-eq--3c40a72a27beb34aca470129.md) | 56 | `result-track:3c40a72a27beb34aca470129462d605540686e3ebb4bc2f2d174c1f2a27b8f86` |
| 4 | `theorem` | [measure_limsup_eq_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/declarations/measure-limsup-eq-one--2f285b793add88404d7c1669.md) | 72 | `result-track:2f285b793add88404d7c1669d149285be5fe9ad6704dcf5a70628b06d61fb802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
