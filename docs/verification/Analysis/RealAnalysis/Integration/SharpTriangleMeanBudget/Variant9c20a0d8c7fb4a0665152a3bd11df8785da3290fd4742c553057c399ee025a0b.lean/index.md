# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ffa0b1a824de7d4be750c655e4e8eb1ae3e861",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ffa0b1a824de7d4be750c655e4e8eb1ae3e861`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/declarations/cumulative--5783a7775fc8aa2ecc1c943a.md) | 15 | `declaration-track:5783a7775fc8aa2ecc1c943a2e234c87bb1b6ada0801adc939e75efad847d4e6` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/declarations/cumulative-hasderivat--ea3cea25a89131bb07789a8f.md) | 17 | `result-track:ea3cea25a89131bb07789a8fbd21dc8bdf2055c122d5d06611829d0ee7bb4c14` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/declarations/cumulative-continuous--4775e571db72c5b8503a0812.md) | 22 | `result-track:4775e571db72c5b8503a0812b59e29905828b34ad700ac3290d7cb5a999c5e37` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/declarations/triangle-integral-eq--315716d606519781901ea59a.md) | 26 | `result-track:315716d606519781901ea59a9d0dae48e9d01f1e90ffead1967cf5c94562dd9c` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant9c20a0d8c7fb4a0665152a3bd11df8785da3290fd4742c553057c399ee025a0b.lean/declarations/triangle-integral-le--7f8b796a354cdff90393ac5e.md) | 78 | `result-track:7f8b796a354cdff90393ac5e72700b304a8f3a3527a87e257ed4f79a093cae0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
