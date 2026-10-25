# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftable.Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c4328dc5f6093ac487a063faf686dc812908ba6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c4328dc5f6093ac487a063faf686dc812908ba6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Cont` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/uliftable--f788fafb0fbdae7620d060d7.md) | 53 | `declaration-track:f788fafb0fbdae7620d060d72eb2b497981fc4ff58dc7cbb4699814be4837880` |
| 2 | `def` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/up--36101eaf2568324f334a9dbc.md) | 62 | `declaration-track:36101eaf2568324f334a9dbcaa14b2c0eda4710b1cc8694dde1515cc97a6bd23` |
| 3 | `def` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/down--00e31013c5122fb0a1fd9b91.md) | 70 | `declaration-track:00e31013c5122fb0a1fd9b91bd1aac3922ae80b37bcabbc2ff97b84e231756c8` |
| 4 | `def` | [adaptUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/adaptup--b21cd8e037be0add39a928a1.md) | 76 | `declaration-track:b21cd8e037be0add39a928a19ad8b7374a82eb880ae7ac6c9b6dbb6ef7f41701` |
| 5 | `def` | [adaptDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/adaptdown--fd52054437cc28defb5172a6.md) | 82 | `declaration-track:fd52054437cc28defb5172a65fa9dc976517b6ae3a79945ee75621665531995c` |
| 6 | `def` | [upMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/upmap--8cf58aa2e22015a9264c4d73.md) | 88 | `declaration-track:8cf58aa2e22015a9264c4d732be4c53635a644dfbf5f2a9b205dbaf359be07f9` |
| 7 | `def` | [downMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/downmap--0229915f330cf205c88492f2.md) | 94 | `declaration-track:0229915f330cf205c88492f2b6968c682cc688a6e18d7a53cbc3e543618618d5` |
| 8 | `theorem` | [up_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/up-down--e667de613c99b08c92bbb056.md) | 100 | `result-track:e667de613c99b08c92bbb056e8e4617e538c02ec391e8c49081fce01f7117bb8` |
| 9 | `theorem` | [down_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/down-up--62d0df68eb886a2f9ee0a4fe.md) | 106 | `result-track:62d0df68eb886a2f9ee0a4fe04118fae7e7e147dc19dac22e07a9128ab5511ca` |
| 10 | `instance` | [instULiftableId](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/instuliftableid--8514af278214dec6096aa3ef.md) | 115 | `declaration-track:8514af278214dec6096aa3efc3ae95197f487eca734c5fbb95ec9ed2c21bb313` |
| 11 | `def` | [StateT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/statet-uliftable--388e17db688782f46b44d644.md) | 120 | `declaration-track:388e17db688782f46b44d64459ce8649cdaf34fd0325b3718392a734d59d18b2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/instance--157167e8492e891fcb3acfca.md) | 126 | `declaration-track:157167e8492e891fcb3acfca936c5f657be62b07ccfa0a7190369188ea7909f8` |
| 13 | `instance` | [StateT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/statet-instuliftableuliftulift--8b0ebf21cce5da3d9a63dca5.md) | 129 | `declaration-track:8b0ebf21cce5da3d9a63dca573751d6a0970ea4b0b8fff2b90f86c4e6af11842` |
| 14 | `def` | [ReaderT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/readert-uliftable--c0b196072f1de67222ade0f2.md) | 134 | `declaration-track:c0b196072f1de67222ade0f2bb1f6ff44e8a713a051d43b6d24d6dc01dd43a2c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/instance--2db6de0939a986c01f9ef2d1.md) | 139 | `declaration-track:2db6de0939a986c01f9ef2d106c49097a8faa71fc0fd3e2e291013764383206e` |
| 16 | `instance` | [ReaderT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/readert-instuliftableuliftulift--0b25b0b93a82b0d3ca66ac47.md) | 142 | `declaration-track:0b25b0b93a82b0d3ca66ac47bba6fcccdf320f9f564002a51536ef491079564e` |
| 17 | `def` | [ContT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/contt-uliftable--85d74b691cfa2837dfd31bcc.md) | 147 | `declaration-track:85d74b691cfa2837dfd31bccc51fd63097ad83a2fd6a3c67e67b3038d0796d9f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/instance--b25523df5aa79ad907f243c3.md) | 152 | `declaration-track:b25523df5aa79ad907f243c360491003d6a7f7ce35615514e9cfffd06b2c6063` |
| 19 | `instance` | [ContT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/contt-instuliftableuliftulift--107dd6b5b30b918f29678dc7.md) | 155 | `declaration-track:107dd6b5b30b918f29678dc7ce095115b2f4da0985fc083b2cd1985e622f6f80` |
| 20 | `def` | [WriterT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/writert-uliftable--9c3141c82f0b9794da1007e1.md) | 160 | `declaration-track:9c3141c82f0b9794da1007e130273e7253fc6f0900d53a4e283905152a7d6f7d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/instance--1b4df7737b23d95bc75a471b.md) | 165 | `declaration-track:1b4df7737b23d95bc75a471b697d20b15870092c6f4e38ece671412a9b1818cc` |
| 22 | `instance` | [WriterT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/declarations/writert-instuliftableuliftulift--09b4c26c0f8d8975803700f1.md) | 168 | `declaration-track:09b4c26c0f8d8975803700f1f881fa383d7cd2ee0ccaa7a1f6e59d2a90b44702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
