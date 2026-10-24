# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualXiExponentialEnvelope.Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcbdd38c51b06c70a91f981052a8e8c9418a744b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcbdd38c51b06c70a91f981052a8e8c9418a744b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiExponentialEnvelopeConstant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/declarations/actualxiexponentialenvelopeconstant--4a198b050c7ca1210a7ecbf6.md) | 20 | `declaration-track:4a198b050c7ca1210a7ecbf6bb1e82304df7ae5511c85ce7dc7b243bdb5f6ee8` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/declarations/coefficient-nonneg--a2d483bafdfb997ca1341bcb.md) | 23 | `result-track:a2d483bafdfb997ca1341bcbf073393bb2274d66781f1dae53b375e5ef01d9fe` |
| 3 | `theorem` | [actualXiTailTimeDensity_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/declarations/actualxitailtimedensity-abs-le--c85d1efc83a1223d979e567c.md) | 28 | `result-track:c85d1efc83a1223d979e567c1bec71d6d579ebab59584c09e7773359e0617441` |
| 4 | `theorem` | [actualAnchoredXiTailPrimitive_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variant21fdab503284821edb6acbb57bb071decabfe19cca7592b719f82f849183fde9.lean/declarations/actualanchoredxitailprimitive-abs-le--959f636caf53c1d153a6f6fb.md) | 50 | `result-track:959f636caf53c1d153a6f6fb094e2043c767876c974c35980c4135c5bc20c6c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
