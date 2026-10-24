# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixExponential.Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ce1d32eeb25cee22355e388894af62b0e7880ae",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ce1d32eeb25cee22355e388894af62b0e7880ae`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-diagonal--506d2633492445cf6f169545.md) | 87 | `result-track:506d2633492445cf6f169545976c0ea2f9bd9250995031b7ccc4d876ef05d969` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-blockdiagonal--34482f5ef642d2d0fcc6a7f7.md) | 90 | `result-track:34482f5ef642d2d0fcc6a7f7629e5b90856c2cd0046f4126dd56813d24a3d0e2` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-blockdiagonal--7e57c928e3677800906b20f6.md) | 94 | `result-track:7e57c928e3677800906b20f69fb09cb1ff7a314fb9a731b1f66ef54723d6c04b` |
| 4 | `theorem` | [exp_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-conjtranspose--79d21a332eeb28e5eb60b2c4.md) | 98 | `result-track:79d21a332eeb28e5eb60b2c404b97a16a68dd568384306ee4a4df142cd4670f7` |
| 5 | `theorem` | [IsHermitian.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/ishermitian-exp--99d383000dd6ea088919540f.md) | 102 | `result-track:99d383000dd6ea088919540fd93d4c2f139d6e125fe88df304249783d15307e2` |
| 6 | `theorem` | [exp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-transpose--49a42e3a7cd4af84d2ab082f.md) | 113 | `result-track:49a42e3a7cd4af84d2ab082fc229c5a782f8e6cb419d1cab13a2bbfc85af236b` |
| 7 | `theorem` | [IsSymm.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/issymm-exp--4ed5d905138d2db9d45addb3.md) | 116 | `result-track:4ed5d905138d2db9d45addb35aeeb0c9711323fbba3ed11e22ecdd26c84d9545` |
| 8 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-add-of-commute--607b95375a2821449b25f4ce.md) | 128 | `result-track:607b95375a2821449b25f4ce8cda4cf22d488af9d8bb74fdab6220e55eaa0b6a` |
| 9 | `theorem` | [exp_sum_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-sum-of-commute--f2adaf243c802e1e88663bb4.md) | 136 | `result-track:f2adaf243c802e1e88663bb42206915441e191648f1563eef0fd8a6de00141f4` |
| 10 | `theorem` | [exp_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-nsmul--e15fded4037a564f79c77130.md) | 145 | `result-track:e15fded4037a564f79c771303be9366924ef65cda60ee666734a8e195614681a` |
| 11 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/isunit-exp--cc07a79ddbb5914dd20d8f27.md) | 151 | `result-track:cc07a79ddbb5914dd20d8f27c2ac356efcb4b8fbc6ed01faa5c202f87d989bb5` |
| 12 | `theorem` | [exp_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-units-conj--ae592f47e1623f7f336a45b7.md) | 157 | `result-track:ae592f47e1623f7f336a45b75870e6e577594482c3c9d58ccc6b78be04353f2c` |
| 13 | `theorem` | [exp_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-units-conj--cfe0cf07551fd4289083608a.md) | 164 | `result-track:cfe0cf07551fd4289083608a753ceb84e22361b9f7e480785a34e213deb700cf` |
| 14 | `theorem` | [exp_neg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-neg--bf0a0e310afe0dca568a236d.md) | 175 | `result-track:bf0a0e310afe0dca568a236dc8cb5d225de248ba47583ca78ed465523de3edbd` |
| 15 | `theorem` | [exp_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-zsmul--17a78a1f3e1bf87ebd4a79d8.md) | 182 | `result-track:17a78a1f3e1bf87ebd4a79d8f36f966e8ad095d79ef0079480329323bb3535ab` |
| 16 | `theorem` | [exp_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-conj--c1c4c2da74e7f5b1d17615a2.md) | 188 | `result-track:c1c4c2da74e7f5b1d17615a2dc15f55fa8555e52723a3781890cb23d706ec5d7` |
| 17 | `theorem` | [exp_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant3ac2a4828d12a19c4ed41f8be43b3db68c1341151f5a109b93d5ce2dcc8133d5.lean/declarations/exp-conj--218b4c4ee357255c9b03f09c.md) | 193 | `result-track:218b4c4ee357255c9b03f09c07af029f5637206db962a30299df91f8caf02537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
