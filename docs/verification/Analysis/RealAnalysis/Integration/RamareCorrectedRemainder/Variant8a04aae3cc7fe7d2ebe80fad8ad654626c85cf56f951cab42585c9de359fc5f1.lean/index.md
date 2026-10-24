# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RamareCorrectedRemainder.Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathExtras.NumberTheory.PrimeCounting.MertensFirstLogEnvelope` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstMertensRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/firstmertensremainder--6ac52ffe79c19c2c3bfbb191.md) | 33 | `declaration-track:6ac52ffe79c19c2c3bfbb191e5403f31e73b1c2ee0a881947fb0cceb509e326d` |
| 2 | `def` | [chebyshevRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/chebyshevremainder--9c5105878ba512ec0b0bb9e4.md) | 37 | `declaration-track:9c5105878ba512ec0b0bb9e4a58c5e2ff10763435cc2e4542711abb0b626c0f2` |
| 3 | `def` | [correctedRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder--35d4bafb5ae519619fd71a8c.md) | 41 | `declaration-track:35d4bafb5ae519619fd71a8c1656cacf55d0f6675eafbf0f21eb7df6769f95a8` |
| 4 | `theorem` | [correctedRemainder_sub_anchor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder-sub-anchor--9e472af0cbe50994787f5077.md) | 47 | `result-track:9e472af0cbe50994787f5077f61d36a4df77570b4ab309560c1fe39032ebc05a` |
| 5 | `theorem` | [correctedRemainder_drift_abs_le_of_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder-drift-abs-le-of-integral--d6f6e0ad383a4d058c61ffae.md) | 57 | `result-track:d6f6e0ad383a4d058c61ffae4ceed4ac5fad242978fd1ac7e79ec329d6d9649e` |
| 6 | `theorem` | [correctedRemainder_drift_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder-drift-abs-le-sqrt--58a524df775a8614c2791ff8.md) | 67 | `result-track:58a524df775a8614c2791ff82ed9ce99e61f9038c9d64bdbf4db3c42109f8bf1` |
| 7 | `theorem` | [correctedRemainder_drift_abs_le_linear_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder-drift-abs-le-linear-sqrt--dbc5ca22ef614cf7a83217c3.md) | 122 | `result-track:dbc5ca22ef614cf7a83217c3593289a07b81341f778d5ccb42719d06b8be2da9` |
| 8 | `theorem` | [correctedRemainder_drift_abs_le_log_cube](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/declarations/correctedremainder-drift-abs-le-log-cube--c63d36fe7f1779f593ab1100.md) | 199 | `result-track:c63d36fe7f1779f593ab11002956f87aabe41a9c92bd1c9e36b1a2d2f5da30b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
