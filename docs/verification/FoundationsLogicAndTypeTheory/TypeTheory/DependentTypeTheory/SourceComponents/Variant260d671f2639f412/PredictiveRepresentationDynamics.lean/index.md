# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Variant260d671f2639f412.PredictiveRepresentationDynamics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b173c512cd0fa221122c28b1c2de3de6d41ce7e2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/index.md) · [Full source](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b173c512cd0fa221122c28b1c2de3de6d41ce7e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PredictiveRepresentation](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/predictiverepresentation--e8565020bc973ecb103624da.md) | 55 | `declaration-track:e8565020bc973ecb103624da35e0f385420bedb3034f7351da1561b9a766ab9f` |
| 2 | `def` | [run](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/run--78b21d443bd525374005af5f.md) | 72 | `declaration-track:78b21d443bd525374005af5f3480cd55deb8cb5d18b5cf5367459f47426a866a` |
| 3 | `theorem` | [run_nil](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/run-nil--dba7268e1a3a6a575bba7941.md) | 77 | `result-track:dba7268e1a3a6a575bba794110eb7c0fa0a76fa72f37c7f3c0a727afeba91d55` |
| 4 | `theorem` | [run_cons](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/run-cons--dd856501469dfe7a0d7dde4e.md) | 81 | `result-track:dd856501469dfe7a0d7dde4e690d6570515d87a6dbfb602c1be70c99513d5e62` |
| 5 | `theorem` | [encode_run](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/encode-run--041ff97fd5cf846c209ac6c4.md) | 86 | `result-track:041ff97fd5cf846c209ac6c4c10e1b23b24430a4f95486abfe7541582b401171` |
| 6 | `theorem` | [read_run_encode](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/read-run-encode--962dabb0ec9021b42df98cb3.md) | 95 | `result-track:962dabb0ec9021b42df98cb3eaf13c168a1c695732eb8d806605fa7be534dabd` |
| 7 | `theorem` | [encode_eq_implies_causalEquivalent](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/declarations/encode-eq-implies-causalequivalent--8f5bca578cae7ae1fa95838d.md) | 107 | `result-track:8f5bca578cae7ae1fa95838debbe40be428cada24f75d958d4887b67449d1404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
