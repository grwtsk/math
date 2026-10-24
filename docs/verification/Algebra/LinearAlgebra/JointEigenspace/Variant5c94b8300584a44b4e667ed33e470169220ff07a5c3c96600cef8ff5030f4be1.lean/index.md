# Verification target: GRWTSK.Algebra.LinearAlgebra.JointEigenspace.Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a4867970703b7915d39ede361982dc2ad8078a5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a4867970703b7915d39ede361982dc2ad8078a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Semisimple` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Semisimple` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [orthogonalFamily_eigenspace_inf_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/orthogonalfamily-eigenspace-inf-eigenspace--0124687deb959e4f885ce02f.md) | 66 | `result-track:0124687deb959e4f885ce02f7e5abad6e5c3cbf433c123e35bab18a8d659371b` |
| 2 | `theorem` | [orthogonalFamily_iInf_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/orthogonalfamily-iinf-eigenspaces--486fd5f4f066260d144d9603.md) | 77 | `result-track:486fd5f4f066260d144d9603d02a446ca5f3d37cd1d75b135685298eb2830d3c` |
| 3 | `theorem` | [iSup_eigenspace_inf_eigenspace_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/isup-eigenspace-inf-eigenspace-of-commute--de45b0e6365c485c7c5ec83a.md) | 94 | `result-track:de45b0e6365c485c7c5ec83a99d86c8df38e7a7d9808b79e709e762b49e9f634` |
| 4 | `theorem` | [iSup_iSup_eigenspace_inf_eigenspace_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/isup-isup-eigenspace-inf-eigenspace-eq-top-of-commute--808c54a074edcf8c8bafcc0e.md) | 106 | `result-track:808c54a074edcf8c8bafcc0e232cd9026b0720808303ebb44e1e0700cc4be7aa` |
| 5 | `theorem` | [directSum_isInternal_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/directsum-isinternal-of-commute--91ae8dc10fb8a25af337d6e3.md) | 115 | `result-track:91ae8dc10fb8a25af337d6e3f5be56f5378f28ce7c2cde773a72fa62db884339` |
| 6 | `theorem` | [iSup_iInf_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/isup-iinf-eq-top-of-commute--413a4957f4de03396e0af0e8.md) | 126 | `result-track:413a4957f4de03396e0af0e8022befcaa18afbeec6120e9e11561c1863016d12` |
| 7 | `theorem` | [LinearMap.IsSymmetric.directSum_isInternal_of_pairwise_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variant5c94b8300584a44b4e667ed33e470169220ff07a5c3c96600cef8ff5030f4be1.lean/declarations/linearmap-issymmetric-directsum-isinternal-of-pairwise-commute--a7a3e7daa4e574aaba350e7d.md) | 141 | `result-track:a7a3e7daa4e574aaba350e7d9cb8b56faa358774e14f872cf56cc3dc36dd7dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
