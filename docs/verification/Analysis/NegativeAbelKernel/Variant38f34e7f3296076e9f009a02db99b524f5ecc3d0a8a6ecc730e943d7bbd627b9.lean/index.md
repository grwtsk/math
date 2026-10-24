# Verification target: GRWTSK.Analysis.NegativeAbelKernel.Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85a76b9efd6bc4323edf9b07d3f45e70560d0038",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/index.md) · [Full source](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85a76b9efd6bc4323edf9b07d3f45e70560d0038`.

Source path: `GRWTSK/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualKernel](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/declarations/actualkernel--da965914a9e08531b8a72196.md) | 35 | `declaration-track:da965914a9e08531b8a721963cf9e49f1554cbc60641d2829079d7b351c709bc` |
| 2 | `theorem` | [actual_kernel_continuous](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/declarations/actual-kernel-continuous--a7739b8fd52a7427f8e71b95.md) | 39 | `result-track:a7739b8fd52a7427f8e71b95e859dd15c00fded6623a117e239de5eff95254ab` |
| 3 | `theorem` | [actual_kernel_negative_at_zero](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/declarations/actual-kernel-negative-at-zero--7045885274f2617cf8093164.md) | 43 | `result-track:7045885274f2617cf809316462abab619adcf165dfd7095b30d41f0a9346ec54` |
| 4 | `theorem` | [smooth_nonpositive_pairing_unbounded](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/declarations/smooth-nonpositive-pairing-unbounded--c6d49ed3bef522190bc59294.md) | 47 | `result-track:c6d49ed3bef522190bc59294512658e9ff98a378490547969cfa119de378ad3b` |
| 5 | `theorem` | [actual_native_pairing_unbounded](../../../../mathematics/Analysis/NegativeAbelKernel/Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9.lean/declarations/actual-native-pairing-unbounded--b5734da3dbf3d59af1af71ba.md) | 98 | `result-track:b5734da3dbf3d59af1af71bae5046b46ff067511cefeed83977379be082af121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
