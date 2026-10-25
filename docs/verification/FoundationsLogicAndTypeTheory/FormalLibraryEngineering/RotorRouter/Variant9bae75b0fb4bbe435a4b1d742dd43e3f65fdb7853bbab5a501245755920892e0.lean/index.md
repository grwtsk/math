# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotorRouter.Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7ddcd390492e1b1ebf07415b45155b209439b1a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7ddcd390492e1b1ebf07415b45155b209439b1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean.json)

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
| 1 | `def` | [rotorTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/declarations/rotortransition--74ced2304e46841084d89209.md) | 15 | `declaration-track:74ced2304e46841084d89209500654423ab7ef8edc6c01bc2e2eb5a18fbcd374` |
| 2 | `structure` | [RotorStepCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/declarations/rotorstepcertificate--ad122e630fcb4a72e0d446c7.md) | 18 | `declaration-track:ad122e630fcb4a72e0d446c7d51a0019f90487d0a0e3acbea39efafdc99f26e4` |
| 3 | `theorem` | [rotor_transition_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/declarations/rotor-transition-deterministic--27ea73dbe87b59cf345e96a1.md) | 26 | `result-track:27ea73dbe87b59cf345e96a160ffc52766b88d496e167f2f0a9a80902bfb5733` |
| 4 | `structure` | [RotorTieBreakCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/declarations/rotortiebreakcertificate--60008fc0cef35872111940c6.md) | 32 | `declaration-track:60008fc0cef35872111940c6b0d9670e70f3d2c4856bf844c50dc7abb4c1833c` |
| 5 | `theorem` | [rotor_tie_break_preserves_astar_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant9bae75b0fb4bbe435a4b1d742dd43e3f65fdb7853bbab5a501245755920892e0.lean/declarations/rotor-tie-break-preserves-astar-order--4e801f35c6f59033c75f7b87.md) | 39 | `result-track:4e801f35c6f59033c75f7b87392067a6c7e430f40dbcc79c742a11501142b198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
