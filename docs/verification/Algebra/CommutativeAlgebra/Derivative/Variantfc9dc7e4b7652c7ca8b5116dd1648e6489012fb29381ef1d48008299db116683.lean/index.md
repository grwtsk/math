# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Derivative.Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc63b7a5ffb46df772628c3d3525c4712714a01f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc63b7a5ffb46df772628c3d3525c4712714a01f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative--4e9f4f714d1ccec5fb94b547.md) | 49 | `declaration-track:4e9f4f714d1ccec5fb94b547d5fcfc77183a4344e0b6f599d272595039251ac0` |
| 2 | `theorem` | [derivative_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-c--c2db0f4bed645e5463eac394.md) | 55 | `result-track:c2db0f4bed645e5463eac3949ed0d131509911fbbfe49d0efcf9912fc83c64a5` |
| 3 | `theorem` | [derivative_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-one--669b9653ba21b6073b725f63.md) | 57 | `result-track:669b9653ba21b6073b725f63781eccdf7a274fcd28de1b7b0ed3b438c34598e2` |
| 4 | `theorem` | [coeff_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/coeff-derivative--f92dcae5ab7a799cc1747f23.md) | 59 | `result-track:f92dcae5ab7a799cc1747f23fa2b6622cd0289f1cb2417132211946f57dbaf79` |
| 5 | `theorem` | [coeff_iterate_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/coeff-iterate-derivative--9dc3e936377258a544c57c71.md) | 65 | `result-track:9dc3e936377258a544c57c71d720d1516a6438956f463f33036217cc07d64d0f` |
| 6 | `theorem` | [constantCoeff_iterate_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/constantcoeff-iterate-derivative--3fdc196850e52eccac235ec3.md) | 76 | `result-track:3fdc196850e52eccac235ec37a69ec57871591d58ffdf73ecea194f327296c70` |
| 7 | `theorem` | [derivative_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-coe--e56028d5a60193f1fa6c6dd5.md) | 80 | `result-track:e56028d5a60193f1fa6c6dd50b87b12797b62b07c38343fb1268a6db6685dc51` |
| 8 | `theorem` | [derivative_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-x--92622c10b8c5569048e16ff0.md) | 84 | `result-track:92622c10b8c5569048e16ff0584ba4271880fd64c26e9e125e3f8574d94b3a6f` |
| 9 | `theorem` | [trunc_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/trunc-derivative--a51dc034b12fafc5f961a75b.md) | 89 | `result-track:a51dc034b12fafc5f961a75b80693579425ce96af96e14befca4b49fade20b9c` |
| 10 | `theorem` | [trunc_derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/trunc-derivative--67d5ed41f1902600d33ef96e.md) | 99 | `result-track:67d5ed41f1902600d33ef96e9a01ea7d226fdecae4a0d822c9ddd222a70d2ec2` |
| 11 | `theorem` | [derivative_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-pow--89c974261af1f9fdf89f0bd4.md) | 104 | `result-track:89c974261af1f9fdf89f0bd4d6f9c3787b1906a74fa199885d92cd5b0c6a52d1` |
| 12 | `theorem` | [derivative.ext](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-ext--0404a051f7a60a070b391553.md) | 111 | `result-track:0404a051f7a60a070b391553ce0d5187f42961a1e6b9b779a601381a71ab51a1` |
| 13 | `theorem` | [derivative_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-inv--5f7320fbece78e278d4cf49a.md) | 116 | `result-track:5f7320fbece78e278d4cf49af1bee1cf11118415ca4411b1305cb8900c48fc0b` |
| 14 | `theorem` | [derivative_invOf](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-invof--8f1b19dea98f014651cc7304.md) | 121 | `result-track:8f1b19dea98f014651cc7304cb3ec19e71189cfd92e293ba7ef1c0281d9f40e2` |
| 15 | `theorem` | [derivative_inv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-inv--d0f17e8ff6f355c9d89840f5.md) | 130 | `result-track:d0f17e8ff6f355c9d89840f59a367c802a8e4fe7b062a5805b822df721a5341e` |
| 16 | `theorem` | [derivative_subst_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-subst-coe--cf761ad1701dd92dd409c999.md) | 134 | `result-track:cf761ad1701dd92dd409c999586723e7dc7018853483009b67edb33da62868d6` |
| 17 | `theorem` | [derivative_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivative-subst--5f925b47d022d2fe6420c817.md) | 139 | `result-track:5f925b47d022d2fe6420c81780a32f31cc84af484eb673dab008341298051585` |
| 18 | `def` | [derivativeFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivativefun--7f13a5b7f7c07abaf86926da.md) | 165 | `declaration-track:7f13a5b7f7c07abaf86926daa119f06024d0cf473026a7ed7f3e280f66b4e43f` |
| 19 | `theorem` | [derivativeFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivativefun-add--9060f8d63978155cebbd7e24.md) | 169 | `result-track:9060f8d63978155cebbd7e24896bbd577da1ba52d1782c75360e4df0ebe4cd10` |
| 20 | `theorem` | [derivativeFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivativefun-mul--3d641945d108c807ab460e92.md) | 175 | `result-track:3d641945d108c807ab460e9270674559e42301d3eb34972df51aab817b4cded1` |
| 21 | `theorem` | [derivativeFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivativefun-one--99723943350116c9f7b9a002.md) | 181 | `result-track:99723943350116c9f7b9a002baeda8a031ff6dac0a6ac8319831773685994a34` |
| 22 | `theorem` | [derivativeFun_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivative/Variantfc9dc7e4b7652c7ca8b5116dd1648e6489012fb29381ef1d48008299db116683.lean/declarations/derivativefun-smul--92fed0b01ca38273b27f3ac6.md) | 186 | `result-track:92fed0b01ca38273b27f3ac6f472b8bd4c256dbf2cfe272f239a046d4d3d525e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
