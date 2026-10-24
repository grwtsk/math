# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Real.Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a5af5a51859aec65e8d9a23b5ef89f3040c8003",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a5af5a51859aec65e8d9a23b5ef89f3040c8003`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_of_dist_le_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/cauchyseq-of-dist-le-of-summable--f5b7d94aa28b71baad333ed7.md) | 31 | `result-track:f5b7d94aa28b71baad333ed7112c58bfc277417e0ac915c4df09bd4f87831868` |
| 2 | `theorem` | [cauchySeq_of_summable_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/cauchyseq-of-summable-dist--e02a9fe13cb66dc4c2115661.md) | 38 | `result-track:e02a9fe13cb66dc4c21156614ecd63955b7cd703a9b54ae5dddc30e0df36c79d` |
| 3 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--1660b8f9433d8c2ae5b241e4.md) | 41 | `result-track:1660b8f9433d8c2ae5b241e45b60b429d7cc1bf22205198920c9ab6a3af64361` |
| 4 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--cefb7af33db71176a20eecc1.md) | 50 | `result-track:cefb7af33db71176a20eecc1ffb0ead9c634d996077f52f4637d137cc9b39116` |
| 5 | `theorem` | [dist_le_tsum_dist_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/dist-le-tsum-dist-of-tendsto--378a56a3970ad2cf3383185e.md) | 54 | `result-track:378a56a3970ad2cf3383185ec5243d933271ba04e9772ae358f20d1fbf3a7878` |
| 6 | `theorem` | [dist_le_tsum_dist_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/dist-le-tsum-dist-of-tendsto--7b50e7e2d4205a7d7526cbcb.md) | 59 | `result-track:7b50e7e2d4205a7d7526cbcbb62aad8497cad5a09c9eb1f04bd43e28371ed976` |
| 7 | `theorem` | [not_summable_iff_tendsto_nat_atTop_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/not-summable-iff-tendsto-nat-attop-of-nonneg--1d5122af5c4346c57e5445cd.md) | 65 | `result-track:1d5122af5c4346c57e5445cd297d9e39e5b898934f90b3f44ad6889e958b482c` |
| 8 | `theorem` | [summable_iff_not_tendsto_nat_atTop_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-iff-not-tendsto-nat-attop-of-nonneg--dc93df46d199d7eb32f4e6a8.md) | 70 | `result-track:dc93df46d199d7eb32f4e6a8f85e0e1302a84bde8057891bf1c7ed340150fb47` |
| 9 | `theorem` | [summable_sigma_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-sigma-of-nonneg--a281a92ed268c60678e46673.md) | 74 | `result-track:a281a92ed268c60678e46673a754d8db73b0d3a30bf8951b9ce6209c2460a520` |
| 10 | `lemma` | [summable_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-partition--f85547140f114c2f3072ce10.md) | 79 | `result-track:f85547140f114c2f3072ce10f98e2bd5a9791623cbdf3dacafaaa6a5822fba82` |
| 11 | `theorem` | [summable_prod_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-prod-of-nonneg--c58c2519d43594d8d3f238fe.md) | 84 | `result-track:c58c2519d43594d8d3f238fe984360194515f9d176d58ffb8c1b1fb9e7e61292` |
| 12 | `theorem` | [summable_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-of-sum-le--ccb740498c14670d531e1560.md) | 88 | `result-track:ccb740498c14670d531e1560a69357a6620692377be9171db0d97cc234c9813d` |
| 13 | `theorem` | [summable_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-of-sum-range-le--9ca3997adce15e3ae912b279.md) | 93 | `result-track:9ca3997adce15e3ae912b279b8e3122bab329c24a0d23f8ac1fdc74675978898` |
| 14 | `theorem` | [Real.tsum_le_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/real-tsum-le-of-sum-range-le--e7c88eac3e7e1770691016bf.md) | 99 | `result-track:e7c88eac3e7e1770691016bffd270b89d00bcd89447bac8916e5879037e55863` |
| 15 | `theorem` | [Summable.tsum_lt_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante72af4a25398a7e3e561c045e4b2a7d97d8151f5843a735bd93f511346774ab1.lean/declarations/summable-tsum-lt-tsum-of-nonneg--662e2321750ce59a49f6577f.md) | 106 | `result-track:662e2321750ce59a49f6577f92117150ad578bacbc766a402df02e2373c9ca92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
