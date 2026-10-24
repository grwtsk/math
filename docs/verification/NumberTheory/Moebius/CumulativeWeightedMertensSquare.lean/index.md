# Verification target: GRWTSK.NumberTheory.Moebius.CumulativeWeightedMertensSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "518bfbfb70521975d9fc6258637aa3e7286dfb91",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `518bfbfb70521975d9fc6258637aa3e7286dfb91`.

Source path: `GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AllDampingMertensMeanSquare`](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensBaseTerm](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertensbaseterm--c365aaee5ffdcd93de47a10a.md) | 43 | `declaration-track:c365aaee5ffdcd93de47a10aac4989fec96667937311e9a2befcd8af62b9becd` |
| 2 | `def` | [weightedMertensCumulative](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertenscumulative--ab0d16105ab5c7859f6b1e12.md) | 48 | `declaration-track:ab0d16105ab5c7859f6b1e12262dd76dbc21f25ad35391e922191f552e9124bb` |
| 3 | `def` | [SubpolynomialCumulativeWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/subpolynomialcumulativeweightedmertenssquare--d822d633881c88e93878bb12.md) | 53 | `declaration-track:d822d633881c88e93878bb12b5239b02573da2987ae45ddbefad21e5436f1053` |
| 4 | `theorem` | [weightedMertensBaseTerm_nonneg](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertensbaseterm-nonneg--deb3c3fc558701898bdb6165.md) | 58 | `result-track:deb3c3fc558701898bdb61654bea3e0c1cb6eb8e1e87954601989c0f89ad71a3` |
| 5 | `theorem` | [weightedMertensCumulative_nonneg](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertenscumulative-nonneg--070358a83ff483e74b348ec6.md) | 63 | `result-track:070358a83ff483e74b348ec66411992b96ca9f8d3f45a33f67bb5ecb963a6480` |
| 6 | `theorem` | [weightedMertensCumulative_zero](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertenscumulative-zero--6222c179e733730c10bbb0da.md) | 68 | `result-track:6222c179e733730c10bbb0da28573791a6f4073669387d41cc2b918d6498b0dd` |
| 7 | `theorem` | [weightedMertensCumulative_succ](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertenscumulative-succ--a46199039e5e32ecb977d721.md) | 72 | `result-track:a46199039e5e32ecb977d72151848e8b744b89583f54b70756ccc2b497041a91` |
| 8 | `theorem` | [weightedMertensSquareTerm_eq_base](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertenssquareterm-eq-base--80cc82667f2d866cc6cd6d5f.md) | 79 | `result-track:80cc82667f2d866cc6cd6d5fa2e56d51d0c34c5fa47124a711b992f1613087fc` |
| 9 | `theorem` | [criticalWeightedMertensSquareSummable_iff_base](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/criticalweightedmertenssquaresummable-iff-base--3d5833b5655c6756962d7635.md) | 90 | `result-track:3d5833b5655c6756962d7635a43219e7ce721493f1bee4209b6b5453d41e3606` |
| 10 | `theorem` | [finite_abel_sum](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/finite-abel-sum--620d22ac23b660e043e1407d.md) | 104 | `result-track:620d22ac23b660e043e1407db42cccf79b52196662417e9bc2fc2e970774d33e` |
| 11 | `theorem` | [weightedMertens_partial_sum_abel](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weightedmertens-partial-sum-abel--29ed259957879f311af97ba2.md) | 120 | `result-track:29ed259957879f311af97ba2f87ebf3ccdfb2d5d3569646b508bb13166b67b9a` |
| 12 | `theorem` | [cumulative_bound_of_weightedSummable](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/cumulative-bound-of-weightedsummable--023ccf2985d4c0273c835a7d.md) | 136 | `result-track:023ccf2985d4c0273c835a7d54af510b84b1d1454ba5fa09a2ec37dc711cd3df` |
| 13 | `theorem` | [subpolynomialCumulative_of_allPositive](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/subpolynomialcumulative-of-allpositive--ee181b74b39c1ca8aa2d3dd2.md) | 191 | `result-track:ee181b74b39c1ca8aa2d3dd2f6bc9682e467f200edfb9f3470a3cee63017b1ea` |
| 14 | `theorem` | [weighted_partial_sum_bound_of_subpolynomial](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/weighted-partial-sum-bound-of-subpolynomial--5750532b08a3575eeed8ce2c.md) | 200 | `result-track:5750532b08a3575eeed8ce2cc83f0d4d2cd86b16183022a03732117e5e72ee1e` |
| 15 | `theorem` | [allPositive_of_subpolynomialCumulative](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/allpositive-of-subpolynomialcumulative--d3e4b83614ae9f3ee6c687ad.md) | 319 | `result-track:d3e4b83614ae9f3ee6c687ad7388cbaf96bc9983cd76449133ee06e7f9e0e750` |
| 16 | `theorem` | [allPositiveWeightedMertensSquare_iff_subpolynomialCumulative](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/allpositiveweightedmertenssquare-iff-subpolynomialcumulative--40c2e794b325e7f98e748e85.md) | 332 | `result-track:40c2e794b325e7f98e748e85cbb2ca1e74dc89bfe3278be00ff5e615e712ecac` |
| 17 | `theorem` | [riemannHypothesis_of_subpolynomialCumulativeWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/declarations/riemannhypothesis-of-subpolynomialcumulativeweightedmertenssquare--e59bf10b14c10a1c834c3956.md) | 339 | `result-track:e59bf10b14c10a1c834c3956dd9623022babb58fba301f6be09c6c9bc74c08b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
