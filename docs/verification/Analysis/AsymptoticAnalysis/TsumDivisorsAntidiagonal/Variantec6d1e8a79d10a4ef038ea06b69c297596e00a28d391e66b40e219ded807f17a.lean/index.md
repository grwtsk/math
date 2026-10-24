# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TsumDivisorsAntidiagonal.Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38dcfb77aa2df8d81adb0acde8c598b384ce8435",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38dcfb77aa2df8d81adb0acde8c598b384ce8435`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean.json)

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
| 1 | `def` | [divisorsAntidiagonalFactors](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/divisorsantidiagonalfactors--8df1b2a589a0e27ed82516aa.md) | 41 | `declaration-track:8df1b2a589a0e27ed82516aac057eb9834c5930137c8b4e85863acc2ef2303e6` |
| 2 | `lemma` | [divisorsAntidiagonalFactors_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/divisorsantidiagonalfactors-eq--12c25b3399fe360541f2b223.md) | 46 | `result-track:12c25b3399fe360541f2b223c0ab0cebc66c74a20b7009e60be4115fbd52618f` |
| 3 | `lemma` | [divisorsAntidiagonalFactors_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/divisorsantidiagonalfactors-one--683a6cf67d5bbe3fd79ce421.md) | 50 | `result-track:683a6cf67d5bbe3fd79ce421f49371f8eb8236c88ee1a671bfec06f0ec2f7424` |
| 4 | `def` | [sigmaAntidiagonalEquivProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/sigmaantidiagonalequivprod--27fd5a2904ee843d192907f9.md) | 59 | `declaration-track:27fd5a2904ee843d192907f93f13caa9814a15ca1cfc30dc10cef0c1448bed08` |
| 5 | `lemma` | [sigmaAntidiagonalEquivProd_symm_apply_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/sigmaantidiagonalequivprod-symm-apply-fst--ee0078d2e1f95f564e27d173.md) | 69 | `result-track:ee0078d2e1f95f564e27d1735546a47bf8ba10401cb3668dc18e73626ae8b388` |
| 6 | `lemma` | [sigmaAntidiagonalEquivProd_symm_apply_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/sigmaantidiagonalequivprod-symm-apply-snd--4465c966abcdfb05c6ee2820.md) | 72 | `result-track:4465c966abcdfb05c6ee2820211ddb493f4cd4d6c479a20643f153e58cf094a0` |
| 7 | `lemma` | [summable_norm_pow_mul_geometric_div_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/summable-norm-pow-mul-geometric-div-one-sub--fca770c0d9a316d026ee5ab8.md) | 80 | `result-track:fca770c0d9a316d026ee5ab82bb960f00c5b1f5d82dae37500bdb22752014692` |
| 8 | `lemma` | [summable_divisorsAntidiagonal_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/summable-divisorsantidiagonal-aux--0081d6eb14ac99a8383ecd14.md) | 88 | `result-track:0081d6eb14ac99a8383ecd1406e90e4299f5e1bc06e46e0ee43a2aa64caee3d8` |
| 9 | `theorem` | [summable_prod_mul_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/summable-prod-mul-pow--5655b129b6225300f059084a.md) | 110 | `result-track:5655b129b6225300f059084abd89988bb7d7ced858279952ff309df299d7bbdb` |
| 10 | `theorem` | [tsum_prod_pow_eq_tsum_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/tsum-prod-pow-eq-tsum-sigma--7833f7e2197fb04ee7a1a748.md) | 117 | `result-track:7833f7e2197fb04ee7a1a7484c7e051904df3ce7c670db655b62bc772dcbfe45` |
| 11 | `lemma` | [tsum_pow_div_one_sub_eq_tsum_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/tsum-pow-div-one-sub-eq-tsum-sigma--32145241f89af72bf39c25f7.md) | 130 | `result-track:32145241f89af72bf39c25f7f85a127a38f5839684b9e30246cd71cfdd2df0b3` |
| 12 | `lemma` | [tendsto_zero_geometric_tsum_pnat](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/declarations/tendsto-zero-geometric-tsum-pnat--a545cd91255cdf52c9d5a24b.md) | 142 | `result-track:a545cd91255cdf52c9d5a24bc6bb179bf0e6f726cb180164884c2279d586e036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
