# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2476287fa55c2975c3fd8cf7e74047c14f2ef793",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2476287fa55c2975c3fd8cf7e74047c14f2ef793`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNatVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/mknatvar--e1e7042406904bf770ee5884.md) | 25 | `declaration-track:e1e7042406904bf770ee5884ac2c7eb4c77a16d04640de289f148b3d8ab3c6ea` |
| 2 | `def` | [intIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/intite--8963449217a7e5b0fca9b044.md) | 37 | `declaration-track:8963449217a7e5b0fca9b044d471d4263e8634d73acae0afac899cdfa9f037ca` |
| 3 | `def` | [natToInt'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/nattoint--08a72146529c77945d93f170.md) | 43 | `declaration-track:08a72146529c77945d93f1703c1b1b88da1b0097c098c8cbf2933526833315a9` |
| 4 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/nattoint--22d4f17c8850ac637ef9fe5d.md) | 106 | `declaration-track:22d4f17c8850ac637ef9fe5da62b352e4fdf3ffe84340009c7d0cc9040796afc` |
| 5 | `def` | [assertNatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/assertnatcast--1c739daee0f0f82ca1693047.md) | 115 | `declaration-track:1c739daee0f0f82ca16930470bbcce85e30a59fe5e8d3ea9d0782b0db3e617e6` |
| 6 | `def` | [isNatTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/isnatterm--0ed1fd98e98a5f0bcb6bab32.md) | 126 | `declaration-track:0ed1fd98e98a5f0bcb6bab32fb9eb3f44c7e7e09549d0efc529d7cd92db601b8` |
| 7 | `def` | [isNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/isnonneg--267b16453ccf5ecdd18919be.md) | 133 | `declaration-track:267b16453ccf5ecdd18919be8e1cc950009ce18079f243e5ef10aa3e8777ad68` |
| 8 | `def` | [mkNonnegThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/mknonnegthm--b4b3157a8f9bdc27d8f5275a.md) | 149 | `declaration-track:b4b3157a8f9bdc27d8f5275a2b82ccf0e03aed826309e678f10c2fb394756e30` |
| 9 | `def` | [assertNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Varianta345de8dd17a1180c7af876bb7749a9706da476b3d96fd6f61aabe2a174fe8eb.lean/declarations/assertnonneg--f051a0c94fe55a5dab65bf90.md) | 166 | `declaration-track:f051a0c94fe55a5dab65bf90dbbf91c5c7d8e419a68cff510ea929f9a8a99f35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
