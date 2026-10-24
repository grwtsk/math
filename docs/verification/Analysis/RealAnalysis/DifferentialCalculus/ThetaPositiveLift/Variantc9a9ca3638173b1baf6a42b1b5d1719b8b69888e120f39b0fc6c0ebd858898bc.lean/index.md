# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a37aacc165cd26eff3b8ab34ab3a023b216e1e7a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_thetaGaussianTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-thetagaussianterm--069c547d5b185551e457cdec.md) | 22 | `result-track:069c547d5b185551e457cdec926b6a70dda7042d612b7ab2ef02201cdc8186c3` |
| 2 | `theorem` | [hasDerivAt_thetaGaussianSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-thetagaussiansum--5b4679c49ea18d0df8b9209b.md) | 36 | `result-track:5b4679c49ea18d0df8b9209beada0f5bf86cd416ab991b2fe9d1875811bfd710` |
| 3 | `theorem` | [thetaPhiRawD2_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphirawd2-eq-gaussians--d380507d8a112db2546d54c3.md) | 62 | `result-track:d380507d8a112db2546d54c3327a259f0c994692563a0193525b8e5fb3a87e24` |
| 4 | `def` | [thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphirawd3--3fb016cd6eeb863bb2b7e13a.md) | 84 | `declaration-track:3fb016cd6eeb863bb2b7e13a66ce0b6a803cad844da6710eff151f32b51adb1c` |
| 5 | `def` | [thetaPhiRawD4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphirawd4--559a70c8609fac8068cf195f.md) | 92 | `declaration-track:559a70c8609fac8068cf195f769e0033031d11aa41d7b196f04012959b12e290` |
| 6 | `theorem` | [hasDerivAt_thetaPhiRawD2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-thetaphirawd2--d21c67599877607f4865f0fe.md) | 100 | `result-track:d21c67599877607f4865f0fead88d0f1e333fcef55df8f7399dc1ecffa9ed662` |
| 7 | `theorem` | [hasDerivAt_thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-thetaphirawd3--e5697c02bc093e5dfa1f7e76.md) | 115 | `result-track:e5697c02bc093e5dfa1f7e76f797131f0daaec68ec1ee7f63e917101bf543c8d` |
| 8 | `theorem` | [deriv_deriv_thetaPhi_eq_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/deriv-deriv-thetaphi-eq-raw--bf4287fcd93ea5c6728ca043.md) | 126 | `result-track:bf4287fcd93ea5c6728ca04357ddb4e0b349370b2d32999939cc18840e056e20` |
| 9 | `theorem` | [hasDerivAt_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-deriv-deriv-thetaphi--4accbe846c4d853a69a9cad9.md) | 131 | `result-track:4accbe846c4d853a69a9cad9ae2ebea104f10af980066fec9faaed502812dea9` |
| 10 | `theorem` | [hasDerivAt_deriv_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-deriv-deriv-deriv-thetaphi--72f45c74085d12953ee2c1a2.md) | 136 | `result-track:72f45c74085d12953ee2c1a2a703a1d578abfe75709b950b6d58776de0cba6b8` |
| 11 | `theorem` | [thetaGaussianSum_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetagaussiansum-poly-tendsto-attop--3816bcb6fac2ed94ac70c206.md) | 143 | `result-track:3816bcb6fac2ed94ac70c206c22f05e9308beadebe1f232506be5de04ef01ea5` |
| 12 | `theorem` | [deriv_thetaPhi_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/deriv-thetaphi-poly-tendsto-attop--9033b77f617dfbf826785e76.md) | 154 | `result-track:9033b77f617dfbf826785e76d84769206c9e2096c83d88ac1e7ffc37c2071790` |
| 13 | `theorem` | [deriv_deriv_thetaPhi_poly_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/deriv-deriv-thetaphi-poly-integrableon--d72088f3968c80698f9e0ed2.md) | 165 | `result-track:d72088f3968c80698f9e0ed213a1af19d02d7af078c137788dac7d078e34037a` |
| 14 | `def` | [jetCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/jetcoefficient--0e27ec1102b36b19cdfbd58f.md) | 178 | `declaration-track:0e27ec1102b36b19cdfbd58f0e0a95cdfe90e12b4d97930a3b35950ab4f68a74` |
| 15 | `theorem` | [jetPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/jetpolynomial-eq-sum--357ca681934fcd2229b54115.md) | 183 | `result-track:357ca681934fcd2229b541158b8e6bc9edb2620c527baab448d744d4c8c07ba8` |
| 16 | `def` | [thetaPhiJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphijet--90e158e4e9d0316c28244645.md) | 188 | `declaration-track:90e158e4e9d0316c282446457a75fd4faea5c4463aaf06993aab08ba92950296` |
| 17 | `theorem` | [thetaPhi_eq_gaussianSums](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphi-eq-gaussiansums--48de63c330b05aabb39e25e1.md) | 191 | `result-track:48de63c330b05aabb39e25e185c886c23a6895bb44d9b9d93cb00e292c1caa65` |
| 18 | `theorem` | [thetaPhiJet_eq_gaussianSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphijet-eq-gaussiansum--c7555fc6f1302d456514c1e5.md) | 207 | `result-track:c7555fc6f1302d456514c1e57b3e804d720b47750bf1ea91c0ef7dc849204917` |
| 19 | `theorem` | [scaledGaussianTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/scaledgaussianterm-eq--15c8a83de49cfb7630e63e8f.md) | 215 | `result-track:15c8a83de49cfb7630e63e8fea9e16a7c8aae29a65d9ec99a7961e0e4f5b2086` |
| 20 | `theorem` | [thetaPhiJet_eq_polynomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphijet-eq-polynomial-sum--4505bcec2beb40d46b97d020.md) | 246 | `result-track:4505bcec2beb40d46b97d020d07c2fe4d330ea5522f2d8a4d0085d4ebf8d789e` |
| 21 | `theorem` | [thetaPhiJet_polynomial_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/thetaphijet-polynomial-summable--c559bca4e3f819bd476f2416.md) | 278 | `result-track:c559bca4e3f819bd476f241622e3ed2681518ecd3b10806f5d8158f163f34213` |
| 22 | `theorem` | [hasDerivAt_thetaPhiJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/declarations/hasderivat-thetaphijet--cb2983ef38f42155e81d56ff.md) | 297 | `result-track:cb2983ef38f42155e81d56ff1f328008a73ad3f35398cb5254bd083360b3dcaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
