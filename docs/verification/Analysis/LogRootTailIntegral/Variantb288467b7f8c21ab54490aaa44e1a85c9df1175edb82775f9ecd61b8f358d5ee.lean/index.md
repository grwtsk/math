# Verification target: GRWTSK.Analysis.LogRootTailIntegral.Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89cc35ee7cf2e611a3ef7e3f72b402dcc191cde1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/index.md) · [Full source](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89cc35ee7cf2e611a3ef7e3f72b402dcc191cde1`.

Source path: `GRWTSK/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [density](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/density--737146527c38af423756595b.md) | 29 | `declaration-track:737146527c38af423756595b894ea85e289c4edf772d6498956f95b2f1527bdf` |
| 2 | `def` | [primitive](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/primitive--917ea90c8c87b4f41a9151f5.md) | 35 | `declaration-track:917ea90c8c87b4f41a9151f5d909fb1572bda1cfeda52271539a885699a3199b` |
| 3 | `theorem` | [exact_density_primitive](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/exact-density-primitive--69c03d90f8fbb3c553fe6b21.md) | 37 | `result-track:69c03d90f8fbb3c553fe6b210e835604a614051c96dac8958994f41ae8723c86` |
| 4 | `theorem` | [exact_density_derivative](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/exact-density-derivative--f23fa8166fb660ef2791ab7c.md) | 59 | `result-track:f23fa8166fb660ef2791ab7ca39016849455320abc42459dc9e828c18f0ba4d3` |
| 5 | `theorem` | [log_root_primitive_tends_to_zero](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/log-root-primitive-tends-to-zero--848482556373b6b901c47b1e.md) | 76 | `result-track:848482556373b6b901c47b1ebc0bf72cf7a89587d1933340f0e4c3eff292fa79` |
| 6 | `theorem` | [density_nonnegative](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/density-nonnegative--3b138d1ccd681d0e6c189750.md) | 88 | `result-track:3b138d1ccd681d0e6c1897507cefe0cd59323235559fe628626e27eec09c4dc9` |
| 7 | `theorem` | [density_antitone_on_tail](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/density-antitone-on-tail--8e454c5d32b44d7229c21c46.md) | 92 | `result-track:8e454c5d32b44d7229c21c4612c0071a930be67a7ff3c33b5b7a2cbf90e1114d` |
| 8 | `theorem` | [density_integrable_tail](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/density-integrable-tail--3c2c018e0bf85a547bcb42f0.md) | 111 | `result-track:3c2c018e0bf85a547bcb42f094248d35faa7e4ae4394a358b5bcedcd2dabaaa2` |
| 9 | `theorem` | [exact_tail_integral](../../../../mathematics/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/declarations/exact-tail-integral--eca08e6fe8a66b8d7cd27398.md) | 118 | `result-track:eca08e6fe8a66b8d7cd27398bae79cb0d70058342fe5bc63eb58b845a25d8d93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
