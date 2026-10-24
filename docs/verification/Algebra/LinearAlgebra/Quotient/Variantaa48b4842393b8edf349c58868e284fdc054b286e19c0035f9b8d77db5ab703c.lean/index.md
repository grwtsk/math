# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "443b6c0b047fbe414befc8ec278a9c8a4577a35b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `443b6c0b047fbe414befc8ec278a9c8a4577a35b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientTensorQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorquotientequiv--b76ae91eddab3f16245fd569.md) | 51 | `declaration-track:b76ae91eddab3f16245fd569a27641d8a9dd9830d06880001bcbc0e14931b9dc` |
| 2 | `lemma` | [quotientTensorQuotientEquiv_apply_tmul_mk_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorquotientequiv-apply-tmul-mk-tmul-mk--3046737e26e1242e2d8c2298.md) | 82 | `result-track:3046737e26e1242e2d8c2298aeb70ad107aaa3db455bad2c7803d977e6b01f1e` |
| 3 | `lemma` | [quotientTensorQuotientEquiv_symm_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorquotientequiv-symm-apply-mk-tmul--a47d5950a91af3403bb67b14.md) | 89 | `result-track:a47d5950a91af3403bb67b146149527e16c0a564d2b5544dcda94a99753d594e` |
| 4 | `def` | [quotientTensorEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorequiv--cb36f6bc7a57bda216b1576d.md) | 100 | `declaration-track:cb36f6bc7a57bda216b1576db3bd6b37f8edd78f1be5b70f22d8b4a086ceda38` |
| 5 | `lemma` | [quotientTensorEquiv_apply_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorequiv-apply-tmul-mk--574b7de6b58689bfc3b0360e.md) | 113 | `result-track:574b7de6b58689bfc3b0360e50f4c87fa307489a93f3de6598bbee8be73408f7` |
| 6 | `lemma` | [quotientTensorEquiv_symm_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quotienttensorequiv-symm-apply-mk-tmul--c52ffcc6b168552be72cc252.md) | 119 | `result-track:c52ffcc6b168552be72cc25257a03b70b07d435f68fc0317cae2f46d7ada57bc` |
| 7 | `def` | [tensorQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotientequiv--79c712ca315f8af219e1f470.md) | 130 | `declaration-track:79c712ca315f8af219e1f4702651fb969004acaf0f694b9a461cb2d24f088480` |
| 8 | `lemma` | [tensorQuotientEquiv_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotientequiv-apply-mk-tmul--0fd0e467e48034a4cf35cb21.md) | 143 | `result-track:0fd0e467e48034a4cf35cb2144c57c01af62d0eae618f27d9b217472a62e7d1e` |
| 9 | `lemma` | [tensorQuotientEquiv_symm_apply_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotientequiv-symm-apply-tmul-mk--30c1eba9fce61596bfad51ac.md) | 149 | `result-track:30c1eba9fce61596bfad51acf624c0da27d3f852d0670ccc50960f8c22ff4241` |
| 10 | `def` | [quotTensorEquivQuotSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul--eeff6d00579643d74812489a.md) | 157 | `declaration-track:eeff6d00579643d74812489a6504b6fe2a7c681cd77b5bae10d54076433e3a02` |
| 11 | `def` | [tensorQuotEquivQuotSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul--a0b3473e732adacef9eafe0c.md) | 169 | `declaration-track:a0b3473e732adacef9eafe0cfbe58f93558792485c289d9686ec17edb6a1e50f` |
| 12 | `lemma` | [quotTensorEquivQuotSMul_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul-mk-tmul--3a3931567ccf08062ab040b0.md) | 174 | `result-track:3a3931567ccf08062ab040b0a18d172bf373c174f5d917be7e4c328881735df3` |
| 13 | `lemma` | [quotTensorEquivQuotSMul_comp_mkQ_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul-comp-mkq-rtensor--edaa2fd101801d4965c3d6e3.md) | 184 | `result-track:edaa2fd101801d4965c3d6e39f5f1433976ace8149b9b65356a695965ab24b9c` |
| 14 | `lemma` | [quotTensorEquivQuotSMul_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul-symm-mk--7313e2542152e1c429d98694.md) | 190 | `result-track:7313e2542152e1c429d98694b0d0a81fd350b7d3fe973779f55d2f1bd7811ecf` |
| 15 | `lemma` | [quotTensorEquivQuotSMul_symm_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul-symm-comp-mkq--6abb9678b8843bfbdef81d5d.md) | 194 | `result-track:6abb9678b8843bfbdef81d5dc667ac8d5b1e34a820bff2a22a1d3e94e739782c` |
| 16 | `lemma` | [quotTensorEquivQuotSMul_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/quottensorequivquotsmul-comp-mk--28d290e8dac9cf98012aba68.md) | 199 | `result-track:28d290e8dac9cf98012aba6812c35d2bd8ef95efb8be35b95a0d82ae35c23617` |
| 17 | `lemma` | [tensorQuotEquivQuotSMul_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul-tmul-mk--536a08aac1eba35e3994953f.md) | 206 | `result-track:536a08aac1eba35e3994953f03f0b2108386a2cb56b4e2e24f965f55ec360887` |
| 18 | `lemma` | [tensorQuotEquivQuotSMul_comp_mkQ_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul-comp-mkq-ltensor--63ff74dad0d94da9f028bb75.md) | 211 | `result-track:63ff74dad0d94da9f028bb75d9e6b76762437012f03d3824f022b71fb10640ac` |
| 19 | `lemma` | [tensorQuotEquivQuotSMul_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul-symm-mk--8e25064227bd12e3311aa92a.md) | 217 | `result-track:8e25064227bd12e3311aa92af84879d1196ac3d8b6aaa0a0e5b98eb77d1e77fa` |
| 20 | `lemma` | [tensorQuotEquivQuotSMul_symm_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul-symm-comp-mkq--2de0e297fc0a026bc2fb494c.md) | 221 | `result-track:2de0e297fc0a026bc2fb494c7c503b967e20cc9180d1973ad5534ed37fdad97b` |
| 21 | `lemma` | [tensorQuotEquivQuotSMul_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantaa48b4842393b8edf349c58868e284fdc054b286e19c0035f9b8d77db5ab703c.lean/declarations/tensorquotequivquotsmul-comp-mk--610fd15ab19e40494583014a.md) | 226 | `result-track:610fd15ab19e40494583014a9310abaa8694a2b65a181635f5d918401372c88e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
