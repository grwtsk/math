# Verification target: GRWTSK.LinearAlgebra.WeightedPermutationCokernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d8c7d32a9f6d57e8f3575e2a6d06f543ac137a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/WeightedPermutationCokernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d8c7d32a9f6d57e8f3575e2a6d06f543ac137a`.

Source path: `GRWTSK/LinearAlgebra/WeightedPermutationCokernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/WeightedPermutationCokernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.WeightedPermutationIntegral`](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Residues](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/residues--b38d48e10c55862277741e77.md) | 27 | `declaration-track:b38d48e10c55862277741e77205e09fe73ed0e54bd6e2db91f4a494d74c8e2df` |
| 2 | `abbrev` | [Cokernel](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/cokernel--1ae9c4b98e9218f5f1503394.md) | 30 | `declaration-track:1ae9c4b98e9218f5f1503394938daafc6c7859108f6a34be469195719d74e143` |
| 3 | `def` | [residue](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/residue--3bd0c755e67172b72b992243.md) | 34 | `declaration-track:3bd0c755e67172b72b992243c22e75e44d7267542d121b6a16342a4ea08de2ef` |
| 4 | `theorem` | [residue_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/residue-zero-iff--614265d034774bafdd8c50d5.md) | 40 | `result-track:614265d034774bafdd8c50d5b667c7a781e12a63324ec7e5c74702ec1a8e762d` |
| 5 | `theorem` | [residue_surjective](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/residue-surjective--540e953258737af30542f9a0.md) | 48 | `result-track:540e953258737af30542f9a083802ec329a00a7ba813078e8045c4dff3ab1c0a` |
| 6 | `theorem` | [kernel_eq_range](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/kernel-eq-range--cdf3f1e9f31172b91ec1c018.md) | 57 | `result-track:cdf3f1e9f31172b91ec1c018714e27233ac1d801dcb9ebd1d9b515e0f545b232` |
| 7 | `def` | [cokernelEquiv](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/cokernelequiv--5c29949012ca5c78b6745876.md) | 64 | `declaration-track:5c29949012ca5c78b67458768d39f5caf138cccca42c9d2f806efacc72e425fd` |
| 8 | `theorem` | [cokernelEquiv_mk](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/cokernelequiv-mk--0438cf640306077b2998e630.md) | 70 | `result-track:0438cf640306077b2998e630c93852ae69c7774003de998c9da297a9eccf7cf6` |
| 9 | `theorem` | [cokernel_roundtrips](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/cokernel-roundtrips--cac7a52f0887475e59e910ea.md) | 74 | `result-track:cac7a52f0887475e59e910ea1a4d0a8fa1a6de4880548e0377e8d6c3487d59e8` |
| 10 | `theorem` | [annihilator_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/annihilator-iff--fc79bb589cae27716a1f2cb0.md) | 80 | `result-track:fc79bb589cae27716a1f2cb0673be9ba89db60e506f870d1e9db2bdd9e02ffd6` |
| 11 | `theorem` | [residues_natCard](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/residues-natcard--1128fdd68bf5a8d4c86bf3da.md) | 96 | `result-track:1128fdd68bf5a8d4c86bf3da2a03f929840bbe1d269b532ce60994fcf11ea4b9` |
| 12 | `theorem` | [cokernel_natCard](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/declarations/cokernel-natcard--caaf448df5bcec990b10c793.md) | 104 | `result-track:caaf448df5bcec990b10c793a415b688b4839af4614dfe2c5203b9fa66be77a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
