# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Traces.Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.AssemblyD` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.PP` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DataD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/datad--4530a5ab02821f9fcb1bc590.md) | 31 | `declaration-track:4530a5ab02821f9fcb1bc59067b2b3221314489cdf58a71297ba33a5f72867f0` |
| 2 | `structure` | [FactsD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/factsd--247adadc70ffbca8a9bdcccc.md) | 40 | `declaration-track:247adadc70ffbca8a9bdcccc5647af7129fd11f22ae3ac1348ec275d2bb13401` |
| 3 | `theorem` | [tr2D_pointwise](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/tr2d-pointwise--89629ddf80aaa47ee5bcef29.md) | 71 | `result-track:89629ddf80aaa47ee5bcef296c5ef4c3f3722211f144125260dc5c5c51a6372c` |
| 4 | `theorem` | [eventually_const_mul_le_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/eventually-const-mul-le-half--ecd38fac8ab967e272fdbd10.md) | 183 | `result-track:ecd38fac8ab967e272fdbd10bda1ead739c7927a6e1cc4ffab63a030aa7472e4` |
| 5 | `theorem` | [ratioD_pointwise](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/ratiod-pointwise--6ab67d5cc97da14729040f95.md) | 193 | `result-track:6ab67d5cc97da14729040f95fb52a75d7efd16e88b14bb1bda07665ae2d80d47` |
| 6 | `lemma` | [NcntD_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/ncntd-lower--fb7ce0702c9dbc1f77700d0d.md) | 313 | `result-track:fb7ce0702c9dbc1f77700d0d813c5fa9e85a90141741433bf25beb6f027ed3b3` |
| 7 | `lemma` | [T_le_NcntD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/t-le-ncntd--970cfbd092547ab7428de81f.md) | 329 | `result-track:970cfbd092547ab7428de81f5ed31772df65e3dae90e50e8ab4aa53315f01b4b` |
| 8 | `lemma` | [NcntD_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/ncntd-pos--34b9487a457dbdd510e2d3e8.md) | 338 | `result-track:34b9487a457dbdd510e2d3e862f9ae465e13e2fba2805ad2c4cd68694f774e02` |
| 9 | `lemma` | [regimeD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/regimed--e77b0f6d5fb53a46bf0d4694.md) | 345 | `result-track:e77b0f6d5fb53a46bf0d4694ddf106545529136109fa9179c31cd25291decfe4` |
| 10 | `lemma` | [tr1'D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/tr1-d--1d4032ed86e1ade75eaafbd5.md) | 355 | `result-track:1d4032ed86e1ade75eaafbd533467a99eb967511c4e8072ef9a2c7c74ff7808f` |
| 11 | `def` | [mainTr2D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/maintr2d--5bf0bb08dc80a0aaef2c60c9.md) | 398 | `declaration-track:5bf0bb08dc80a0aaef2c60c9a58f881c7a91f7dfb7dc6bdf4710988d98637db3` |
| 12 | `lemma` | [tr2_firstD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/tr2-firstd--b07fb0b8fc4f4008bfdebf11.md) | 402 | `result-track:b07fb0b8fc4f4008bfdebf116354b2cb51a298063a8f1179bfbac0a4e8ec5a4a` |
| 13 | `lemma` | [tr2D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/tr2d--db2430637af95d1b7845a974.md) | 461 | `result-track:db2430637af95d1b7845a974675f8cbf75eb5314cf16d92b1983808127853489` |
| 14 | `lemma` | [ratioD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/ratiod--e204a4258fcdc689704e1147.md) | 485 | `result-track:e204a4258fcdc689704e1147158f4d077cc49899ea38fe024cfad31f9e329b42` |
| 15 | `theorem` | [frhatD_pointwise](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/frhatd-pointwise--0b252dae43f7017a1deba69a.md) | 515 | `result-track:0b252dae43f7017a1deba69a63770546e79b83930df37e824b01dfbe7f65de95` |
| 16 | `lemma` | [frhatD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/frhatd--94606a47e790cbe5cea0771a.md) | 633 | `result-track:94606a47e790cbe5cea0771ac24d4be29219a89723a3f4205365ae12d16c2991` |
| 17 | `theorem` | [tracesBoundsD_of_factsD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/declarations/tracesboundsd-of-factsd--0857a079b9d4388a61050180.md) | 660 | `result-track:0857a079b9d4388a610501801c261412a05819774e64b35644696a20ef020a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
