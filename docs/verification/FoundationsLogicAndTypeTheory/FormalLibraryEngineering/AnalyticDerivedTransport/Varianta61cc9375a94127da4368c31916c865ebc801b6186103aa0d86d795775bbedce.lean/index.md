# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticDerivedTransport.Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38749dc97a224270802a5265d61169b70fdadeb5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38749dc97a224270802a5265d61169b70fdadeb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoEulerTransport` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TransportBridgeLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/declarations/transportbridgelevel--b9ba510fb3c381790d41e3b6.md) | 19 | `declaration-track:b9ba510fb3c381790d41e3b6872ea68c50fd6492847d4934397509c12ceea028` |
| 2 | `structure` | [AnalyticDerivedTransportModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/declarations/analyticderivedtransportmodel--565d3b92c80b59e24a0fb1c2.md) | 35 | `declaration-track:565d3b92c80b59e24a0fb1c2a19f13fb03840d390f341d561a9fe3d2b5d74674` |
| 3 | `theorem` | [transport_model_euler_invariant_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/declarations/transport-model-euler-invariant-if-supplied--86247cc5b1ad08d606d1520e.md) | 45 | `result-track:86247cc5b1ad08d606d1520e96b113328518806465ca833c2b721c34c6ac6018` |
| 4 | `theorem` | [transport_model_quasi_iso_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce.lean/declarations/transport-model-quasi-iso-if-supplied--cc3b62d4e246e2d18a042bf9.md) | 50 | `result-track:cc3b62d4e246e2d18a042bf9425be7a6a9b6613504a27db4b981e01e52477e0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
