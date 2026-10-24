# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationBounds.Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5317dc39f6dcc69bd21053e283f26dd8cac3f82d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5317dc39f6dcc69bd21053e283f26dd8cac3f82d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TargetSeparation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionJoin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_le_of_pairwise_disjoint_separator_sets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/declarations/card-le-of-pairwise-disjoint-separator-sets--770d87c27d2963c015e40efb.md) | 32 | `result-track:770d87c27d2963c015e40efb5b36d22abcaecf27819d8da7cb265083b528a86e` |
| 2 | `theorem` | [determinesAt_iff_separatesTarget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/declarations/determinesat-iff-separatestarget--1d3eaa0f63a3b991fdc6a7a4.md) | 63 | `result-track:1d3eaa0f63a3b991fdc6a7a4f0e1bfb76e243eddd5bfe81c18cbcf25428b2609` |
| 3 | `theorem` | [separatesTarget_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/declarations/separatestarget-of-budget-le--e639fa1a67f4444b2c68e5b6.md) | 86 | `result-track:e639fa1a67f4444b2c68e5b625ba1b27c8fc81c250b869f1b296851df5723c3c` |
| 4 | `theorem` | [not_separatesTarget_of_equivalent_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/declarations/not-separatestarget-of-equivalent-ne--2a7ccbc3f8ecd11ed2a1e839.md) | 98 | `result-track:2a7ccbc3f8ecd11ed2a1e8393e9eb7606f83e8db35e36424f5eb26cfb2413206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
