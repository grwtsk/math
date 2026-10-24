# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity.Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1eaf5a74df8721a31306e3208c86453b37b58da",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1eaf5a74df8721a31306e3208c86453b37b58da`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight--8a5784f7b862081a5ff02f69.md) | 17 | `declaration-track:8a5784f7b862081a5ff02f6982e575e936ed0db88a072f7cf79b8619e61b178f` |
| 2 | `lemma` | [thetaModeWeight_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-positive--730722ca7a37a986041fe2d5.md) | 19 | `result-track:730722ca7a37a986041fe2d53ae6a7d14b59dba3c347a93cea23dab33644cdc8` |
| 3 | `lemma` | [thetaModeWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-summable--f6b853530f265cc50b208fde.md) | 23 | `result-track:f6b853530f265cc50b208fdeb91ca110a4dd5cf67c7ca3503bc5d86c4b90a5a4` |
| 4 | `lemma` | [thetaModeWeight_sum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-sum-one--bf947b90e96d3beb143b9894.md) | 26 | `result-track:bf947b90e96d3beb143b9894085e016fc641b7d84009124e0bda90a5563345d2` |
| 5 | `lemma` | [thetaPhiTerm_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphiterm-zero-le--1b4ec4b2527d097d8df34685.md) | 32 | `result-track:1b4ec4b2527d097d8df34685054e16fbcda142e6df328c4256515ef7d415da33` |
| 6 | `lemma` | [thetaModeWeight_le_modeRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-le-moderatio--60fc1507957481c249ab4407.md) | 35 | `result-track:60fc1507957481c249ab4407ee472efa2f174daa734bb60510139ef9dbb63008` |
| 7 | `lemma` | [weighted_sub_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/weighted-sub-sq-summable--e241b74691eecb0a109866bb.md) | 41 | `result-track:e241b74691eecb0a109866bb11955fca83b4c7924121bbcaa475aa4c2557ca34` |
| 8 | `lemma` | [tsum_weighted_sub_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/tsum-weighted-sub-sq--348c78a0721636edf2ca49e8.md) | 49 | `result-track:348c78a0721636edf2ca49e8548a9a37d41ac7ac544150fc1dc39dee86f0f5b5` |
| 9 | `lemma` | [weighted_variance_le_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/weighted-variance-le-center--cb8e4dd5549880c054ecc705.md) | 63 | `result-track:cb8e4dd5549880c054ecc705a44da9462edbdba7236cb59f174a3c695045cc3c` |
| 10 | `lemma` | [weighted_variance_le_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/weighted-variance-le-tail-bound--bdb60d009512bd57d27247fb.md) | 71 | `result-track:bdb60d009512bd57d27247fb9f34a0d4ca6729eebed3cadbcf6d0513a47a34b1` |
| 11 | `lemma` | [weighted_curvature_variance_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/weighted-curvature-variance-identity--55c2247de47d384c8c95e12d.md) | 88 | `result-track:55c2247de47d384c8c95e12db15d57d52e6ca5a75abd67c2bb8301e0841e8a57` |
| 12 | `def` | [thetaModeMean](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodemean--52867597e3281470980f97b8.md) | 101 | `declaration-track:52867597e3281470980f97b885ebd2281109b01c5ecb00508eb43948632233b6` |
| 13 | `def` | [thetaModeVariance](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodevariance--1deda476e73856b218ab8e9c.md) | 104 | `declaration-track:1deda476e73856b218ab8e9c1ce6c571a0bdfb0051e0492d7f62f5188e2004f0` |
| 14 | `lemma` | [thetaModeVariance_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodevariance-nonnegative--9a7b8cbca85439f7badd3987.md) | 107 | `result-track:9a7b8cbca85439f7badd39871063f87803cb54f88947fcb0c86ef41d1a527ab9` |
| 15 | `lemma` | [thetaModeWeight_center_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-center-sq-le--cb839da13d99a328f67caacc.md) | 111 | `result-track:cb839da13d99a328f67caacc3e7f5cc07dc0a4811be9343ed93f8730b6dbcc84` |
| 16 | `lemma` | [thetaPhi_mul_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-mul-score-sq-summable--03d65422ab0a23ae8c9d9fe3.md) | 140 | `result-track:03d65422ab0a23ae8c9d9fe3a093c5f0ca6e10e15c95350db5a702e4b9c4d6a0` |
| 17 | `lemma` | [thetaPhi_mul_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-mul-curvature-summable--5038ca8abb4a5f15a97a0cc4.md) | 153 | `result-track:5038ca8abb4a5f15a97a0cc4b33d07dc2f95918d099d854a73eabcda08bd5f2f` |
| 18 | `lemma` | [thetaModeWeight_score_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-score-summable--4aeceda2e92a4ac7b29e9d5e.md) | 160 | `result-track:4aeceda2e92a4ac7b29e9d5e674789be517157c1c1ae591eb8f9930d8e7f8b52` |
| 19 | `lemma` | [thetaModeWeight_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-score-sq-summable--68f85c6cbc1a249ba3354e2e.md) | 167 | `result-track:68f85c6cbc1a249ba3354e2e9a7b6c524ac45b25f056ca738517f802900c5985` |
| 20 | `lemma` | [thetaModeWeight_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodeweight-curvature-summable--83b34658f5af725a5d06cd49.md) | 174 | `result-track:83b34658f5af725a5d06cd49ad8c45b7cd1c7227f23ed9c2357bf1759c1e020a` |
| 21 | `lemma` | [thetaModeMean_eq_div_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodemean-eq-div-d1--746b2d1acdb8bbc72d365aff.md) | 181 | `result-track:746b2d1acdb8bbc72d365affe165250d753ab5d1cbdd2dcb00eecba9e0985bcc` |
| 22 | `lemma` | [thetaModeMean_eq_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodemean-eq-logslope--1fb5faa88e4d2df28e0a31f0.md) | 190 | `result-track:1fb5faa88e4d2df28e0a31f067904092e674f166306a56c2f0849b3573e1f714` |
| 23 | `lemma` | [thetaPhi_logCurvature_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-logcurvature-identity--f992d2584a26a46663c856e7.md) | 195 | `result-track:f992d2584a26a46663c856e7f085fa97b15a4ffc9f3f457b6ba59aaacfa8e132` |
| 24 | `lemma` | [thetaModeCurvature_expectation_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodecurvature-expectation-le--db692bea581cd29c2e65ce0b.md) | 217 | `result-track:db692bea581cd29c2e65ce0bc085b084e187022232b48d5f5b6be9aaa2713876` |
| 25 | `lemma` | [thetaModeVariance_lt_ten_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetamodevariance-lt-ten-mul--da871dfe00209f7a9ae6ed19.md) | 226 | `result-track:da871dfe00209f7a9ae6ed19024e80c99058c98ac49a9620a8ae884d7ebe7d60` |
| 26 | `lemma` | [thetaPhi_strict_logConcavity_raw](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-strict-logconcavity-raw--3ed2bb512388b2d0c681e9e3.md) | 247 | `result-track:3ed2bb512388b2d0c681e9e3f0606a76c67eaf5dac82bffeb5f0514f22a06513` |
| 27 | `lemma` | [thetaPhi_strict_logConcavity_curvature](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-strict-logconcavity-curvature--c70befebcbddff8b396c2aba.md) | 256 | `result-track:c70befebcbddff8b396c2aba75b59ff60192839d6cdf54663f59a1cebe43eadd` |
| 28 | `lemma` | [hasDerivAt_thetaPhi_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/hasderivat-thetaphi-logslope--fc673638ec23cdb6d37338f9.md) | 261 | `result-track:fc673638ec23cdb6d37338f90c270b8f8e73e9405d3e5663947df37549081ef5` |
| 29 | `lemma` | [thetaPhi_logSlope_deriv_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-logslope-deriv-neg--61553ca5631bdbd31678c4f3.md) | 268 | `result-track:61553ca5631bdbd31678c4f38a2544cf09388a59c833893ec41f37e1b8bf37bf` |
| 30 | `lemma` | [thetaPhi_logSlope_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/declarations/thetaphi-logslope-antitone--64f9c6322cdd5d48d2d835ca.md) | 274 | `result-track:64f9c6322cdd5d48d2d835ca49c0c142a72fcdd23f5fff4a86dafa23dc1ceb94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
