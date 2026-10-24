# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9594428553fcd0fc56d94d9aaa363943dcc5e2fc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9594428553fcd0fc56d94d9aaa363943dcc5e2fc`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds`](../../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalLogVariationMajorant](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/declarations/reciprocallogvariationmajorant--f9d588203156e84c6426c607.md) | 28 | `declaration-track:f9d588203156e84c6426c607ebbf0de11afd829a645409bf2c03c9432fe07d88` |
| 2 | `theorem` | [reciprocalLogVariationMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/declarations/reciprocallogvariationmajorant-nonneg--7f035c9c1eb3bd0541c30633.md) | 32 | `result-track:7f035c9c1eb3bd0541c306332345ebacf8d7d007a7866ec6cc139e254290c366` |
| 3 | `theorem` | [reciprocalCauchyBlock_le_logVariationMajorant](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/declarations/reciprocalcauchyblock-le-logvariationmajorant--92aa80356c40eb07e813838e.md) | 43 | `result-track:92aa80356c40eb07e813838e11d18a46a0d8e54fcd7a84db3e01d1bbb5fb3d28` |
| 4 | `def` | [ReciprocalLogVariationSummable](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/declarations/reciprocallogvariationsummable--5a9c8f99d28661f3ceb40238.md) | 106 | `declaration-track:5a9c8f99d28661f3ceb40238427d9095101cd068be036ec136de04874d3545a2` |
| 5 | `theorem` | [criticalBoundary_of_reciprocalLogVariationSummable](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/declarations/criticalboundary-of-reciprocallogvariationsummable--55bac828e54f6c3092153361.md) | 109 | `result-track:55bac828e54f6c3092153361a023e12c5ea296b6ff173124d7814f6122fe0070` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
