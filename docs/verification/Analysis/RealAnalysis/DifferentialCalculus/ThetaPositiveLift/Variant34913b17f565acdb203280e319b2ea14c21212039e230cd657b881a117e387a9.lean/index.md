# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "195b8c00db2cec0332eedd0ed00f81067ba295e5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `195b8c00db2cec0332eedd0ed00f81067ba295e5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedJetCriterion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiDerivativeStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativestep--72944be486435683f3f97c84.md) | 42 | `declaration-track:72944be486435683f3f97c84a91a576229135aaef4c06bffb84e33535a537879` |
| 2 | `theorem` | [thetaPhiDerivativeStep_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativestep-add--71b388c56533014b90ece925.md) | 48 | `result-track:71b388c56533014b90ece925075db5a2e25bf0d1866243ed7ed24a843804ee58` |
| 3 | `theorem` | [thetaPhiDerivativeStep_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativestep-monomial--7aa1a4516caf5a15f3a38a5e.md) | 59 | `result-track:7aa1a4516caf5a15f3a38a5e00313873eba4c3b4456f1e13a98db82a4f25ab54` |
| 4 | `theorem` | [thetaPhiDerivativeStep_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativestep-eval--49f229d7f457152273075cd7.md) | 68 | `result-track:49f229d7f457152273075cd7f4b404d0de1040f3b73b7a7f48f7a9f5dc701217` |
| 5 | `def` | [thetaPhiDerivativePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativepolynomial--59cbbc9028df668614b167da.md) | 89 | `declaration-track:59cbbc9028df668614b167daf3eeff29bc149c3e953158eb4f5d2c9bc19facf0` |
| 6 | `theorem` | [thetaPhiDerivativePolynomial_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativepolynomial-zero-eval--a7be19212a8f75dac4c2bfb3.md) | 97 | `result-track:a7be19212a8f75dac4c2bfb3378ce24fb20771353328aab9eb77d2673fcbb12f` |
| 7 | `theorem` | [thetaPhiDerivativePolynomial_succ_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativepolynomial-succ-eval--3cd998bcbbf4d853422e6927.md) | 104 | `result-track:3cd998bcbbf4d853422e69276d25f404120b064f91e258082ea6f3d4a79c7801` |
| 8 | `def` | [thetaPhiGaussianLift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphigaussianlift--025f60de6944972b925951c6.md) | 113 | `declaration-track:025f60de6944972b925951c684069f37df832cae9a266dd6991862e8e79a0ea8` |
| 9 | `theorem` | [thetaPhiGaussianLift_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphigaussianlift-add--0ec5e69bce6aedfe693b9969.md) | 120 | `result-track:0ec5e69bce6aedfe693b9969a984bd4db164570732e62dabcd0c6673032c9780` |
| 10 | `theorem` | [thetaPhiGaussianLift_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphigaussianlift-monomial--4f793e3cdd839fb96e4cf95d.md) | 133 | `result-track:4f793e3cdd839fb96e4cf95d9507e4b2feb1173318d5201cdae14a5ddcc311cb` |
| 11 | `theorem` | [hasDerivAt_thetaPhiGaussianLift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/hasderivat-thetaphigaussianlift--3741f77f3629deb8c329fe29.md) | 144 | `result-track:3741f77f3629deb8c329fe29c7cf40d1b5fe384feac49399d25ad007830d5da7` |
| 12 | `def` | [thetaPhiDerivativeTapeValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue--68ba2f41074ccfcc59beb6af.md) | 185 | `declaration-track:68ba2f41074ccfcc59beb6af6196d576f69d753498d674b5a5d9c67d36d6cba2` |
| 13 | `theorem` | [hasDerivAt_thetaPhiDerivativeTapeValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/hasderivat-thetaphiderivativetapevalue--7ca0cdb73854cc3845ccc8dc.md) | 190 | `result-track:7ca0cdb73854cc3845ccc8dc590250e5019b8ad237aa36dfb8704b8356099f52` |
| 14 | `theorem` | [thetaPhiDerivativeTapeValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-zero--3d9239f04be001808a0c4290.md) | 199 | `result-track:3d9239f04be001808a0c42904227fbf9c2a15f3cbe3d8039b3527b5a16851f5b` |
| 15 | `def` | [thetaPhiInfiniteSourceJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiinfinitesourcejet--62118d76f2f28d3f513d096d.md) | 236 | `declaration-track:62118d76f2f28d3f513d096d82a5162223cc40f2226c5639b4c0d2f2dda54c9a` |
| 16 | `theorem` | [thetaPhiDerivativeTapeValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-one--7ca323f43fecf7a6bbfdff08.md) | 243 | `result-track:7ca323f43fecf7a6bbfdff0844126ce80e740309d956abe1f5d49172e037381e` |
| 17 | `theorem` | [thetaPhiDerivativeTapeValue_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-two--1d3af20416b7c869a9221c4c.md) | 252 | `result-track:1d3af20416b7c869a9221c4c48ea93d6a91d3b934b45dcbf15a32591eaf39e8c` |
| 18 | `theorem` | [thetaPhiDerivativeTapeValue_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-three--3519885567f03a3b5d64f54a.md) | 261 | `result-track:3519885567f03a3b5d64f54ace6ff561e89bab422a7df6b264cc4121333a46f5` |
| 19 | `theorem` | [thetaPhiDerivativeTapeValue_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-four--3e86a87971d07180b86bfd38.md) | 270 | `result-track:3e86a87971d07180b86bfd38eb3c6b8ae17787dfe0e201e4c88c58179d1bac31` |
| 20 | `theorem` | [thetaPhiDerivativeTapeValue_five](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-five--abcc8067ec49459f22bf6765.md) | 279 | `result-track:abcc8067ec49459f22bf67656b11de46f6eeefc518e8412fd41286d8f8ca6109` |
| 21 | `theorem` | [thetaPhiDerivativeTapeValue_six](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiderivativetapevalue-six--83ea6a0819d100036c77d8fc.md) | 288 | `result-track:83ea6a0819d100036c77d8fc546d0f0ef31a835587c163745184d642ca1b9d18` |
| 22 | `theorem` | [thetaPhiInfiniteSourceJet_prefix7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/declarations/thetaphiinfinitesourcejet-prefix7--c47ce0c8a417bd139f3a1a49.md) | 297 | `result-track:c47ce0c8a417bd139f3a1a49a512c4944f8650418acfb10c00f005d9d1b9161c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
