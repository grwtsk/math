# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralPermutationLift.Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f841bdee90d7ae95296b6d7f1d5f7496ff764c0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f841bdee90d7ae95296b6d7f1d5f7496ff764c0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.InvolutionProjection` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodedPerm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/encodedperm--5e56f88f35530dd6c65daed6.md) | 24 | `declaration-track:5e56f88f35530dd6c65daed6bb427a779c23935b37a334278507a1c3c4dfc030` |
| 2 | `theorem` | [encodedPerm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/encodedperm-apply--6cbc63e02c2bd76f2474fe89.md) | 27 | `result-track:6cbc63e02c2bd76f2474fe89e9d5dd154b8e92904e7b6489789a00b603fb7634` |
| 3 | `theorem` | [encodedPerm_symm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/encodedperm-symm--adcb85c744dcfad2c46dce28.md) | 32 | `result-track:adcb85c744dcfad2c46dce28d43904b4d57207138cd70e883609789965dd2a47` |
| 4 | `theorem` | [encodedPerm_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/encodedperm-apply-self--6a5028e19a9cdc10c2c8f38e.md) | 41 | `result-track:6a5028e19a9cdc10c2c8f38ecf1cf833c3a2ada431d6582e484241a692bea2de` |
| 5 | `def` | [integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/integralmatrix--050ad62045360e5e168b2729.md) | 47 | `declaration-track:050ad62045360e5e168b272904b5bb2c16ce93877a41288bd5efb980b733aa34` |
| 6 | `theorem` | [integralMatrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/integralmatrix-eq-ite--945f8077885631273ef66968.md) | 50 | `result-track:945f8077885631273ef669688e6da0315c19b53b4d6fec63cc8845b755d30d41` |
| 7 | `theorem` | [integralMatrix_eq_one_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/integralmatrix-eq-one-submatrix--2f1e03140131245a637a999a.md) | 64 | `result-track:2f1e03140131245a637a999a5baed0ef5ce95e210138074d467ce31717459a61` |
| 8 | `theorem` | [integralMatrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/integralmatrix-mul-self--07daa4d880f4c1d918d48fb1.md) | 72 | `result-track:07daa4d880f4c1d918d48fb16553fca65f276f819d22d50c75b83ed2a9cb8959` |
| 9 | `theorem` | [det_integralMatrix_eq_sign](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/det-integralmatrix-eq-sign--1f776738de664c9291652b36.md) | 88 | `result-track:1f776738de664c9291652b36991764c3a08a7d827290334813ce74c475dd37d7` |
| 10 | `theorem` | [det_integralMatrix_eq_one_or_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/det-integralmatrix-eq-one-or-neg-one--57f536c784b1a27bfdf15a43.md) | 96 | `result-track:57f536c784b1a27bfdf15a4340a2f8bdf17fa9dc88745df336cbfbd65a39cf3a` |
| 11 | `theorem` | [abs_det_integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/abs-det-integralmatrix--d2299e604f73b81c053fb57c.md) | 103 | `result-track:d2299e604f73b81c053fb57c1da72a78fc47b160ddc4f1d9d8b5989b79970652` |
| 12 | `theorem` | [integral_parity_agrees](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/declarations/integral-parity-agrees--d80abaf38581c15d11b8c8b7.md) | 108 | `result-track:d80abaf38581c15d11b8c8b71e1cc77e5eff5eb54769b5d39ef1a7b93e701189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
