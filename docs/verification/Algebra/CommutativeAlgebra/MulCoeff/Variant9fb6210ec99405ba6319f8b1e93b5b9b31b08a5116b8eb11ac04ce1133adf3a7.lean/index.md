# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MulCoeff.Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69cc358afe8ce8fb177179736d4245dc97dd0474",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69cc358afe8ce8fb177179736d4245dc97dd0474`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Truncated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolyProd](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/wittpolyprod--6af19d13c95d1dfd92360e61.md) | 49 | `declaration-track:6af19d13c95d1dfd92360e61089bd6118537deee213f64f41706fbde5f3b19d9` |
| 2 | `theorem` | [wittPolyProd_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/wittpolyprod-vars--7c8392321816e3de2947b66e.md) | 53 | `result-track:7c8392321816e3de2947b66e131e0834469a6c3c1755ad79375977d916d30191` |
| 3 | `def` | [wittPolyProdRemainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/wittpolyprodremainder--c4fe616586a17ee9784f4e83.md) | 61 | `declaration-track:c4fe616586a17ee9784f4e836c1a4e9d507570a61a5a18530456a5cd31ca7cf0` |
| 4 | `theorem` | [wittPolyProdRemainder_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/wittpolyprodremainder-vars--48b0423a61f62e8125ce19b9.md) | 64 | `result-track:48b0423a61f62e8125ce19b9eeb6e85e93538b8b5692a9104b99a120170ac800` |
| 5 | `def` | [remainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/remainder--95b631bb305ab21cc204f3e3.md) | 86 | `declaration-track:95b631bb305ab21cc204f3e368468f31c2b25bc0112f4f548207a393bf611fe1` |
| 6 | `theorem` | [remainder_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/remainder-vars--48b9fd09e97979bee2d763a8.md) | 92 | `result-track:48b9fd09e97979bee2d763a88e4afc222afecedc1c0059f503401bd80d85e83c` |
| 7 | `def` | [polyOfInterest](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/polyofinterest--0b01cedb4a7ee40a45e055c4.md) | 106 | `declaration-track:0b01cedb4a7ee40a45e055c4199a53a1985e7a4158275aad42bb83b9cc574985` |
| 8 | `theorem` | [mul_polyOfInterest_aux1](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-aux1--ec5da48ff066175def785ebf.md) | 111 | `result-track:ec5da48ff066175def785ebf81a00ce80b6f1cef72d708989d4d143bf8fd2dc7` |
| 9 | `theorem` | [mul_polyOfInterest_aux2](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-aux2--9681828c519bef770b010b38.md) | 127 | `result-track:9681828c519bef770b010b38e5128ccd1db4ae56aab7754d6af12c1e93d9e541` |
| 10 | `theorem` | [mul_polyOfInterest_aux3](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-aux3--2576209158a2710d6f3f2196.md) | 134 | `result-track:2576209158a2710d6f3f219635c01b3a17caae798475c7f0882ef7f85b87f215` |
| 11 | `theorem` | [mul_polyOfInterest_aux4](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-aux4--f3bbbb30cb07146adf049d98.md) | 167 | `result-track:f3bbbb30cb07146adf049d98e16d77ea3cc6ca698b804979f6406f70916dbf67` |
| 12 | `theorem` | [mul_polyOfInterest_aux5](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-aux5--2d1537bf5d66b600468416f2.md) | 176 | `result-track:2d1537bf5d66b600468416f2eaf3f7e971d25e4be9b1a246416c0549858d5148` |
| 13 | `theorem` | [mul_polyOfInterest_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/mul-polyofinterest-vars--fea10d5a86d5881b92d4cba4.md) | 182 | `result-track:fea10d5a86d5881b92d4cba4caa4e8c1a43b4ed503fb1b41ac20f6a6d02f1940` |
| 14 | `theorem` | [polyOfInterest_vars_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/polyofinterest-vars-eq--f5581282745c0c53e571ac2b.md) | 190 | `result-track:f5581282745c0c53e571ac2b6debd39b885888a74363a11973981f848f910d0e` |
| 15 | `theorem` | [polyOfInterest_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/polyofinterest-vars--14d897c7fc513a93a85a7fe7.md) | 199 | `result-track:14d897c7fc513a93a85a7fe714322ebfc3fbd951ab05bcd43e548770e2704412` |
| 16 | `theorem` | [peval_polyOfInterest](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/peval-polyofinterest--8f290d804eef16ec9e48974d.md) | 202 | `result-track:8f290d804eef16ec9e48974dae6093358d5c39d4f9937a0dbaf4fbd063b6d83f` |
| 17 | `theorem` | [peval_polyOfInterest'](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/peval-polyofinterest--46004f1e59e65cdbe682d02d.md) | 217 | `result-track:46004f1e59e65cdbe682d02d7bb9ad7ec7b4006e990b9e0090fdb1a5c625ec21` |
| 18 | `theorem` | [nth_mul_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/nth-mul-coeff--37041502fb23c8789fba8c5e.md) | 232 | `result-track:37041502fb23c8789fba8c5eb3d6219e8971bc7676a0b616886c96cd50bf5e8e` |
| 19 | `theorem` | [nth_mul_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/nth-mul-coeff--3d6329f77922e1d6a34a2968.md) | 264 | `result-track:3d6329f77922e1d6a34a2968841c05a0a324d6f95423ff71d159f638f30799f5` |
| 20 | `def` | [nthRemainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/nthremainder--bdad3f22a2e01825b7b82232.md) | 280 | `declaration-track:bdad3f22a2e01825b7b82232442df58f3bf96ff5a38a00eca4141a99bca194e8` |
| 21 | `theorem` | [nthRemainder_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant9fb6210ec99405ba6319f8b1e93b5b9b31b08a5116b8eb11ac04ce1133adf3a7.lean/declarations/nthremainder-spec--b68e118d760580ea49caa8d0.md) | 283 | `result-track:b68e118d760580ea49caa8d040ed29a7f03ce08de7da78bed93791b9f595f6a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
