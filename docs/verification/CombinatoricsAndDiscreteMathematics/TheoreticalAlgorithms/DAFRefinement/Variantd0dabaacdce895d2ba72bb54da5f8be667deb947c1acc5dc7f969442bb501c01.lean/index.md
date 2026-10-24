# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a51d8c9c2263c5ec8b3d266e661d1d6265da503b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a51d8c9c2263c5ec8b3d266e661d1d6265da503b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSpecSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/mapspecsystem--e2fc1c85b3cd32a644739aa9.md) | 28 | `declaration-track:e2fc1c85b3cd32a644739aa9eb78cbd34df04bd8288e779e026c79acbfc68c57` |
| 2 | `def` | [mapImplSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/mapimplsystem--9c00d58d21fa6762331ff178.md) | 37 | `declaration-track:9c00d58d21fa6762331ff17801c7b6129ab7bf61dde19ad65a8a4ea63ec7cb29` |
| 3 | `def` | [mapRefinement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/maprefinement--51c4345db15ac02a4c184855.md) | 46 | `declaration-track:51c4345db15ac02a4c184855028efc1c9ba3a41fc0e9f0a1109ac00381a40b8e` |
| 4 | `theorem` | [mapRefinement_abstract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/maprefinement-abstract--be79409e0582384a516053ed.md) | 60 | `result-track:be79409e0582384a516053ed6d8b4cb925b57bf70070785065d4b1630bb0ab5b` |
| 5 | `theorem` | [mapRefinement_step_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/maprefinement-step-sound--29afdb2835c3672eac9d7235.md) | 66 | `result-track:29afdb2835c3672eac9d723566b3bbb7febc6c963de45197eb42f8541080773e` |
| 6 | `theorem` | [refines_iff_abstract_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01.lean/declarations/refines-iff-abstract-eq--026c1a0127c410f31f3c3b51.md) | 76 | `result-track:026c1a0127c410f31f3c3b51bfa267bc2e1250730fa2bf054a1743b0d248ea0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
