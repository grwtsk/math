# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegralContDiff.Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07bbf10a3a7ffa9f81f880dd5ca09d41e707b7f6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07bbf10a3a7ffa9f81f880dd5ca09d41e707b7f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Metrizable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_integral_smooth_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/ae-eq-zero-of-integral-smooth-smul-eq-zero--4b9248385c41ae4b577de2f1.md) | 49 | `result-track:4b9248385c41ae4b577de2f1b1b6370f2cfc70f7a042ba0a2cb3d94ce51f1b42` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/instance--99db75d484f0f78aab99a6b9.md) | 124 | `declaration-track:99db75d484f0f78aab99a6b9c99947e2acba35ddfb09954643b634fa9ddce95a` |
| 3 | `theorem` | [IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--3e76aba1d681d0cfcc2a1812.md) | 129 | `result-track:3e76aba1d681d0cfcc2a18122d278b261f77a6f8203da100682bb243faa6d302` |
| 4 | `theorem` | [IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--a78abc521f136d0422af9f9e.md) | 154 | `result-track:a78abc521f136d0422af9f9e0f1215a4caf9ab6106fb2961b82a76d0f63470ca` |
| 5 | `theorem` | [ae_eq_of_integral_smooth_smul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/ae-eq-of-integral-smooth-smul-eq--aec458c276f4aecfc3354cfb.md) | 169 | `result-track:aec458c276f4aecfc3354cfb956d7593f2a82f4dba8bd8a79dc8544686e33a08` |
| 6 | `theorem` | [ae_eq_zero_of_integral_contDiff_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/ae-eq-zero-of-integral-contdiff-smul-eq-zero--427bfa4025700e43f48b1a70.md) | 192 | `result-track:427bfa4025700e43f48b1a70a9deba45a8680cdf1d03737604f76daf1e7177af` |
| 7 | `theorem` | [ae_eq_of_integral_contDiff_smul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/ae-eq-of-integral-contdiff-smul-eq--3e0155ff6ba6e7c84710c94e.md) | 201 | `result-track:3e0155ff6ba6e7c84710c94e380f9784d31ebbc2930a65dad23c4fcc272f9ead` |
| 8 | `theorem` | [IsOpen.ae_eq_zero_of_integral_contDiff_smul_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/declarations/isopen-ae-eq-zero-of-integral-contdiff-smul-eq-zero--269ca70c83ffb9e7bac71ca2.md) | 211 | `result-track:269ca70c83ffb9e7bac71ca2fa26710a60a0305417bc10df1181ae20302c37ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
