# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt04.Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11d7141e1dbb87a9ba11053a1983e166719726d4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11d7141e1dbb87a9ba11053a1983e166719726d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/primitive--a5d774daa9b5c85e90f8ccd2.md) | 13 | `declaration-track:a5d774daa9b5c85e90f8ccd2089de4617dc9937991e59c9bbcdd35e973a1d107` |
| 2 | `def` | [halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/halfprefix--dbd41278e8c7eac775d10778.md) | 16 | `declaration-track:dbd41278e8c7eac775d1077890be2cf3ab7ddd592d980d115e013b74c28735a4` |
| 3 | `theorem` | [twiceExp_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/twiceexp-hasderivat--5d016b5f72f4061d74c0d8d9.md) | 19 | `result-track:5d016b5f72f4061d74c0d8d9f5da034a785537525a70eb8bb67b50691f4660b7` |
| 4 | `theorem` | [twiceExp_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/twiceexp-deriv--0bbc074afac6863960ee4675.md) | 25 | `result-track:0bbc074afac6863960ee467516946c623c9b5a0e074dd680032511e29f68cf6c` |
| 5 | `theorem` | [logSum_eq_halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/logsum-eq-halfprefix--adf27e5252cd459e38a1e01f.md) | 29 | `result-track:adf27e5252cd459e38a1e01f43fa4e2339953921919f7140e805e8627632427b` |
| 6 | `theorem` | [prefix_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/prefix-weight-integrable--af3363bd1a792c4296b539fb.md) | 44 | `result-track:af3363bd1a792c4296b539fbd3fbaec20b61ee0a9d0f01c569c289711bc71e33` |
| 7 | `theorem` | [prefix_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/prefix-weight-integral--a6bf93eea5d5cb593da247bd.md) | 50 | `result-track:a6bf93eea5d5cb593da247bd8d5092138b1fd7ffdb216131b79131a9d9cbfc6e` |
| 8 | `theorem` | [background_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/background-integral--d93dc109ca9655a37908da3b.md) | 57 | `result-track:d93dc109ca9655a37908da3b0d1a7c4961c5282cd10c0c2d4e81f76e7edcbc99` |
| 9 | `theorem` | [primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/primitive-integrable--b3735bacfdbc1725a6031115.md) | 71 | `result-track:b3735bacfdbc1725a6031115bfcaabef05c46a2559a8b3fa598eecb63226a319` |
| 10 | `theorem` | [primitive_eq_finite_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/primitive-eq-finite-arithmetic--210cfe8ffb9a9edb24145e42.md) | 86 | `result-track:210cfe8ffb9a9edb24145e42fbba51f498777a7f67b7a24ed23f6f35e31846fd` |
| 11 | `theorem` | [halfPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/halfprefix-below-first--3e7882e440ed120472f5345b.md) | 103 | `result-track:3e7882e440ed120472f5345b4f5867e15c355c5c1fc0b7a794577fbffab7f2fc` |
| 12 | `theorem` | [primitive_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant2e29baa7ca8cd9133526a6eaf4d7c3e3dd8dbadeaab8742cfbf5dfa16168d5f6.lean/declarations/primitive-below-first--0c3c23e303f120ca5b0420ee.md) | 116 | `result-track:0c3c23e303f120ca5b0420ee825295cf9457a33e0ba523d65ba6bf81036b2e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
