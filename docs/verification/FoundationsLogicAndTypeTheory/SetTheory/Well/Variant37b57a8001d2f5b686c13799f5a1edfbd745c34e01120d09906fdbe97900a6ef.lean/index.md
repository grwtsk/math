# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Well.Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c86c8c787f1986351e7dd9a7cc2895c53b95904",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c86c8c787f1986351e7dd9a7cc2895c53b95904`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Rank` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/wellorderextension--f957eeb9212b8acc84c4d508.md) | 55 | `declaration-track:f957eeb9212b8acc84c4d508098830136fce6dc24b06e4a0c3638ca0082320a3` |
| 2 | `instance` | [wellOrderExtension.isWellFounded_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/wellorderextension-iswellfounded-lt--ebc773501ce2a596b1a04094.md) | 59 | `declaration-track:ebc773501ce2a596b1a0409452433a6b36897129556bb344738e42e8d95f1ac3` |
| 3 | `instance` | [wellOrderExtension.isWellOrder_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/wellorderextension-iswellorder-lt--74e2113daf82950808798dd1.md) | 63 | `declaration-track:74e2113daf82950808798dd10736fa211b2593b573b10aa22930527df0cc70c2` |
| 4 | `theorem` | [exists_well_order_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/exists-well-order-ge--75c0427189292ccd7cf5d882.md) | 66 | `result-track:75c0427189292ccd7cf5d882aa7270bce359f8179e882d81c5b879aeb5866da6` |
| 5 | `def` | [WellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/wellorderextension--449d7c4aea652b3b97ec7b44.md) | 72 | `declaration-track:449d7c4aea652b3b97ec7b44f2cf7a325b1b5d1045a954b1819434d238bcb2e8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/instance--92ef98ecff895b4fa451be98.md) | 74 | `declaration-track:92ef98ecff895b4fa451be986a33ef51a20f6e18ef7a22b8cf96a97e583642bb` |
| 7 | `def` | [toWellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/towellorderextension--67b2dd3c745ca6af361db7cf.md) | 77 | `declaration-track:67b2dd3c745ca6af361db7cfd025a03dcfdd20b8f69041d1d5771b6efe5c7f66` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/instance--2eb1a3def77b66b9cafbd745.md) | 80 | `declaration-track:2eb1a3def77b66b9cafbd74511a03ce546e154004988a7c856d4837f442c042a` |
| 9 | `instance` | [WellOrderExtension.wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/wellorderextension-wellfoundedlt--48232d38a6b32b46fc53c871.md) | 83 | `declaration-track:48232d38a6b32b46fc53c87101dd9c397e057a52f7a5d86b4820ebe12496a194` |
| 10 | `theorem` | [toWellOrderExtension_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant37b57a8001d2f5b686c13799f5a1edfbd745c34e01120d09906fdbe97900a6ef.lean/declarations/towellorderextension-strictmono--2c7df145bc71197028c4eaa1.md) | 87 | `result-track:2c7df145bc71197028c4eaa1b62bb192cf33549e4e8bfc27cb1a49c1046d3beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
