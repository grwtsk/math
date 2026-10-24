# Verification target: GRWTSK.Algebra.LinearAlgebra.ProvenanceProjection.Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveGeometry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenanceProjector](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/provenanceprojector--c73c60d627751bd12d1e48d2.md) | 34 | `declaration-track:c73c60d627751bd12d1e48d2dac6c27d5b19b4e638ff5e29cdd1da84f66644e8` |
| 2 | `def` | [residualMap](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residualmap--8ab9384bcfab7e60a8d6dad5.md) | 45 | `declaration-track:8ab9384bcfab7e60a8d6dad5775e8bc1722f9409ee4b86a0ee5220762d508ea0` |
| 3 | `theorem` | [residualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residualmap-apply--91bdf71e6ccfa9e136251534.md) | 49 | `result-track:91bdf71e6ccfa9e136251534521e93b28fb726c0e40416c446b06783b9a94601` |
| 4 | `theorem` | [project_add_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/project-add-residual--9555588b5e56fae5b9a2584c.md) | 54 | `result-track:9555588b5e56fae5b9a2584ca2a0970d45d1472108b837a5f81957bd31fb890c` |
| 5 | `theorem` | [project_residual_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/project-residual-zero--78d377515e5d3e8902b02215.md) | 59 | `result-track:78d377515e5d3e8902b022152318de79372f7b796e584701f0fb14880dffc67d` |
| 6 | `theorem` | [residual_project_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residual-project-zero--f6b0804857e44dfbc4a33eae.md) | 64 | `result-track:f6b0804857e44dfbc4a33eaea51aa035a92b968b9e4acd707e3736d38327c5f9` |
| 7 | `theorem` | [project_orthogonal_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/project-orthogonal-residual--d8502b00b127ab45411880be.md) | 69 | `result-track:d8502b00b127ab45411880beed9e58083a8ac23bbda3677495e26435f28bdd4b` |
| 8 | `theorem` | [residual_orthogonal_project](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residual-orthogonal-project--a5a1efd8ce57aea61f3dc8ee.md) | 75 | `result-track:a5a1efd8ce57aea61f3dc8ee2d079b2b8c50701f77569c001ab9d673d2873896` |
| 9 | `theorem` | [form_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/form-decomposition--035a63306f5bbd5cd6a607cc.md) | 82 | `result-track:035a63306f5bbd5cd6a607ccc0ea6da2f18ba0ab44e79fa1a41ce54fb05646f0` |
| 10 | `theorem` | [residual_eq_sub_projected](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residual-eq-sub-projected--b51b31218742987c2f867136.md) | 94 | `result-track:b51b31218742987c2f867136866850b389945b5bc39c6da0c6354ae17ff7aab5` |
| 11 | `def` | [projectedForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/projectedform--b08a3dd597ff5f749bc38baf.md) | 100 | `declaration-track:b08a3dd597ff5f749bc38bafb9d0010d673c961d344b5791578986e576a2355e` |
| 12 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residualform--284d0eb75f0ead2906915e26.md) | 105 | `declaration-track:284d0eb75f0ead2906915e2664741efc64cbc4689c63e017436c0c7930bff344` |
| 13 | `theorem` | [residualForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/residualform-nonnegative--ca7e6cae73bb5dc63b5f637d.md) | 109 | `result-track:ca7e6cae73bb5dc63b5f637d9d51f280d737e66e3f4c8631b3589b092969ae0a` |
| 14 | `theorem` | [projectedForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/projectedform-nonnegative--f98377a9d1507c638c8fa55d.md) | 114 | `result-track:f98377a9d1507c638c8fa55d7b0de63e984eabbf5bb29e5071d642b56474e9f0` |
| 15 | `theorem` | [quadratic_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/quadratic-decomposition--bfb270599277c8d4028927ed.md) | 120 | `result-track:bfb270599277c8d4028927ed39cdec82e1e8e83b5283f67149828f74da98c3ef` |
| 16 | `def` | [asResidualization](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/asresidualization--6f981e82ec139d773bbb7200.md) | 126 | `declaration-track:6f981e82ec139d773bbb7200ebaa9cc6025d7757046088a8d7d4bbee008c4216` |
| 17 | `theorem` | [asResidualization_residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/declarations/asresidualization-residualform--8a5f6e0d8fa3d6335ed76bdf.md) | 130 | `result-track:8a5f6e0d8fa3d6335ed76bdfca9cb81c7dd1d819ace9ac2c5ba2c59475d81e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
