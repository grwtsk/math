# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt03.Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb86811f412f19df19f0abd3c98e0004c85290e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb86811f412f19df19f0abd3c98e0004c85290e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/positivemeasure--6c2c9369769a7fa3b6e62d07.md) | 14 | `declaration-track:6c2c9369769a7fa3b6e62d0788a12ead0a6b84a6cc274ed743cc2fe29b91451a` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/positivel2--d8d5c30dacbce88bdb5e5c2f.md) | 15 | `declaration-track:d8d5c30dacbce88bdb5e5c2f576e67d5a89b7587c5c2a5ea346dc691f365d2b7` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilatefunc--6cc107df74d44b586014aed6.md) | 17 | `declaration-track:6cc107df74d44b586014aed699bf35a3a0b7d8cac81364390effdde3f5c7647d` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/positivemeasure-map-mul--4a6828369cb9ea67107b41fb.md) | 19 | `result-track:4a6828369cb9ea67107b41fb88903dcc353ebed2c5c40de22d20380468de360e` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/positive-mul-quasi--c1f28f8e1fb2bad6d9089b3c.md) | 28 | `result-track:c1f28f8e1fb2bad6d9089b3c2b859517f38550f24f79c9ecfe5dbb1bbc642fec` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilatefunc-memlp--cb12d4faa32ea43c9f3b5461.md) | 34 | `result-track:cb12d4faa32ea43c9f3b5461bc8238e593ae57de4bda5903d6b563ad771dbb56` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate--ed5c7eb49aa0c9d15aa5ad62.md) | 41 | `declaration-track:ed5c7eb49aa0c9d15aa5ad62ff0fcaad591fea0d9088f902c8e9a8fc428806c3` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-ae--786c5148bf57800230aae657.md) | 44 | `result-track:786c5148bf57800230aae6578dde00ef7cadf31c36fc8ac689ba21b48c50e2f8` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/norm-sq-integral--3a679e5861e64b62202ba14a.md) | 48 | `result-track:3a679e5861e64b62202ba14a9864e38b01f8b36bbe7e1f4f3432e49205057386` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-norm-sq--78fe9e21e81521537f4d00fe.md) | 63 | `result-track:78fe9e21e81521537f4d00fe01a7b538a69d6bb2f4028192e770f76b2af8e35d` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-norm--60e1257cc9595316d849f333.md) | 77 | `result-track:60e1257cc9595316d849f333fc16d03fdd8ed72a417c6711d32f87bb6d35483c` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-one--a926779432eb27b52af8909d.md) | 80 | `result-track:a926779432eb27b52af8909d0a7d66ba8bcd64ef5412f65713611a45e42ff48a` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-comp--c6b69493801050feaa391a68.md) | 85 | `result-track:c6b69493801050feaa391a686af9faa6b8cd8315d434ad2e4fec5a97648b3bfe` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-inverse--43e8efb4ac230f46b15baaf6.md) | 97 | `result-track:43e8efb4ac230f46b15baaf6e42d1bfe92901f4aca84475b9f50db34c6d5f0ff` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-add--e862ac6ed63ed3c32b651a12.md) | 102 | `result-track:e862ac6ed63ed3c32b651a12cd168a2183a83fde58fb963ae2e75fe7c70b6775` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilate-smul--13b0358bcaa5c1b13957f8a9.md) | 112 | `result-track:13b0358bcaa5c1b13957f8a9595d246078c4f55b7982f2e2efb534d06bf596ce` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilationisometry--88cd676562c366e54db049d3.md) | 123 | `declaration-track:88cd676562c366e54db049d3c396bbcf36c9908e410e7a00ee13f7346d9c05fc` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant3bc3b129ee01f662d265a42964128b09acbb1f63b4fdee958870d03c08c2d737.lean/declarations/dilationequiv--ee46d848d0775d2c6d37b6fe.md) | 129 | `declaration-track:ee46d848d0775d2c6d37b6fe43e27b341566fb7c74cbe9df575270252975f8b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
