# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65a011c0bd5ab309215c6f47e9d942a5ade5c363",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65a011c0bd5ab309215c6f47e9d942a5ade5c363`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD.Transcendental` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/dualenv--dc05d3788bacb647209be31e.md) | 42 | `declaration-track:dc05d3788bacb647209be31e646221943f4cf2236a3028334ea41fe413dc26b4` |
| 2 | `def` | [evalDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/evaldual--e8263f820ea846a8b8f547d2.md) | 52 | `declaration-track:e8263f820ea846a8b8f547d2035f333db897d2646465cc3535d7e463f1f05533` |
| 3 | `def` | [evalDual?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/evaldual--9825120b515ea8c2b1c75f50.md) | 84 | `declaration-track:9825120b515ea8c2b1c75f501e3433015f6336bd114827a16cfe4ce23277fc75` |
| 4 | `def` | [evalDual?1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/evaldual-1--94ef5edd2bda2b6e9fbb3483.md) | 159 | `declaration-track:94ef5edd2bda2b6e9fbb348365ac9c363eb22b106a42e43eec3875fe00e55699` |
| 5 | `def` | [mkDualEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/mkdualenv--2b37ad513157fce2ed0aac75.md) | 165 | `declaration-track:2b37ad513157fce2ed0aac75257072c942901515109d45597b3f65169f4fa34e` |
| 6 | `def` | [evalWithDeriv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/evalwithderiv--f539f2eaf9faf46b7328a439.md) | 169 | `declaration-track:f539f2eaf9faf46b7328a439dc61fc8fedc048484dba575c37faf75ec9d48aa2` |
| 7 | `def` | [derivInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/derivinterval--7c1a43615a645621a9b960ed.md) | 173 | `declaration-track:7c1a43615a645621a9b960ed1377cc76fda51d772e3ea5ae7fad2e881b102e76` |
| 8 | `def` | [evalWithDeriv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant44256ba1c22d1be628c044baffae2ba2f755ce24833d5002ecd0d89792855c65.lean/declarations/evalwithderiv1--dcf95297b584b3ba9d173535.md) | 177 | `declaration-track:dcf95297b584b3ba9d173535a641a497b8ac9a346a5176eb32804b8c298ea26b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
