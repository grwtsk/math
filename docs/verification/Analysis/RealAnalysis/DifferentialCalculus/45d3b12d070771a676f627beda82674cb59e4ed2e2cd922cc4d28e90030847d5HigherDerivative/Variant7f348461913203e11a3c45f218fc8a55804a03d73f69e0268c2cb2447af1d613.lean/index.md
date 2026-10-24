# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative.Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6952e30af9f85ba807b223f26b3fde71be8d6866",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6952e30af9f85ba807b223f26b3fde71be8d6866`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_thetaGaussianTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-thetagaussianterm--fd7f214611b36c678d20d99b.md) | 16 | `result-track:fd7f214611b36c678d20d99b79402c6b41df76ef6c45a71ce84c4efa7af7bacb` |
| 2 | `theorem` | [hasDerivAt_thetaGaussianSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-thetagaussiansum--ab964f9b6458a980b47bc626.md) | 30 | `result-track:ab964f9b6458a980b47bc6265fe31809d44813d7c06d973ba9547245e48924fc` |
| 3 | `theorem` | [thetaPhiRawD2_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/thetaphirawd2-eq-gaussians--36f80d5b8e92acf14ba10f8d.md) | 56 | `result-track:36f80d5b8e92acf14ba10f8dbbe4e831f3f39ac2a05bd55f8d5e0fcf5af38e8d` |
| 4 | `def` | [thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/thetaphirawd3--54952265738617b07b33d8d6.md) | 78 | `declaration-track:54952265738617b07b33d8d6649ea5bf2ea6c23284a10aaea3478c10a6c58614` |
| 5 | `def` | [thetaPhiRawD4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/thetaphirawd4--406c6f9c8f0335c803de8874.md) | 86 | `declaration-track:406c6f9c8f0335c803de8874d1710f50f20b67530997f9a81035a498cae8dbcb` |
| 6 | `theorem` | [hasDerivAt_thetaPhiRawD2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-thetaphirawd2--41b418dbd3aa444b60acf696.md) | 94 | `result-track:41b418dbd3aa444b60acf6965c00ada58e1f860fe77e274ec516cee2e71fb571` |
| 7 | `theorem` | [hasDerivAt_thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-thetaphirawd3--42d3f07d6abcb6151c1b6caf.md) | 109 | `result-track:42d3f07d6abcb6151c1b6cafd4197c7d06837dd58c57e68e1a9a9db3d04894dd` |
| 8 | `theorem` | [deriv_deriv_thetaPhi_eq_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/deriv-deriv-thetaphi-eq-raw--c6d0800d23412da00f5fa593.md) | 120 | `result-track:c6d0800d23412da00f5fa593664104889fb4bacc18689274a277f5b0a9622a52` |
| 9 | `theorem` | [hasDerivAt_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-deriv-deriv-thetaphi--40082059132f96ccbd79745d.md) | 125 | `result-track:40082059132f96ccbd79745d432e6abe2c4fe5ca642778300b9255d89e5151ff` |
| 10 | `theorem` | [hasDerivAt_deriv_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/hasderivat-deriv-deriv-deriv-thetaphi--909b010620ae50727d098f4c.md) | 130 | `result-track:909b010620ae50727d098f4c1770332ed80081c47b64571cb7accccef10b51fe` |
| 11 | `theorem` | [thetaGaussianSum_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/thetagaussiansum-poly-tendsto-attop--2a548d2f478e5942bcc64cc2.md) | 137 | `result-track:2a548d2f478e5942bcc64cc2dcba06fdd76df69ec6092999e5058af305f54b26` |
| 12 | `theorem` | [deriv_thetaPhi_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/deriv-thetaphi-poly-tendsto-attop--1170939ed70dcfec8ae795ea.md) | 148 | `result-track:1170939ed70dcfec8ae795ea612c5f0e6bc90c0d6f907821eb9acc4696b9ec76` |
| 13 | `theorem` | [deriv_deriv_thetaPhi_poly_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/declarations/deriv-deriv-thetaphi-poly-integrableon--f9f6d8bf5d9860fd8dfcd20c.md) | 159 | `result-track:f9f6d8bf5d9860fd8dfcd20c181a3738d96fd978de82e28b5c7dadc1a69b7013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
