# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88d824da1f06d504490ae01374c29e5d7f6ab473",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88d824da1f06d504490ae01374c29e5d7f6ab473`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Summable.norm_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/summable-norm-lt-one--f1d4f9f66c1b9e81228669a7.md) | 55 | `result-track:f1d4f9f66c1b9e81228669a7d22f6fde580d15b268214ae28ffff6f03d355a49` |
| 2 | `lemma` | [instT0Space](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/instt0space--f3c5c0445b283072f9f251ba.md) | 78 | `result-track:f3c5c0445b283072f9f251ba5c4e743d40311bd5aab5e57ed3e2f6c7e1320159` |
| 3 | `lemma` | [summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/summable-and-hassum-factorednumbers-prod-filter-prime-tsum--b9e6ad380772869050d222d4.md) | 88 | `result-track:b9e6ad380772869050d222d4d1189d8540d4d783e25acd00769c0e4905901cd1` |
| 4 | `lemma` | [prod_filter_prime_tsum_eq_tsum_factoredNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/prod-filter-prime-tsum-eq-tsum-factorednumbers--0d86a06e365d0f52f62fd1c0.md) | 120 | `result-track:0d86a06e365d0f52f62fd1c00d5c91527baba3e81a8c440e7592453e95958ad9` |
| 5 | `lemma` | [norm_tsum_factoredNumbers_sub_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/norm-tsum-factorednumbers-sub-tsum-lt--292a9c978add6025d12d3786.md) | 129 | `result-track:292a9c978add6025d12d37869511f6fdbe79cca977bdbdce449254f7ba7aac17` |
| 6 | `lemma` | [summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/summable-and-hassum-smoothnumbers-prod-primesbelow-tsum--1be71e5f4779540366ac72d9.md) | 145 | `result-track:1be71e5f4779540366ac72d97306d9b6a66eb33a532c9062b4c2e474e1d2fa99` |
| 7 | `lemma` | [prod_primesBelow_tsum_eq_tsum_smoothNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/prod-primesbelow-tsum-eq-tsum-smoothnumbers--85b7e78d16b1c6754198cdfd.md) | 155 | `result-track:85b7e78d16b1c6754198cdfd4eab9bf9480b20988d702b2ff9e9c97a9074ebcf` |
| 8 | `lemma` | [norm_tsum_smoothNumbers_sub_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/norm-tsum-smoothnumbers-sub-tsum-lt--79e416e84d478385041c33f0.md) | 163 | `result-track:79e416e84d478385041c33f0891935e2831ff566627cacce9c4b74dc23ae20c4` |
| 9 | `theorem` | [eulerProduct_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-hasprod--05471a8631eeda0e262f3aca.md) | 178 | `result-track:05471a8631eeda0e262f3acaf48ad4591171a96df6be38f770e758240ae48c18` |
| 10 | `theorem` | [eulerProduct_hasProd_mulIndicator](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-hasprod-mulindicator--5153cb7fc3dc7bf66949d269.md) | 201 | `result-track:5153cb7fc3dc7bf66949d269cce51f44a7f2ec04214c2e5579ac73e979e68b1e` |
| 11 | `theorem` | [eulerProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct--2164d54a5ebccb0a414a50ad.md) | 214 | `result-track:2164d54a5ebccb0a414a50ad869b049e61951430e32a75bdbe91e467298ad418` |
| 12 | `theorem` | [eulerProduct_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-tprod--d8a37af0de592f4c1749c830.md) | 229 | `result-track:d8a37af0de592f4c1749c830bd1fe1a066460763d00547c62297833772d4843e` |
| 13 | `theorem` | [IsMultiplicative.eulerProduct_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/ismultiplicative-eulerproduct-hasprod--5a5378783149cf51f8d10b15.md) | 247 | `result-track:5a5378783149cf51f8d10b15658ce93ef9789c6dc9db656506380d8483506f17` |
| 14 | `theorem` | [IsMultiplicative.eulerProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/ismultiplicative-eulerproduct--4b0d4354c4dea38aad419988.md) | 257 | `result-track:4b0d4354c4dea38aad4199888a14a2d8ce2e1092b72fac8e27d2b5b72dad15e2` |
| 15 | `theorem` | [IsMultiplicative.eulerProduct_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/ismultiplicative-eulerproduct-tprod--d712bcd782c9660abd7d8a9b.md) | 265 | `result-track:d712bcd782c9660abd7d8a9b639a323f8899d0e7a62b3bc1a6dccc0adbd78aec` |
| 16 | `lemma` | [one_sub_inv_eq_geometric_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/one-sub-inv-eq-geometric-of-summable-norm--de65dd875cee7849a1f79b10.md) | 289 | `result-track:de65dd875cee7849a1f79b10a2fb0e57f1f3c48b2be78a69d3d42dcc817a74b7` |
| 17 | `lemma` | [summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/summable-and-hassum-factorednumbers-prod-filter-prime-geometric--0bf96d3d05095c591e0ad5f9.md) | 302 | `result-track:0bf96d3d05095c591e0ad5f9adb9ae647dd7a496bf92f15da9b35e14d1719699` |
| 18 | `lemma` | [prod_filter_prime_geometric_eq_tsum_factoredNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/prod-filter-prime-geometric-eq-tsum-factorednumbers--07485bb1fa778f598dec3787.md) | 321 | `result-track:07485bb1fa778f598dec3787274f55b595e4553f4e0bff3e1b40477f1e9ce6e7` |
| 19 | `lemma` | [summable_and_hasSum_smoothNumbers_prod_primesBelow_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/summable-and-hassum-smoothnumbers-prod-primesbelow-geometric--a3c66570c54476f0773426bb.md) | 331 | `result-track:a3c66570c54476f0773426bb974714652318c5a22a48a3054e5cd675ceeed97f` |
| 20 | `lemma` | [prod_primesBelow_geometric_eq_tsum_smoothNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/prod-primesbelow-geometric-eq-tsum-smoothnumbers--eb80206b8fe9d2b4dbc7ff25.md) | 340 | `result-track:eb80206b8fe9d2b4dbc7ff252749f22a7eef0182f6be44fee46c83d255665e85` |
| 21 | `theorem` | [eulerProduct_completely_multiplicative_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-completely-multiplicative-hasprod--352d5f68ef189f774a7ca916.md) | 350 | `result-track:352d5f68ef189f774a7ca9160e09fcc7ec66135a50063d9496e9dfd4c2be4489` |
| 22 | `theorem` | [eulerProduct_completely_multiplicative_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-completely-multiplicative-tprod--813a73be246836d2c59f6cde.md) | 361 | `result-track:813a73be246836d2c59f6cdec51b6637d3596494ac047eff955befcca44c6351` |
| 23 | `theorem` | [eulerProduct_completely_multiplicative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/declarations/eulerproduct-completely-multiplicative--a40f0ea23aa9e8ea37c6d60b.md) | 371 | `result-track:a40f0ea23aa9e8ea37c6d60b7fa6d92282796f9166b7febd9a3c64f5298ea4c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
