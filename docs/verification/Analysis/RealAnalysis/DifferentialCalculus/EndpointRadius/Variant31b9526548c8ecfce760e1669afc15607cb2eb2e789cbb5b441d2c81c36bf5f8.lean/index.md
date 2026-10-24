# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointRadius.Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe8c66a123f922b55ea26b3569f5f231e09340e6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe8c66a123f922b55ea26b3569f5f231e09340e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope--3cd88ee92b4602f49191d6f0.md) | 12 | `declaration-track:3cd88ee92b4602f49191d6f0c831eaf096d43349677ee514a54d828add222e75` |
| 2 | `def` | [endpointBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/endpointbudget--18f4e24a2a82238d92899f4b.md) | 13 | `declaration-track:18f4e24a2a82238d92899f4b0b847fa9bfffafba83d34c712d02a016c139756c` |
| 3 | `theorem` | [envelope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope-hasderivat--436b126116b8dcfe03ab764f.md) | 15 | `result-track:436b126116b8dcfe03ab764fdcc13c34a5a8d473e5ad3b8f13c9dc2dfb21ecb5` |
| 4 | `theorem` | [envelope_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope-antitoneon--1d523f15b494c3db60ac90c8.md) | 23 | `result-track:1d523f15b494c3db60ac90c8162dd4c443ea3f34acf3424d1427edb52b4d3a59` |
| 5 | `theorem` | [envelope_le_peak](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope-le-peak--4cbcafb3a114f6572610951d.md) | 34 | `result-track:4cbcafb3a114f6572610951d4712d09da4cae558830af7727e619a7f8231ffb7` |
| 6 | `theorem` | [envelope_le_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope-le-budget--070452b73e3f75042d0a68ff.md) | 63 | `result-track:070452b73e3f75042d0a68ff1132c4c075728042be812cbc7eb4b6e3cdd81037` |
| 7 | `theorem` | [envelope_peak_lt_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/envelope-peak-lt-three--dbd7319028c77f1a730e5489.md) | 71 | `result-track:dbd7319028c77f1a730e548939834c5bbe9f48a3f834b2a170dcf137041c132a` |
| 8 | `theorem` | [endpointBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/endpointbudget-nonneg--50d83096aeba1ebd97c12137.md) | 82 | `result-track:50d83096aeba1ebd97c12137de237ea00fb857eac1da5fc763048f2b90372104` |
| 9 | `theorem` | [endpointBudget_eq_of_three_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8.lean/declarations/endpointbudget-eq-of-three-le--320f68dba60bd375ce6fcdb7.md) | 87 | `result-track:320f68dba60bd375ce6fcdb7172627379c3b96e89c6ce83c866700e8a2bd419c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
