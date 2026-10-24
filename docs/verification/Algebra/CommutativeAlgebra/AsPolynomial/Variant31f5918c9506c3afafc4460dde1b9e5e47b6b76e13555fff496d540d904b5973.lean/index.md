# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AsPolynomial.Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f16677b972ddcc5799d64ad657be6713cc60ee9a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f16677b972ddcc5799d64ad657be6713cc60ee9a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EuclideanDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/c--e16e50a144494409d0a3aa0f.md) | 54 | `declaration-track:e16e50a144494409d0a3aa0f7512d09f04ac9f36fdb3690055258d3b80bb6c77` |
| 2 | `theorem` | [algebraMap_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/algebramap-eq-c--1df8fb03ef35a1f99fe90a13.md) | 57 | `result-track:1df8fb03ef35a1f99fe90a1305871ea7a41c26b9bee6e371c8d4fa282b3f30a1` |
| 3 | `theorem` | [algebraMap_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/algebramap-c--d3e9e10f4161fa7bb49131e3.md) | 61 | `result-track:d3e9e10f4161fa7bb49131e39cfaad3e3334173a1ea227eb04967816b7d8f2f0` |
| 4 | `theorem` | [algebraMap_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/algebramap-comp-c--1ab5d1796dd4e2724a79e0d5.md) | 65 | `result-track:1ab5d1796dd4e2724a79e0d553e2a202f63a446d8b11222ae22d49ec8e590e10` |
| 5 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/smul-eq-c-mul--1fbbdfaf64a5beac928c99fd.md) | 68 | `result-track:1fbbdfaf64a5beac928c99fde58c49bb5edbb0bed3f1772e07f849aedf330bc5` |
| 6 | `def` | [X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/x--8e5c735513dbf3426f4b7498.md) | 72 | `declaration-track:8e5c735513dbf3426f4b74981a00ce40ffa9a115ca18363adceb828e533a9167` |
| 7 | `theorem` | [algebraMap_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/algebramap-x--d558a20f5046264778a6cd4f.md) | 76 | `result-track:d558a20f5046264778a6cd4fa6ac4252b1a78a14cc7989b41f6aec4da6cb5076` |
| 8 | `theorem` | [num_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/num-c--343624af7d1637fd50946907.md) | 86 | `result-track:343624af7d1637fd50946907ee425d0179017f9e8416ee33650fa6964e2125de` |
| 9 | `theorem` | [denom_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/denom-c--062ca0f9c656c1a7f3a5c577.md) | 90 | `result-track:062ca0f9c656c1a7f3a5c5771bb73b8949f77c20e6b4e62f312ce7d6c51a8f32` |
| 10 | `theorem` | [num_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/num-x--c67b94ec093310bf21ebf8f3.md) | 94 | `result-track:c67b94ec093310bf21ebf8f3e023f1164d2ff22bae6f4503ace3411999d74f66` |
| 11 | `theorem` | [denom_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/denom-x--f756f91838b19da2a01e56ec.md) | 98 | `result-track:f756f91838b19da2a01e56ecc3e2c2baa65605174f933347f159b20b6c5e03ba` |
| 12 | `theorem` | [X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/x-ne-zero--c6c71de6e40cf56976684b9c.md) | 101 | `result-track:c6c71de6e40cf56976684b9cf53a1cf1b88ce87f9d62f9f79b90b4caced06753` |
| 13 | `def` | [eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval--ecb55b873a484a23696f940f.md) | 112 | `declaration-track:ecb55b873a484a23696f940f55d996f4c924c5372c3ca9aecbe2fa72c3486f55` |
| 14 | `theorem` | [eval_eq_zero_of_eval₂_denom_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-eq-zero-of-eval-denom-eq-zero--f7a61e748fab79d2e9218b08.md) | 117 | `result-track:f7a61e748fab79d2e9218b08b9833d738cd13ebe4b65a4093dafbde3d3add2b7` |
| 15 | `theorem` | [eval₂_denom_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-denom-ne-zero--6583af8cb905912ee18aa691.md) | 120 | `result-track:6583af8cb905912ee18aa691a08247386b35429136742514cc2a86cd03bd753a` |
| 16 | `theorem` | [eval_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-c--c17a603887f170ba18371b31.md) | 127 | `result-track:c17a603887f170ba18371b31c248f336edd9ba76558df5ba901d93ce0afa6860` |
| 17 | `theorem` | [eval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-x--846c4fef8cb6bebc71f6a6a0.md) | 130 | `result-track:846c4fef8cb6bebc71f6a6a0b74fa7a181849fe9ee225466cdcf121558404d72` |
| 18 | `theorem` | [eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-zero--085cd4319f6eb06f1dee309d.md) | 133 | `result-track:085cd4319f6eb06f1dee309d0753fd016bb367687249cfc93f51b71c5699587e` |
| 19 | `theorem` | [eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-one--39a7608f287398cf4fb1c4fe.md) | 136 | `result-track:39a7608f287398cf4fb1c4feed6a0039d089d002f8dc5fb5aa53bf0e2494bcc0` |
| 20 | `theorem` | [eval_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-algebramap--180637f52f69d995c1b65507.md) | 139 | `result-track:180637f52f69d995c1b65507b5f236c94d7edbc374140ef78d2fe1d4ca36d413` |
| 21 | `theorem` | [eval_add](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-add--a5032140479b6f0aaa501dc2.md) | 150 | `result-track:a5032140479b6f0aaa501dc2d5d7b0b92a849af2bd8d94b736c34e434c62c111` |
| 22 | `theorem` | [eval_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/eval-mul--702df34c541cbe18b388ab0f.md) | 169 | `result-track:702df34c541cbe18b388ab0fe18fe58ac11393ab6a2804a7be5cdc5b968ae30a` |
| 23 | `def` | [idealX](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/idealx--e8312412e9d3fa8de11cc106.md) | 198 | `declaration-track:e8312412e9d3fa8de11cc106ce5e51e3e81eb172602d2ed82e41f1bb8502db27` |
| 24 | `theorem` | [idealX_span](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/idealx-span--18471a6ae10bc8452002dedb.md) | 204 | `result-track:18471a6ae10bc8452002dedbda643445e3a449ab2382db8afaff83237ae9b850` |
| 25 | `theorem` | [valuation_X_eq_neg_one](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/valuation-x-eq-neg-one--1012028a17ee051f68e16ef4.md) | 207 | `result-track:1012028a17ee051f68e16ef465cc8887d2fc2a361dce3c1df42c42e674462291` |
| 26 | `theorem` | [valuation_of_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/valuation-of-mk--fbb76fd0d24babd3a2ce49d5.md) | 213 | `result-track:fbb76fd0d24babd3a2ce49d5a55600a10558796a92881f2bb62db807121a8d68` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/instance--926b4c2a50a336c1fb5a5070.md) | 226 | `declaration-track:926b4c2a50a336c1fb5a5070a4d8555eebdfb6dbdde46a99e49486ca9be2e3ad` |
| 28 | `theorem` | [WithZero.valued_def](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/declarations/withzero-valued-def--7787e81b3d5066c77ecd7486.md) | 229 | `result-track:7787e81b3d5066c77ecd7486785e06393d755e14162ea978a0e0cb42a94e1155` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
