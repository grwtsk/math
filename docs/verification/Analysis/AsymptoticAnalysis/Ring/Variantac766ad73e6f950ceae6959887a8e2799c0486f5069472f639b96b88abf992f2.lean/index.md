# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "143881794b61cba2e98f2d3c875329c3184da477",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `143881794b61cba2e98f2d3c875329c3184da477`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul-left--80a64d21f6e0f8e74893799c.md) | 37 | `result-track:80a64d21f6e0f8e74893799c0148d3898c957dff0384294f40e658080023ee09` |
| 2 | `theorem` | [HasSum.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul-right--3d5eabfa81609d2c45cc25c6.md) | 40 | `result-track:3d5eabfa81609d2c45cc25c6cb2d4ef0e8ea2bea2f18c2103bbc19656e9f1dde` |
| 3 | `theorem` | [Summable.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-mul-left--c45aa23d497f0eed73793ddb.md) | 43 | `result-track:c45aa23d497f0eed73793ddbe75c22ee2e54645d79d724df04475bab7fe1b49a` |
| 4 | `theorem` | [Summable.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-mul-right--be572a998c9d41456ead2030.md) | 46 | `result-track:be572a998c9d41456ead20302fa3d2b59f1f1e73312b9c09e285377d9b876c66` |
| 5 | `theorem` | [Summable.tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-tsum-mul-left--c5143092dcf45adcbccf85a8.md) | 53 | `result-track:c5143092dcf45adcbccf85a87c0006767b18c9bd0cba7ca83c0a073d0fc77ca1` |
| 6 | `theorem` | [Summable.tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-tsum-mul-right--14646144c2d5ce7f30433a8d.md) | 56 | `result-track:14646144c2d5ce7f30433a8d51c690bd98ddbb0bdcea80d3c6d4677d449900c1` |
| 7 | `theorem` | [Commute.tsum_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/commute-tsum-right--67198ad42a7cfe447ec1ef44.md) | 59 | `result-track:67198ad42a7cfe447ec1ef440e9806fd866e16a938756bed7ea1d78e5b6d0a97` |
| 8 | `theorem` | [Commute.tsum_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/commute-tsum-left--680de0636e1a7a469ddeca9a.md) | 65 | `result-track:680de0636e1a7a469ddeca9ac3656498e8281543c83f27986d02118610d1b576` |
| 9 | `theorem` | [HasSum.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-div-const--758096293c773e3ffe55f57f.md) | 77 | `result-track:758096293c773e3ffe55f57f8053330a9bd7a476740d042a6031c540bdcd4431` |
| 10 | `theorem` | [Summable.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-div-const--ce1c9c2f69387a6feb8993d8.md) | 80 | `result-track:ce1c9c2f69387a6feb8993d85991b8bcc1fcc60260475c24d98473135e247563` |
| 11 | `theorem` | [hasSum_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul-left-iff--78867291a4462f835aa6be7e.md) | 83 | `result-track:78867291a4462f835aa6be7e5e4fac873fadc7d5a41ad73fe4fdb60640a54a79` |
| 12 | `theorem` | [hasSum_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul-right-iff--e4c925b8372326d395231845.md) | 86 | `result-track:e4c925b8372326d395231845f81dbbd414e12aeeccbec48446d2ba238fa8387f` |
| 13 | `theorem` | [hasSum_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-div-const-iff--31a987f0eafa9f8907290e98.md) | 89 | `result-track:31a987f0eafa9f8907290e98f1f1334237b74887bed4f409b171416647e5346d` |
| 14 | `theorem` | [summable_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-mul-left-iff--9b5e3bd7fc8a79a6ee454478.md) | 92 | `result-track:9b5e3bd7fc8a79a6ee454478e14883aec5e6a804f27857c8b9237b083b8539db` |
| 15 | `theorem` | [summable_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-mul-right-iff--725b797a4746627c8392ef9e.md) | 95 | `result-track:725b797a4746627c8392ef9e743a1a7616ef0f90a1e91d3b72f9d4741ebbb189` |
| 16 | `theorem` | [summable_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-div-const-iff--5ce2a8bc73ab6bec2fdc2233.md) | 98 | `result-track:5ce2a8bc73ab6bec2fdc223320383791c740a0d78b9f143d363bff5148c71cb3` |
| 17 | `theorem` | [tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/tsum-mul-left--da0f22f871822c4fac5e3567.md) | 101 | `result-track:da0f22f871822c4fac5e35677d8dee16cdd58bcd2af90d5e9979e5f05bd4b084` |
| 18 | `theorem` | [tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/tsum-mul-right--3ebd70e45c1b7535d8cb976d.md) | 108 | `result-track:3ebd70e45c1b7535d8cb976d196f3727ee45ba4782d24684b19416c90759cbf5` |
| 19 | `theorem` | [tsum_div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/tsum-div-const--0c210cdfe8082b8e62dabbeb.md) | 115 | `result-track:0c210cdfe8082b8e62dabbeb8e8384e5aa13c756323e9d30629700a95c9ec715` |
| 20 | `theorem` | [HasSum.const_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-const-div--b528026a36848ecc8aa282e8.md) | 118 | `result-track:b528026a36848ecc8aa282e85975d9b39bb81973c302ddef2e8a3e1178d37081` |
| 21 | `theorem` | [Summable.const_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-const-div--74bce412748cb475bd1db31f.md) | 123 | `result-track:74bce412748cb475bd1db31f1faf2026e3dc04742bc0d81b1e4a7906e5204625` |
| 22 | `theorem` | [hasSum_const_div_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-const-div-iff--0f55d560ac5dd0e67b184de5.md) | 127 | `result-track:0f55d560ac5dd0e67b184de5fb091028d8779f21ba84467470801d62b5a8eb2d` |
| 23 | `theorem` | [summable_const_div_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-const-div-iff--f8eac95cc483eb0c5bb0da44.md) | 131 | `result-track:f8eac95cc483eb0c5bb0da44541ca410bb655f14961882289aca5b0b4946520b` |
| 24 | `theorem` | [HasSum.mul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul-eq--c382333d7b86a3d2dab665fe.md) | 157 | `result-track:c382333d7b86a3d2dab665fedd289a2ea0cac20fbf87e7e5d4171f54cabd9753` |
| 25 | `theorem` | [HasSum.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/hassum-mul--8f0e84a9cdddbf9aa2c1fb1d.md) | 164 | `result-track:8f0e84a9cdddbf9aa2c1fb1d3ad9b745201088eac8b13007ecaafefe7d9ba138` |
| 26 | `theorem` | [Summable.tsum_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-tsum-mul-tsum--99aa29ea05e23a29af17f3aa.md) | 172 | `result-track:99aa29ea05e23a29af17f3aab46d8f5db09543648b11762429f9bc6871561e5d` |
| 27 | `theorem` | [summable_mul_prod_iff_summable_mul_sigma_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-mul-prod-iff-summable-mul-sigma-antidiagonal--9a45a45f5e245b07d562e0c6.md) | 202 | `result-track:9a45a45f5e245b07d562e0c612015ee2de483d4836a92571889d15a191ed1696` |
| 28 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-sum-mul-antidiagonal-of-summable-mul--4677bcd2598e8964d9be0f74.md) | 209 | `result-track:4677bcd2598e8964d9be0f7488abd8d20700fc04831b8523ba3b2b4f96f1b7bd` |
| 29 | `theorem` | [Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-tsum-mul-tsum-eq-tsum-sum-antidiagonal--05722aa4e87f79acb2f839d3.md) | 221 | `result-track:05722aa4e87f79acb2f839d3b652317952309f576456d60ac576b03798bac0a7` |
| 30 | `theorem` | [summable_sum_mul_range_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-sum-mul-range-of-summable-mul--f3014626723381c74ab47f8e.md) | 240 | `result-track:f3014626723381c74ab47f8ea8b8c49c12b2bf03ba71b575313403b7bc265149` |
| 31 | `theorem` | [Summable.tsum_mul_tsum_eq_tsum_sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/declarations/summable-tsum-mul-tsum-eq-tsum-sum-range--1a9ec24c019a74feb95eab47.md) | 250 | `result-track:1a9ec24c019a74feb95eab477bdfad8984447ed0859477c56e792be7a069d7b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
