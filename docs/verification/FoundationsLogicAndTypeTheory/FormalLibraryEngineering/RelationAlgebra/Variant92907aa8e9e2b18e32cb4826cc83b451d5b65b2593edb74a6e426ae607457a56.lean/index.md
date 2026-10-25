# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelationAlgebra.Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "294104fc622080ee71c00eb2cf3c47a487d90a71",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `294104fc622080ee71c00eb2cf3c47a487d90a71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Context` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SemanticRelationType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/declarations/semanticrelationtype--e10971e3cfc93d0f87158972.md) | 9 | `declaration-track:e10971e3cfc93d0f871589721264ce8e37015625828fb48c26ae3aaf39cc290a` |
| 2 | `structure` | [RelationLaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/declarations/relationlaw--7abc9a3d55d4869809740444.md) | 32 | `declaration-track:7abc9a3d55d48698097404445ab8106b0ebe2ef5cfb9ce69d6ed780f00712061` |
| 3 | `structure` | [RelationAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/declarations/relationalgebra--09d5d4f9c3516fb51e20b4ee.md) | 39 | `declaration-track:09d5d4f9c3516fb51e20b4ee7cb596e376721200849049fbba0acdf7aeea3306` |
| 4 | `def` | [conservative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/declarations/conservative--0a387d3c4c9851c2c12e1d7f.md) | 50 | `declaration-track:0a387d3c4c9851c2c12e1d7f35746ea2571b975ddec5e94b1331fc546968b5e0` |
| 5 | `structure` | [TransitivityCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56.lean/declarations/transitivitycertificate--e033c7be26157f01be77561c.md) | 74 | `declaration-track:e033c7be26157f01be77561c0462a877395f9e708a0ce1c065de5d9e315f0280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
