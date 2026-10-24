# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMellinDilationAttempt04.Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc50d5da639881e8a3b3e66629be3071ec9c05f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc50d5da639881e8a3b3e66629be3071ec9c05f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/mellinconvergent-unnormalized--eb5e7674ac9f8f966de9522d.md) | 22 | `result-track:eb5e7674ac9f8f966de9522d1e9494c1c3168cbdcd355ba1db74dd566881c8e5` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/mellinconvergent-normalized--7316ba6b5a6e6ac3349f8d4d.md) | 40 | `result-track:7316ba6b5a6e6ac3349f8d4dfc9ef64dd522d8c82433fef26cad231681881ae2` |
| 3 | `theorem` | [sqrt_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/sqrt-cpow--c153768503567c32652823e5.md) | 45 | `result-track:c153768503567c32652823e50cd89d860ee01fea75bef2f2fa52f1427c9f7293` |
| 4 | `theorem` | [mellin_normalized_func](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/mellin-normalized-func--7743465e739b7fcffd77a48f.md) | 50 | `result-track:7743465e739b7fcffd77a48f55e4625f5ebc144e02359f5130ae067c81d98c82` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-unnormalized-mellinconvergent--d38d60760132f730cc0e1865.md) | 57 | `result-track:d38d60760132f730cc0e1865d8f6f097f4232fcc372a42b3c1d0ebfd253cb314` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-normalized-mellinconvergent--d25a21b323dd48c709d26a86.md) | 62 | `result-track:d25a21b323dd48c709d26a86ea1e5ed8bd827b7bfd0477ef1d601aa9c7bf6cdc` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-unnormalized-mellin--58e57950d30c29a695d7774a.md) | 67 | `result-track:58e57950d30c29a695d7774a48256e896aecfa8d585d52ed0e7d73d7b758294b` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-normalized-mellin--a2fcd89f41f8d939f488cfb4.md) | 72 | `result-track:a2fcd89f41f8d939f488cfb49594188cbf2780de568660440181ecc47c51e9d4` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-dilated-class-mellinconvergent--3283eabfd46eae75cbb5e6b1.md) | 77 | `result-track:3283eabfd46eae75cbb5e6b1359b42cc7c989e98dddec89199f91e0b7b6d446f` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-dilated-class-mellin--56ad7d74d18608ed3423666a.md) | 84 | `result-track:56ad7d74d18608ed3423666a400f430016fea65b8026d4e60ee8a82accc2410d` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt04/Variant118cfa606246be8318317b0f530ebd0535c694d02e1aab33839e2397d62717d7.lean/declarations/actual-integer-class-mellin--68aa55c0b66962be649adaf6.md) | 93 | `result-track:68aa55c0b66962be649adaf66f92c14016ff5f66e3332e68d06eb07ebaa9b9b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
