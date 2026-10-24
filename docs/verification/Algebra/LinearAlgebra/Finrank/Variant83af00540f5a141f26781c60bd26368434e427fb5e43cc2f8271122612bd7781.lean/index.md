# Verification target: GRWTSK.Algebra.LinearAlgebra.Finrank.Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "331a576de2625fc8e20dbb3cc7d2280d970639d7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `331a576de2625fc8e20dbb3cc7d2280d970639d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.ToNat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank--46277186c6f155effe98218f.md) | 58 | `declaration-track:46277186c6f155effe98218f7b74b573f5cfef491f33d661af9ebd859979233b` |
| 2 | `theorem` | [finrank_eq_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-eq-of-rank-eq--a095bb8fc2ab996faf96883a.md) | 61 | `result-track:a095bb8fc2ab996faf96883ac5e9100de84f7a8ce13d7b0f949afede61ae8e82` |
| 3 | `lemma` | [rank_eq_one_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/rank-eq-one-iff-finrank-eq-one--791d21d1f9960d8c96857bf3.md) | 64 | `result-track:791d21d1f9960d8c96857bf3c1c1eff0db5a9bf53af963c0ab7bcfd6a2eec706` |
| 4 | `lemma` | [rank_eq_ofNat_iff_finrank_eq_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/rank-eq-ofnat-iff-finrank-eq-ofnat--f08b3054824dc6b2b0550c90.md) | 68 | `result-track:f08b3054824dc6b2b0550c9006a6686d5419e096956dafe9986778c84ffc8529` |
| 5 | `theorem` | [finrank_le_of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-le-of-rank-le--1a5d65c8d08d40addfebe9c3.md) | 72 | `result-track:1a5d65c8d08d40addfebe9c328771824e58591bfb96ce336c256d7f3fa3b6771` |
| 6 | `theorem` | [finrank_lt_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-lt-of-rank-lt--fd1d862a5322f79bfbf75448.md) | 77 | `result-track:fd1d862a5322f79bfbf75448073358c75db857262c228b4ad638e0f741fa0b1f` |
| 7 | `theorem` | [lt_rank_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/lt-rank-of-lt-finrank--2e4ffde8b1fead5e2a9cae42.md) | 82 | `result-track:2e4ffde8b1fead5e2a9cae42e7e832a0e00f520b69441a797154571448b0fdb7` |
| 8 | `theorem` | [one_lt_rank_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/one-lt-rank-of-one-lt-finrank--789e9d3871291498c551db6d.md) | 89 | `result-track:789e9d3871291498c551db6db5bcab0413accc771f51a97d97959517b362dddd` |
| 9 | `theorem` | [finrank_le_finrank_of_rank_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-le-finrank-of-rank-le-rank--56206ed79f08bd1affdf69d0.md) | 92 | `result-track:56206ed79f08bd1affdf69d0f4a55acbed8ac9d0ad8360be8dd816441b32757a` |
| 10 | `theorem` | [finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-eq--03e109105763290ae219c103.md) | 106 | `result-track:03e109105763290ae219c103943783cb6ba32bd4ecf4c2f3aeafcb6a505bee5e` |
| 11 | `theorem` | [finrank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-map-eq--b06fe5953bfaf3f42dc65384.md) | 111 | `result-track:b06fe5953bfaf3f42dc65384f42deb36b8d9ff75f68d5728c153b587817c2b3f` |
| 12 | `theorem` | [LinearMap.finrank_range_of_inj](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/linearmap-finrank-range-of-inj--662c823a30bb11fd4cdf0fef.md) | 118 | `result-track:662c823a30bb11fd4cdf0fef16dc6aa230f1dea13071c430926721b232528a52` |
| 13 | `theorem` | [Submodule.finrank_map_subtype_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/submodule-finrank-map-subtype-eq--37ec8f4003319acdf2462d74.md) | 122 | `result-track:37ec8f4003319acdf2462d742ff28b1c2cc02f4cd702dcfa46ad932048384d0c` |
| 14 | `theorem` | [finrank_top](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/declarations/finrank-top--80df12762a450436b6fce864.md) | 129 | `result-track:80df12762a450436b6fce8648ed4aa7056caf51eb7ba0d9fdd66d33d9279add1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
