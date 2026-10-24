# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.BorelCantelli.Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "313798905bd766beb2c433e74cd0cd96b63048c9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `313798905bd766beb2c433e74cd0cd96b63048c9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean.json)

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
| 1 | `theorem` | [iIndepFun.indep_comap_natural_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/declarations/iindepfun-indep-comap-natural-of-lt--f8367df403cc17978af1336e.md) | 47 | `result-track:f8367df403cc17978af1336e8683bcda18345e44d17354e784cce7c11ccaa615` |
| 2 | `theorem` | [iIndepFun.condExp_natural_ae_eq_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/declarations/iindepfun-condexp-natural-ae-eq-of-lt--1e15bc160b9ec665d01b6718.md) | 54 | `result-track:1e15bc160b9ec665d01b6718de879a57a0bc663bbbf2b6c45a0a16e87f55f5fb` |
| 3 | `theorem` | [iIndepSet.condExp_indicator_filtrationOfSet_ae_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/declarations/iindepset-condexp-indicator-filtrationofset-ae-eq--7536b725f15e0cec508af557.md) | 64 | `result-track:7536b725f15e0cec508af55714118c4dbf607dcb4b3ecba3ce619fe0c85b6515` |
| 4 | `theorem` | [measure_limsup_eq_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/declarations/measure-limsup-eq-one--f5f5dfc99ebb3b1cc2c4bca5.md) | 80 | `result-track:f5f5dfc99ebb3b1cc2c4bca508d735d76311b5a5bb7450bdf19d2f6a1d5ffd18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
