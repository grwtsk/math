# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.RootedDerivations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae46f1e24192d38e5f464b0a4e5da7de12d66f7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae46f1e24192d38e5f464b0a4e5da7de12d66f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RootedDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/rootedderivation--a137611fff390f6d7f25153c.md) | 30 | `declaration-track:a137611fff390f6d7f25153c7d116b5fddab5472ca8843ad89fdaa54cb192737` |
| 2 | `inductive` | [DelegationPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/delegationpath--584ace32b2a40c2adba8df85.md) | 41 | `declaration-track:584ace32b2a40c2adba8df85acf46d3c22a56c41cacdc3c8d9d64b7fab7f1223` |
| 3 | `theorem` | [derivation_has_root_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-has-root-path--53824f4cf04f95e56a192556.md) | 55 | `result-track:53824f4cf04f95e56a19255691ad3a3286347c6ff6a48f658604b6cef2f171c9` |
| 4 | `theorem` | [derivation_has_root](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-has-root--5ea41e67919ec0a343080431.md) | 66 | `result-track:5ea41e67919ec0a3430804315b39629e917e67faec6566b12a228335b388704c` |
| 5 | `theorem` | [derivation_of_root_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-of-root-path--705a0fbb0af1c2586297010c.md) | 73 | `result-track:705a0fbb0af1c2586297010c5d32ec8a9e0dc7f7ade409fd5adc96ee8ee39572` |
| 6 | `theorem` | [derivation_iff_root_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-iff-root-path--4acba7ee37ef05fc2da99921.md) | 82 | `result-track:4acba7ee37ef05fc2da99921854177721bafbbb5595a308a358e8e2f978f5ce4` |
| 7 | `theorem` | [no_roots_no_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/no-roots-no-derivation--519cadb45b9b7f3ef6abfeb1.md) | 93 | `result-track:519cadb45b9b7f3ef6abfeb1f5ff4199362d47de318c5ca4ba7009e5fa682c35` |
| 8 | `theorem` | [derivation_preserves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-preserves--642c434364f953489c70aff1.md) | 101 | `result-track:642c434364f953489c70aff18514b02b6e4832975c672da30ab8b19e1e655978` |
| 9 | `theorem` | [derivation_scope_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-scope-preserved--5a148bb2142e1839079392ab.md) | 115 | `result-track:5a148bb2142e1839079392abaa616bb456a62e073d5da6cacbaf214e79e36952` |
| 10 | `inductive` | [SymbolicDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/symbolicderivation--c0b453ee4f944732c55a2e4a.md) | 131 | `declaration-track:c0b453ee4f944732c55a2e4a823190d24f7587e116b468ddf1edc5f8cf225b9c` |
| 11 | `theorem` | [symbolic_derivation_erases](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/symbolic-derivation-erases--c06445ca12275600f7beb870.md) | 150 | `result-track:c06445ca12275600f7beb87045a38891ffd20f16bd699a5b0c5c6c395188c9a2` |
| 12 | `theorem` | [derivation_adds_symbols](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/derivation-adds-symbols--02cb3934bd0a3d305bf9ebe0.md) | 160 | `result-track:02cb3934bd0a3d305bf9ebe0fbe918a6781dd60a876ca2e32ac5593790e3b451` |
| 13 | `theorem` | [symbolic_derivation_iff_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/symbolic-derivation-iff-derivation--e9ef4e74d20167c62c1ab5ac.md) | 170 | `result-track:e9ef4e74d20167c62c1ab5ac9bdb155debcdcb4b128c5fcc6fc4f28a70b267aa` |
| 14 | `theorem` | [no_roots_no_symbolic_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/no-roots-no-symbolic-derivation--a3796b74e934ff1474e147e1.md) | 176 | `result-track:a3796b74e934ff1474e147e16334e657d07a233d9733b65d3b355eb12e866fa1` |
| 15 | `inductive` | [CycleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/cyclestep--a448cc3f2499c98ae1a05f12.md) | 185 | `declaration-track:a448cc3f2499c98ae1a05f1280d568536eb6dcbd2cee1bd87a08befd6dea74fe` |
| 16 | `theorem` | [cycle_has_edges](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/cycle-has-edges--fa7eac9d4159c542a136a1a7.md) | 190 | `result-track:fa7eac9d4159c542a136a1a754f05844f18961587a5a5b73327e2bcde415eecd` |
| 17 | `theorem` | [cycle_has_no_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/cycle-has-no-derivation--1137374608a8e628392f71c6.md) | 195 | `result-track:1137374608a8e628392f71c6077615a49a63f8a704706806b7ca944c8dda8c44` |
| 18 | `theorem` | [symbols_and_cycle_do_not_create_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean/declarations/symbols-and-cycle-do-not-create-authority--88f10d89ad00f1fc35dd2469.md) | 201 | `result-track:88f10d89ad00f1fc35dd24694fc0f5e528d074bdf35b44f1fd8ac9eb094cdf0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
