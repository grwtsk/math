# Verification target: GRWTSK.Algebra.LinearAlgebra.JointEigenspace.Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb4a588dcbf04cea6e0c398dafb42b49851b42bd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb4a588dcbf04cea6e0c398dafb42b49851b42bd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Semisimple` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Semisimple` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [orthogonalFamily_eigenspace_inf_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/orthogonalfamily-eigenspace-inf-eigenspace--ba86ba9c3b12c90a6be41edd.md) | 58 | `result-track:ba86ba9c3b12c90a6be41edd416ced369bfaf74819efafe34ccc595a7c61aad3` |
| 2 | `theorem` | [orthogonalFamily_iInf_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/orthogonalfamily-iinf-eigenspaces--c923ac06c200c0f65b95f76e.md) | 69 | `result-track:c923ac06c200c0f65b95f76e4e30f11374449a2a61b79be4619fd3e19513ed38` |
| 3 | `theorem` | [iSup_eigenspace_inf_eigenspace_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/isup-eigenspace-inf-eigenspace-of-commute--749c8cc551e4999bc0f913f3.md) | 86 | `result-track:749c8cc551e4999bc0f913f3c447d45c010d6fae706d2933edc6943d8edae73e` |
| 4 | `theorem` | [iSup_iSup_eigenspace_inf_eigenspace_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/isup-isup-eigenspace-inf-eigenspace-eq-top-of-commute--b0b7aa14beb705cbeb429ac0.md) | 98 | `result-track:b0b7aa14beb705cbeb429ac035a5b9d32956f2f858dde1d065491320c080f4a6` |
| 5 | `theorem` | [directSum_isInternal_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/directsum-isinternal-of-commute--76c4cd21e242f8c16505c400.md) | 107 | `result-track:76c4cd21e242f8c16505c400e12d686ace98c902a5bcbf2a0e365b53598bae45` |
| 6 | `theorem` | [iSup_iInf_eq_top_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/isup-iinf-eq-top-of-commute--8804c17d1604f920c1045d2a.md) | 118 | `result-track:8804c17d1604f920c1045d2abb7b6c3be0f90c68a3f2bc41bef7f9bfefbc81ac` |
| 7 | `theorem` | [LinearMap.IsSymmetric.directSum_isInternal_of_pairwise_commute](../../../../../mathematics/Algebra/LinearAlgebra/JointEigenspace/Variantd5014993dfaa5b538821f65647f69d5be443c027ff1af6eabd66a41e55db81c7.lean/declarations/linearmap-issymmetric-directsum-isinternal-of-pairwise-commute--7442d851b77bde0a2d8dd2c7.md) | 133 | `result-track:7442d851b77bde0a2d8dd2c77b91474d0b94a69e7d0c6632bb507ad54c1c7ec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
