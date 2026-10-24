# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullLineChi.Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9c1c747924dd476bccea6fbb30f760bcfadbfa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9c1c747924dd476bccea6fbb30f760bcfadbfa`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.ContourChi` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LocalCountChi` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GzGpChi` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GoodHeights` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LandauChi` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.ZeroSummabilityGen` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNontrivialZeroL_of_mem_closedBall](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/declarations/isnontrivialzerol-of-mem-closedball--fade8b314cdcc6ab86850795.md) | 43 | `result-track:fade8b314cdcc6ab86850795edeaf5ac1cb5244064123bab2ad289cab46f6832` |
| 2 | `lemma` | [sum_mult_six_windows_L](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/declarations/sum-mult-six-windows-l--8a86e8c038bf5bd27229c303.md) | 55 | `result-track:8a86e8c038bf5bd27229c3037326435e719f9b6611c219540d1142300dc48365` |
| 3 | `lemma` | [card_le_sum_mult_L](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/declarations/card-le-sum-mult-l--73b44e726499d46557263a70.md) | 101 | `result-track:73b44e726499d46557263a70ebee0cc0ad3ef43cce2323caf3e19ed928dbdea2` |
| 4 | `theorem` | [good_heights_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/declarations/good-heights-chi--a4c8cb66d02a40fac3e6bf2b.md) | 111 | `result-track:a4c8cb66d02a40fac3e6bf2bdeffa022cb7f8dba365e558c9cc0d71ffc45e6f1` |
| 5 | `theorem` | [EF_zero_sum_summable_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/declarations/ef-zero-sum-summable-chi--e6b91b0a846eb486c34d778d.md) | 297 | `result-track:e6b91b0a846eb486c34d778d6ae5aef7c940e16dd720b126201d156b2b02cf1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
