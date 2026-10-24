# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.BorelCantelli.Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20563e16a029d4722a0cbd2fc659262fb3ea92e5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20563e16a029d4722a0cbd2fc659262fb3ea92e5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean.json)

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
| 1 | `theorem` | [iIndepFun.indep_comap_natural_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/declarations/iindepfun-indep-comap-natural-of-lt--c95756cc325831189d0ec4c7.md) | 41 | `result-track:c95756cc325831189d0ec4c77d77f8197d31c78d977304d8f6719268bf05e908` |
| 2 | `theorem` | [iIndepFun.condexp_natural_ae_eq_of_lt](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/declarations/iindepfun-condexp-natural-ae-eq-of-lt--5162f11e9a849efb7ce5df40.md) | 50 | `result-track:5162f11e9a849efb7ce5df408df53a1fd01e278267d9732387459600e24d8c33` |
| 3 | `theorem` | [iIndepSet.condexp_indicator_filtrationOfSet_ae_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/declarations/iindepset-condexp-indicator-filtrationofset-ae-eq--3c30d0b27593cca09b92d7b5.md) | 58 | `result-track:3c30d0b27593cca09b92d7b54857d7303cb8ce5fa5cb28c5cab3702f11bc3c41` |
| 4 | `theorem` | [measure_limsup_eq_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Varianta891a616533ce56f91fc84e0987f53437c149205ce940fd9799b0d045ccc7e1f.lean/declarations/measure-limsup-eq-one--53fa31bb3949221c89e79a50.md) | 72 | `result-track:53fa31bb3949221c89e79a507f3346d66a30f0d7305803e162d104322954f24d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
