# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01720d874844e3cb7f7e4c44f38a7a2875d4019e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01720d874844e3cb7f7e4c44f38a7a2875d4019e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_thetaPhi_poly_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/deriv-thetaphi-poly-integrableon--5d13c96aa69781300d7df135.md) | 33 | `result-track:5d13c96aa69781300d7df13535e9cac2f307a8e0948e985fc3b5d245b20a7405` |
| 2 | `theorem` | [thetaPhi_deriv_mul_sub_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetaphi-deriv-mul-sub-integrableon--08eb8756dba89dadfbb7f266.md) | 45 | `result-track:08eb8756dba89dadfbb7f266ed14aa0a6dc852e395f906e667b4b4887a5fde11` |
| 3 | `theorem` | [thetaPhi_mul_sub_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetaphi-mul-sub-tendsto-attop--9349a8b39802aebb9a3ed031.md) | 58 | `result-track:9349a8b39802aebb9a3ed03199cc65579758a961022fd1e367f3e120bf724d3c` |
| 4 | `theorem` | [thetaPhi_logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetaphi-logslope-cross-nonnegative--76e01306d062e0c895b63fbf.md) | 75 | `result-track:76e01306d062e0c895b63fbf9ce383872fe6dafe5e6c542a910b776c9e142c67` |
| 5 | `theorem` | [thetaPhi_deriv_mul_sub_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetaphi-deriv-mul-sub-integral--70e1cee7ea051f92497e237a.md) | 83 | `result-track:70e1cee7ea051f92497e237ac63b8cf542cd4861768402569d0742a2d599e127` |
| 6 | `theorem` | [thetaTail_two_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetatail-two-logslope-identity--1021e6d3cb510715b2dd9fa1.md) | 103 | `result-track:1021e6d3cb510715b2dd9fa19325b9a148f0b585375c6c40a320d62eb14e23a4` |
| 7 | `theorem` | [thetaTail_two_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetatail-two-logslope-nonnegative--861a74e1b055c93bb5f5fd7e.md) | 124 | `result-track:861a74e1b055c93bb5f5fd7e05b9fa3f5e6a71707429001982c6b531d949e788` |
| 8 | `theorem` | [hasDerivAt_thetaTail_two_div_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/hasderivat-thetatail-two-div-thetaphi--97fd92a5a153aa3f43deb525.md) | 131 | `result-track:97fd92a5a153aa3f43deb525f8182b61583beb4fdfca0230c0c352181acb86b6` |
| 9 | `theorem` | [thetaTail_two_div_thetaPhi_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetatail-two-div-thetaphi-deriv-nonpos--c44e65911fb8274e14f64b0b.md) | 141 | `result-track:c44e65911fb8274e14f64b0b65a8c720fb4441adc41cd176d753acc4f77dba7c` |
| 10 | `theorem` | [thetaTail_two_div_thetaPhi_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetatail-two-div-thetaphi-antitone--371d1f097c9057117aee1d94.md) | 148 | `result-track:371d1f097c9057117aee1d9465f97c6fc966dcd5a104ea0cd59c25cd0ef4e342` |
| 11 | `theorem` | [thetaTailSignRegular_two_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/declarations/thetatailsignregular-two-zero-one--34a11909d5e349f1dc14e0f5.md) | 160 | `result-track:34a11909d5e349f1dc14e0f5e14ded07101461a70ed42e5dbd2e1f0c7dd237c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
