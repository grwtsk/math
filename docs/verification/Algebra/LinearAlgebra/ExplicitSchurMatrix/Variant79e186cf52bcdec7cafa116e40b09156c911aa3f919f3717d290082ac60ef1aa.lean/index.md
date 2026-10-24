# Verification target: GRWTSK.Algebra.LinearAlgebra.ExplicitSchurMatrix.Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d2914c01d7a43f132b444858fa2115bace3520",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d2914c01d7a43f132b444858fa2115bace3520`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [provenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/provenancematrix-issymm--6dec29c5656428722b3831e9.md) | 40 | `result-track:6dec29c5656428722b3831e99e52fd2dd46625ea867365b3b6002e0ada994a14` |
| 2 | `theorem` | [inverseProvenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/inverseprovenancematrix-issymm--18534dea442c47deade07c76.md) | 54 | `result-track:18534dea442c47deade07c765b36096de7acd5651068f999664157714b29d3dd` |
| 3 | `def` | [schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/schurmatrix--1f444e3d6d245b7e7cbed454.md) | 84 | `declaration-track:1f444e3d6d245b7e7cbed454f2693e97496752f735623d17af4949dd51b3deea` |
| 4 | `theorem` | [schurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/schurcorrection-pairing--b35380811884d980d03fd5e3.md) | 90 | `result-track:b35380811884d980d03fd5e309eb7088f391980999f18288264cab633e4c4061` |
| 5 | `theorem` | [schurForm_eq_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/schurform-eq-schurmatrix--8fe65730a89ba5601902a9ab.md) | 112 | `result-track:8fe65730a89ba5601902a9abeb3d64d97e315b2761ba97b4b9493a5166eae544` |
| 6 | `theorem` | [schurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/schurmatrix-nonnegative--c17f4b729682bf5f34bb455f.md) | 121 | `result-track:c17f4b729682bf5f34bb455f6a51d60bbb07d64c76631d0ce5ad0d0eac2d9336` |
| 7 | `theorem` | [autonomous_energy_eq_explained_add_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/declarations/autonomous-energy-eq-explained-add-schurmatrix--3b233ca476b5dedb8d413a61.md) | 129 | `result-track:3b233ca476b5dedb8d413a617feb6d35c845cdd958e1c7129737c5003937020c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
