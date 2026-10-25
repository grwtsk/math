# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotorRouter.Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02971ea039c202d0cd492c19fd213b70a90d01a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02971ea039c202d0cd492c19fd213b70a90d01a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean.json)

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
| 1 | `def` | [rotorTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/declarations/rotortransition--f3a6f11df97d45cd629e3bf0.md) | 7 | `declaration-track:f3a6f11df97d45cd629e3bf0aaf9f982bf6092594a07eb3ef2eea64c628d201b` |
| 2 | `structure` | [RotorStepCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/declarations/rotorstepcertificate--a991f9656a591e7036a9f926.md) | 10 | `declaration-track:a991f9656a591e7036a9f926ee657a4fd6874fe2d6547c257dec6ad16f0aa4a8` |
| 3 | `theorem` | [rotor_transition_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/declarations/rotor-transition-deterministic--7c958f0f5deab728bde1b61b.md) | 18 | `result-track:7c958f0f5deab728bde1b61b3fc912435a3c725d2d2f72346af582a7212e8f7a` |
| 4 | `structure` | [RotorTieBreakCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/declarations/rotortiebreakcertificate--5b83e5d5f4c5d0078a463899.md) | 24 | `declaration-track:5b83e5d5f4c5d0078a463899d66057475a12d6ce13f8c382684a12b0f5f88ce8` |
| 5 | `theorem` | [rotor_tie_break_preserves_astar_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotorRouter/Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff.lean/declarations/rotor-tie-break-preserves-astar-order--521d1ff537a6f6252aa016bb.md) | 31 | `result-track:521d1ff537a6f6252aa016bb15ab7898525479201b07935692123774edaf6a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
