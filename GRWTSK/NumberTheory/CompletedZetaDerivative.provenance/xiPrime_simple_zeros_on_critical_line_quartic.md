# `GRWTSK.NumberTheory.AnthropicMath.Zeta23.Xiprime.xiPrime_simple_zeros_on_critical_line_quartic`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CompletedZetaDerivative.lean](../CompletedZetaDerivative.lean), line 5.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/CompletedZetaDerivative.lean#L5).
- Declaration spelling: `GRWTSK.NumberTheory.AnthropicMath.Zeta23.Xiprime.xiPrime_simple_zeros_on_critical_line_quartic` (re-export). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This is an imported theorem re-export, not an independently proved local theorem. Upstream declaration: `xiPrime_simple_zeros_on_critical_line_quartic`.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/RealFunctions/XiPrime.lean)

- [Pinned upstream source](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/comparator-xiprime.json)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/anthropic-math/catalogue.json",
    "repository": "https://github.com/anthropics/formal-math",
    "commit": "16a5ce41304fcdaea4e0be7c132e1c361dc26da5",
    "subdirectory": "zeta23",
    "source_blobs": {
      "zeta23/LICENSE": "261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64",
      "zeta23/NOTICE": "8de3803673ccab52dd029d6b9942f4f410c57fe4",
      "zeta23/README.md": "302fa9094863279d0ec83fca012d2b7bf59d5ccd",
      "zeta23/comparator-xiprime.json": "09adbb14924dcaa8569b1f526486050d6dfb0797",
      "zeta23/comparator.json": "0fc12ebb8b21a74de5d30fd598e1f1ad1094ca2e",
      "zeta23/docbuild/lake-manifest.json": "ee705a7b0b438f645dec3b3e16520e0424e8c755",
      "zeta23/docbuild/lakefile.toml": "02e331c736dc473c30c3553074a6dc530ca690dc",
      "zeta23/formalization.yaml": "27542f31268d77ac2f040b0a3c0f1d08d974d8d8",
      "zeta23/lake-manifest.json": "af9ef405e4e292f2e0176b12b6cb66f547575314",
      "zeta23/lakefile.toml": "43d9da33fb523dce999b070df74e7cdd03381e2b"
    },
    "surface": {
      "config": "zeta23/comparator-xiprime.json",
      "blob": "09adbb14924dcaa8569b1f526486050d6dfb0797",
      "configuration": {
        "challenge_module": "Challenge.XiPrime",
        "solution_module": "Solution.XiPrime",
        "theorem_names": [
          "xiPrime_zeros_in_open_critical_strip",
          "xiPrime_over_xi_re_pos",
          "xiPrime_simple_zeros_on_critical_line",
          "xiPrime_simple_zeros_on_critical_line_cumulative",
          "xiPrime_simple_zeros_on_critical_line_quartic",
          "xiPrime_simple_zeros_on_critical_line_quartic_cumulative"
        ],
        "definition_names": [],
        "permitted_axioms": [
          "propext",
          "Quot.sound",
          "Classical.choice"
        ],
        "enable_nanoda": true
      },
      "adapter_module": "GRWTSK.NumberTheory.CompletedZetaDerivative",
      "classification": "EXACT_UPSTREAM_REEXPORT_SURFACE_NOT_A_BRIDGE"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors. Exact upstream re-exports; verification NOT_RUN. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
