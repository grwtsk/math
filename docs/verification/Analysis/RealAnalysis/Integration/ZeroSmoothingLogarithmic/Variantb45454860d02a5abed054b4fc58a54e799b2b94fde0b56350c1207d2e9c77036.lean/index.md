# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingLogarithmic.Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d22fe14c9169496ed06f05f19616e857d9c9fc39",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d22fe14c9169496ed06f05f19616e857d9c9fc39`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/logarithmicweight--e31d9977957374b652aee93b.md) | 31 | `declaration-track:e31d9977957374b652aee93bb68e83f397ff61b4f3fcc5dd5657a4700db4e3ce` |
| 2 | `theorem` | [logarithmicWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/logarithmicweight-nonneg--ccec685b5c93053f90f9e7ff.md) | 34 | `result-track:ccec685b5c93053f90f9e7fff04462dc0afdfa9a4bd7d21d77e9e78dde29d322` |
| 3 | `theorem` | [source_fourier_smoothing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/source-fourier-smoothing--388056c7be24f8fddbc0772d.md) | 41 | `result-track:388056c7be24f8fddbc0772d99c7c8910e7137aa3728ffe59098e35e4b3e9c86` |
| 4 | `theorem` | [fourier_multiplier_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/fourier-multiplier-norm-le-one--b3cb28d5d9cb86795d9d7cf4.md) | 48 | `result-track:b3cb28d5d9cb86795d9d7cf4086c16ddda087281e6f988de017199b281b08d34` |
| 5 | `theorem` | [smoothed_fourier_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/smoothed-fourier-tendsto--cc1b53d9e67bf38a76da8a97.md) | 52 | `result-track:cc1b53d9e67bf38a76da8a97d9be86cad325039449a8744a974784a93e4dcbb6` |
| 6 | `theorem` | [weighted_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/weighted-error-le--f5ff10ed488be74c553974d1.md) | 62 | `result-track:f5ff10ed488be74c553974d1d1a1519073e3e74832e76d09d692c54a86799751` |
| 7 | `theorem` | [actual_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/actual-weighted-integrable--6e1235a7a67bfe750b095929.md) | 101 | `result-track:6e1235a7a67bfe750b0959295a91dc7edd28709cf750d025ab0b9d6a72bdde47` |
| 8 | `theorem` | [weighted_error_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/weighted-error-continuous--3557d802a03e9a6c571f4680.md) | 116 | `result-track:3557d802a03e9a6c571f4680323e0d6ffc1e03edb3e0c8a0e2d9e81bb4ba0262` |
| 9 | `theorem` | [weighted_error_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/weighted-error-integrable--be2f912c2301be2ec48c7f95.md) | 130 | `result-track:be2f912c2301be2ec48c7f9532afe11b1cf69d827a8f897139a07a3894e2cba6` |
| 10 | `theorem` | [weighted_error_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/weighted-error-tendsto--1a01edb1c6d0280a4f397dab.md) | 141 | `result-track:1a01edb1c6d0280a4f397dab033a6e088a7d7b423304bd9c03ac47ecab18747d` |
| 11 | `theorem` | [source_logarithmic_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/declarations/source-logarithmic-convergence--af35cfa62e98f2874f36c8bb.md) | 158 | `result-track:af35cfa62e98f2874f36c8bb4ac7a28a824c4c8ccb20afea9c4e908b53986535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
