# `GRWTSK.NumberTheory.AnthropicMath.Fermat.noPositivePowerSum`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FermatSourceEdition1.lean](../FermatSourceEdition1.lean), line 7.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/FermatSourceEdition1.lean#L7).
- Declaration spelling: `GRWTSK.NumberTheory.AnthropicMath.Fermat.noPositivePowerSum` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/anthropic-math/catalogue.json",
    "repository": "https://github.com/anthropics/fermats-last-theorem",
    "commit": "6e837e75355538c7f80bab5b956861e86c4eacc2",
    "subdirectory": "",
    "source_blobs": {
      "FinalCheck.lean": "3ffbd60b8f9736f5569e4dd4774701a114d18266",
      "LICENSE": "6f101c9faa913e222f966b68c5ce9890fe50344f",
      "NOTICE": "5411679f5f1878e72d1622a88c54b8fbb3f29282",
      "README.md": "b2a839c8674977b3a8fa18fa1004da12af5277ec",
      "formalization.yaml": "ff3bc7da09c86cb2c16b931774369668d57dd91e",
      "html/assets/vendor/katex/LICENSE": "37c6433e3bedca7a97e08fe35d98582a5f7bac0c",
      "lake-manifest.json": "2b5a9ec02a1d760170e6034ebcd43e72fa9a42c3",
      "tools/docs-site/README.md": "c7ccac8c4cf3b2790fabb36dc23ff9e1268ce91b",
      "tools/docs-site/gen/data/aliases.json": "b1684455f029f944cccc24c836541bcb93ca1cc1",
      "tools/docs-site/gen/data/landmark_stages.json": "3d84f3fa0a921155a7be932af76b266ca1b970aa",
      "tools/docs-site/gen/data/top_dag.json": "2cdfd1b5e45a0a1eccdfdc6fbfa2b5f4d894257b",
      "tools/docs-site/gen/vendor/graphviz.LICENSE": "29f81d812f3e768fa89638d1f72920dbfd1413a8",
      "tools/docs-site/gen/vendor/katex/LICENSE": "37c6433e3bedca7a97e08fe35d98582a5f7bac0c",
      "verification/comparator/config.json": "eb21dda0470ec910962f9e0737ea367dfe2c7b59",
      "verification/comparator/lakefile.toml": "6d68138cece63148e5e4a31ab4cad88dec475b3f",
      "verification/nanoda/nanoda-config.json": "c8778c0268b7c51167a4d0b071324ec1e74d36cc"
    },
    "surface": {
      "adapter_module": "GRWTSK.NumberTheory.FermatSourceEdition1",
      "upstream_declarations": [
        "flt_pinned",
        "fermat_last_theorem",
        "flt_mathlib"
      ],
      "classification": "SOURCE_PROOF_CANDIDATE_SPECIALIZATION",
      "missing_bridges": [
        "Native compilation, fresh kernel replay and transitive axiom audit; no equivalence of intermediate Wiles arguments asserted."
      ],
      "local_declarations": [
        "GRWTSK.NumberTheory.AnthropicMath.Fermat.noPositivePowerSum",
        "GRWTSK.NumberTheory.AnthropicMath.Fermat.noPositiveCubeSum",
        "GRWTSK.NumberTheory.AnthropicMath.Fermat.powerSum_eq_forces_zero_factor"
      ]
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/

/-- The upstream theorem, preserving its positive-natural and exponent hypotheses. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
