# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9d0df37c33750e31b378f9051558dac63145c0f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9d0df37c33750e31b378f9051558dac63145c0f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FinEnum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/insertnone--73602f50ff6590b3a97f1897.md) | 23 | `declaration-track:73602f50ff6590b3a97f18976dbc7303d49f18c1fbdc3843912923ee146db359` |
| 2 | `instance` | [instFinEnumOptionLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/instfinenumoptionlast--6455602929f242dd3fe1bb95.md) | 29 | `declaration-track:6455602929f242dd3fe1bb953f7c69ae73d3366144c493e600312532bd834775` |
| 3 | `def` | [recEmptyOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/recemptyoption--847cd63492f474aed6632d93.md) | 43 | `declaration-track:847cd63492f474aed6632d931791e0b131e5f69737f92c0fc014c57e33d2924a` |
| 4 | `theorem` | [recEmptyOption_of_card_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/recemptyoption-of-card-eq-zero--c1fbb2f9d70ad1896e0d1d38.md) | 64 | `result-track:c1fbb2f9d70ad1896e0d1d38eef88faeae50c5fa221191c8d4f38f4abbcfb595` |
| 5 | `theorem` | [recEmptyOption_of_card_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/recemptyoption-of-card-pos--01d3e130df5f9b24cd36a42b.md) | 82 | `result-track:01d3e130df5f9b24cd36a42b69a59a0283d4640ce5dc72f9a934a70978eb16fb` |
| 6 | `abbrev` | [recOnEmptyOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/declarations/reconemptyoption--758e78bd41a07f4480b9e259.md) | 105 | `declaration-track:758e78bd41a07f4480b9e259ba82bda3ef6a7ea5cc6b1956e955d2db95d38dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
