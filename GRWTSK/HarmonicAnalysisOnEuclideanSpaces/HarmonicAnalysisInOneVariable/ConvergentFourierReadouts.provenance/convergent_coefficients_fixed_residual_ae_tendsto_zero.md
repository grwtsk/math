# `GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts.convergent_coefficients_fixed_residual_ae_tendsto_zero`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ConvergentFourierReadouts.lean](../ConvergentFourierReadouts.lean), line 62.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/HarmonicAnalysisInOneVariable/ConvergentFourierReadouts.lean#L62).
- Declaration spelling: `GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts.convergent_coefficients_fixed_residual_ae_tendsto_zero` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/HarmonicAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean)

- [Pinned upstream source](https://github.com/fpvandoorn/carleson/blob/52cba54d4b7b444e937c7abbc67835afa2a0bb16/Carleson/Classical/ClassicalCarleson.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "carleson",
      "project_subdir": "adapters/carleson",
      "path": "adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/ConvergentFourierReadouts.lean",
      "source_commit": "4edb8f1f095048b162361a5e4da25f8fcea2cca8",
      "source_blob": "60d962300a1ef348e196546bc527598abd0605c9",
      "source_sha256": "81d595d9a01926cf7131d6b89f9959e0d2463918d3732f68b5fbc26f53191cd3",
      "declarations": [
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts.convergent_coefficients_readout_ae",
        "GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts.convergent_coefficients_fixed_residual_ae_tendsto_zero"
      ],
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "hypotheses": {
        "fixed_data": "iota:Type u with Countable iota; one fixed family f:iota→Real→Complex with every f_i continuous and Function.Periodic(f_i)(2*Real.pi), all before the Lebesgue-a.e. event.",
        "inside_one_event": "For every finite s:Finset iota, every W:Nat→iota→Complex and w:iota→Complex, assume ∀i∈s, Tendsto(fun N=>W N i) atTop (nhds(w i)). These choices occur AFTER x in the a.e. predicate; no uncountable intersection of separate a.e. events is used.",
        "support_and_domain": "s is fixed as N:Nat tends atTop. Empty support and a countably infinite ambient index type are allowed. Coefficient convergence is required only on s.",
        "coefficient_bound": "No l1-unit-ball or uniform row bound is assumed. Actual coefficientwise convergence is an explicit premise; the theorem constructs no convergent coefficient family."
      },
      "conclusion": {
        "readout": "On that one event, sum_{i∈s} W(N,i)*partialFourierSum N(f_i)(x) tends in Complex to the FIXED limiting-weight readout sum_{i∈s}w(i)*f_i(x).",
        "fixed_residual": "The norm of the difference between that actual moving-coefficient Fourier readout and the SAME fixed limiting-weight reference tends to zero in Real.",
        "quantifier_boundary": "The event depends only on the fixed countable function family. Cutoffs/moduli may depend on x,s,W,w and their convergence; no cutoff uniform over all convergent rows/supports/x is supplied."
      },
      "use": "Extend the existing isolated finite Fourier readout consumer from residuals against a moving row to actual readout convergence at a fixed limiting row, under explicit selected-coordinate convergence.",
      "consumer_paths": [
        "adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean"
      ],
      "consumer_source_commit": "4edb8f1f095048b162361a5e4da25f8fcea2cca8",
      "consumer_source_blob": "a803cf300e8a4987ddfc62ff0bc1985617fd4734",
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
      "native_pins": {
        "toolchain": "leanprover/lean4:v4.36.0-rc1",
        "upstream_toolchain_blob": "d0cf8c526254da3dafe6b3d635ee9d60f126c29b",
        "adapter_toolchain_blob": "2afd38716ad6182657562d3dac3c98461c1385f2",
        "byte_difference": "Adapter adds a final LF; semantic toolchain string unchanged.",
        "mathlib": "d88814353fcbcc0461c55b2a4585d3f44d903df1",
        "config_blob": "c897eaa77763f6de8d5dca5a8b81a033382617c1",
        "manifest_blob": "9f38271b66d6673f6a77766370ecd77b443a7d5f",
        "upstream_lock_revisions": [
          {
            "name": "checkdecls",
            "url": "https://github.com/PatrickMassot/checkdecls.git",
            "rev": "3d425859e73fcfbef85b9638c2a91708ef4a22d4"
          },
          {
            "name": "mathlib",
            "url": "https://github.com/leanprover-community/mathlib4.git",
            "rev": "d88814353fcbcc0461c55b2a4585d3f44d903df1"
          },
          {
            "name": "plausible",
            "url": "https://github.com/leanprover-community/plausible",
            "rev": "c2d7840c65673533e15b499f25beecdc6227f7d8"
          },
          {
            "name": "LeanSearchClient",
            "url": "https://github.com/leanprover-community/LeanSearchClient",
            "rev": "9d39f9bb0c30aa2f6200808805ff16e6ce950890"
          },
          {
            "name": "importGraph",
            "url": "https://github.com/leanprover-community/import-graph",
            "rev": "19a8e822bfeace1ae4e090045aad81e0c930e6cf"
          },
          {
            "name": "proofwidgets",
            "url": "https://github.com/leanprover-community/ProofWidgets4",
            "rev": "eef6bb95363c38103535ac2df08b6bb141f0a764"
          },
          {
            "name": "aesop",
            "url": "https://github.com/leanprover-community/aesop",
            "rev": "29c64c56cc38211d39b306db2df11701e3d3de11"
          },
          {
            "name": "Qq",
            "url": "https://github.com/leanprover-community/quote4",
            "rev": "6d26f8bb4b2bb78f929ad160feac508866821316"
          },
          {
            "name": "batteries",
            "url": "https://github.com/leanprover-community/batteries",
            "rev": "8e746d768c73b716c7d4bc07bd8e73f2a75bdb60"
          },
          {
            "name": "Cli",
            "url": "https://github.com/leanprover/lean4-cli",
            "rev": "34d2efffcb6dc8d5f3537cf6a7f88bfaa999ec49"
          }
        ],
        "all_ten_retained_exactly_in_adapter": true,
        "upstream_own_effectful_post_update": false,
        "hook_execution": false,
        "root_version_transport": "UNSUPPLIED: root4.34.1 not imported/promoted/upgraded.",
        "adapter_config_blob": "cbcc40fd07a5a9da2c9e734ec957fb2428cfc9bc",
        "adapter_manifest_blob": "985f1cbbd53e8622035fc8efc19ae6761d9aeba5"
      },
      "paper_or_source": {
        "title": "A blueprint for the formalization of Carleson’s theorem on convergence of Fourier series",
        "authors": [
          "Lars Becker",
          "María Inés de Frutos-Fernández",
          "Leo Diedering",
          "Floris van Doorn",
          "Sébastien Gouëzel",
          "Asgar Jamneshan",
          "Evgenia Karunus",
          "Edward van de Meent",
          "Pietro Monticone",
          "Jasper Mulder-Sohn",
          "Jim Portegies",
          "Joris Roos",
          "Michael Rothgang",
          "Rajula Srivastava",
          "James Sundstrom",
          "Jeremy Tan",
          "Christoph Thiele"
        ],
        "url": "https://florisvandoorn.com/carleson/blueprint/",
        "version": "Exact Git52cba54d; source LaTeX date is today, so no immutable publication year/date inferred.",
        "title_source_blob": "986ebbf96b6a42a1941ef60c96b2110b18ff10f3",
        "byline_source_blob": "9e3f0dc048f47aa5a5fb63f05c04c2e02a0ba426",
        "role": "Pinned blueprint statement/proof provenance; no new numbered paper mapping. Project byline is not asserted to be the byline of a headerless individual Lean file."
      },
      "upstream_comparator_policy": {
        "blob": "77d8ba98dabd1f8ec2c13eeefd4f10d8ce3e21cf",
        "theorem_names": [
          "classical_carleson'",
          "metric_carleson''",
          "linearized_metric_carleson'"
        ],
        "permitted_axioms": [
          "propext",
          "Quot.sound",
          "Classical.choice"
        ],
        "enable_nanoda": false,
        "execution": "NOT_RUN; upstream README commands are not local receipts."
      },
      "root_motivation_and_missing_transport": {
        "source_commit": "8393c15741bcabc40ed1a2b64bed88b498c99db9",
        "namespace": "GRWTSK.Analysis.FiniteSums.DiscreteFourierReadout",
        "path": "GRWTSK/RealFunctions/DiscreteFourierReadout.lean",
        "blob": "3f33ba2da169c76f021c899760245cc78db17f17",
        "declarations": [
          "pairing_synthesis",
          "pairing_eq_modes",
          "pairing_residual_eq",
          "norm_pairing_residual_le",
          "pairing_residual_sq_le"
        ],
        "observation": "Finite complex coefficient row is combined before transformation and before error norms.",
        "support_source": "GRWTSK/RealFunctions/DiscreteFourierSynthesis.lean blobcce77d168c255970646a690b6ce76d4c271adc3f defines finite ZMod D coefficient/frequency and exact inversion.",
        "missing_bridge": "UNSUPPLIED: finite ZMod D negative-sign normalized DFT vs continuous AddCircle2pi real-line Fourier series, including exact observation map/normalization/version comparison. No direct root import or claimed cross-representation theorem.",
        "other_inspected_source": "WeightedResidualReadout.readout_vanishes_of_mass uses real mass budgets and separate readout identities; those source/model/mass suppliers are not produced by this complex Fourier limit."
      },
      "license": "Apache-2.0; public Carleson/Mathlib authorship and upstream notices preserved; local attribution grwtsk contributors.",
      "profile_sha256": "f81ddd06d7712ea02418d8c37ec5e4fd1238e4c7a12afb84022de24a2452d1d6",
      "verification": {
        "toolchain_core_qualification": "NOT_RUN",
        "compilation": "NOT_RUN",
        "comparator": "NOT_RUN",
        "expected_interface": "NOT_RUN",
        "complete_module_discovery": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "host_resource_restoration": "NOT_RUN",
        "second_independent_checker": "UNSUPPLIED"
      },
      "independent_checker": "UNSUPPLIED",
      "missing_bridges": [
        "The coefficient convergence premise is not constructed; an l1-unit-ball bound alone supplies neither it nor convergence of the moving readout.",
        "No support varying with N, infinite-sum interchange, uniform rate/cutoff over all rows/supports/x, or one common event for all continuous function families.",
        "Root finite cyclic-DFT versus continuous AddCircle(2*pi)/real-line Fourier series map, sign/normalization and native4.36→root4.34.1 version comparison remain UNSUPPLIED; no root import/dependency promotion.",
        "Generic Carleson-Hunt Lp/strong-type sorryAx routes are excluded; upstream status claims and source reviews are not local transitive axiom acceptance.",
        "Supported exact4.36.0-rc1 toolchain/core qualification, full source/asset closure, fresh registry/native/type/census/axiom/replay/restoration evidence and a second independent checker remain required."
      ]
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Imported Carleson and Mathlib source keeps its public authorship and Apache-2.0 notices. -/

/-!
# Actual finite Fourier readout limits with convergent coefficient rows

The existing countable continuous-periodic family has one Lebesgue-full-measure
set of coordinate convergence. On that same set, products of convergent scalar
coefficients with the Fourier coordinates converge, and finite summation gives
the actual readout limit with the limiting coefficients.

The full-measure event is before all choices of finite support, coefficient
sequences and limiting rows. Each support is fixed as the Fourier cutoff varies;
the coefficient convergence premise is required only on that support. No l1
bound on the rows is needed. Empty support is included. The eventual cutoff may
depend on x, the support, the rows and their convergence, so no uniform rate over
convergent rows, growing-support result or infinite-sum interchange is supplied.

This advances the existing actual scalar-observation consumer: a residual against
its own moving coefficient row can vanish while the readout oscillates. Here an
explicit coefficient-convergence premise instead gives a fixed limiting readout.
Coefficient convergence is a premise for each selected row; the theorem constructs
no convergent coefficient family. The fixed countable function family
remains outside the a.e. quantifier; there is no common set for all continuous
functions and no finite cyclic-DFT/real-line Fourier-series representation bridge.

The selected endpoint is the pinned continuous classical Carleson theorem,
not the incomplete Carleson-Hunt Lp endpoint. The old six-root module is imported
without editing its source or historical verification scope. The native isolated
package retains Lean 4.36.0-rc1 and Mathlib d88814353fcbcc0461c55b2a4585d3f44d903df1.
SOURCE_PROOF_CANDIDATE: compilation, literal expected-interface checks, fresh
independent kernel replay and complete transitive axiom audit remain NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
