# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BoundedContinuousFunction.Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655d7ab26a4767598d83986b3cae299c44d91bb5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655d7ab26a4767598d83986b3cae299c44d91bb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [apply_le_nndist_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/apply-le-nndist-zero--13dc2729501f40e3ee2558cd.md) | 33 | `result-track:13dc2729501f40e3ee2558cd7f9f2c8c31eb6811e0d6d6920aa554881d2eda5b` |
| 2 | `lemma` | [lintegral_le_edist_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/lintegral-le-edist-mul--973f666358d695cd51a754f0.md) | 40 | `result-track:973f666358d695cd51a754f0339d7924706daa5c0fefd94020607fc487ba01d1` |
| 3 | `theorem` | [measurable_coe_ennreal_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/measurable-coe-ennreal-comp--3931330e762031acebf195a2.md) | 44 | `result-track:3931330e762031acebf195a2872ebfed753f632fe616568eb303e29600e16a92` |
| 4 | `theorem` | [lintegral_lt_top_of_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/lintegral-lt-top-of-nnreal--a091a17ac24abe548b35732a.md) | 50 | `result-track:a091a17ac24abe548b35732a1de1abfd186dd6d927fc533fbcef13b1237df621` |
| 5 | `theorem` | [integrable_of_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/integrable-of-nnreal--b00c02482ff870f65cb8ee10.md) | 56 | `result-track:b00c02482ff870f65cb8ee10b27b6732a86bb0899c9f809c50d63ab48fff71a0` |
| 6 | `theorem` | [integral_eq_integral_nnrealPart_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/integral-eq-integral-nnrealpart-sub--abaa9a81584216215b451460.md) | 62 | `result-track:abaa9a81584216215b451460cb1af58fb364a67842d227f188750175d6ba52cd` |
| 7 | `theorem` | [lintegral_of_real_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/lintegral-of-real-lt-top--f0dafbf940a92a637f836458.md) | 68 | `result-track:f0dafbf940a92a637f836458874a3c7895dfa20e75dd9acda1c3dd3a4e29f621` |
| 8 | `theorem` | [toReal_lintegral_coe_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/toreal-lintegral-coe-eq-integral--fc365ef49785424e28cf8ebf.md) | 71 | `result-track:fc365ef49785424e28cf8ebf1ad11bbc12dc69098b37e8ea84d12c615c87d6ec` |
| 9 | `lemma` | [lintegral_nnnorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/lintegral-nnnorm-le--e20f1beb60527314e11e00cb.md) | 86 | `result-track:e20f1beb60527314e11e00cb36f4ba157a3a24572aa0f43d138ff69326fd7014` |
| 10 | `lemma` | [integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/integrable--65b1dfdc10207cc49a9767ec.md) | 94 | `result-track:65b1dfdc10207cc49a9767ec3fcd05b696b3bffc63a1b4eefd84a0dd5740f250` |
| 11 | `lemma` | [norm_integral_le_mul_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/norm-integral-le-mul-norm--efe5ce17f2aef4d2dd0b461d.md) | 103 | `result-track:efe5ce17f2aef4d2dd0b461dc12aea9d32a09bef7047240ce38fc4081ae61e4a` |
| 12 | `lemma` | [norm_integral_le_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/norm-integral-le-norm--93f2acfb935326877fccaf74.md) | 112 | `result-track:93f2acfb935326877fccaf747b1f0afb0bc99c3851e22be3fd4f78b1e07b213a` |
| 13 | `lemma` | [isBounded_range_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/isbounded-range-integral--dedb422705da10ac3a61c471.md) | 117 | `result-track:dedb422705da10ac3a61c471bfdb3b75f87fc77e9f92b07cb1e9544a916a63fa` |
| 14 | `lemma` | [integral_add_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/integral-add-const--55aad2e14286ddb30689ef01.md) | 132 | `result-track:55aad2e14286ddb30689ef0167587b81a3c4e4a482e4b64d9abb23909ca07559` |
| 15 | `lemma` | [integral_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/integral-const-sub--35748cef2f27db9b000f4f17.md) | 136 | `result-track:35748cef2f27db9b000f4f17e8dfb3ddbfd84b6c12dbfd8982be72a0f803b85c` |
| 16 | `lemma` | [tendsto_integral_of_forall_limsup_integral_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/tendsto-integral-of-forall-limsup-integral-le-integral--a077461ad37b377165afb51b.md) | 146 | `result-track:a077461ad37b377165afb51b2cca5d7fc61daad884f379b6766d1e83b1c234ae` |
| 17 | `lemma` | [tendsto_integral_of_forall_integral_le_liminf_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/declarations/tendsto-integral-of-forall-integral-le-liminf-integral--3f80dada62c262618f889e50.md) | 168 | `result-track:3f80dada62c262618f889e5052867bc34ddf0633f3c186d3537872ee1b1fec13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
