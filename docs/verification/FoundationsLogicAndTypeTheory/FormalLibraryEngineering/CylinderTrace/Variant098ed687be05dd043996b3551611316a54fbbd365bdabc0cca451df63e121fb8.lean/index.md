# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTrace.Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899c8c6f1521e9e373eda28ffbe5afff3b59c89f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899c8c6f1521e9e373eda28ffbe5afff3b59c89f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Trace.CylinderAlgebra` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CylinderTraceCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/declarations/cylindertracecertificate--b78411212a7aa66719508bca.md) | 9 | `declaration-track:b78411212a7aa66719508bca4f496a9d2fdf00d5ec7526847b5d5c5a54b3cc41` |
| 2 | `def` | [cylinderTraceValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/declarations/cylindertracevalue--c2540876fdc62ed8ae8182f5.md) | 36 | `declaration-track:c2540876fdc62ed8ae8182f530daff3cb1acfa74df673a952ea3171b8c3d7278` |
| 3 | `theorem` | [cylinder_trace_well_defined](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/declarations/cylinder-trace-well-defined--d06f0b526a9171b15c16c54f.md) | 42 | `result-track:d06f0b526a9171b15c16c54f20b28193e3f32a061bc4b26dc931d517b743458a` |
| 4 | `theorem` | [cylinder_trace_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/declarations/cylinder-trace-positive--affc62ab39b2f6c04624109b.md) | 51 | `result-track:affc62ab39b2f6c04624109b1ae48b9d14cc8c0159113728c2ff79fc6897e022` |
| 5 | `theorem` | [cylinder_trace_tracial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/declarations/cylinder-trace-tracial--de4f96cd9ec58eabef6cf359.md) | 59 | `result-track:de4f96cd9ec58eabef6cf3598dde3cdf54d0cd3491d0c2937d11d1c2713862e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
