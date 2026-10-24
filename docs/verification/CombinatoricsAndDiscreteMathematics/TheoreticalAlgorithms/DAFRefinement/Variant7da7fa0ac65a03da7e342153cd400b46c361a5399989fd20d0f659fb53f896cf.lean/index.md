# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb081bf3ff9b5315602c6396b33536c2f073b42d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb081bf3ff9b5315602c6396b33536c2f073b42d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSpecSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/mapspecsystem--1b790f525c5c186bac0ab1da.md) | 20 | `declaration-track:1b790f525c5c186bac0ab1da10b33bd97e997b917a2f4c333b87ce1eccc8bdae` |
| 2 | `def` | [mapImplSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/mapimplsystem--a8ec9d915bd363870b00103c.md) | 29 | `declaration-track:a8ec9d915bd363870b00103c681b9f44c1b65d4e91ff6dd6d0b9770ae8224020` |
| 3 | `def` | [mapRefinement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/maprefinement--22085a03536651f6643bdb14.md) | 38 | `declaration-track:22085a03536651f6643bdb144e6b2800da5052131d3fc9fa8c4071601e3c4a0e` |
| 4 | `theorem` | [mapRefinement_abstract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/maprefinement-abstract--1baa2904fae2a2a096b1859a.md) | 52 | `result-track:1baa2904fae2a2a096b1859a27c026efd6e0868a88c14539df1d00a1d0122456` |
| 5 | `theorem` | [mapRefinement_step_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/maprefinement-step-sound--852c37e4b1cad3ac08f1d10b.md) | 58 | `result-track:852c37e4b1cad3ac08f1d10bd4d9d523612dd02c1b3f05a733e43d09615ca92d` |
| 6 | `theorem` | [refines_iff_abstract_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf.lean/declarations/refines-iff-abstract-eq--494194bbca3c8a33f8bb40e8.md) | 68 | `result-track:494194bbca3c8a33f8bb40e8349c4f042b4eab74299ecd6534c3753aa2213cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
