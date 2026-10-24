# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c8223760cce578919036f6f38b3e0d101e3442b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c8223760cce578919036f6f38b3e0d101e3442b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsFiniteKernel.integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/isfinitekernel-integrable--b478ac3a2698e7907615df16.md) | 23 | `result-track:b478ac3a2698e7907615df162880243c5015ef91e51e34281a14c58a32f9f587` |
| 2 | `lemma` | [IsMarkovKernel.integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/ismarkovkernel-integrable--a623099750d2bd4fe931287f.md) | 32 | `result-track:a623099750d2bd4fe931287f0c983cf90ec353bdcf805cf5b3468885373eaf14` |
| 3 | `lemma` | [integral_congr_ae₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-congr-ae--008e7009d84fda801c1404fa.md) | 37 | `result-track:008e7009d84fda801c1404faf9929878b41c36b56cd20a569af8930afaed76b3` |
| 4 | `lemma` | [integral_indicator₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-indicator--aac71cca00e8ea3cff06070c.md) | 44 | `result-track:aac71cca00e8ea3cff06070cc884ef5e919cb2e3f2ecedfc95f07469287c60d2` |
| 5 | `theorem` | [integral_deterministic'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-deterministic--4f234ad493eb3929b715c3a9.md) | 52 | `result-track:4f234ad493eb3929b715c3a9bc2d0fd5ef10881d8391ed75d2766e7f2f5dce2a` |
| 6 | `theorem` | [integral_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-deterministic--c44f687611bccb049756eb72.md) | 57 | `result-track:c44f687611bccb049756eb72b6fae6f91437c72778737a3a6f265c88a49ad49d` |
| 7 | `theorem` | [setIntegral_deterministic'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/setintegral-deterministic--fe158711f5f626fc8922d749.md) | 61 | `result-track:fe158711f5f626fc8922d749edf466f76e577d096fc1b4e98f8490a259492231` |
| 8 | `theorem` | [setIntegral_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/setintegral-deterministic--2ea38e540693503ac880147d.md) | 67 | `result-track:2ea38e540693503ac880147dbf2278cebdeb861a7b173a3192b09970f619841d` |
| 9 | `theorem` | [integral_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-const--343ede107467dbcb4b22011d.md) | 77 | `result-track:343ede107467dbcb4b22011d3c3162dea2eba686611e26c1a52521788ca88236` |
| 10 | `theorem` | [setIntegral_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/setintegral-const--0e2ad0a885a4ec5b25532b09.md) | 81 | `result-track:0e2ad0a885a4ec5b25532b09baad7080d4fd7e44da36e926af0e6147dd22901d` |
| 11 | `theorem` | [integral_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-restrict--12b7738e05059940f78eccd6.md) | 91 | `result-track:12b7738e05059940f78eccd6171a52cc4ab91bfc707bb368749d3929f94f816a` |
| 12 | `theorem` | [setIntegral_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/setintegral-restrict--e38092217c736a6284b23585.md) | 96 | `result-track:e38092217c736a6284b235856559b14f0e6f34a694d7d8cc9f6984a58f974609` |
| 13 | `theorem` | [integral_piecewise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/integral-piecewise--ea65a22059346379603c571d.md) | 106 | `result-track:ea65a22059346379603c571d68ebd5ec78659c20804f047043d0f7cf04e80f73` |
| 14 | `theorem` | [setIntegral_piecewise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantc2dc25ddebd4dd7f2e9bc788d4ee2cf433606322152c6b211eb23fec035aba57.lean/declarations/setintegral-piecewise--2c53050b4550f0e23f5ccbc9.md) | 110 | `result-track:2c53050b4550f0e23f5ccbc9f3319f88f6a0c3b4f788d3ec884eb506801d3970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
