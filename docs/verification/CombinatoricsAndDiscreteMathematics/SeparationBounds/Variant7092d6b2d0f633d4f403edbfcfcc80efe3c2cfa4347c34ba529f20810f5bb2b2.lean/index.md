# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationBounds.Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43184351284e836ebbd44b44176396b7390292c4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43184351284e836ebbd44b44176396b7390292c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TargetSeparation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionJoin` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_le_of_pairwise_disjoint_separator_sets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/declarations/card-le-of-pairwise-disjoint-separator-sets--4fd792f2eeaeb620978fa3d1.md) | 24 | `result-track:4fd792f2eeaeb620978fa3d1e442adc2758c2e0d1db73a230668213ba3fdf9d1` |
| 2 | `theorem` | [determinesAt_iff_separatesTarget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/declarations/determinesat-iff-separatestarget--dd45404b4fb0f00163adcc5f.md) | 55 | `result-track:dd45404b4fb0f00163adcc5f7581ecb6349a3bf7fb21fb43ffe1115ffadd9da1` |
| 3 | `theorem` | [separatesTarget_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/declarations/separatestarget-of-budget-le--f1984e6d2e181b05476c2092.md) | 78 | `result-track:f1984e6d2e181b05476c2092f5133ba8f4a2a27d4dca944ca6954075bb3fc979` |
| 4 | `theorem` | [not_separatesTarget_of_equivalent_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2.lean/declarations/not-separatestarget-of-equivalent-ne--9ca6b1d514cbacedcedcba97.md) | 90 | `result-track:9ca6b1d514cbacedcedcba97cd8951be8bd01114f5e3cf1aaa0e7976e91e891a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
