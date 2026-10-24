# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt01.Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810e834337a81268b6a06c96063aecbf4e59d4bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810e834337a81268b6a06c96063aecbf4e59d4bc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean.json)

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
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/positivemeasure--b43b45a4023c2b3029dbf14e.md) | 14 | `declaration-track:b43b45a4023c2b3029dbf14e36a2d51337958dc5992f0b7652be3004c9b0cc94` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/positivel2--884b9b8937caaf106d5da1e2.md) | 15 | `declaration-track:884b9b8937caaf106d5da1e2531fdfc306b4221c069a3847be414ee6a408edbe` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilatefunc--e3119da292ad728f9a05c5a0.md) | 17 | `declaration-track:e3119da292ad728f9a05c5a06844b4beb9cc2cf69af566a26b08961181c87f47` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/positivemeasure-map-mul--c43d15424f6e34c0ede42142.md) | 19 | `result-track:c43d15424f6e34c0ede42142cdc3f370fbee1b6f503d671111a1607041f16d31` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/positive-mul-quasi--124b2e5cb0c47530398c1d8c.md) | 28 | `result-track:124b2e5cb0c47530398c1d8ca97b765d43bce967da5f0bdc840a814f043bfa0f` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilatefunc-memlp--874fdc61ca1b0e70fd78ca8f.md) | 34 | `result-track:874fdc61ca1b0e70fd78ca8f743296465e366769cc799ac62ffe62f5b59b9107` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate--517c07cce0000a62d4947e35.md) | 41 | `declaration-track:517c07cce0000a62d4947e3548760fb07df897d1ffcde1a4f7dd6edef3d81d6a` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-ae--555c6724d6c772fa4d2b8bd6.md) | 44 | `result-track:555c6724d6c772fa4d2b8bd6f3e8212b45cf16f3929f13a07a4816d193c0f764` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/norm-sq-integral--e5fe126c32d0050b72fa103c.md) | 48 | `result-track:e5fe126c32d0050b72fa103c81fa066acc1d7e9d0390260b53461b4e562ff6c9` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-norm-sq--c5ae7180f205ac3c9609282b.md) | 57 | `result-track:c5ae7180f205ac3c9609282bd4273db8a047d9848fe6e63379c2af3f54e81bf4` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-norm--465ce7a70ccb3bd0448108c9.md) | 70 | `result-track:465ce7a70ccb3bd0448108c9854a83b65e235a2c4a5ce703008f39426213c58e` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-one--5dc55905b5d130ef2b24895e.md) | 73 | `result-track:5dc55905b5d130ef2b24895ef343951cbe8b1740bec0964a85d9a0747b163dbc` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-comp--ca6d4bd36fe8c8a553f65c50.md) | 78 | `result-track:ca6d4bd36fe8c8a553f65c50c6d93408e1eff42091c2fea4cdd5e2dd8fbadbe8` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-inverse--9d84f63ba95401bc2adaab2a.md) | 90 | `result-track:9d84f63ba95401bc2adaab2a53d30542560ae7d8fffb203b4e2758eb28766940` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-add--36623d94816da01d76421baf.md) | 94 | `result-track:36623d94816da01d76421baf3c3679fb8529a7d64c20b3c8548c891e6eb3896e` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilate-smul--b2bb451f6dc43b27bff5df2a.md) | 103 | `result-track:b2bb451f6dc43b27bff5df2ac8a4e718485251c17aefc1e1e1b22ee520f3b935` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilationisometry--71fc1fe5b69945ea0071ba65.md) | 113 | `declaration-track:71fc1fe5b69945ea0071ba659af0bf0ddaa1750b8e8503f8cd15fcf2f292b13d` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant85926be03f8fcd40bd3fa50d8dc70797713e7d796d1f8741299badc7b57463fb.lean/declarations/dilationequiv--f40714943c7478e07c2fd17d.md) | 119 | `declaration-track:f40714943c7478e07c2fd17df2dea74a2f5ef2d9619d97bd2f605a554b110285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
