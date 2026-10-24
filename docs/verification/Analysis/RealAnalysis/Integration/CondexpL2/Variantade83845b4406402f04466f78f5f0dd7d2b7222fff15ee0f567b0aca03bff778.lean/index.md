# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondexpL2.Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdb4611be326cf2f44d9627da6bf554c3fe217fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Unique` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condexpL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2--def31ef3706b333b10817b3b.md) | 71 | `declaration-track:def31ef3706b333b10817b3b2c5d57aa270f9a599cd34a7cc4a8245667c45c62` |
| 2 | `theorem` | [aeStronglyMeasurable'_condexpL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/aestronglymeasurable-condexpl2--8b4581c1ad0e6de66cb5fa9d.md) | 79 | `result-track:8b4581c1ad0e6de66cb5fa9d0a5a391e7ae406098b4906fb0ef51920020216d2` |
| 3 | `theorem` | [integrableOn_condexpL2_of_measure_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integrableon-condexpl2-of-measure-ne-top--6b61f00b6597f4b658895b83.md) | 84 | `result-track:6b61f00b6597f4b658895b835dbd911b25c42bdc96f7adaf0365e2b746447019` |
| 4 | `theorem` | [integrable_condexpL2_of_isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integrable-condexpl2-of-isfinitemeasure--969c310d10f031d0636458c6.md) | 90 | `result-track:969c310d10f031d0636458c6501abd806d01ff60f6e6b1d550e83a29658d7f20` |
| 5 | `theorem` | [norm_condexpL2_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/norm-condexpl2-le-one--15b6f56463553d1afd757c59.md) | 95 | `result-track:15b6f56463553d1afd757c592838639ce8d355e7f32256fadfcc23fb642ddaa6` |
| 6 | `theorem` | [norm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/norm-condexpl2-le--785c3f764e23f2459c59bca0.md) | 100 | `result-track:785c3f764e23f2459c59bca018b984b8f3e825fca7ca086d9637fd93ebceba12` |
| 7 | `theorem` | [snorm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/snorm-condexpl2-le--2668df45c52856ccf5011696.md) | 105 | `result-track:2668df45c52856ccf50116960f018af7d4be0622bda11aac810765ba7f61a920` |
| 8 | `theorem` | [norm_condexpL2_coe_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/norm-condexpl2-coe-le--cb248388705b7800b4400cf4.md) | 112 | `result-track:cb248388705b7800b4400cf41407f71330f67305654c7410274c6de4ca9bc394` |
| 9 | `theorem` | [inner_condexpL2_left_eq_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/inner-condexpl2-left-eq-right--0d6ea9a7c572bb4e6a93c146.md) | 119 | `result-track:0d6ea9a7c572bb4e6a93c146fdd49a4be59dfad510555ad047fa09a3cd84643d` |
| 10 | `theorem` | [condexpL2_indicator_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-indicator-of-measurable--e85433771209f7c4e6998284.md) | 125 | `result-track:e85433771209f7c4e6998284425158406177d5918fab16d89e4d358162ba88e4` |
| 11 | `theorem` | [inner_condexpL2_eq_inner_fun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/inner-condexpl2-eq-inner-fun--bd51fe61ef4f5d5508163a85.md) | 139 | `result-track:bd51fe61ef4f5d5508163a85cd8ca4feefd3244bb2c27b928222ee677abb7687` |
| 12 | `theorem` | [integral_condexpL2_eq_of_fin_meas_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integral-condexpl2-eq-of-fin-meas-real--7667903c3382071c1f3597e4.md) | 151 | `result-track:7667903c3382071c1f3597e4e306ff47a440a69f075ce56db04a2586ab2ba3fc` |
| 13 | `theorem` | [lintegral_nnnorm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/lintegral-nnnorm-condexpl2-le--a91a40531d2e6748b5457750.md) | 160 | `result-track:a91a40531d2e6748b54577502510b2ca7ae9393edf34b04fb076b95c8702335e` |
| 14 | `theorem` | [condexpL2_ae_eq_zero_of_ae_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-ae-eq-zero-of-ae-eq-zero--712f28e74e69d6c28791770d.md) | 184 | `result-track:712f28e74e69d6c28791770d52b0757f8862c155a50ed2e30905d090be1207bf` |
| 15 | `theorem` | [lintegral_nnnorm_condexpL2_indicator_le_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le-real--8eeff2205bf70d8656d3ac6e.md) | 205 | `result-track:8eeff2205bf70d8656d3ac6eb2ae9f50e0e08b8bba697c67694c24663cdbb895` |
| 16 | `theorem` | [condexpL2_const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-const-inner--3b17777231a0fb12cadc73fe.md) | 228 | `result-track:3b17777231a0fb12cadc73fed824a8c92e44e87302a2fb7244e10e95f060aab3` |
| 17 | `theorem` | [integral_condexpL2_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integral-condexpl2-eq--960c6e2d3f5813c34f637b48.md) | 256 | `result-track:960c6e2d3f5813c34f637b48041d4965e5b39725671a1517661d16a3db73f710` |
| 18 | `theorem` | [condexpL2_comp_continuousLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-comp-continuouslinearmap--95afd2ddc006584816cee95f.md) | 281 | `result-track:95afd2ddc006584816cee95f80fe1a873ec4065f6414598565e5a2b2f4cf36f2` |
| 19 | `theorem` | [condexpL2_indicator_ae_eq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-indicator-ae-eq-smul--74527e0f61576232dbe802dc.md) | 308 | `result-track:74527e0f61576232dbe802dca294ce402936c5ae59a5dfbff412b823953d7986` |
| 20 | `theorem` | [condexpL2_indicator_eq_toSpanSingleton_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-indicator-eq-tospansingleton-comp--104e9d6ab0d32dad976598ac.md) | 321 | `result-track:104e9d6ab0d32dad976598acad1b748de6b726877e08524aea7f0b1ca5b9942c` |
| 21 | `theorem` | [set_lintegral_nnnorm_condexpL2_indicator_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/set-lintegral-nnnorm-condexpl2-indicator-le--1eeb6d1cd8e330a15ebd4115.md) | 337 | `result-track:1eeb6d1cd8e330a15ebd411584237391f0ef79456a70b39e20e121eb4c677dd0` |
| 22 | `theorem` | [lintegral_nnnorm_condexpL2_indicator_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le--e0eb1ff4547ec122426ee4e8.md) | 354 | `result-track:e0eb1ff4547ec122426ee4e88313679cd942a70d4426b3af65a938e7869e3745` |
| 23 | `theorem` | [integrable_condexpL2_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integrable-condexpl2-indicator--bc15719e2fbc6a781e36cea3.md) | 366 | `result-track:bc15719e2fbc6a781e36cea31a56513e62ac1a98ff0d90767453b352acc5764c` |
| 24 | `def` | [condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul--72b7aaf2a1dba4faf59b9285.md) | 384 | `declaration-track:72b7aaf2a1dba4faf59b9285bb282bba0186b293bf50d83f8dfd60bad2ec67ae` |
| 25 | `theorem` | [aeStronglyMeasurable'_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/aestronglymeasurable-condexpindsmul--91b287222edd3ea3bb9c752f.md) | 389 | `result-track:91b287222edd3ea3bb9c752f7a3f3265e3d8964761773faadec71b21fed88857` |
| 26 | `theorem` | [condexpIndSMul_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-add--0d4dcab9e0e3e72d906a37fe.md) | 402 | `result-track:0d4dcab9e0e3e72d906a37fe179215a7f4af1f61f9e07d54113efd67b0509173` |
| 27 | `theorem` | [condexpIndSMul_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-smul--9a787b17952a20707b44969b.md) | 407 | `result-track:9a787b17952a20707b44969bf042ddda3146ffa6ab48c3c48bfe9dc4da5cadcf` |
| 28 | `theorem` | [condexpIndSMul_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-smul--b4b668c5edd2bab2c0ca3632.md) | 412 | `result-track:b4b668c5edd2bab2c0ca36325355b1893561c164128a0fd6f6e067c3c53dcbd2` |
| 29 | `theorem` | [condexpIndSMul_ae_eq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-ae-eq-smul--44153d537e9a03c10a833d53.md) | 419 | `result-track:44153d537e9a03c10a833d53a3171f5ec554a6622b42b1f600757c883acbaf47` |
| 30 | `theorem` | [set_lintegral_nnnorm_condexpIndSMul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/set-lintegral-nnnorm-condexpindsmul-le--40e296b9107588abc30329c4.md) | 425 | `result-track:40e296b9107588abc30329c4ab9ff4b12469b2b905b6351a07b3f17a55667929` |
| 31 | `theorem` | [lintegral_nnnorm_condexpIndSMul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/lintegral-nnnorm-condexpindsmul-le--a36f6e4184e7b87da37fe1f9.md) | 441 | `result-track:a36f6e4184e7b87da37fe1f90adf552bf6255228cc2fc655f2a6277005dcd8b5` |
| 32 | `theorem` | [integrable_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/integrable-condexpindsmul--8a1884a1575e83601eb01a8b.md) | 451 | `result-track:8a1884a1575e83601eb01a8b0136c80b757d8f7000ec1c34bc1150fd8976e4e2` |
| 33 | `theorem` | [condexpIndSMul_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-empty--7d8485f207209769cbddad21.md) | 461 | `result-track:7d8485f207209769cbddad21b5f62273e338489b3304c5353fc763c9bb3ceed3` |
| 34 | `theorem` | [set_integral_condexpL2_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/set-integral-condexpl2-indicator--44a94de170b5d78d0fbe61e8.md) | 467 | `result-track:44a94de170b5d78d0fbe61e80c898bc1e0a6dd26cdc1b29922fb87bd6947e94b` |
| 35 | `theorem` | [set_integral_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/set-integral-condexpindsmul--14a83316522a7a74efd07442.md) | 478 | `result-track:14a83316522a7a74efd0744209b61f2455a002fb46c8ff2fe6bb5bcfd05be7fe` |
| 36 | `theorem` | [condexpL2_indicator_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpl2-indicator-nonneg--feefe5061488884075a1291d.md) | 491 | `result-track:feefe5061488884075a1291d968f0d95e01a7db52e90c2c2f4a01b5963af04fa` |
| 37 | `theorem` | [condexpIndSMul_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/declarations/condexpindsmul-nonneg--76003b3164b82d908599989c.md) | 516 | `result-track:76003b3164b82d908599989c171b24d04c75d4567794f3947a68af8426b4c92a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
