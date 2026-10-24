# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TsumDivisorsAntidiagonal.Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb118860de107d89bb6ec1d2cf822dfc60818431",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb118860de107d89bb6ec1d2cf822dfc60818431`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean.json)

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
| 1 | `def` | [divisorsAntidiagonalFactors](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/divisorsantidiagonalfactors--5a570653c7cd4f534284aa5f.md) | 33 | `declaration-track:5a570653c7cd4f534284aa5f3b89eda6048c505441dc2a765620b9406947542b` |
| 2 | `lemma` | [divisorsAntidiagonalFactors_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/divisorsantidiagonalfactors-eq--cfbd728c9aacde86826d7e84.md) | 38 | `result-track:cfbd728c9aacde86826d7e8400183845d9b5912f96b2eefa10a9d6f4d3ee4854` |
| 3 | `lemma` | [divisorsAntidiagonalFactors_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/divisorsantidiagonalfactors-one--f064d9c509f9dfc1764024ae.md) | 42 | `result-track:f064d9c509f9dfc1764024aef7b408fe2516341bcd41f0fc07bc54c477539188` |
| 4 | `def` | [sigmaAntidiagonalEquivProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/sigmaantidiagonalequivprod--b1bce560cf1cea65da85fb8d.md) | 51 | `declaration-track:b1bce560cf1cea65da85fb8d05eb07f226ebac906fc13800862dc801b7b59a24` |
| 5 | `lemma` | [sigmaAntidiagonalEquivProd_symm_apply_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/sigmaantidiagonalequivprod-symm-apply-fst--b77a48ffddfc5b05b4c7e41b.md) | 61 | `result-track:b77a48ffddfc5b05b4c7e41b9805cd8e5e0bc17940b21fb1ae5b5ae013eeffd4` |
| 6 | `lemma` | [sigmaAntidiagonalEquivProd_symm_apply_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/sigmaantidiagonalequivprod-symm-apply-snd--3c764b681de038d772adaf4f.md) | 64 | `result-track:3c764b681de038d772adaf4f9b7e2f36f3dd4a9bce1c5dce223001474b9ea2e7` |
| 7 | `lemma` | [summable_norm_pow_mul_geometric_div_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/summable-norm-pow-mul-geometric-div-one-sub--e5769902e345389685f77d18.md) | 72 | `result-track:e5769902e345389685f77d18efc94ce2b508cba58a427b2c2fbc11cbe3431651` |
| 8 | `lemma` | [summable_divisorsAntidiagonal_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/summable-divisorsantidiagonal-aux--be65b6eb14ce8179086a1cbb.md) | 80 | `result-track:be65b6eb14ce8179086a1cbbacce4a14011f2ee1a86ee85099c8a84f3c3a5be1` |
| 9 | `theorem` | [summable_prod_mul_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/summable-prod-mul-pow--895e55ce24b6ffc4c379c0f6.md) | 102 | `result-track:895e55ce24b6ffc4c379c0f6ce8a9fde5906e167233c4b4d02bd13b1f33e4979` |
| 10 | `theorem` | [tsum_prod_pow_eq_tsum_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/tsum-prod-pow-eq-tsum-sigma--1f50df4e83bff3e5c4da8c2f.md) | 109 | `result-track:1f50df4e83bff3e5c4da8c2f67f97630c4835c192540ae6c6099c139bf279e89` |
| 11 | `lemma` | [tsum_pow_div_one_sub_eq_tsum_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/tsum-pow-div-one-sub-eq-tsum-sigma--2dbc056e2cccce2526f544d7.md) | 122 | `result-track:2dbc056e2cccce2526f544d7eb0b8b1f19118b2caf22a35c78914e8f2f5ed653` |
| 12 | `lemma` | [tendsto_zero_geometric_tsum_pnat](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/declarations/tendsto-zero-geometric-tsum-pnat--d776b236d2eef74d22701f1d.md) | 134 | `result-track:d776b236d2eef74d22701f1d04a3e717cf0c0715f42ff061fc140c5b5443eaaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
