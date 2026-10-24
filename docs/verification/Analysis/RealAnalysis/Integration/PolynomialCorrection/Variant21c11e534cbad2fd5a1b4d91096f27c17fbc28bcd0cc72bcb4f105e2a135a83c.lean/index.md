# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolynomialCorrection.Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06162b3e39a6c3bc5028be005ab91fdd65d9e049",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06162b3e39a6c3bc5028be005ab91fdd65d9e049`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/normalizationpolynomial--9ab766102aaab89c2f0fdf50.md) | 31 | `declaration-track:9ab766102aaab89c2f0fdf50303add56ab57be243347541571db829a74dfc2ac` |
| 2 | `theorem` | [normalizationPolynomial_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/normalizationpolynomial-eq--de942d636037d308dc0b33cf.md) | 37 | `result-track:de942d636037d308dc0b33cf3656b84c854ed1cc03455cddfc530f172122d0d9` |
| 3 | `theorem` | [normalizationPolynomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/normalizationpolynomial-zero--11f723fe4c45683cb7ba98a7.md) | 47 | `result-track:11f723fe4c45683cb7ba98a71a6b73488a432d38fd52b28edf5da5728a8df735` |
| 4 | `def` | [correctedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedsource--eaa750ff54d5dccbad5e395a.md) | 52 | `declaration-track:eaa750ff54d5dccbad5e395a3fa36390355b38729228b310aaae813a8f505d69` |
| 5 | `theorem` | [correctedSource_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedsource-zero--b71cbf8beac52cd0df067577.md) | 57 | `result-track:b71cbf8beac52cd0df067577ea7603063e71175045a954c4d70703364ef61893` |
| 6 | `theorem` | [corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/corrected-source-eq--b1d7056d01e2d40b25dc9ab2.md) | 62 | `result-track:b1d7056d01e2d40b25dc9ab2115e3fad2abbe47495649e704de0d31808e0fdf6` |
| 7 | `theorem` | [nonnegative_corrected_source_of_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/nonnegative-corrected-source-of-lower--603c9d78b648067ab800225a.md) | 69 | `result-track:603c9d78b648067ab800225a775fc306700005c1ac92a9a437957ef4b2859439` |
| 8 | `def` | [correctionKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctionkernel--2e2c7a67315529b0cd6ee60f.md) | 79 | `declaration-track:2e2c7a67315529b0cd6ee60f0973061430aa596dceab24c7a9bb65c6147f35f8` |
| 9 | `theorem` | [correctionKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctionkernel-zero--fa2f5fbc6c91dc3d3f2c18cd.md) | 85 | `result-track:fa2f5fbc6c91dc3d3f2c18cddf7fbeb23b22060d5037eb4fa6a36df8060b439f` |
| 10 | `theorem` | [weighted_correction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/weighted-correction-eq--770fe82ba6f5f42ebb8c6df7.md) | 90 | `result-track:770fe82ba6f5f42ebb8c6df71021c67346a8c023b4300456204d72e4967e4c75` |
| 11 | `theorem` | [correction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correction-integrable--515b48b187fe301ae7815ee9.md) | 100 | `result-track:515b48b187fe301ae7815ee95f7190ee74824a142e76d9ebc2f4cd786054e67b` |
| 12 | `theorem` | [integral_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/integral-correction--7bd8598580939b723d4c77b0.md) | 110 | `result-track:7bd8598580939b723d4c77b0d7facb161ae4a096619e357b14a5ad9438bc96fa` |
| 13 | `theorem` | [correctionKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctionkernel-analytic--cd463eec1ba95342eac1d2ca.md) | 132 | `result-track:cd463eec1ba95342eac1d2ca2537b3b37c9807e3369fb7d2014bcf1d486f7afa` |
| 14 | `def` | [correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedtransform--d2fff6bb2e29f306dde730c2.md) | 140 | `declaration-track:d2fff6bb2e29f306dde730c2262712128ad822ac96ae49a9149b3fbc53abe0e0` |
| 15 | `theorem` | [correctedTransform_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedtransform-zero--0c4f52f4bbf468f18a5e08f7.md) | 144 | `result-track:0c4f52f4bbf468f18a5e08f7c4e94473213f9024da26a8d38b378d1b5ba35ba5` |
| 16 | `theorem` | [weighted_corrected_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/weighted-corrected-source-eq--5d448526f65a16e5efef2c43.md) | 149 | `result-track:5d448526f65a16e5efef2c43e2895a5d9d49ae8eab3ffd7494423c2f70e50743` |
| 17 | `theorem` | [corrected_source_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/corrected-source-integrable--0ae327d04ed4f93ac11576e9.md) | 158 | `result-track:0ae327d04ed4f93ac11576e9fdbe83b0de76ec9074e5503cbba9175ddbad3ced` |
| 18 | `theorem` | [integral_corrected_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/integral-corrected-source--5df24e8238e2f4553736b875.md) | 167 | `result-track:5df24e8238e2f4553736b8757f7518315e98e0e1ed3fb3101f73a9c5b9f6aec1` |
| 19 | `theorem` | [correctedTransform_analytic_on_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedtransform-analytic-on-domain--01d1da6584c02b37ec8828f2.md) | 178 | `result-track:01d1da6584c02b37ec8828f281c8b326ac3e7343633255baad5c3782a78bbfeb` |
| 20 | `theorem` | [correctedTransform_meromorphic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedtransform-meromorphic--243bbd8eff65bd6d69cb9c1d.md) | 186 | `result-track:243bbd8eff65bd6d69cb9c1d4528c45ef1326cb7aaf7c7e0019c172589758aae` |
| 21 | `theorem` | [correctedTransform_analytic_positive_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/declarations/correctedtransform-analytic-positive-real--fd1cc05f418b300ae22a7915.md) | 196 | `result-track:fd1cc05f418b300ae22a7915f08c8877679710ded253fd9a402815e0ec84b782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
