# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2NormBridgeProbe.Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f7c5c4bfaf265f9ad5fda12be20ef102807f3e3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f7c5c4bfaf265f9ad5fda12be20ef102807f3e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lpNorm_two_eq_sqrt_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean/declarations/lpnorm-two-eq-sqrt-integral-sq--6be928ed1d030743c965f803.md) | 14 | `result-track:6be928ed1d030743c965f803fff29a4a626081698ca6ba64990b14677c1dafff` |
| 2 | `theorem` | [lpNorm_two_and_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean/declarations/lpnorm-two-and-square-integrable--683dd82c9089b802812acb08.md) | 22 | `result-track:683dd82c9089b802812acb089d1fe191ec8c7fd0792796fb7da9f62d85b29493` |
| 3 | `theorem` | [tendsto_lpNorm_two_of_tendsto_integral_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2NormBridgeProbe/Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c.lean/declarations/tendsto-lpnorm-two-of-tendsto-integral-sq--41a5b97866026475409cbe41.md) | 28 | `result-track:41a5b97866026475409cbe41b225a46e430a3039ed71aafc45232b091c45ffb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
