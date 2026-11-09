# `GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts.exists_uniform_weighted_zero_count_readout_bound`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [PrimitiveCharacterZeroCountReadouts.lean](../PrimitiveCharacterZeroCountReadouts.lean), line 59.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimitiveCharacterZeroCountReadouts.lean#L59).
- Declaration spelling: `GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts.exists_uniform_weighted_zero_count_readout_bound` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LocalCountChi.lean)

- [Pinned upstream source](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/ThmE/LocalCountChi.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "anthropic-math",
      "project_subdir": "adapters/anthropic-math/zeta23",
      "path": "adapters/anthropic-math/zeta23/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimitiveCharacterZeroCountReadouts.lean",
      "source_commit": "63ea24924f18f87132e153ef59fb02c0e9aa314b",
      "source_blob": "98f0405c0218b9839a46bf664df20d9d1b31e36a",
      "source_sha256": "f065bce8b7dc2abbf6c7a09e2c9f57368e173202b4c9c2d1f226505b89ee1cf7",
      "declarations": [
        "GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts.exists_uniform_weighted_zero_count_readout_bound",
        "GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts.exists_uniform_normalized_zero_count_readout_bounds"
      ],
      "upstream": [
        {
          "repository": "https://github.com/anthropics/formal-math",
          "commit": "16a5ce41304fcdaea4e0be7c132e1c361dc26da5",
          "declaration": "Zeta23.ThmE.localCountChi_uniform_proof",
          "path": "zeta23/Zeta23/ThmE/LocalCountChi.lean",
          "git_blob": "603d34e2374063f482905e72c84e5666f23275ad",
          "counting_declaration": "Zeta23.ThmE.NcountL",
          "counting_path": "zeta23/Zeta23/ThmE/Statement.lean",
          "counting_blob": "1aaec6accad36bad8fb204a4b974a58524d3bc98",
          "Lean": "leanprover/lean4:v4.33.0-rc2",
          "Mathlib": "51e6992efd06126df61a496bebf8f49482a4e129",
          "explicit_mathlib_norm_import": "Mathlib.Analysis.Complex.Norm"
        }
      ],
      "paper_or_source": {
        "title": "More than two thirds of the zeta zeros are simple and on the critical line",
        "authors": [
          "Levent Alpöge",
          "Ralph Furman"
        ],
        "arxiv": "2608.13637v2",
        "version_date": "2026-08-19",
        "first_submission": "2026-08-13",
        "url": "https://arxiv.org/abs/2608.13637v2",
        "mapping_scope": "Package companion identity from upstream README/formalization metadata and root primary-source recheck. Consumed theorem is the source-internal local Jensen-count method, not a headline proportion theorem."
      },
      "upstream_authorship_license": {
        "formalization_author_metadata": "Claude",
        "copyright": "2026 Anthropic, PBC",
        "license": "Apache-2.0",
        "notice": "adapters/anthropic-math/zeta23/UPSTREAM-NOTICE retains modified PNT+ vendor provenance and Mathlib/dependency notices. No vendor source changed."
      },
      "hypotheses": "One A>=1 precedes every modulus q [NeZero q], q>1, every index Typeu and finite family S of selected primitive Dirichlet characters at that common q, every real t and complex coefficient row K. Primitivity is needed only on S; q need not be prime.",
      "conclusion": {
        "raw": "norm(sum_{i in S} K_i * (NcountL chi_i t (t+1) : Complex)) <= A * log(q*(abs(t)+3)) * sum_{i in S} norm(K_i)",
        "normalized": "log(q*(abs(t)+3)) is positive, and sum norm(K_i)<=1 implies norm(raw readout / log(q*(abs(t)+3)))<=A, with same A as raw bound.",
        "counting_scope": "Nontrivial L(s,chi) zeros in 0<Re(s)<1, t<Im(s)<=t+1; multiplicities are analyticOrderAt.toNat through NcountL. t is any real, including negative. A window meeting zero also includes real nontrivial zeros; no positive-ordinate or nonreality condition is added despite the official11M26 folder heading.",
        "family_scope": "Common modulus q, primitive only on selected S; arbitrary finite index sets, repeated characters and empty S allowed.",
        "actual_envelope": "c_i is actual complex-cast NcountL, E_i=A*log(q*(abs(t)+3)); source theorem supplies this envelope. No free count estimate is assumed."
      },
      "use": "Supply an actual arithmetic count envelope for the existing finite complex-response envelope consumer. Log positivity supports the normalized l1-unit-ball bound with the SAME absolute A.",
      "consumer_paths": [
        "GRWTSK/RealFunctions/InequalitiesInRealAnalysis/FiniteCorrelationEnvelope.lean"
      ],
      "root_consumer": {
        "path": "GRWTSK/RealFunctions/InequalitiesInRealAnalysis/FiniteCorrelationEnvelope.lean",
        "commit": "987c7df4f320a2b1ecf160101b331a997f2761f8",
        "git_blob": "22ca10bfc35086f10c7d4cdd6946363a3af46c31",
        "declaration": "GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope.norm_weighted_sum_le_envelope",
        "use": "Its exact finite triangle/norm-envelope argument is instantiated inline with the actual upstream count envelope; no root module import/version-port is claimed.",
        "source_license": "MIT; grwtsk contributors"
      },
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "license": "Apache-2.0; Anthropic/Claude attribution and modified PNT+ vendor notices preserved; root envelope method retains local MIT attribution",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN",
        "comparator": "NOT_RUN"
      },
      "missing_bridges": [
        "No root dependency/import or cross-version port. Retains exact Lean4.33.0-rc2, not4.33.1.",
        "No RH, critical-line fraction, Mertens cancellation, growing Liouville estimate or Liouville-to-Mobius transport.",
        "No statement-fidelity Comparator run, source compilation, fresh independent replay or complete axiom acceptance.",
        "Upstream source assertions and README audit claims are not fresh local verification receipts."
      ],
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/

