# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LeafIntegrals.Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5efa2fe3e7ab9ab30ea42b6298fc43fb95667a1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5efa2fe3e7ab9ab30ea42b6298fc43fb95667a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/declarations/integral-left--6a999cd85fec0d1e2df95479.md) | 24 | `result-track:6a999cd85fec0d1e2df95479d7a384335bdaa91713ce3b507a3190307f74ac6b` |
| 2 | `lemma` | [integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/declarations/integral-right--e0d70e54b6c90f88b2b86577.md) | 50 | `result-track:e0d70e54b6c90f88b2b8657748081b0590985b2bbacf0bd26e2570f6d960f4b3` |
| 3 | `theorem` | [Ig_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/declarations/ig-core--f02ab3537c38fc735e68326d.md) | 76 | `result-track:f02ab3537c38fc735e68326d7d72402d2f405e50d7623eca7045660395afcfb6` |
| 4 | `theorem` | [W3_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variantbce0a60cc5bb5a542cc32146ca2aceb6612718428d1e2afa64c53702c321abc6.lean/declarations/w3-core--d8a5f15a62b75ba89bc2e352.md) | 118 | `result-track:d8a5f15a62b75ba89bc2e352cfdc1d94fecd7e4941077ce81acbec69a060ac76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
