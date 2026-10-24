# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Refinement.Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a201609f53d73f6b0b1e45ff0e9d89634281d9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a201609f53d73f6b0b1e45ff0e9d89634281d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.UniqueZero` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellPartitionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/declarations/cellpartitioncertificate--16f8a41fb649bd38ae98e640.md) | 18 | `declaration-track:16f8a41fb649bd38ae98e640496f7b437cd20bf1d6e0ee63abf4da44ff791e08` |
| 2 | `structure` | [CountPreservingRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/declarations/countpreservingrefinement--9f746b3b063a668f01311554.md) | 42 | `declaration-track:9f746b3b063a668f0131155493aae74cd19512b0a3d9d0a52b4470bd975c9e29` |
| 3 | `inductive` | [RefinementDisposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/declarations/refinementdisposition--ea862eed5146468f1d203fec.md) | 71 | `declaration-track:ea862eed5146468f1d203feca6c68d06987ec41fdb8a406af6eab6ac6e853bfc` |
| 4 | `theorem` | [countPreservingRefinement_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/declarations/countpreservingrefinement-sound--7d346a4c8981422131099447.md) | 85 | `result-track:7d346a4c89814221310994477d75516bdfd305d1dcb6219246c38a7711cd3207` |
| 5 | `theorem` | [countPreservingRefinement_preserves_totalMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/declarations/countpreservingrefinement-preserves-totalmass--03b078845b9ee8b27b12645e.md) | 98 | `result-track:03b078845b9ee8b27b12645ef2c627f90e57b47ac9c050d7fec110a3ec6bedb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
