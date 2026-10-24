# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleGreenKernel.Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "005e8e7bfbd5f458ac2177350e9e8de76c1de9fa",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `005e8e7bfbd5f458ac2177350e9e8de76c1de9fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleArithmeticFunctional` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/polemode--a5758ac6e091c86ccb823bdf.md) | 22 | `declaration-track:a5758ac6e091c86ccb823bdf73e127b6d37f6336d45c8074b710554e10dc25da` |
| 2 | `theorem` | [pole_mode_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-mode-deriv--c0e7899df1c775532c9b2086.md) | 25 | `result-track:c0e7899df1c775532c9b2086cff0c3b186e833fcc1de92665a57bfefcee71279` |
| 3 | `theorem` | [pole_mode_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-mode-second-deriv--0743efe2875868d0606e9b85.md) | 36 | `result-track:0743efe2875868d0606e9b8557f7777bbb0d0d549b2dedd8074bf8099df2a013` |
| 4 | `theorem` | [pole_mode_fourth_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-mode-fourth-deriv--f537c2292fce0c4e5a5079f5.md) | 43 | `result-track:f537c2292fce0c4e5a5079f53307b6b71f62cfdbdf8914c02cfd252be194b3a0` |
| 5 | `theorem` | [pole_operator_mode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-operator-mode--ff9e6e99c0c5296d0797f54f.md) | 50 | `result-track:ff9e6e99c0c5296d0797f54f217b3e48dd628e1bb2f246f8df08fd09467c206b` |
| 6 | `theorem` | [pole_squared_operator_mode_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-squared-operator-mode-zero--5558f3329e3e3170fe90b4f0.md) | 59 | `result-track:5558f3329e3e3170fe90b4f0edb67381048e98c4ba4c9e4b1182a1fae22e8132` |
| 7 | `def` | [positiveGreenBranch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/positivegreenbranch--0ba7794a8f127e73c7bde61b.md) | 70 | `declaration-track:0ba7794a8f127e73c7bde61b732c059993a4bd348e3d8a51fbd5066ee085c63e` |
| 8 | `def` | [negativeGreenBranch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/negativegreenbranch--457641858e31ff3e8563865d.md) | 73 | `declaration-track:457641858e31ff3e8563865df6195bf6d1246c7f237854fbb9ec963a120ec77a` |
| 9 | `theorem` | [pole_squared_green_positive_branch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-squared-green-positive-branch--d7a218081de9b70fd9307a2f.md) | 76 | `result-track:d7a218081de9b70fd9307a2f857045fbabef7a474a64b0287e373782d5a2260a` |
| 10 | `theorem` | [pole_squared_green_negative_branch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/pole-squared-green-negative-branch--fa565763cfbb6da8923a364f.md) | 82 | `result-track:fa565763cfbb6da8923a364f5e4704a8ec4484ca4410d0d8a1b61ee9a4e31c9f` |
| 11 | `theorem` | [green_branches_homogeneous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/green-branches-homogeneous--8b40d28c08a0b682eece2d46.md) | 88 | `result-track:8b40d28c08a0b682eece2d466e7f21d7b9c6482029d2911f14c235f52d0122eb` |
| 12 | `theorem` | [green_branch_jets_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/green-branch-jets-at-zero--407d14816864b52dadd5d3a6.md) | 94 | `result-track:407d14816864b52dadd5d3a6722274afb03ff8c64fdae456fd88bb2004613c9e` |
| 13 | `def` | [poleBoundaryFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/poleboundaryflux--88ac30faab8b740386e6ca58.md) | 106 | `declaration-track:88ac30faab8b740386e6ca5897a715b6f4f3dccab2833df044a071106e7935ff` |
| 14 | `theorem` | [green_boundary_flux_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/declarations/green-boundary-flux-jump--55a465cf507afb7db37fafbc.md) | 110 | `result-track:55a465cf507afb7db37fafbcbe744927d1780608869b9f408f7bf25d0432fe20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
