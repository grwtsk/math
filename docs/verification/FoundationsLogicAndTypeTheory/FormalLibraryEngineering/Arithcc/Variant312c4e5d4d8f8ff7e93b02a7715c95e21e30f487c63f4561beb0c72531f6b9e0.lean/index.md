# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/word--a9d8202b792f85b34d004f76.md) | 54 | `declaration-track:a9d8202b792f85b34d004f7600e93565f4b34c540acd9dc60f291562d884fb7e` |
| 2 | `abbrev` | [Identifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/identifier--30438310a20c4fd0e88ee508.md) | 58 | `declaration-track:30438310a20c4fd0e88ee508cc83dfbca49a7fa06e87a863d3744662fa79a818` |
| 3 | `abbrev` | [Register](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/register--e4b232055f5ab8e4cc876ced.md) | 62 | `declaration-track:e4b232055f5ab8e4cc876ced90e0cd435e64e66a9e4b8a35383950ca9035a6f6` |
| 4 | `theorem` | [Register.lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/register-lt-succ-self--0b80495b96e0e6a866ce0209.md) | 65 | `result-track:0b80495b96e0e6a866ce020943724681d6e1d91ec5d429f7c51a482770e7d720` |
| 5 | `theorem` | [Register.le_of_lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/register-le-of-lt-succ--ee6007336c198a2360c0fd7b.md) | 68 | `result-track:ee6007336c198a2360c0fd7bc5bf743209197a60d642587be96c94750a5c3a44` |
| 6 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/expr--43c64e3252c43082fd727352.md) | 79 | `declaration-track:43c64e3252c43082fd7273520eb7be6b913af5460ab3dadda79557203d6bd807` |
| 7 | `def` | [value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/value--57e78e1faa1387568a57fb89.md) | 87 | `declaration-track:57e78e1faa1387568a57fb899b9cc28bc97b28c42b6f623ddaa7e2f3a304cb67` |
| 8 | `inductive` | [Instruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/instruction--e060239cd2a01b1ffb9ac11f.md) | 100 | `declaration-track:e060239cd2a01b1ffb9ac11f65e1e22070f2ab87aa58413c652c409bd514212b` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/state--eb79864b482dbf76991521d8.md) | 112 | `declaration-track:eb79864b482dbf76991521d8d5d501008b0842b144f3ef14b223bb6095020f68` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/instance--115a687962f4ae216bceb49b.md) | 116 | `declaration-track:115a687962f4ae216bceb49bb9722b5048cd8d0952c0d85e1d920b9be58df6be` |
| 11 | `def` | [read](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/read--4ab946d48586aafaf3d3a812.md) | 122 | `declaration-track:4ab946d48586aafaf3d3a812a1a684220dae988f49313bed66d40dc39a0ca794` |
| 12 | `def` | [write](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/write--56d5e8c5054d7a984ca02521.md) | 127 | `declaration-track:56d5e8c5054d7a984ca025216c9f6aa3f28b175759603dfd22ec7f4ad2867a58` |
| 13 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/step--d43339d4dc14cd862efb34f8.md) | 131 | `declaration-track:d43339d4dc14cd862efb34f8617bcdd9c21f89c8c4a890b34cefc91b38a93e54` |
| 14 | `def` | [outcome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/outcome--8962ca55f565e119d2fdf8d6.md) | 139 | `declaration-track:8962ca55f565e119d2fdf8d6f1d6db2c888e76ba796f5f68851a95f6af128c5a` |
| 15 | `theorem` | [outcome_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/outcome-append--31bba5693a847303ea1f4246.md) | 145 | `result-track:31bba5693a847303ea1f42468a4c2cf625d20ea7581384c2ed3331d4a651140e` |
| 16 | `def` | [loc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/loc--0fd07d14c283d81a65fea225.md) | 162 | `declaration-track:0fd07d14c283d81a65fea2258032011f4c6815948bcb38831c24d999b04fa9e4` |
| 17 | `def` | [compile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/compile--b7df03663ee5ba00a6f3b873.md) | 170 | `declaration-track:b7df03663ee5ba00a6f3b87313a8decfca493c0bbfb1e24e839de261bd6675cf` |
| 18 | `def` | [StateEqRs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqrs--d8203a33586e6c5e72f17071.md) | 183 | `declaration-track:d8203a33586e6c5e72f17071e19a3789e764e8d5cef8c32d629f5bb638264d79` |
| 19 | `theorem` | [StateEqRs.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqrs-refl--a0f5808d4215144c01006796.md) | 189 | `result-track:a0f5808d4215144c010067961bbf5bcb2c180315d6ed08160f0fc849f50259f2` |
| 20 | `theorem` | [StateEqRs.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqrs-symm--2f251b7648f4ebf02a2d6b5e.md) | 192 | `result-track:2f251b7648f4ebf02a2d6b5ee81279f6d3a5f151a935e3172dec3ce3ddff68d2` |
| 21 | `theorem` | [StateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqrs-trans--3b99c19ccc8c5266830a70b5.md) | 197 | `result-track:3b99c19ccc8c5266830a70b51887fbf51c6fb25f6d59eb2277877393a2dba0fc` |
| 22 | `def` | [StateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeq--c54a3fe57a6d2d00ccf1d84e.md) | 202 | `declaration-track:c54a3fe57a6d2d00ccf1d84e72b6fa2d076f9bf29cfed733c01522322b1a7cf0` |
| 23 | `theorem` | [StateEq.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeq-refl--988273e695fad6533c4eb219.md) | 208 | `result-track:988273e695fad6533c4eb21975fd8e7072a44e912a1624343023a00d78625be0` |
| 24 | `theorem` | [StateEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeq-symm--55ccf79734760852233d6e8e.md) | 211 | `result-track:55ccf79734760852233d6e8ef907d73a592e725349152832a38f3d1012cd541d` |
| 25 | `theorem` | [StateEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeq-trans--086150e74c3f520e5e384745.md) | 216 | `result-track:086150e74c3f520e5e384745a4063f831c7901a97002f9b3d1734be521c05b69` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/instance--f02b179df409ebdea0da481f.md) | 223 | `declaration-track:f02b179df409ebdea0da481f2416680cace4e31f47e6356b5a7afaae7b6fe603` |
| 27 | `theorem` | [StateEqStateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqstateeqrs-trans--69f407a09b78d7546048c1de.md) | 228 | `result-track:69f407a09b78d7546048c1decf4e89856a923dd1d6d210dc572f1b55c78b652c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/instance--ca058a6d2c77218616da42e8.md) | 233 | `declaration-track:ca058a6d2c77218616da42e8b7844d187a9d3dd10f16943260f8a5c2fda9d0dc` |
| 29 | `theorem` | [stateEq_implies_write_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeq-implies-write-eq--6a039568cc16ee171dbf396e.md) | 237 | `result-track:6a039568cc16ee171dbf396e40a45b3e887df48f0a4b345fc76ec78b2a73fd96` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/stateeqrs-implies-write-eq-rs--914fd68e875b359446a3c23d.md) | 250 | `result-track:914fd68e875b359446a3c23d52662de6354b1c4dc1b4fbb28129bc5eab619f1a` |
| 31 | `theorem` | [write_eq_implies_stateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/write-eq-implies-stateeq--180ece02c110477e31862967.md) | 258 | `result-track:180ece02c110477e318629678c8886289dde33fcbcc059fd42c42788f7dee89b` |
| 32 | `theorem` | [compiler_correctness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/compiler-correctness--e35046b20808adc12f00fcd6.md) | 271 | `result-track:e35046b20808adc12f00fcd6816c992bea1635b25863ce7740c9de7bd96a3ad7` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/declarations/example--8e7297cc4354d6f699213d4d.md) | 340 | `declaration-track:8e7297cc4354d6f699213d4def6c1517c37a15d29960291f23bcd9ae946577e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
