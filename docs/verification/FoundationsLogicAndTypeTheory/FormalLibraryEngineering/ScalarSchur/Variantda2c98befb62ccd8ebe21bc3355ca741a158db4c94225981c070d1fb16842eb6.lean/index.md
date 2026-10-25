# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarSchur.Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6019e8f3b1feb16eed941c53fd646231a45f58f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6019e8f3b1feb16eed941c53fd646231a45f58f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarBlockForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarblockform--7c757b91928492d6d255aaa1.md) | 28 | `declaration-track:7c757b91928492d6d255aaa115d943b9c25315a90ebf72df88194cfc9c5b0119` |
| 2 | `def` | [scalarBlockPositiveForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarblockpositiveform--ca5f3336d8684f6d4108c893.md) | 32 | `declaration-track:ca5f3336d8684f6d4108c89314c0804fcc6b23f0c2ed9b7c11cecb2dae34b120` |
| 3 | `def` | [scalarProvenanceProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceproject--7c4572f52e07b7b0106f477c.md) | 54 | `declaration-track:7c4572f52e07b7b0106f477cf15a01bb6de3b2daadf55a834020e9dd6e07f073` |
| 4 | `theorem` | [scalarProvenanceProject_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceproject-apply--67e1dd9a848ca08910c01787.md) | 64 | `result-track:67e1dd9a848ca08910c01787a846f23e071385fa05f420dce791417519afaa2c` |
| 5 | `theorem` | [scalarProvenanceProject_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceproject-idempotent--27429901a91464015c57e8cb.md) | 69 | `result-track:27429901a91464015c57e8cbf0308e589fe10ad0f70f8f8ccfb13fad35aaca5d` |
| 6 | `theorem` | [scalarProvenanceProject_orthogonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceproject-orthogonal--2f503f62f7054e56e3093aad.md) | 76 | `result-track:2f503f62f7054e56e3093aad689972b69266dc3bdb11be97da0613b9d843132e` |
| 7 | `def` | [scalarProvenanceProjector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceprojector--91fb9559867b8d6ae23e5fcd.md) | 86 | `declaration-track:91fb9559867b8d6ae23e5fcde110aec598db48e29e12a5172c720568ccf37176` |
| 8 | `theorem` | [scalarProvenanceResidual_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarprovenanceresidual-apply--64a800f3c2c9e03f7e774950.md) | 96 | `result-track:64a800f3c2c9e03f7e774950b013c63bb0319fd508e5dd538cf3a8976b91781c` |
| 9 | `theorem` | [scalarResidualForm_eq_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalarresidualform-eq-schur--1f522dba30dcfd204c1351d0.md) | 108 | `result-track:1f522dba30dcfd204c1351d0c373a1515238651a32f1c92e492cebb6afa73660` |
| 10 | `theorem` | [scalar_schur_complement_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalar-schur-complement-nonnegative--3c268a6b144a7b671dbb88ae.md) | 125 | `result-track:3c268a6b144a7b671dbb88ae2ce72b87dcb1e4aac084b29b1247af7490929b7b` |
| 11 | `theorem` | [scalar_quadratic_schur_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/declarations/scalar-quadratic-schur-decomposition--ae8fedd7e0c4b1c7775d6de0.md) | 137 | `result-track:ae8fedd7e0c4b1c7775d6de081173265ed477e76e575130b04de1eb9157a6349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
