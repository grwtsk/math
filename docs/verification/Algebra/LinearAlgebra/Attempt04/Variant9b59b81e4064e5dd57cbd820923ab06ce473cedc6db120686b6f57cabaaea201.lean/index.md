# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt04.Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d4af6eeda6910be96032b447cdfbd7979881ead",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d4af6eeda6910be96032b447cdfbd7979881ead`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/cartanmatrix--09555a4321b9c3d0a473a818.md) | 22 | `declaration-track:09555a4321b9c3d0a473a818fa89466b67ec1216b9cf5c4cb404c617b1d1c3c4` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/mutationmatrix-cartan--cd83190fd5dc1ed4c754a610.md) | 25 | `result-track:cd83190fd5dc1ed4c754a610a2e66c902a547aafbe33e512aa990cc918386aa5` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/mutation-form-entry--0d24ccd3ecf3616a01097c1f.md) | 41 | `result-track:0d24ccd3ecf3616a01097c1fdd1e65a3b03f76b708878aa6fdfba1a59ee71f8c` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/weightedcartan-symmetric--dafb8aa631ef6329b8a367de.md) | 57 | `result-track:dafb8aa631ef6329b8a367de53328a3da215f5639eca458b0ed22e78a830aa15` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/mutationmatrix-weighted-metric--806e1c64799e6e4047cf7839.md) | 71 | `result-track:806e1c64799e6e4047cf78390fc4f235b278cae88650915d5e82d8d3e4f63fa2` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/mutationmatrix-symmetric-metric--34a69c67e6c31e9854518312.md) | 89 | `result-track:34a69c67e6c31e9854518312226a462f5d94f922945082d51c06b928c074e636` |
| 7 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../mathematics/Algebra/LinearAlgebra/Attempt04/Variant9b59b81e4064e5dd57cbd820923ab06ce473cedc6db120686b6f57cabaaea201.lean/declarations/mutationmatrix-nonadjacent-commute--f093d73f9963f4678f914445.md) | 97 | `result-track:f093d73f9963f4678f9144456cc334504ea28469c529b3c2ec8a5b69bf382705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
