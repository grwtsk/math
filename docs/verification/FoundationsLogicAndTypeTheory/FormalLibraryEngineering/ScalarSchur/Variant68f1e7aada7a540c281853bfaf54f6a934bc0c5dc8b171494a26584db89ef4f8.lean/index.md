# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarSchur.Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98814760c06de77e71b5dc5e58f1476dff5db2ab",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98814760c06de77e71b5dc5e58f1476dff5db2ab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean.json)

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
| 1 | `def` | [scalarBlockForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarblockform--2540685c6a4ac05890d92b97.md) | 28 | `declaration-track:2540685c6a4ac05890d92b97cd4cb923a7c54cbf03c0518803c6488ea0d3a964` |
| 2 | `def` | [scalarBlockPositiveForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarblockpositiveform--f2a793a37b6ea1b443c6c726.md) | 32 | `declaration-track:f2a793a37b6ea1b443c6c726bfeeec28ca86d2e9b8161eb0735ddaceea3a2427` |
| 3 | `def` | [scalarProvenanceProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceproject--7d20dfc1db383a26169e696d.md) | 54 | `declaration-track:7d20dfc1db383a26169e696d40c4aa807bf82384574c04a6fd6558949bdfbc33` |
| 4 | `theorem` | [scalarProvenanceProject_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceproject-apply--5203eb7971ad0d76956ea42d.md) | 64 | `result-track:5203eb7971ad0d76956ea42d074abcc73507c6efe2d39c5eff957a316d1c5ba0` |
| 5 | `theorem` | [scalarProvenanceProject_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceproject-idempotent--3b874196cf69f78b97be148f.md) | 69 | `result-track:3b874196cf69f78b97be148f03b141b34329b6fa63842574f7e65a3d3516635a` |
| 6 | `theorem` | [scalarProvenanceProject_orthogonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceproject-orthogonal--c812dd0348a28ffdbf49a240.md) | 76 | `result-track:c812dd0348a28ffdbf49a2400c3e752ff797d69538221f0617cbf32be5199a34` |
| 7 | `def` | [scalarProvenanceProjector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceprojector--8fd90cc552152d47007c7d99.md) | 86 | `declaration-track:8fd90cc552152d47007c7d9918499461e036f25366a9f1ae3fb3510b59a03044` |
| 8 | `theorem` | [scalarProvenanceResidual_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarprovenanceresidual-apply--3bf2055c3771bcf6d9548784.md) | 97 | `result-track:3bf2055c3771bcf6d954878474bcdb5784ce6b52e1c92e5f043c703bdd1e184f` |
| 9 | `theorem` | [scalarResidualForm_eq_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalarresidualform-eq-schur--a3e930e0a7269d9c87940a09.md) | 110 | `result-track:a3e930e0a7269d9c87940a0968da89a28b3ff1866c0da76d1dbf9712a8f60f14` |
| 10 | `theorem` | [scalar_schur_complement_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalar-schur-complement-nonnegative--e85c854b2d91e3f271f6e778.md) | 125 | `result-track:e85c854b2d91e3f271f6e778a39dc247df6df10929facfedf1fbdc75790c95ee` |
| 11 | `theorem` | [scalar_quadratic_schur_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8.lean/declarations/scalar-quadratic-schur-decomposition--5988f4e5d49aa916203784d6.md) | 137 | `result-track:5988f4e5d49aa916203784d6137003575fbeb900d41830600c70839bfb9aec0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
