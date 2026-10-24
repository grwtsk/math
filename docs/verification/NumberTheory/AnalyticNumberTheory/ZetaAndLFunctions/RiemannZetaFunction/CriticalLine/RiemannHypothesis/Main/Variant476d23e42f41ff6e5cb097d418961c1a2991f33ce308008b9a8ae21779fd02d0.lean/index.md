# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Main.Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20523f7899ef7a5146ada9e454ce77dd7219d515",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20523f7899ef7a5146ada9e454ce77dd7219d515`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.XiEFAssembly` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.GramBridge` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.TestWeight` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.LSeries` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [five_four_cast](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/five-four-cast--e1486e510bc30fc95e81ce19.md) | 40 | `result-track:e1486e510bc30fc95e81ce19166d14555f6f61b62b0de7b56a3ad1391b5dfd0b` |
| 2 | `theorem` | [cauchyK_mul_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/cauchyk-mul-eq--65948398a8a2e66d59a524df.md) | 42 | `result-track:65948398a8a2e66d59a524dfffff584e065f9ba07e5b9d77ad6bc28f2d99e0e8` |
| 3 | `theorem` | [cauchyK_neg_mul_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/cauchyk-neg-mul-eq--bc08033d00d532c22995a2f1.md) | 46 | `result-track:bc08033d00d532c22995a2f1c5dc34f838fe5a56c1a0fcca72dc114f68432403` |
| 4 | `theorem` | [testWeightFacts_hosted](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/testweightfacts-hosted--cbe58771d3934825124028b6.md) | 51 | `result-track:cbe58771d3934825124028b6e748b7dcaf5cd8200ccf249bacfc86db40c6e441` |
| 5 | `theorem` | [gramBridgeFacts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/grambridgefacts--bd1f92ab82b9b7cab37772cf.md) | 87 | `result-track:bd1f92ab82b9b7cab37772cf9363c6f76a5562853caf83d2f0695c9dc5dbe84f` |
| 6 | `theorem` | [xiCoeffJ'_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/xicoeffj-eq--2c12925ffd7bd194dbff80ca.md) | 94 | `result-track:2c12925ffd7bd194dbff80caf8bd31ee5c40829c6c635b84fb6c55449a78c97e` |
| 7 | `theorem` | [coeffFacts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/coefffacts--1473d2e176587193b6144488.md) | 99 | `result-track:1473d2e176587193b614448887ce6e0c215a3085ca0b3a2844159bd35886b2cb` |
| 8 | `theorem` | [testWeightFacts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/testweightfacts--cf52109fc69156eccedb26ea.md) | 113 | `result-track:cf52109fc69156eccedb26ea1d0bf6575c13e37d9f1791b3b32b1d308e3356ec` |
| 9 | `theorem` | [xiEF](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/xief--6bb3adea639437e78228d456.md) | 122 | `result-track:6bb3adea639437e78228d4566c660ee41f193c85351dc612adebc5c862755799` |
| 10 | `theorem` | [xiEF_xiDerivZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant476d23e42f41ff6e5cb097d418961c1a2991f33ce308008b9a8ae21779fd02d0.lean/declarations/xief-xiderivzeros--01bea32f755ae3d8ae929620.md) | 128 | `result-track:01bea32f755ae3d8ae929620216d9dcb0dab34620d861fed03197e9c607bce9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
