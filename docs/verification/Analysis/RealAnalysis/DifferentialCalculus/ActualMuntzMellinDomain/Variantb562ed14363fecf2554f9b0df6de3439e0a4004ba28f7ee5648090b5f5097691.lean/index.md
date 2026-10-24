# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinDomain.Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "087f81b058450b38b6ce11dd4c446d719d226b06",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `087f81b058450b38b6ce11dd4c446d719d226b06`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMuntz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexmuntz--d2e1313a7b47da9efb5c68ab.md) | 24 | `declaration-track:d2e1313a7b47da9efb5c68abcdf8128f4d7edb21d89a4ff2533de54e3f50fc1c` |
| 2 | `def` | [complexSource](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexsource--bb5e3dac1daf8b124c6923bc.md) | 26 | `declaration-track:bb5e3dac1daf8b124c6923bc1a277d7bfcc9dc218d4f4a13c4b84744836f63f6` |
| 3 | `theorem` | [complexMuntz_measurable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexmuntz-measurable--84f2bb3346fef286077122c4.md) | 28 | `result-track:84f2bb3346fef286077122c48a224cd449b0750ea4f35809937512d79a1c93fa` |
| 4 | `theorem` | [complexMuntz_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexmuntz-integrable--0fa113efc9cae724ca84f51b.md) | 32 | `result-track:0fa113efc9cae724ca84f51b602fc9a94eecba1da195274cf334809629e9e298` |
| 5 | `theorem` | [complexMuntz_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexmuntz-top-decay--259833a9db6f6f0625655fc2.md) | 50 | `result-track:259833a9db6f6f0625655fc2565594ba98c4a94092802d993525f642b9c9e488` |
| 6 | `theorem` | [complexMuntz_zero_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexmuntz-zero-bound--0a7aa78e6d6df70ec12c5e4e.md) | 56 | `result-track:0a7aa78e6d6df70ec12c5e4eb0b47ff345749d6d1c2b21c96d4554c0b0d565f2` |
| 7 | `theorem` | [actual_muntz_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-muntz-mellinconvergent--a7478e8b3ca00524c8659e7c.md) | 64 | `result-track:a7478e8b3ca00524c8659e7caa4d72f0df24a27b873523130c8747a4370f6c9c` |
| 8 | `theorem` | [actual_muntz_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-muntz-mellin-hasderivat--db7a2ab798073eed918d2b52.md) | 71 | `result-track:db7a2ab798073eed918d2b5258ec597ff226f9ab6e3fe9794eff3834a32e3dca` |
| 9 | `theorem` | [actual_muntz_mellin_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-muntz-mellin-analytic--b814591cec84e95a47e0ee7c.md) | 80 | `result-track:b814591cec84e95a47e0ee7c0f4ac91e90b38d87c3b028d9e9629c3630301d7d` |
| 10 | `theorem` | [complexSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexsource-integrable--fcba2215ec97b98a47922e3e.md) | 86 | `result-track:fcba2215ec97b98a47922e3e415360103d98b422fcf4ce27e9c54cd4a9aa232a` |
| 11 | `theorem` | [complexSource_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexsource-top-decay--a17244e546af07d27ef5b1cd.md) | 90 | `result-track:a17244e546af07d27ef5b1cdd03c17a11d7a95b6446e3a86994e40b3f6be96d4` |
| 12 | `theorem` | [complexSource_zero_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/complexsource-zero-decay--b18d639689315bb202143335.md) | 96 | `result-track:b18d639689315bb202143335d12828bbe02d865cdfbd185f23b80deade87f66e` |
| 13 | `theorem` | [actual_source_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-source-mellinconvergent--e15b04ed01c43b30e6d41b2a.md) | 104 | `result-track:e15b04ed01c43b30e6d41b2a7aaf4071cd2601ca8a3b09af840cbac6a145dfbf` |
| 14 | `theorem` | [actual_source_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-source-mellin-hasderivat--ceab5aa58db95ce85a2c2765.md) | 111 | `result-track:ceab5aa58db95ce85a2c2765e92180f80cd5a477809e0b16f5b4a5ab7c8187ca` |
| 15 | `theorem` | [actual_source_mellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-source-mellin-differentiable--2b6a066e51c7e28723724da4.md) | 120 | `result-track:2b6a066e51c7e28723724da4d8442b57c0f6db9758e478259bad7f7ba3fa8067` |
| 16 | `theorem` | [actual_source_mellin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variantb562ed14363fecf2554f9b0df6de3439e0a4004ba28f7ee5648090b5f5097691.lean/declarations/actual-source-mellin-one--6adef487baa09b81d5b6daea.md) | 124 | `result-track:6adef487baa09b81d5b6daeaa5b8fd7c1ddb9d5dc12892257818a6c71b524f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
