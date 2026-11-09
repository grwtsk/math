# `GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_residual_ae_tendsto_zero`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FiniteFourierReadoutConvergence.lean](../FiniteFourierReadoutConvergence.lean), line 48.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/HarmonicAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean#L48).
- Declaration spelling: `GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_residual_ae_tendsto_zero` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/fpvandoorn/carleson/blob/52cba54d4b7b444e937c7abbc67835afa2a0bb16/Carleson/Classical/ClassicalCarleson.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "carleson",
      "project_subdir": "adapters/carleson",
      "path": "adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean",
      "declarations": [
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.countable_family_ae_convergence",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_readout_ae_convergence",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_residual_ae_tendsto_zero",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.unit_ball_residual_le_coordinate_sum",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_unit_ball_residual_ae_uniform",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.cutoff_dependent_unit_ball_residual_ae_tendsto_zero"
      ],
      "upstream": [
        {
          "repository": "fpvandoorn/carleson",
          "commit": "52cba54d4b7b444e937c7abbc67835afa2a0bb16",
          "source": "Carleson/Classical/ClassicalCarleson.lean",
          "blob": "cef99075c938b9a5351ef800b72e612345e4e071",
          "declarations": [
            "classical_carleson"
          ]
        }
      ],
      "hypotheses": "iota : Type u with Countable iota is included by the section instance. s : Finset iota is fixed (empty allowed). f : iota → Real → Complex; every f_i continuous and 2*pi-periodic for the a.e. theorems. Algebraic pointwise theorem uses no continuity/periodicity premise. Each row has sum_{i in s} norm(w_i) ≤1. For the varying-row theorem W : Nat → iota → Complex and this bound holds for every natural N; no convergence of W is assumed.",
      "conclusion": "For the fixed countable function family, the existing countable_family_ae_convergence supplies one Lebesgue-full-measure set. On that set the finite sum of coordinate residual norms tends to zero for fixed s. For every epsilon>0 there is a cutoff threshold (depending on x,epsilon,f,s, but not on coefficient row w) after which every l1-unit-ball row has actual weighted residual norm<epsilon. Therefore arbitrary cutoff-dependent rows W(N) in that ball have residual norm tending to zero. The SAME W(N) weights both the Fourier approximation sum and the moving reference sum W(N,i)*f_i(x). Oscillating W does not imply convergence of the readout itself. Qualitative finite-family uniformity only: no rate, no growing support/family, no uniformity in x or all continuous functions.",
      "use": "Actual continuous-periodic finite scalar-observation residual; a fixed support has a row-independent epsilon cutoff, so cutoff-dependent l1-unit-ball rows have residual tending to zero. Root cyclic-DFT representation comparison remains unsupplied.",
      "consumer_paths": [
        "GRWTSK.Analysis.FiniteSums.DiscreteFourierReadout.pairing_synthesis and .pairing_residual_eq in GRWTSK/RealFunctions/DiscreteFourierReadout.lean use the same finite coefficient-row observation shape. This new theorem is a continuous-periodic consumer, not a proved equivalence with the cyclic DFT."
      ],
      "paper_or_source": "A blueprint for the formalization of Carleson’s theorem on convergence of Fourier series; Lars Becker, María Inés de Frutos-Fernández, Leo Diedering, Floris van Doorn, Sébastien Gouëzel, Asgar Jamneshan, Evgenia Karunus, Edward van de Meent, Pietro Monticone, Jasper Mulder-Sohn, Jim Portegies, Joris Roos, Michael Rothgang, Rajula Srivastava, James Sundstrom, Jeremy Tan, Christoph Thiele (pinned formalization.yaml).",
      "stable_reference": "https://florisvandoorn.com/carleson/blueprint/",
      "license": "Apache-2.0",
      "missing_bridges": [
        "Exact finite cyclic-DFT/circle-Fourier representation comparison remains UNSUPPLIED.",
        "No common full-measure set for all continuous functions, no growing-family or infinite-sum interchange, no rate or practical performance assertion.",
        "No Carleson-Hunt Lp endpoint is consumed.",
        "No convergence of either moving readout is inferred from convergence of their residual."
      ],
      "trust_finding": "Upstream formalization.yaml reports carleson_hunt incomplete (sorry_count3; axioms include sorryAx); it is NOT consumed. It reports classical_carleson sorry_count0 and standard three axioms, which is an upstream status claim pending local audit.",
      "source_blob": "a803cf300e8a4987ddfc62ff0bc1985617fd4734",
      "source_sha256": "4d850625fca7f2912a398608da3778701b410e7d99d556f121d5579c418a8630",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED",
      "historical_source_scopes": [
        {
          "source_commit": "c8c8e2be5d5766ddc03b6f0e90f2f81de575eb13",
          "source_blob": "c2a19bae1774be37b2249df0b362e1aa40d78c38",
          "declarations": [
            "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.countable_family_ae_convergence",
            "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_readout_ae_convergence",
            "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence.finite_weighted_residual_ae_tendsto_zero"
          ],
          "verification": {
            "compilation": "NOT_RUN",
            "fresh_kernel_replay": "NOT_RUN",
            "complete_transitive_axiom_audit": "NOT_RUN",
            "expected_interface": "NOT_RUN"
          }
        }
      ],
      "source_commit": "fd6f3d97e80088c09262adbf5fa7ccce8467d504"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Upstream Carleson authorship and Apache-2.0 licensing remain in the pinned dependency. -/

/-!
# Almost-everywhere convergence for finite weighted Fourier observations

This is a continuous-periodic consumer of the finite scalar-observation shape
used by GRWTSK.RealFunctions.DiscreteFourierReadout. It is not an identification
between a finite cyclic DFT and real-line Fourier series. A countable family
shares one full-measure set; a finite weighted observation converges on that set.
The continuous classical theorem is used rather than the pinned incomplete
Carleson-Hunt Lp endpoint, whose metadata records sorryAx.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
