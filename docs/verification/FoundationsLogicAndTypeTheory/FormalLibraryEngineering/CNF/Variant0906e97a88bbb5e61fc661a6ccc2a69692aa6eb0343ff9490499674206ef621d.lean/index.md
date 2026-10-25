# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CNF.Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be20846136a6022c1fd14e549da03e1a0924b4bd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be20846136a6022c1fd14e549da03e1a0924b4bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean.json)

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
| 1 | `theorem` | [sat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/sat-iff--49cb0ce7cfc8bbf98eac8df7.md) | 29 | `result-track:49cb0ce7cfc8bbf98eac8df74b0d1fbf17764d69e654bc9970b418568cc2af0c` |
| 2 | `theorem` | [sat_negate_iff_not_sat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/sat-negate-iff-not-sat--b50aacedae76a60d33693ace.md) | 31 | `result-track:b50aacedae76a60d33693acef08fe4d862fd009f1ed34d7af381afc076f72188` |
| 3 | `theorem` | [unsat_of_limplies_complement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/unsat-of-limplies-complement--02a2e3924f3fbbd8893c3203.md) | 34 | `result-track:02a2e3924f3fbbd8893c3203064b71001fbacea6a6ee3a3d1f8863f64b54bd11` |
| 4 | `theorem` | [sat_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/sat-iff-exists--69c2a0dbbcef1c0804ba2e46.md) | 46 | `result-track:69c2a0dbbcef1c0804ba2e466a25c0584c87d8ece92ab5d3c30dc7e0621a4747` |
| 5 | `theorem` | [limplies_iff_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/limplies-iff-mem--cb12a80138556f06fde5256b.md) | 50 | `result-track:cb12a80138556f06fde5256b96e7881f3a489e95fd13244f09369c1c3cf8ddbe` |
| 6 | `theorem` | [entails_of_entails_delete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/entails-of-entails-delete--34583fa419e47487fe0e2e8e.md) | 62 | `result-track:34583fa419e47487fe0e2e8e2e45c7bed3b473a426d8c0e35e85d8752827629c` |
| 7 | `theorem` | [sat_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/sat-iff-forall--c94b8a8c419108cb0791e3a0.md) | 72 | `result-track:c94b8a8c419108cb0791e3a01cf44321440c50f2fc743b13349b292ec61a1556` |
| 8 | `theorem` | [limplies_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/limplies-insert--b22f6e5944e1d9e0948a15d1.md) | 77 | `result-track:b22f6e5944e1d9e0948a15d141aa07d9ea91236ba443b50761801f66e4066db7` |
| 9 | `theorem` | [limplies_delete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d.lean/declarations/limplies-delete--fa849b83955d731b3c84f9d6.md) | 82 | `result-track:fa849b83955d731b3c84f9d63ee79483c99a97d8f04af5f8e865c3fda342498b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
