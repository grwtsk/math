# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "799e8a80fe7f5a7e30f9a56c20900c18559a779e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `799e8a80fe7f5a7e30f9a56c20900c18559a779e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CardinalInter` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/cocardinal--62d0b4630e52eaab023ea609.md) | 31 | `declaration-track:62d0b4630e52eaab023ea60968e0316d37c38964331e93d6ea617ef18d90c714` |
| 2 | `theorem` | [mem_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/mem-cocardinal--f7847aab7b896f59a16f106d.md) | 38 | `result-track:f7847aab7b896f59a16f106d25216603c1882e2993a5ec8d80db0aa88c555fae` |
| 3 | `lemma` | [cocardinal_aleph0_eq_cofinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/cocardinal-aleph0-eq-cofinite--b9400634b4c009a138f53a04.md) | 41 | `result-track:b9400634b4c009a138f53a040f005e5a52072a2b4674ddc592df7148002b6401` |
| 4 | `instance` | [instCardinalInterFilter_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/instcardinalinterfilter-cocardinal--af2f656c67ed55bd7f3d3bf6.md) | 45 | `declaration-track:af2f656c67ed55bd7f3d3bf6f0c46b393d440079ec6b6c05574eff85a678cb48` |
| 5 | `theorem` | [eventually_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/eventually-cocardinal--98f5e8cce3d9addd78e70562.md) | 54 | `result-track:98f5e8cce3d9addd78e705623be70fdd4f919238041c006bffe2b779c1273eaf` |
| 6 | `theorem` | [hasBasis_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/hasbasis-cocardinal--cecc0af86320ec4920bc470e.md) | 57 | `result-track:cecc0af86320ec4920bc470e25500816ccdf6f73d1e0a924099f6208be26ac1c` |
| 7 | `theorem` | [frequently_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/frequently-cocardinal--90a5659c3fa6f5e2e506f574.md) | 66 | `result-track:90a5659c3fa6f5e2e506f574101050b774154465be5af7d6e6b15b1efba3d626` |
| 8 | `lemma` | [frequently_cocardinal_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/frequently-cocardinal-mem--7d3a4aab30ddeb559201f2b4.md) | 70 | `result-track:7d3a4aab30ddeb559201f2b4548b32fa180311ff5ba0d40c98f204a735293eca` |
| 9 | `lemma` | [cocardinal_inf_principal_neBot_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/cocardinal-inf-principal-nebot-iff--4a694044eb36f35672b3db4f.md) | 74 | `result-track:4a694044eb36f35672b3db4f06e7fcc481d29d38904af5ba6087a4aa90436b3b` |
| 10 | `theorem` | [compl_mem_cocardinal_of_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/compl-mem-cocardinal-of-card-lt--a0cc900e6d87232c3963fbc2.md) | 78 | `result-track:a0cc900e6d87232c3963fbc28099353be5bbb6d25da4ed66d7ecde6a1ccf3a8c` |
| 11 | `theorem` | [_root_.Set.Finite.compl_mem_cocardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/root-set-finite-compl-mem-cocardinal--540a6ae9e7d82c6ff6dcfff7.md) | 82 | `result-track:540a6ae9e7d82c6ff6dcfff767ec36155e65625d9e37dc9cdecaff9943239a39` |
| 12 | `theorem` | [eventually_cocardinal_notMem_of_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/eventually-cocardinal-notmem-of-card-lt--93d180be731dad15335c14de.md) | 86 | `result-track:93d180be731dad15335c14de9ad4aaddfbeed2ee7a9d061bf9f90bde994bc09a` |
| 13 | `theorem` | [_root_.Finset.eventually_cocardinal_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/root-finset-eventually-cocardinal-notmem--b1fc5ea9c8918aa85fb3198a.md) | 93 | `result-track:b1fc5ea9c8918aa85fb3198a0e4e440fefc411d87c5234bfbec832a75a40e90b` |
| 14 | `theorem` | [eventually_cocardinal_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/eventually-cocardinal-ne--b4032a040bf144651d617f4d.md) | 100 | `result-track:b4032a040bf144651d617f4d0d7066e75b4351cb64c6f2122839e1799bcb556b` |
| 15 | `abbrev` | [cocountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/cocountable--9f99a57702d82fa7bf6695a6.md) | 104 | `declaration-track:9f99a57702d82fa7bf6695a60f7357188eb3642fb3c151a60969c060937f4349` |
| 16 | `theorem` | [mem_cocountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/declarations/mem-cocountable--bef40f72b5741327fbad8822.md) | 106 | `result-track:bef40f72b5741327fbad882285d0a3252e1e0eed29f35e12cedff3bfb322bd80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
