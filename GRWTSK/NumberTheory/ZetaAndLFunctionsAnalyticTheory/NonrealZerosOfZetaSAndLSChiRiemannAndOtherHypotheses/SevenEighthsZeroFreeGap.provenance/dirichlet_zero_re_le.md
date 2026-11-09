# `GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap.dirichlet_zero_re_le`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [SevenEighthsZeroFreeGap.lean](../SevenEighthsZeroFreeGap.lean), line 28.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsZeroFreeGap.lean#L28).
- Declaration spelling: `GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap.dirichlet_zero_re_le` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math/sources.toml",
    "provider": "https://github.com/openai/math",
    "commit": "7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a",
    "source": {
      "path": "GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsZeroFreeGap.lean",
      "blob": "6d480288f0ec6819097c0e93a0aec1b4d62a47b0",
      "namespace": "GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap",
      "declarations": [
        "zeta_zero_re_le",
        "dirichlet_zero_re_le",
        "explicit_real_zero_log_gap"
      ],
      "upstream_paths": [
        "lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean"
      ],
      "upstream_blobs": [
        "46c67f4000906b1391a471d6e6396ac0da3c16a5"
      ],
      "missing_bridges": [
        "No independently accepted upstream analytic input",
        "No zero-density or Moebius estimate",
        "No RH consequence"
      ]
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported OpenAI source retains its Apache-2.0 license and upstream attribution. -/

/-!
# Explicit real-zero gap from the pinned upstream seven-eighths theorem

This file directly imports an upstream proof, not a new zero-free axiom.
It must be checked separately in openai/math/lean at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a (Lean 4.34.1).
No new upstream acceptance, zero-density estimate, Mobius estimate, or RH
conclusion is claimed. The theorem excludes the principal pole explicitly.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

/-- Contrapositive of the exact upstream zeta theorem. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
