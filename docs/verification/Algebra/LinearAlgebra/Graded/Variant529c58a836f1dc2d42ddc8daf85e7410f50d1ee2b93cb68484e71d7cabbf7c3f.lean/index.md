# Verification target: GRWTSK.Algebra.LinearAlgebra.Graded.Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "603c0f66d72e198eecd5fbeee08d70ded1497d6a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `603c0f66d72e198eecd5fbeee08d70ded1497d6a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SetLike.GradedBracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/setlike-gradedbracket--0ac0be78466dcdb38fecbb07.md) | 53 | `declaration-track:0ac0be78466dcdb38fecbb0746d016fe488e1a831a79996a8596a18385c0a79d` |
| 2 | `class` | [GradedLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/gradedliealgebra--2a1843890f7aa2f3c2250978.md) | 63 | `declaration-track:2a1843890f7aa2f3c22509782b52ba7d609d11d299ee6e8e7477ce10358326cb` |
| 3 | `class` | [GradedLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/gradedliemodule--d5a5c6ede731d8ef25dd16b6.md) | 66 | `declaration-track:d5a5c6ede731d8ef25dd16b629b6c0e328d1a5125ec880277f68b067039ad017` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/instance--0f0c73971798ceb5c948b969.md) | 76 | `declaration-track:0f0c73971798ceb5c948b969b027b9c318353b8c2c61d2a5f2246e3040e39621` |
| 5 | `lemma` | [bracket_apply_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/bracket-apply-apply-self--677a812ffb42985209fac761.md) | 84 | `result-track:677a812ffb42985209fac761c520ea4d574c4ff5a89a80700bc8131d424a0af6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/instance--6cc71aa00203c3266ff93707.md) | 94 | `declaration-track:6cc71aa00203c3266ff937079148d69c453f83b4907eb4e222b7dbe463a185d4` |
| 7 | `lemma` | [bracket_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/bracket-apply-apply--73145df51be781bec333c3d1.md) | 101 | `result-track:73145df51be781bec333c3d134e95eeb3dd02b9092540a6be4429ef1ce36486f` |
| 8 | `lemma` | [decompose_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/decompose-bracket--2b4be501f3606d0441360d9d.md) | 108 | `result-track:2b4be501f3606d0441360d9d63242dab5766c19a480061bc677eee08b51cb0c8` |
| 9 | `lemma` | [decompose_symm_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/decompose-symm-bracket--959852d1059abad968f43c6a.md) | 114 | `result-track:959852d1059abad968f43c6a307107c22e5d39e9436d774909cacc8e91e42fee` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/instance--3a5ab6a257238277693102e8.md) | 119 | `declaration-track:3a5ab6a257238277693102e8b9a60f47c62d81d22e0a5c26b067af26ae46d2f4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/instance--d85bd9dc66342c94fc3a2dde.md) | 124 | `declaration-track:d85bd9dc66342c94fc3a2ddea639c6c71be60475a281ccde45a65d5a8975ff13` |
| 12 | `def` | [decomposeLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/decomposelieequiv--8e8df0670633ab59e35a5b81.md) | 130 | `declaration-track:8e8df0670633ab59e35a5b810d2c4ffed0300e918bba6e067dcf5ef0d9be0e4b` |
| 13 | `def` | [ofGradingSum](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/ofgradingsum--bf99a4de691d09a20b0b2da9.md) | 143 | `declaration-track:bf99a4de691d09a20b0b2da9c6c49db0e0bfc210ca797f667e6e3814a1270a9c` |
| 14 | `lemma` | [ofGradingSum_of](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/ofgradingsum-of--a407dbc90b03541e896e51df.md) | 178 | `result-track:a407dbc90b03541e896e51dfd852ab42b91321df8d4bc8ba626d3ea273f8c7bb` |
| 15 | `def` | [ofGrading](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/ofgrading--5ba5bb7d50c5ff504d3c77fa.md) | 184 | `declaration-track:5ba5bb7d50c5ff504d3c77fae1b809c64880ccc2889ca662ff5a58eaf7076724` |
| 16 | `lemma` | [ofGrading_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/declarations/ofgrading-apply-apply--075b27416db00f6ea4b9b31f.md) | 194 | `result-track:075b27416db00f6ea4b9b31fa6fa4fde6118b0caa4a2c7156c1b2b2b301daf54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
