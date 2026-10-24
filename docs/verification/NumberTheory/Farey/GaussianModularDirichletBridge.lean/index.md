# Verification target: GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c5ea4b167090d3046fc48d02055f00accbba2d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c5ea4b167090d3046fc48d02055f00accbba2d`.

Source path: `GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/GaussianModularDirichletBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ResolvableQuintic`](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.QuadraticGaussianLine`](../../../../mathematics/NumberTheory/Primes/QuadraticGaussianLine.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletNonunitResidueObstruction`](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftGaussian](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/leftgaussian--cb84a611c0a6701d32f1bb58.md) | 48 | `declaration-track:cb84a611c0a6701d32f1bb5830e52257670c82f7f26133fdbf678b2a52cf28d3` |
| 2 | `def` | [conjugateRightGaussian](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/conjugaterightgaussian--a23597b4686f0aa8fd176906.md) | 52 | `declaration-track:a23597b4686f0aa8fd17690673c315002a6f7bf422ad5eaa268ebe302a50c26a` |
| 3 | `theorem` | [gaussian_cross_im_eq_one](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/gaussian-cross-im-eq-one--034b10d8d0a5125a690d1060.md) | 57 | `result-track:034b10d8d0a5125a690d1060d774330791d503c589fc02c35256fae5852e5a69` |
| 4 | `def` | [modularDet](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/modulardet--f4885c758896fd0a64faf8d4.md) | 74 | `declaration-track:f4885c758896fd0a64faf8d40430e983ab1bdb6cd583bf301ba71e33f3706552` |
| 5 | `theorem` | [modularDet_eq_one](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/modulardet-eq-one--e619bd3f3286efc35ed99db7.md) | 79 | `result-track:e619bd3f3286efc35ed99db7ff688d3a6506828b8a10bafdd0d23ad516e18818` |
| 6 | `theorem` | [mediant_numerator_projector](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/mediant-numerator-projector--88645b79b74f98da0072e8c3.md) | 92 | `result-track:88645b79b74f98da0072e8c38284a7fb68f0f540db4829d5487fe3721bb45a8a` |
| 7 | `theorem` | [mediant_denominator_projector](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/mediant-denominator-projector--8719bdf38e4f9cc6ccfd1f91.md) | 99 | `result-track:8719bdf38e4f9cc6ccfd1f91cfa3637f003887df8837e42f9ce46fda7885cfd3` |
| 8 | `def` | [GaussianModularEye](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/gaussianmodulareye--bf17812f8ff5f3cad1e43b97.md) | 108 | `declaration-track:bf17812f8ff5f3cad1e43b97d7ca135e2109d808d1684e6c54659efb8d28490e` |
| 9 | `theorem` | [gaussianModularEye_iff](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/gaussianmodulareye-iff--1534ad2bf12198d9fc841be5.md) | 120 | `result-track:1534ad2bf12198d9fc841be5a29c9cfdaa2f46fd9716af0e82eb6a2063245268` |
| 10 | `theorem` | [gaussianModularEye_refine](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/gaussianmodulareye-refine--57e7bf02a897dec4ac0fd871.md) | 132 | `result-track:57e7bf02a897dec4ac0fd871ad46c58e29953bf62b9658d5b7ab2e44e84d4d3f` |
| 11 | `def` | [nonunitEye](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye--ddb3c8521c0aa28557df3bcf.md) | 144 | `declaration-track:ddb3c8521c0aa28557df3bcf46cf5df7faccccd001082ee032def36fb5573523` |
| 12 | `theorem` | [nonunitEye_resolves](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye-resolves--dbdf6e40cae6b856da63228b.md) | 154 | `result-track:dbdf6e40cae6b856da63228bb3129acf3799b9a62c80c76e917a4b0b4517244c` |
| 13 | `theorem` | [nonunitEye_right_nonunit](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye-right-nonunit--d056a4d989e63f42683cf7bd.md) | 162 | `result-track:d056a4d989e63f42683cf7bd47f61d8f2c205df24185ab025416bbbe1454073e` |
| 14 | `theorem` | [nonunitEye_right_dirichlet_vanishes](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye-right-dirichlet-vanishes--305e016d8c6f428dd1d9bb76.md) | 169 | `result-track:305e016d8c6f428dd1d9bb76eaef17d12c9e2a3a438c309421fd5a390792c138` |
| 15 | `theorem` | [nonunitEye_right_additive_selector](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye-right-additive-selector--de02bd3ddcb125a94e261428.md) | 177 | `result-track:de02bd3ddcb125a94e2614286fc2a0624cec05d8c6f909c16f1e6483d153a727` |
| 16 | `theorem` | [nonunitEye_gaussian_modular_dirichlet_obstruction](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/declarations/nonuniteye-gaussian-modular-dirichlet-obstruction--8dfa456068f82f74359add1b.md) | 186 | `result-track:8dfa456068f82f74359add1b3cbd79033e0519a4654c1cc9455b464a4f2fcb11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
