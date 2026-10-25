# Verification target: GRWTSK.Logic.Certificates.ExactMoment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db7f1b2b983bcf29baa12941b6ea227e1f27eb3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/ExactMoment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db7f1b2b983bcf29baa12941b6ea227e1f27eb3`.

Source path: `GRWTSK/Logic/Certificates/ExactMoment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/ExactMoment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Data.TypedMoments`](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedMoments.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ObjectFormat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/objectformat--1ec5c01a6c3354ecf1c520f9.md) | 21 | `declaration-track:1ec5c01a6c3354ecf1c520f9012eced44217a046985de69f8b07e50c282b4caf` |
| 2 | `def` | [ObjectFormat.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/objectformat-width--d92a28224fba931d252d4d24.md) | 27 | `declaration-track:d92a28224fba931d252d4d242cf8ea684bd67194041c79925f200fa0e753837a` |
| 3 | `structure` | [ObjectName](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/objectname--a04336add297bf2cb01682f8.md) | 32 | `declaration-track:a04336add297bf2cb01682f8ebddf6242b93d77c68da5d75ce295f15b48043a0` |
| 4 | `structure` | [Source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/source--16b8f9fb4f9fc3bdd6d01b3b.md) | 40 | `declaration-track:16b8f9fb4f9fc3bdd6d01b3b3bb1b763ed831e7b0fafa5752c338ea4dacfa38a` |
| 5 | `structure` | [Checkin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/checkin--60ac91d8eb8c464edf65988e.md) | 49 | `declaration-track:60ac91d8eb8c464edf65988e2cb57f3eb948e1e03b2b9d8a3c13751e451a811b` |
| 6 | `structure` | [Moment](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment--c5cddf2ef371690f3b1663ab.md) | 55 | `declaration-track:c5cddf2ef371690f3b1663ab879863f852702eb3582bd78f6492cbf30f19eb35` |
| 7 | `theorem` | [Moment.same_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment-same-source--564764f93057825103d0842c.md) | 59 | `result-track:564764f93057825103d0842cb31f3d5490d7f8ad9e59559db23573b2aea7c228` |
| 8 | `theorem` | [Moment.same_occurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment-same-occurrence--99a7dda8b3b82debec9f9605.md) | 63 | `result-track:99a7dda8b3b82debec9f9605f555ccc60a3a58e9fe825357510ee24a9a9b341b` |
| 9 | `theorem` | [Moment.ne_of_commit_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment-ne-of-commit-ne--c66e17e203aa1dfc5a43d962.md) | 68 | `result-track:c66e17e203aa1dfc5a43d96297d7065b93c897239efa3087f3b1f3006a615e8d` |
| 10 | `theorem` | [Moment.ne_of_occurrence_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment-ne-of-occurrence-ne--a37db5049dced3e6b1c71466.md) | 75 | `result-track:a37db5049dced3e6b1c71466c6bda778e3b59d61b12ee3b19abf97c1973856b1` |
| 11 | `theorem` | [Moment.ne_of_source_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/moment-ne-of-source-ne--3a331d3988350cf20c092482.md) | 82 | `result-track:3a331d3988350cf20c092482dfd8d25bbfe0373a2b8551672d075306c546bbd3` |
| 12 | `def` | [recordTyped](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/recordtyped--4ac76fb34910755ab6bc285b.md) | 88 | `declaration-track:4ac76fb34910755ab6bc285be5e1dd08cfef947d3d666c1c4e660936be069e9d` |
| 13 | `theorem` | [recordTyped_ne_of_checkin_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/recordtyped-ne-of-checkin-ne--31c59276e51daf44e16278cc.md) | 94 | `result-track:31c59276e51daf44e16278ccf99c915bcafc08e530f547d4653ffd2a663edb1a` |
| 14 | `theorem` | [value_projection_not_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/declarations/value-projection-not-injective--b8dfca26af38b1ce49a761c0.md) | 103 | `result-track:b8dfca26af38b1ce49a761c067ef54ced17589f72ab796c6dcab20e0fba9694e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
