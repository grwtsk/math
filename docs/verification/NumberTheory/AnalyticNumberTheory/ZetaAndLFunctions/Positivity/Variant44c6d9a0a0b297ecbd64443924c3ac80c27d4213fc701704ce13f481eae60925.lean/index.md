# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Positivity.Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56f3881eafa108674795a0b6eec64d9353f92372",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56f3881eafa108674795a0b6eec64d9353f92372`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Positivity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iteratedDeriv_alternating](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/iteratedderiv-alternating--0c03fb7c74bca27a2c82b4c7.md) | 44 | `result-track:0c03fb7c74bca27a2c82b4c7ed1d933ac9f1f989c90ba61eb9d4fc336fb193bf` |
| 2 | `lemma` | [positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/positive--d655162ac3acf922e4f143ad.md) | 63 | `result-track:d655162ac3acf922e4f143ad2e20e18f15411aae0104af46014102cbccebf65b` |
| 3 | `lemma` | [positive_of_differentiable_of_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/positive-of-differentiable-of-eqon--f4e65f45fd6a9882dfdca8a5.md) | 72 | `result-track:f4e65f45fd6a9882dfdca8a517fca9a9da288396e2afefcee8cd6ddbf185c093` |
| 4 | `lemma` | [iteratedDeriv_LSeries_alternating](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/iteratedderiv-lseries-alternating--291621e408f5fb8ac11f01cb.md) | 96 | `result-track:291621e408f5fb8ac11f01cb66bd439fd0d3d67b6e6f799f041f2f645dcdcb88` |
| 5 | `lemma` | [LSeries_positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/lseries-positive--680729ef82877e1933508635.md) | 103 | `result-track:680729ef82877e193350863529e6c1382af3b3f1015d383467c9935fa06d1253` |
| 6 | `lemma` | [LSeries_positive_of_differentiable_of_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/declarations/lseries-positive-of-differentiable-of-eqon--b4e65919db88f99daa256dd0.md) | 111 | `result-track:b4e65919db88f99daa256dd0b2a0ed509a51db302ee7ed5b75f2adb2c1c6c26a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
