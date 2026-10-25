# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrobeniusToyWriteback.Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff1e92acc53afc45f378716c315fc6acf79e1944",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff1e92acc53afc45f378716c315fc6acf79e1944`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RustToyFrobeniusReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/declarations/rusttoyfrobeniusreceipt--6a8277b474462624d1b4efc4.md) | 5 | `declaration-track:6a8277b474462624d1b4efc49e57ed0171e69997a7d81bd863aa895f8fb258e1` |
| 2 | `def` | [currentMoveReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/declarations/currentmovereceipt--a9f8225dd5f582941b1a21be.md) | 17 | `declaration-track:a9f8225dd5f582941b1a21be78a398fb568d23295e4281be4d6711e5c482fc56` |
| 3 | `theorem` | [currentMove_ringAlgebraSatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/declarations/currentmove-ringalgebrasatisfied--8b2a0aaf86f66869af874b7d.md) | 29 | `result-track:8b2a0aaf86f66869af874b7d4e6a4d7e13058cc975c15a7031a74dcc074d8fab` |
| 4 | `theorem` | [currentMove_frobeniusDualitySatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/declarations/currentmove-frobeniusdualitysatisfied--e2ed3adae90dc92254af3490.md) | 33 | `result-track:e2ed3adae90dc92254af34909a1f555cef4571b9bda9914654edce08ee762612` |
| 5 | `theorem` | [currentMove_noUnresolvedResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrobeniusToyWriteback/Variant90bf45d8386fab8e72e5290687b4337b479380e98b8a62ac930c42e4f69ed70c.lean/declarations/currentmove-nounresolvedresidue--589bef98bc9b276cdd2d8cae.md) | 37 | `result-track:589bef98bc9b276cdd2d8cae2814d1f59006e72920e1e797b041399b8b1be058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
