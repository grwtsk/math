# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c5c80047dbea199511090043a7e3a04071ac2da",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c5c80047dbea199511090043a7e3a04071ac2da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.optionCongr_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-optioncongr-one--9b200461c6d26de8320fbbb6.md) | 25 | `result-track:9b200461c6d26de8320fbbb6c0979f2c7ad8ff19cc62e1c3725f1349b39a5dab` |
| 2 | `theorem` | [Equiv.optionCongr_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-optioncongr-swap--3f081ad4d38520da70f5cdec.md) | 29 | `result-track:3f081ad4d38520da70f5cdeca46391a73deb705017998bc4df4c60f7e4c94d9e` |
| 3 | `theorem` | [Equiv.optionCongr_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-optioncongr-sign--6438fc006b33e27884c33d8d.md) | 39 | `result-track:6438fc006b33e27884c33d8d22d1742ca54f596255f7b2c9abbb91cf40987cd4` |
| 4 | `theorem` | [map_equiv_removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/map-equiv-removenone--f5f9c57d4d163621dddee096.md) | 47 | `result-track:f5f9c57d4d163621dddee0968d2436795e6b933f89aebd2e131f7ae7c3a7f714` |
| 5 | `def` | [Equiv.Perm.decomposeOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-perm-decomposeoption--1ea70b514f6faa4f1df23387.md) | 64 | `declaration-track:1ea70b514f6faa4f1df2338793a025febcf44bf24b0feefb972442e5d70e6ad2` |
| 6 | `theorem` | [Equiv.Perm.decomposeOption_symm_of_none_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-perm-decomposeoption-symm-of-none-apply--57470ac8d735ebe0c4f9573e.md) | 74 | `result-track:57470ac8d735ebe0c4f9573e98750e381e4699b445978a34c72e4bd86a3540be` |
| 7 | `theorem` | [Equiv.Perm.decomposeOption_symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/equiv-perm-decomposeoption-symm-sign--b22c6e61c57b119868120842.md) | 77 | `result-track:b22c6e61c57b119868120842711ed5104485c225feffd0c0805d7549b70f000b` |
| 8 | `theorem` | [Finset.univ_perm_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a.lean/declarations/finset-univ-perm-option--0f1b69ecd025d189ad5ecdc6.md) | 82 | `result-track:0f1b69ecd025d189ad5ecdc675b9e098f0654903a0be628806e1993e2d8f884a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
