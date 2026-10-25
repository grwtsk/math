# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseArraySizes.Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e189e1e7da65584024a8887b4b9dbde379a3cf41",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e189e1e7da65584024a8887b4b9dbde379a3cf41`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.CaseValues` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CaseArraySizesSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/declarations/casearraysizessubgoal--cde328ff7c6bad935a0cec9d.md) | 16 | `declaration-track:cde328ff7c6bad935a0cec9df82f10daa371b41a1b28edeb7548d306424a8904` |
| 2 | `def` | [getArrayArgType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/declarations/getarrayargtype--7c5c8146f7c36daeee196c64.md) | 23 | `declaration-track:7c5c8146f7c36daeee196c64fd083411867b42c8d58543b87bb48fc51f97c92c` |
| 3 | `def` | [mkArrayGetLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/declarations/mkarraygetlit--653b919f81a78ed1c08664b9.md) | 30 | `declaration-track:653b919f81a78ed1c08664b9aa8a0b7777edc2c65a0b35dc695a8f61ce5260fe` |
| 4 | `def` | [introArrayLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/declarations/introarraylit--cd192fb10d02aa689583df9d.md) | 35 | `declaration-track:cd192fb10d02aa689583df9dd0d23be5c19dbc7ef6dd0ab40b57c5395e1f1062` |
| 5 | `def` | [caseArraySizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/declarations/casearraysizes--857d95f737f5b0e6a6638832.md) | 65 | `declaration-track:857d95f737f5b0e6a6638832fd47f8ccf9c5ce506f403129d9f5e512bf1a02dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
