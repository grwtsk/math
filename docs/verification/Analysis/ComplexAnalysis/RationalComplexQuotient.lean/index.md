# Verification target: GRWTSK.Analysis.Complex.RationalComplexQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d0a0a3872bd96721dce77683488b15898cc803a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalComplexQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d0a0a3872bd96721dce77683488b15898cc803a`.

Source path: `GRWTSK/Analysis/Complex/RationalComplexQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalComplexQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRoundedArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sub](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/sub--afb0f3608631d4f8405f28ba.md) | 21 | `declaration-track:afb0f3608631d4f8405f28baf72d728fc08ddd74d0f7cf6cb20238cb5e1fd159` |
| 2 | `def` | [normSq](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/normsq--94ce80702d73acab9ea76470.md) | 22 | `declaration-track:94ce80702d73acab9ea76470489da6e2abea8e792dc1ccb17780405534ca3e11` |
| 3 | `def` | [div](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/div--bd7f34bb9e7e7ed21eb7f30e.md) | 24 | `declaration-track:bd7f34bb9e7e7ed21eb7f30e7f510e6b82f0f05e1b8b3f8ffa881e46d6051abc` |
| 4 | `theorem` | [embed_sub](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/embed-sub--e1b2daebae102c62dc5929ea.md) | 28 | `result-track:e1b2daebae102c62dc5929ea6178f7218b8817d4dcbb32c7f67ad3e4b6811ae7` |
| 5 | `theorem` | [cast_normSq](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/cast-normsq--e2ad0338f1f1e995a7e7d0ae.md) | 31 | `result-track:e2ad0338f1f1e995a7e7d0ae6bfa41f5e41cddc0493eb2a2afa9064da8865b78` |
| 6 | `theorem` | [embed_div](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/embed-div--0ea554f4d390d7121746b0b2.md) | 37 | `result-track:0ea554f4d390d7121746b0b2a34a2239f159d4c0c073822c1a9442aced6b6bf7` |
| 7 | `theorem` | [denominator_lower](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/denominator-lower--45db86ef6cfa6153d9e59be1.md) | 42 | `result-track:45db86ef6cfa6153d9e59be1bfb269feb7eb36908457259587c4a7e044b659d6` |
| 8 | `theorem` | [initialState_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/declarations/initialstate-sound--49782f16be7ae717ad886a5f.md) | 61 | `result-track:49782f16be7ae717ad886a5f80275ac5f64c415666be00bf5d42abde1c1a4ef8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
