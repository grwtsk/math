# `GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily.elliott_after_fixed_prime_change`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [LiouvilleTwoPointFiniteFamily.lean](../LiouvilleTwoPointFiniteFamily.lean), line 70.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/LiouvilleTwoPointFiniteFamily.lean#L70).
- Declaration spelling: `GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily.elliott_after_fixed_prime_change` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math/sources.toml",
    "provider": "https://github.com/openai/math",
    "commit": "7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a",
    "source": {
      "path": "GRWTSK/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/LiouvilleTwoPointFiniteFamily.lean",
      "blob": "7c5ffa0ef9e25e290eeb3ead996217796fa50758",
      "namespace": "GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily",
      "declarations": [
        "liouville_finite_family_bound",
        "elliott_after_fixed_prime_change",
        "elliott_after_fixed_prime_divisor_change"
      ],
      "upstream_paths": [
        "lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean",
        "lean/OAI/NumberTheory/TwoPoint/PretentiousDistance.lean"
      ],
      "upstream_blobs": [
        "2bd48811e73bbdc80c1f738fa889a14189186408",
        "31e9010dee390175fcaca4f6e1b58c527d58ad2d"
      ],
      "missing_bridges": [
        "No constants uniform in a growing affine family",
        "No Liouville-to-Moebius substitution",
        "No actual GRWTSK arithmetic residual estimate"
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
# Finite-family transport of the actual upstream Liouville theorem

Build separately in openai/math/lean at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a (Lean 4.34.1).
The standalone provider package supplies OAI; the main GRWTSK build does not.
The exponent is common; the coefficients C_i retain affine-form dependence.
There is no uniform bound on C_i as the family grows, no Mobius substitution,
and no assertion about the GRWTSK source kernel.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

/-- Directly consumes the comparator-designated upstream theorem. The same
exponent works for every finite family and every complex readout K. -/

/-- A bounded finite-prime modification feeds the exact upstream Elliott consumer.
P is fixed before the limiting cutoff. Multiplicativity of the modified input
b is an explicit separate hypothesis, not inferred from prime-value agreement. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
