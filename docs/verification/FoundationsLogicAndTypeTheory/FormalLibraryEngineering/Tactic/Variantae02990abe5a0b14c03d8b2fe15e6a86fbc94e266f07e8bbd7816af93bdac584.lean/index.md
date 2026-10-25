# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca27a58658edca8199bb332c61321ddb0c523b4a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca27a58658edca8199bb332c61321ddb0c523b4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean.json)

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
| 1 | `def` | [tacticMImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/tacticmimpl--e6d7450905b76fc4dce5c184.md) | 18 | `declaration-track:e6d7450905b76fc4dce5c184fae345516e159312ea407e4b37f99b2e3edd4b63` |
| 2 | `opaque` | [tacticM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/tacticm--26fb374ae10f76bc108606ac.md) | 27 | `declaration-track:26fb374ae10f76bc108606ac6a3e955c2ae175127e8fc8cccf7fd2b0fd1b20a1` |
| 3 | `def` | [ruleTacImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/ruletacimpl--ca7357ad8c5ea6d0362df02f.md) | 30 | `declaration-track:ca7357ad8c5ea6d0362df02f437df904932eb8fc0966b0ea3946cbea588eef22` |
| 4 | `opaque` | [ruleTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/ruletac--fd09e5d2953a5af30a278884.md) | 36 | `declaration-track:fd09e5d2953a5af30a27888454a0dd9027fbc2fa549f329c1e1dea5b2ce8ca0e` |
| 5 | `def` | [singleRuleTacImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/singleruletacimpl--0d6db3d5d711f6b63989a3bc.md) | 39 | `declaration-track:0d6db3d5d711f6b63989a3bc8cfb91d670c6506288a1e5cc137fa240959c1fbe` |
| 6 | `opaque` | [singleRuleTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/singleruletac--ddb810cf8949649c50a660e3.md) | 46 | `declaration-track:ddb810cf8949649c50a660e3b7288383d72edd26c7e4e843ef3798b6a2a68183` |
| 7 | `def` | [tacticStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/tacticstx--fb76b0c6a0e8fe0950af870b.md) | 52 | `declaration-track:fb76b0c6a0e8fe0950af870bdfa210d29484edb84a6f8d756b9c5817d916734d` |
| 8 | `def` | [tacGenImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/tacgenimpl--6b3d5e07c582b1ac77786200.md) | 76 | `declaration-track:6b3d5e07c582b1ac77786200b74e7ed2956095d6ae4590c1578bfad686d4fd5c` |
| 9 | `opaque` | [tacGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584.lean/declarations/tacgen--850a5559c369fabfe43caf00.md) | 118 | `declaration-track:850a5559c369fabfe43caf004d3d9748a5896afe346c68c4778f087bfd544d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
