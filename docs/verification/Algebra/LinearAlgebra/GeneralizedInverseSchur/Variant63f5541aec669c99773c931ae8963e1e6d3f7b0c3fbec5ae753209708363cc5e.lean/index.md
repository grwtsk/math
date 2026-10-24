# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseSchur.Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae0eeadd6c649d703a660584930b6f6a6e83ab7e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae0eeadd6c649d703a660584930b6f6a6e83ab7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/generalizedinverseblockrealization--6a672b5923567cbc5bd7f3a2.md) | 46 | `declaration-track:6a672b5923567cbc5bd7f3a2e4b354aa9c02290a1512ccabf76d7a7653dd32ba` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/solve--9f204b08a6757d0f95505c94.md) | 77 | `declaration-track:9f204b08a6757d0f95505c94999b8fa6b665d1d4c05ac6369e71adc2df553c1c` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/solve-apply--76296060a5721510943b5efc.md) | 82 | `result-track:76296060a5721510943b5efce14badfd7abc8826fdea820093b4a189a4a5ff5b` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/provenance-mulvec-solve--e37997e2efce4a7d4bba1ccb.md) | 87 | `result-track:e37997e2efce4a7d4bba1ccb6051996a9991093cd8ff9ca467dc969e860feb98` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/form-sub-right--731aa051e5598518d1348e4e.md) | 93 | `result-track:731aa051e5598518d1348e4e93cb5494366a523504b9066b46807ad44d69b3c5` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/blockschursolver--ba55cb9bb6dbef0853eaa854.md) | 105 | `declaration-track:ba55cb9bb6dbef0853eaa854f392b699d0f8a3b6db3c30497477028ff084b7b2` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/blockschursolver-solve--dcc1be0d9ea38e122c612194.md) | 116 | `result-track:dcc1be0d9ea38e122c612194aa32fd6c3d0435ee454fdfa526169df2fbac0a3e` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/generalizedschurmatrix--75ca4c1194b882f2bce8e4c0.md) | 121 | `declaration-track:75ca4c1194b882f2bce8e4c0125da54391726a4cc413694d48a7f16f0b2a365c` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/generalizedschurcorrection-pairing--d3b7fc56a7af1c6558bfb5d5.md) | 128 | `result-track:d3b7fc56a7af1c6558bfb5d537c8cb43b4a126ca1dcec37c744d85cd2c833fd2` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/schurform-eq-generalizedschurmatrix--49d27176b8418cabb3335f74.md) | 149 | `result-track:49d27176b8418cabb3335f74043ef04c4252079feffe37ccd655fda48ac23266` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/generalizedschurmatrix-nonnegative--41779a5f8c091da37bedb7c7.md) | 160 | `result-track:41779a5f8c091da37bedb7c7064a7ae325445afd65f7cf30639b9d42ee978f1c` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/declarations/autonomous-energy-decomposition--425423d8e8f5919ca34b00e6.md) | 168 | `result-track:425423d8e8f5919ca34b00e6ec55bbb2703e38f31c19100e6a2d7b2037b3de0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
