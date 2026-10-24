# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MGFAnalytic.Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d1195f77dd24b4f6f96b5bdce9c50eb7a3a2e29",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d1195f77dd24b4f6f96b5bdce9c50eb7a3a2e29`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_integral_pow_mul_exp_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/hasderivat-integral-pow-mul-exp-real--52e91bb3b217b1c449ef3397.md) | 42 | `result-track:52e91bb3b217b1c449ef33979ef4689b86303ba36d7b4f9590f46d6fb30a7d0c` |
| 2 | `lemma` | [hasDerivAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/hasderivat-mgf--e32e79dfff8b3233dff1d69e.md) | 61 | `result-track:e32e79dfff8b3233dff1d69e302b381c779cdb1f5e92f44da820a09c567a6a31` |
| 3 | `lemma` | [hasDerivAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/hasderivat-iteratedderiv-mgf--0412aa481d6fbe1de0e14d82.md) | 67 | `result-track:0412aa481d6fbe1de0e14d823f98d1ea8b0244e196436dd2510d75b2a93b01db` |
| 4 | `lemma` | [iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/iteratedderiv-mgf--be93f585fb7f28e8a11a4acf.md) | 83 | `result-track:be93f585fb7f28e8a11a4acfad9e799c42186b7ca616af944ce93360567c1e25` |
| 5 | `lemma` | [iteratedDeriv_mgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/iteratedderiv-mgf-zero--c0f598570ef53c4592602690.md) | 92 | `result-track:c0f598570ef53c4592602690c37b15e60e39f3c631b37819eeae62bbf0425e83` |
| 6 | `lemma` | [deriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/deriv-mgf--2edee58a2c27033a08f9a77b.md) | 98 | `result-track:2edee58a2c27033a08f9a77b93129be35e5e74fb79ab41a1de0878b170742eb0` |
| 7 | `lemma` | [deriv_mgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/deriv-mgf-zero--966d3e69aeed29d61766c611.md) | 102 | `result-track:966d3e69aeed29d61766c61193dbc8334e9616f192a80b4dd87b029e4422ab83` |
| 8 | `lemma` | [analyticAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticat-mgf--0a6e2df7652b644019b51ee9.md) | 110 | `result-track:0a6e2df7652b644019b51ee9900ad712aaf15cf93a886bd74eaed699b8c36191` |
| 9 | `lemma` | [analyticOnNhd_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticonnhd-mgf--b32ba916914e33b158ac81c6.md) | 115 | `result-track:b32ba916914e33b158ac81c6c42b3158a1d7007b1e4bf26f99dbcafc7c6b31ee` |
| 10 | `lemma` | [analyticOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticon-mgf--5aa4aeeda559b50d32c9c00c.md) | 120 | `result-track:5aa4aeeda559b50d32c9c00c283b26c2a070587be0fd4d5b21525a742bca13b2` |
| 11 | `lemma` | [hasFPowerSeriesAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/hasfpowerseriesat-mgf--de1af801b0811d0b6698838b.md) | 123 | `result-track:de1af801b0811d0b6698838b8c873215d3382d25aa7933f374d2ffffd65a65e8` |
| 12 | `lemma` | [differentiableAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/differentiableat-mgf--1a29e342b9adb382184e483b.md) | 130 | `result-track:1a29e342b9adb382184e483b9c2496a12e718a1a8d18fde289d3efba9d4dd18e` |
| 13 | `lemma` | [differentiableOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/differentiableon-mgf--4b1bde6fd0a1f08a9b8f7b46.md) | 133 | `result-track:4b1bde6fd0a1f08a9b8f7b46e160be59ff0bb91fb5033422162285c7390a2f6d` |
| 14 | `lemma` | [continuousOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/continuouson-mgf--2eeeff1c8312aa704ab1f4d2.md) | 137 | `result-track:2eeeff1c8312aa704ab1f4d2b88acb5e590da80e17144fb097d8f79ffb947d63` |
| 15 | `lemma` | [continuous_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/continuous-mgf--f1b63e0f7dc52eae7b752d4e.md) | 140 | `result-track:f1b63e0f7dc52eae7b752d4e86a5d610861824c9fb3f65f00c88e5d3656812a6` |
| 16 | `lemma` | [analyticOnNhd_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticonnhd-iteratedderiv-mgf--4c11b1c530fcb522128f318a.md) | 149 | `result-track:4c11b1c530fcb522128f318a86a42f6f178e11c0d78e7dca4096ed64bc393911` |
| 17 | `lemma` | [analyticOn_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticon-iteratedderiv-mgf--1c1563311dd97ec65ccdcd87.md) | 154 | `result-track:1c1563311dd97ec65ccdcd872da75148dc3ac113b4bfd37f6bc020f6cabdfd25` |
| 18 | `lemma` | [analyticAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticat-iteratedderiv-mgf--be0bee3915cee1b57ac391f4.md) | 158 | `result-track:be0bee3915cee1b57ac391f487d4005427f9bece2430a2d57ac6aa27d12fd9bc` |
| 19 | `lemma` | [differentiableAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/differentiableat-iteratedderiv-mgf--4b233ff10a86f164c73817e9.md) | 162 | `result-track:4b233ff10a86f164c73817e9c192eb2e2df784f5e29849dac8b2d89202050109` |
| 20 | `lemma` | [analyticAt_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticat-cgf--fec5a5491c0024ea611de39d.md) | 170 | `result-track:fec5a5491c0024ea611de39d61ba5b9106a0107af84b2c86ab5c99213c908d88` |
| 21 | `lemma` | [analyticOnNhd_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticonnhd-cgf--20e08322610bb5d195249b35.md) | 176 | `result-track:20e08322610bb5d195249b35f29d3740c1be88180f019f6e4affaa69440f6c1a` |
| 22 | `lemma` | [analyticOn_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/analyticon-cgf--dd5dce67693e5545fc5bceb9.md) | 181 | `result-track:dd5dce67693e5545fc5bceb9dc2e7f21415447add4b0cca4d3ae007da86217b1` |
| 23 | `lemma` | [deriv_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/deriv-cgf--64220aa2be777a7e28a728ab.md) | 188 | `result-track:64220aa2be777a7e28a728ab4625e2d5316a7ab12e09f068b15dcd6b1ecc171b` |
| 24 | `lemma` | [deriv_cgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/deriv-cgf-zero--81ef704905d65d9dfc6f0aa3.md) | 200 | `result-track:81ef704905d65d9dfc6f0aa30b540990bd8b0da09a70f55a49f254d185d37593` |
| 25 | `lemma` | [iteratedDeriv_two_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/iteratedderiv-two-cgf--9ff57c80802f8d4c3d1f8c6b.md) | 203 | `result-track:9ff57c80802f8d4c3d1f8c6bc6c6e4554d651f2ad2cf8ae44b44ce62ffaf5e11` |
| 26 | `lemma` | [iteratedDeriv_two_cgf_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/iteratedderiv-two-cgf-eq-integral--56052233074e1c0f3fc442f1.md) | 239 | `result-track:56052233074e1c0f3fc442f1eeba52bcb0649b8bd1af344346524f7a7e9ce302` |
| 27 | `lemma` | [exists_cgf_eq_iteratedDeriv_two_cgf_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant85fbc15dcf645c75ee98df52e50ce055240baaea52508d953b50bea55f5cdae0.lean/declarations/exists-cgf-eq-iteratedderiv-two-cgf-mul--a3ebb1b2100ca95c0100dc57.md) | 278 | `result-track:a3ebb1b2100ca95c0100dc575a4fdef518d92641a7322b99bcdac9ccc7b50fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
