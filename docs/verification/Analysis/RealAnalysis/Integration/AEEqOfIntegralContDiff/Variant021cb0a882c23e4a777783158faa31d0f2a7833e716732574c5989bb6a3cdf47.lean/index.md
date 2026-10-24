# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegralContDiff.Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "505ffcd28914f509cd3472fef1bd3fc6b8d5534c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `505ffcd28914f509cd3472fef1bd3fc6b8d5534c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Metrizable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_integral_smooth_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/ae-eq-zero-of-integral-smooth-smul-eq-zero--662b241f3e66d7d6d8a7d7f4.md) | 41 | `result-track:662b241f3e66d7d6d8a7d7f420ff4cc6862802cfb696723054473e1ba3c952b4` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/instance--548af4f796a31f99e4a6384e.md) | 116 | `declaration-track:548af4f796a31f99e4a6384e3f4548d29efc30436fbcdc1f07299f17eb17b474` |
| 3 | `theorem` | [IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--ba5f68c61a7e515fd632b184.md) | 121 | `result-track:ba5f68c61a7e515fd632b18457dbc42a5006dd4ac8432162d2492a1888c2eef2` |
| 4 | `theorem` | [IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--64d4b01b4a078d34d146d79f.md) | 146 | `result-track:64d4b01b4a078d34d146d79fa78b0dc11ff2c5f7866268628e6435f4f9d96c8e` |
| 5 | `theorem` | [ae_eq_of_integral_smooth_smul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/ae-eq-of-integral-smooth-smul-eq--1a4f19be5a142029f8980169.md) | 161 | `result-track:1a4f19be5a142029f8980169a7e80d99dce12ad91e9211add9ca2fa92dae3689` |
| 6 | `theorem` | [ae_eq_zero_of_integral_contDiff_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/ae-eq-zero-of-integral-contdiff-smul-eq-zero--b28f0188303b1d7f92331edb.md) | 184 | `result-track:b28f0188303b1d7f92331edba5056e2376a1ded3543f04688466b194dc6ac81f` |
| 7 | `theorem` | [ae_eq_of_integral_contDiff_smul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/ae-eq-of-integral-contdiff-smul-eq--8af3539b0d8f593dfeee556b.md) | 193 | `result-track:8af3539b0d8f593dfeee556bbee6ff34d5a6be5cc5a4a0b2fe8dd94f5b9452d1` |
| 8 | `theorem` | [IsOpen.ae_eq_zero_of_integral_contDiff_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/declarations/isopen-ae-eq-zero-of-integral-contdiff-smul-eq-zero--85c5cc05d3f45e25064c91a4.md) | 203 | `result-track:85c5cc05d3f45e25064c91a483626879d4375311424dc97bc253b139f7db34e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
