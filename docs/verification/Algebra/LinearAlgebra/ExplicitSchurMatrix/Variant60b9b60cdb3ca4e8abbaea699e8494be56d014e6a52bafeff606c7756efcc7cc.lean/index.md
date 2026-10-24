# Verification target: GRWTSK.Algebra.LinearAlgebra.ExplicitSchurMatrix.Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb912699b30bf6d9d0f7435247a4870ed689f9eb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb912699b30bf6d9d0f7435247a4870ed689f9eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [provenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/provenancematrix-issymm--ce6d8128b62128c74ad28ec0.md) | 32 | `result-track:ce6d8128b62128c74ad28ec0f1c95f82b9758dec6768ce0bcf19aab0eac16bb7` |
| 2 | `theorem` | [inverseProvenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/inverseprovenancematrix-issymm--6d28567b4197e33607decb35.md) | 45 | `result-track:6d28567b4197e33607decb35023cdca440748832715301e00281e34ed3f0cd54` |
| 3 | `def` | [schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/schurmatrix--2dd4921ec1ac7ebde4b2d9f0.md) | 75 | `declaration-track:2dd4921ec1ac7ebde4b2d9f0d80c382b018dedbabba65f0b31f34fb4af8f88b4` |
| 4 | `theorem` | [schurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/schurcorrection-pairing--eba8eddd7cd04e8e2819e4a1.md) | 81 | `result-track:eba8eddd7cd04e8e2819e4a13d142c7ea24d839d2db5e6a769c3fffb90be18ea` |
| 5 | `theorem` | [schurForm_eq_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/schurform-eq-schurmatrix--9904a477fa83fddd2f0eccad.md) | 96 | `result-track:9904a477fa83fddd2f0eccadaab0ca665e0c38f875ed4010a7131ea6dee8414f` |
| 6 | `theorem` | [schurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/schurmatrix-nonnegative--9072b3bed8185fd79b01861d.md) | 105 | `result-track:9072b3bed8185fd79b01861d7c6ae84a743b53304eae81b86e5e50af0fbbd1e2` |
| 7 | `theorem` | [autonomous_energy_eq_explained_add_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/declarations/autonomous-energy-eq-explained-add-schurmatrix--d8c76a5314ba6c1f8ca122c7.md) | 113 | `result-track:d8c76a5314ba6c1f8ca122c755822eea268373a9767428974e6a810fba97a862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