/-!
# Finite readouts of primitive-character local zero counts

The source theorem supplies one absolute constant before the modulus, primitive
character and signed real ordinate. It therefore supplies an actual finite
envelope for every selected primitive-character family at a common modulus.
The complex norm argument is the finite-envelope calculation used by
`GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope.norm_weighted_sum_le_envelope`
in the root source, specialized here to actual `Zeta23.ThmE.NcountL` values.
The root module is not imported across the toolchain boundary.

`NcountL χ t (t+1)` counts nontrivial zeros of `χ.LFunction` with multiplicity
in the signed ordinate window `(t,t+1]`. Neither distinct-zero nor critical-line
counts replace it. A window meeting zero also retains real nontrivial zeros;
neither nonreality nor positive ordinates are imposed. Family labels need not
give distinct characters; the sum
retains every coefficient and pays its actual l1 mass. Empty families are allowed.
The normalization denominator is positive for `q>1`, for every real `t`.

Upstream: `anthropics/formal-math` commit
`16a5ce41304fcdaea4e0be7c132e1c361dc26da5`, Apache 2.0,
copyright Anthropic, PBC. The proof endpoint is
`Zeta23.ThmE.localCountChi_uniform_proof`, in
`zeta23/Zeta23/ThmE/LocalCountChi.lean`, Git blob
`603d34e2374063f482905e72c84e5666f23275ad`.
Its counting definitions are in `Zeta23.ThmE.Statement`, Git blob
`1aaec6accad36bad8fb204a4b974a58524d3bc98`.
The development accompanies Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637v2 (2026-08-19). Upstream formalization metadata credits Claude;
the package retains its Anthropic copyright and PNT+ vendor notices. This
consumer uses the source-internal local Jensen-count analytic input,
not a critical-line proportion endpoint or an assumed paper-to-theorem identity.

This isolated package retains Lean 4.33.0-rc2 and Mathlib
`51e6992efd06126df61a496bebf8f49482a4e129`. It imports the proved local-count
module and never the challenge's admitted statement stubs. Compilation, fresh
independent kernel replay and complete transitive axiom auditing are NOT_RUN.
No RH, Mertens estimate or Liouville-to-Möbius transport follows.
-/

/-- One source constant controls every finite complex readout. Primitive
characters are required only at selected labels, all at the same modulus. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
