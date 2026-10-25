# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Word](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/word--b8dc1a327a4e407e4ed53782.md) | 64 | `declaration-track:b8dc1a327a4e407e4ed53782c5551e0daa44075800b87fcfa134393b76eb550c` |
| 2 | `def` | [Identifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/identifier--7c2267757bdb2e69f48ce6e0.md) | 70 | `declaration-track:7c2267757bdb2e69f48ce6e057d27f7bd000ca49c1972bf0fa57d31eddf3f2e4` |
| 3 | `def` | [Register](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/register--f085195c5ea976f01612992a.md) | 76 | `declaration-track:f085195c5ea976f01612992a536517e6afc32c44d994a005b26683073424284a` |
| 4 | `theorem` | [Register.lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/register-lt-succ-self--d8a12662e19b4bce045fa594.md) | 80 | `result-track:d8a12662e19b4bce045fa59486cda3d1c74a82d002895d404fddb764d0b722d5` |
| 5 | `theorem` | [Register.le_of_lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/register-le-of-lt-succ--465c916f4b2cb3b50fb8820a.md) | 84 | `result-track:465c916f4b2cb3b50fb8820a35c7fed0c78adca03159462bb5bc6c75f7a3763f` |
| 6 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/expr--82939b8f128542cced5e2b6b.md) | 96 | `declaration-track:82939b8f128542cced5e2b6b40b1058e954b6055f86780932ec5333292b8c983` |
| 7 | `def` | [value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/value--63cc60aa88a1639f667c4084.md) | 105 | `declaration-track:63cc60aa88a1639f667c408450c5eccf476e88d895018603110763c6e4796cee` |
| 8 | `inductive` | [Instruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/instruction--d4104ca0d644921a5e1d4bf4.md) | 119 | `declaration-track:d4104ca0d644921a5e1d4bf457abdf63ab953f3c46961690f7967fa429cef601` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/state--e31bae379772221f220a058c.md) | 132 | `declaration-track:e31bae379772221f220a058ccd446279bfbec99d5e0cf01d455da5458c7dae1f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/instance--7e05d07f4232f3884e6392ab.md) | 137 | `declaration-track:7e05d07f4232f3884e6392ab0c8f397ae51a7e8d44790037ade82812a162cfce` |
| 11 | `def` | [read](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/read--8e42049274826be8e2fdae7f.md) | 143 | `declaration-track:8e42049274826be8e2fdae7f746d7bee9fc16c83eb9d8a2f28ed26f07dc0e7f1` |
| 12 | `def` | [write](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/write--d9c9375126522453f7a9ed93.md) | 149 | `declaration-track:d9c9375126522453f7a9ed9350cce83ef91859cd4afb3d1f5220da8858636886` |
| 13 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/step--dcd42d2e24912849d906c357.md) | 154 | `declaration-track:dcd42d2e24912849d906c357d36d99147313063d512483e11512e4483c0286dd` |
| 14 | `def` | [outcome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/outcome--3abf774492de53ee8bc71395.md) | 163 | `declaration-track:3abf774492de53ee8bc71395f6e4ffe7ab816b0fc5bf43f6f4ad0f20a51e1011` |
| 15 | `theorem` | [outcome_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/outcome-append--3fb78e2a3071e5500eb184ee.md) | 170 | `result-track:3fb78e2a3071e5500eb184ee86fc34176c872525356b540321347fd4f1446414` |
| 16 | `def` | [loc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/loc--34b30abbda2b3b048bc5024c.md) | 188 | `declaration-track:34b30abbda2b3b048bc5024c3839e285760bada4186d2857147ee3dfee236d85` |
| 17 | `def` | [compile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/compile--e1ba23b2f6e3f7bdfbea4cda.md) | 197 | `declaration-track:e1ba23b2f6e3f7bdfbea4cdae6b7968794eb4dfdf6ea89113724784703409f92` |
| 18 | `def` | [StateEqRs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqrs--24cbac6a6728575bdbb86323.md) | 211 | `declaration-track:24cbac6a6728575bdbb863234d1f41908ca9de61b3157eef64a02b42a781104f` |
| 19 | `theorem` | [StateEqRs.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqrs-refl--5ad0a2a1b324fe4deedf5156.md) | 218 | `result-track:5ad0a2a1b324fe4deedf51560ea823442e521ad6aa8e688fe3f73cd9abbdeeb2` |
| 20 | `theorem` | [StateEqRs.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqrs-symm--f99c88ced3e724f445b3666d.md) | 222 | `result-track:f99c88ced3e724f445b3666de7393e97bfa1a554f25e3464f49785469f4e7fb4` |
| 21 | `theorem` | [StateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqrs-trans--60a6fc8b5cf9bd90a5b57980.md) | 228 | `result-track:60a6fc8b5cf9bd90a5b579809ae3d68190e92aca9d4ddf433f6bd0819fa47279` |
| 22 | `def` | [StateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeq--71653a3ee5b39a11cc7d7dc2.md) | 234 | `declaration-track:71653a3ee5b39a11cc7d7dc22f67fa097dc7795df67cd15e4d306541edda77ce` |
| 23 | `theorem` | [StateEq.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeq-refl--c1e01a84060b62d04ddffaf7.md) | 241 | `result-track:c1e01a84060b62d04ddffaf7fb4a0e3f38c552150d86951bbd92790bd9eda8ce` |
| 24 | `theorem` | [StateEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeq-symm--2c9b031b63a20561f30b2e9f.md) | 245 | `result-track:2c9b031b63a20561f30b2e9fa206aad038dd997ba9581fa790e664f65a4ea618` |
| 25 | `theorem` | [StateEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeq-trans--792475973f3c2cdb7dc7ca2d.md) | 251 | `result-track:792475973f3c2cdb7dc7ca2d8b893a8ba610511543cb390baeb5b5c09e03ce62` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/instance--4e34d617a18aae7430196bf5.md) | 260 | `declaration-track:4e34d617a18aae7430196bf523bb5463d2185c4bf8447b0cf7c449a449e79be0` |
| 27 | `theorem` | [StateEqStateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqstateeqrs-trans--147d30cee542f7e3c2c3e80a.md) | 265 | `result-track:147d30cee542f7e3c2c3e80a4c6a544d494adbf890f1d0e1d6656fe57b086693` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/instance--ce6fe9a102d8b24b7282e8b7.md) | 272 | `declaration-track:ce6fe9a102d8b24b7282e8b71cd6758220790a02b053d9c911062f0a6b92af3f` |
| 29 | `theorem` | [stateEq_implies_write_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeq-implies-write-eq--086ad6c3c3a097009ee155d8.md) | 276 | `result-track:086ad6c3c3a097009ee155d8397cd02fcdf4508e99aad68efd495b447aefcf10` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/stateeqrs-implies-write-eq-rs--9a61b2197b43a23664985a1c.md) | 290 | `result-track:9a61b2197b43a23664985a1ce9e7dfe72c1d7e1c84b1bb79969f53f619f92cbe` |
| 31 | `theorem` | [write_eq_implies_stateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/write-eq-implies-stateeq--612b6d6f18cee9971c7c309c.md) | 299 | `result-track:612b6d6f18cee9971c7c309c1ce422c6f09c81aea3ae2d4ea105f6bebf890549` |
| 32 | `theorem` | [compiler_correctness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/compiler-correctness--8be697f8f867cd4135061a2c.md) | 313 | `result-track:8be697f8f867cd4135061a2cf88a883a937320efb2d11b0e923d8c6fb58f7151` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean/declarations/example--e85696338f6371cb425ad3eb.md) | 391 | `declaration-track:e85696338f6371cb425ad3ebc472e2952dbcdf45abca4563433ac0d1eedbd66c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
