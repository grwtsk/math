# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.BorelCantelli.Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3a1a410124880e5f3f0a6c9054e6cdd242956ad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3a1a410124880e5f3f0a6c9054e6cdd242956ad`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.BorelCantelli` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalExpectation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iIndepFun.indep_comap_natural_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/declarations/iindepfun-indep-comap-natural-of-lt--11073f1a8f1310c7c58f3b45.md) | 49 | `result-track:11073f1a8f1310c7c58f3b455fd57a9867f3f3762914eabba109ffeef56084c6` |
| 2 | `theorem` | [iIndepFun.condexp_natural_ae_eq_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/declarations/iindepfun-condexp-natural-ae-eq-of-lt--5118b064d2a2b5a02ac247f7.md) | 58 | `result-track:5118b064d2a2b5a02ac247f79d7a930a37f7e1cbed0a4e5c7f956609e49fb80d` |
| 3 | `theorem` | [iIndepSet.condexp_indicator_filtrationOfSet_ae_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/declarations/iindepset-condexp-indicator-filtrationofset-ae-eq--4d76d6773a8e16feb4e6ba05.md) | 66 | `result-track:4d76d6773a8e16feb4e6ba052ebd554a95d73cccc532833c987602837a6e78c6` |
| 4 | `theorem` | [measure_limsup_eq_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variantf17860ac5f3e7b7a750bf74fbddbcf3abaab25eed8fe74e272cb719d275095ec.lean/declarations/measure-limsup-eq-one--893dd45e1795f6137480e98f.md) | 80 | `result-track:893dd45e1795f6137480e98f4986ea7a221ca4a129849a2f3cb9c03f0eccfa69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
