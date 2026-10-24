# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt01.Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd263a09a63280fe68759e8651c1f2bce58da3e8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd263a09a63280fe68759e8651c1f2bce58da3e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower--1b585a12523e6513091ebae4.md) | 17 | `declaration-track:1b585a12523e6513091ebae4a81293f1f9c44c5442d7a8f9fe66924ae3b09ac3` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpowerprimitive--dc10653dec69f7de64416f34.md) | 18 | `declaration-track:dc10653dec69f7de64416f341eec6580a9e32b998dc7e470dda866ecbf8458b4` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-hasderivat--e23654f69124ebfc24dd74c3.md) | 20 | `result-track:e23654f69124ebfc24dd74c3d490e3e90696c2fbc8fa840113814c02eb4be6b3` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/primitive-hasderivat--eb27a5c55d7c3caab93daf28.md) | 33 | `result-track:eb27a5c55d7c3caab93daf28323a6d19b0f384b1f8e5645530de9303c7ff8841` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-nonneg--20a61e8e4c12b9f0dbec0ba7.md) | 47 | `result-track:20a61e8e4c12b9f0dbec0ba7dea06f645c8f452769fcda7b973553b1932a4d57` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-antitone--392d98bc3fbcff16aa25f571.md) | 51 | `result-track:392d98bc3fbcff16aa25f571eb1b1b84b0d663e1ba746896b5bdd0153997d586` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/primitive-tendsto-zero--f32badaae7ffc13d99a16ba3.md) | 64 | `result-track:f32badaae7ffc13d99a16ba31ebc9aaa1bffd5f590000635171627f59ffe0b84` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-integrable--0071d291412e1bb77f40298e.md) | 78 | `result-track:0071d291412e1bb77f40298e7ffa145653c5d1c44ab7d8a98d4f26fb2e93c201` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-integral--6a25fa2b3cc1c243d6873232.md) | 83 | `result-track:6a25fa2b3cc1c243d6873232a8ae1723d59b7cd18fa6474953ece6d6d3b7b741` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/logpower-summable--84cdb083ba91bde4a6938108.md) | 92 | `result-track:84cdb083ba91bde4a6938108504dceba266c99c19bb1c2e2b2f641301b3e0aca` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/tail-summable--9737bc1caf2e14b9f494ad8d.md) | 96 | `result-track:9737bc1caf2e14b9f494ad8d030520a75f6ebd4a7d31198ff5b720ff1afa6fdb` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/tail-le-integral--99e90c3be32e31c6e55f8e3c.md) | 100 | `result-track:99e90c3be32e31c6e55f8e3c7480b4a8097759a98e859fb3fd40eb83a20818e2` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variant93dd5120c1a9e19247fd51bae20cb0f6b84b9c22d3eaf6217d1fb5ab94d054ac.lean/declarations/tail-le-rational--e16294e3dbf890f2f7b5b261.md) | 111 | `result-track:e16294e3dbf890f2f7b5b2617f590ab532130d4858187566dc759dbf30406134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
