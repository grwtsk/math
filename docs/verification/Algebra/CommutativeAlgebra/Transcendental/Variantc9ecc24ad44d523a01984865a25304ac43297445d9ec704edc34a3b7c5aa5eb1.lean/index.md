# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Transcendental.Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1028537e13fcb4edc3896a07f2914580cabd12c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1028537e13fcb4edc3896a07f2914580cabd12c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Reflection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.MvPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebraicIndependent_unique_type_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-unique-type-iff--31f3bfde8e1a1f2667965f88.md) | 37 | `result-track:31f3bfde8e1a1f2667965f882419f1df0bb48f46922648b6dd03728422f7cec4` |
| 2 | `theorem` | [algebraicIndependent_singleton_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-singleton-iff--f36de106dc7527a31f0c993c.md) | 46 | `result-track:f36de106dc7527a31f0c993c6299cf198e398574fef478ed1b1cc1ba8fb59de2` |
| 3 | `theorem` | [algebraicIndependent_iff_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-iff-transcendental--d097b1e96ed6a2e5653fe1b6.md) | 53 | `result-track:d097b1e96ed6a2e5653fe1b661ed7d18b00e9757e7d30e9bb4c75e123187c54a` |
| 4 | `theorem` | [transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/transcendental--afc0338bc64bdd47c585a7f6.md) | 63 | `result-track:afc0338bc64bdd47c585a7f6ad516542c6a2554a8f28df98068235c0ad7013a9` |
| 5 | `theorem` | [isEmpty_of_isAlgebraic](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/isempty-of-isalgebraic--32dde7a1c4ae4bc4c0f511b5.md) | 69 | `result-track:32dde7a1c4ae4bc4c0f511b5f69617a657a549c1dfcf616b164cfc3a20c16b62` |
| 6 | `theorem` | [trdeg_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/trdeg-eq-zero--e7613c762077a856f017c822.md) | 76 | `result-track:e7613c762077a856f017c822a5ae3d7f7d8e211f8e2c44d586ec8d43d6ed9ff2` |
| 7 | `theorem` | [trdeg_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/trdeg-pos--b7e4513b83231ce3db08e4ff.md) | 80 | `result-track:b7e4513b83231ce3db08e4ff48704a632929293b92e52728c4af794daad137ef` |
| 8 | `theorem` | [trdeg_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/trdeg-eq-zero-iff--efd7f2a66b2ca0d8ad7d31bd.md) | 85 | `result-track:efd7f2a66b2ca0d8ad7d31bd09f350b102385bbc5f896407e2f27b20517ec449` |
| 9 | `theorem` | [trdeg_ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/trdeg-ne-zero-iff--55b47d4b0ee86d9b16ba5372.md) | 92 | `result-track:55b47d4b0ee86d9b16ba5372cf665792cee2540bbc29b6cf2b628e68479ed029` |
| 10 | `theorem` | [AlgebraicIndependent.option_iff_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-option-iff-transcendental--bea5325c6e6fc80556b82eaf.md) | 97 | `result-track:bea5325c6e6fc80556b82eafaf75e29f0896d7c575fcaa11267d72013484d04c` |
| 11 | `theorem` | [AlgebraicIndependent.option_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-option-iff--24db296050633b9c2fa18539.md) | 106 | `result-track:24db296050633b9c2fa185395dfa6433fb8fc79ef1dcea6bb5dd8cac6c01365c` |
| 12 | `theorem` | [AlgebraicIndepOn.insert_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindepon-insert-iff--8abab727ce7dac3cb2dd2c1d.md) | 112 | `result-track:8abab727ce7dac3cb2dd2c1d650c207d5a6a9d0629d55c5cfaeecd624f80f95b` |
| 13 | `theorem` | [AlgebraicIndepOn.insert](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindepon-insert--f30f5efd10ffc016f9552995.md) | 121 | `result-track:f30f5efd10ffc016f955299540f5ccca4ad61c759fd40823866ce80a491de543` |
| 14 | `theorem` | [algebraicIndependent_of_set_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-of-set-of-finite--63b4fb8930e6d101853eae86.md) | 128 | `result-track:63b4fb8930e6d101853eae86c37ddfbc614d7cd41994e7b6855db656de250b58` |
| 15 | `theorem` | [algebraicIndependent_of_finite_type'](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-of-finite-type--839de4dada9c57a9b54de9f0.md) | 147 | `result-track:839de4dada9c57a9b54de9f05a1b8296681e3fcfc8be81d3338c7167b582b67c` |
| 16 | `theorem` | [algebraicIndependent_of_finite'](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-of-finite--1fa679d08431f9c7d2fe0168.md) | 156 | `result-track:1fa679d08431f9c7d2fe0168df92f2d92b90157a46084aa54e72efa85608efa0` |
| 17 | `theorem` | [sumElim_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/sumelim-iff--a21095060a2cc369ff2da01f.md) | 167 | `result-track:a21095060a2cc369ff2da01fb9453b4e3aa651110510bce313ea24567304b3e3` |
| 18 | `theorem` | [iff_adjoin_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/iff-adjoin-image--54f31037d523412f3df3f8d2.md) | 176 | `result-track:54f31037d523412f3df3f8d2d68dc13c53b026120e5ff4edeefa5e02d931e731` |
| 19 | `theorem` | [iff_adjoin_image_compl](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/iff-adjoin-image-compl--796f4832b5f291bf13d21591.md) | 184 | `result-track:796f4832b5f291bf13d21591d50ae01740061adb1d3b4a061e954336cbc547d5` |
| 20 | `theorem` | [iff_transcendental_adjoin_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/iff-transcendental-adjoin-image--3c89e37e1d27454f74d47d36.md) | 189 | `result-track:3c89e37e1d27454f74d47d36efec811653a38a85f545b73dd6a00a2308e96be6` |
| 21 | `theorem` | [sumElim](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/sumelim--b55e76e3def6bc5e92c69463.md) | 198 | `result-track:b55e76e3def6bc5e92c694639bbc5f36f6ab40125a45fcd546abaeacb0ee7685` |
| 22 | `theorem` | [sumElim_of_tower](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/sumelim-of-tower--058829b23ac8629317c7b0eb.md) | 202 | `result-track:058829b23ac8629317c7b0eb72a3cc17b820b6be0980d65e5bd2d8a9bad4b2e4` |
| 23 | `theorem` | [sumElim_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/sumelim-comp--f13d2b67a1ef8f88139558f2.md) | 213 | `result-track:f13d2b67a1ef8f88139558f2b186bfe8118b31bd390ba74c0c3bbf4a154247a7` |
| 24 | `theorem` | [adjoin_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/adjoin-of-disjoint--1756ced3785115d1d3eaa93b.md) | 218 | `result-track:1756ced3785115d1d3eaa93bcc4839ca6932d9e4c6b5c6bd4a12af959be0e1ad` |
| 25 | `theorem` | [adjoin_iff_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/adjoin-iff-disjoint--9edae86e2d7a20e12d33f7de.md) | 222 | `result-track:9edae86e2d7a20e12d33f7dea037de6f88c9b76514916821a95c50e31e204937` |
| 26 | `theorem` | [transcendental_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/transcendental-adjoin--7100458d668b1f7fd28d29e4.md) | 229 | `result-track:7100458d668b1f7fd28d29e40fd62bb762859cd3bd525fb941e3c387d24ad41f` |
| 27 | `theorem` | [transcendental_adjoin_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/transcendental-adjoin-iff--fb05ec1ce811ce8c23ca7245.md) | 234 | `result-track:fb05ec1ce811ce8c23ca7245cd17bf93f4f5c1c274f7c2b888f16860cb53ad57` |
| 28 | `theorem` | [lift_trdeg_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/lift-trdeg-add-le--77a5225946ca31d36ad1ac88.md) | 243 | `result-track:77a5225946ca31d36ad1ac88989a2098eecfd239291a2e571dd0bbbbba0d7027` |
| 29 | `theorem` | [trdeg_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/trdeg-add-le--992f207eab7ff4bbb20c20c3.md) | 253 | `result-track:992f207eab7ff4bbb20c20c370479fff8659c92a5615bb8cd4b5af64fce8de24` |
| 30 | `theorem` | [MvPolynomial.algebraicIndependent_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/mvpolynomial-algebraicindependent-polynomial-aeval-x--2bd0dc085b98136f2d260acf.md) | 261 | `result-track:2bd0dc085b98136f2d260acf856a4cee5c650a4872af0262f0a41e675ec03acf` |
| 31 | `theorem` | [AlgebraicIndependent.polynomial_aeval_of_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc9ecc24ad44d523a01984865a25304ac43297445d9ec704edc34a3b7c5aa5eb1.lean/declarations/algebraicindependent-polynomial-aeval-of-transcendental--507d6d4253d1a14f2925edcd.md) | 277 | `result-track:507d6d4253d1a14f2925edcd34f4a959c32821ee3684116e7d55a6a510d95063` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
