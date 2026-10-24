# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusFractionalResidual.Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dd4e7deb9b1d8453206434307bf6e1539b5e878",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dd4e7deb9b1d8453206434307bf6e1539b5e878`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arithmeticResidual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/arithmeticresidual--202d24fffb9dd7fd3d1b0a19.md) | 21 | `declaration-track:202d24fffb9dd7fd3d1b0a19c3ade3be4403a8b5fb2b0ae79be7d70582ab3245` |
| 2 | `theorem` | [unitStep_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/unitstep-mellin-integrable--937f0ef63a1c8454473e2b2d.md) | 26 | `result-track:937f0ef63a1c8454473e2b2d0b5d330b480630ed204db8f665d031be2d6796fa` |
| 3 | `theorem` | [unitStep_mellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/unitstep-mellin-integral--094da856756308b0b5887127.md) | 43 | `result-track:094da856756308b0b5887127870407d27f52b7a3d6dc20e09049896e71c73db8` |
| 4 | `theorem` | [arithmeticResidual_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/arithmeticresidual-mellin-integrable--f54de51a15bbdbe924f27e7b.md) | 63 | `result-track:f54de51a15bbdbe924f27e7b8683d656f5d5f288de99d516c6b624d7ee0d26cf` |
| 5 | `theorem` | [dampedCoefficient_cpow_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/dampedcoefficient-cpow-sum--64968cb6f5a32d20ec10649a.md) | 79 | `result-track:64968cb6f5a32d20ec10649aeb9cabd78064d3b6aab6f56f8648a7db0e1d6bea` |
| 6 | `theorem` | [arithmeticResidual_mellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/declarations/arithmeticresidual-mellin-integral--5fb97901d5d4959b8a51aded.md) | 95 | `result-track:5fb97901d5d4959b8a51adedb3d0c42021db92955ee75a5320859eb4f54a9795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
