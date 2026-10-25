# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNum.Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5f3f35d354f40dfd6fd70c77237db72c18afd8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5f3f35d354f40dfd6fd70c77237db72c18afd8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.LitValues` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.IntInstTesters` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/declarations/checkexp--70ebc2960ab27bcbab9c0e0e.md) | 23 | `declaration-track:70ebc2960ab27bcbab9c0e0e172b5e01d0a4c62fb3762f551c8630968f5823c3` |
| 2 | `def` | [evalNatCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/declarations/evalnatcore--568969cb6497172e3d7a5aca.md) | 35 | `declaration-track:568969cb6497172e3d7a5acae830848889ba968d94f4bc5a50588902268eb340` |
| 3 | `def` | [evalIntCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/declarations/evalintcore--773a4ad34f5b4cbcd69ac7eb.md) | 57 | `declaration-track:773a4ad34f5b4cbcd69ac7eba04d812ed2f4352dede09e3fdbc93458b0090aa5` |
| 4 | `def` | [evalNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/declarations/evalnat--30bd33285ed6c6adba371dd7.md) | 84 | `declaration-track:30bd33285ed6c6adba371dd75f48af920a69542df396e0f653e2e1d327309be6` |
| 5 | `def` | [evalInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/declarations/evalint--7a6c958e6b8c6765c60af31e.md) | 87 | `declaration-track:7a6c958e6b8c6765c60af31e45d021125ebe2dc16341cd39479487d5beab1dbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
