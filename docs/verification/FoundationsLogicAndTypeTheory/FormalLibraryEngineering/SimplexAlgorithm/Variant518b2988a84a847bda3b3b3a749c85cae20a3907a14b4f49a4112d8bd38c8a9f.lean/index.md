# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimplexAlgorithm.Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d68c417b63089d4712cfa5af4cc498796fa6246",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d68c417b63089d4712cfa5af4cc498796fa6246`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.PositiveVector` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/declarations/preprocess--b79c34dc1dc4696ed64cf3ce.md) | 29 | `declaration-track:b79c34dc1dc4696ed64cf3cea9ba340cf92311e3e7ae58cae84dee6ad1e99fa0` |
| 2 | `def` | [postprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/declarations/postprocess--1cfd07a343376d6661fb2042.md) | 40 | `declaration-track:1cfd07a343376d6661fb2042a7237e62b26702d59c4164bdbce45a4ce13bda8e` |
| 3 | `def` | [CertificateOracle.simplexAlgorithmSparse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/declarations/certificateoracle-simplexalgorithmsparse--a9011ad22b08d5343815b1f9.md) | 51 | `declaration-track:a9011ad22b08d5343815b1f9d2b836b40567947c564c728bdbe8cdedbb0ae1ac` |
| 4 | `def` | [CertificateOracle.simplexAlgorithmDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f.lean/declarations/certificateoracle-simplexalgorithmdense--9c6f0b7be49397d822712bbd.md) | 61 | `declaration-track:9c6f0b7be49397d822712bbdc4c6233436a8cecc1064caf8e833cc87f7ac7ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
