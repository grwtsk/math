# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9741b959949e1ab58e244447dada201ccb1f51d3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9741b959949e1ab58e244447dada201ccb1f51d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean.json)

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
| 1 | `def` | [MayAct](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/mayact--04c55afb0b95bad89b7b7a08.md) | 5 | `declaration-track:04c55afb0b95bad89b7b7a0816add6286f40518218d3291b9a7d308fef9e1d83` |
| 2 | `theorem` | [requires_authentication](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/requires-authentication--d497d51e8241be6880366ae7.md) | 10 | `result-track:d497d51e8241be6880366ae71917e97d81b75f9b5ef05f585b0379f13a09570b` |
| 3 | `theorem` | [revocation_blocks](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/revocation-blocks--a7fd73858d1b8c695b76d73b.md) | 18 | `result-track:a7fd73858d1b8c695b76d73b567925883831942a8ad17c0037ecf11e080f57f9` |
| 4 | `theorem` | [no_authority_expansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/no-authority-expansion--fdb3d2bbcd41fce50abc5864.md) | 27 | `result-track:fdb3d2bbcd41fce50abc5864d91d595baebe139fa39815bbd3fff12b6690477c` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/example--0ea1b71193cf95d84ca1359c.md) | 37 | `declaration-track:0ea1b71193cf95d84ca1359c1d19db87c36d8d8ebe67381811e3ae8ae82dbaa0` |
| 6 | `structure` | [ApprovalJudgments](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/approvaljudgments--c050e06bde3c105a6354006d.md) | 49 | `declaration-track:c050e06bde3c105a6354006dffc5dbaf5d154e000b0b9db52cb92c114009eb65` |
| 7 | `theorem` | [mathematical_judgments_do_not_force_operational_or_public](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/mathematical-judgments-do-not-force-operational-or-public--2820f496bd73c3e20c7409f5.md) | 57 | `result-track:2820f496bd73c3e20c7409f5b2e12c9886feb2f894649c581e97ad9e502b8428` |
| 8 | `theorem` | [investigation_admission_is_not_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/investigation-admission-is-not-truth--515739cf838dbe4e98a518a9.md) | 66 | `result-track:515739cf838dbe4e98a518a99214a11639fb605e99b07aaf840c7e03696934ae` |
| 9 | `theorem` | [accepted_entailment](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Basic.lean/declarations/accepted-entailment--3c29dc032f7c855e4b0f7fca.md) | 72 | `result-track:3c29dc032f7c855e4b0f7fcae9097da77c7648777842992c44574b3941447171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
