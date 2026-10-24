# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Take.Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291fd68a3b77cf9bec429b6e6157babe46a27ff0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291fd68a3b77cf9bec429b6e6157babe46a27ff0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.take_eq_toIter_take_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-take-eq-toiter-take-toiterm--e400b5b43125ad73635b5e5e.md) | 32 | `result-track:e400b5b43125ad73635b5e5e6e9987d8b994005089dd27609988525eab64f805` |
| 2 | `theorem` | [Iter.toTake_eq_toIter_toTake_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-totake-eq-toiter-totake-toiterm--57d85dd64aabdcf483d36d3f.md) | 37 | `result-track:57d85dd64aabdcf483d36d3fcbb968ad93dada5cae20c9fe2e857f580b58b491` |
| 3 | `theorem` | [Iter.step_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-step-take--6810edc1b853a2a5927a384e.md) | 42 | `result-track:6810edc1b853a2a5927a384ed769849567d3a4d6d0a6cfa2144014f47c88193e` |
| 4 | `theorem` | [Iter.atIdxSlow?_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-atidxslow-take--8ca51f9ff72659f9720bf2cb.md) | 60 | `result-track:8ca51f9ff72659f9720bf2cb9c34fd5d342af3479cec5ee031b8a7474e5cf99d` |
| 5 | `theorem` | [Iter.toList_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-tolist-take-of-finite--af367a2bb17ed101bfaa49a2.md) | 79 | `result-track:af367a2bb17ed101bfaa49a2148f6f63d14459f3e7cb48b66134dfdd211b2c5c` |
| 6 | `theorem` | [Iter.toListRev_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-tolistrev-take-of-finite--7dce7bac2bbbf23e25ebc3ad.md) | 95 | `result-track:7dce7bac2bbbf23e25ebc3ad24839c86e85a999bb6126ee352255f48015311df` |
| 7 | `theorem` | [Iter.toArray_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-toarray-take-of-finite--706bba4f56a77a171c99e52b.md) | 101 | `result-track:706bba4f56a77a171c99e52b031d36cdc44f60d0059019598f0b26dd566a48a6` |
| 8 | `theorem` | [Iter.toList_take_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-tolist-take-zero--5a7f12e7991075025ff802ba.md) | 107 | `result-track:5a7f12e7991075025ff802ba1ac9e6118d6e9c46713c033c4e36b25570ee2507` |
| 9 | `theorem` | [Iter.step_toTake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-step-totake--bf5d1d8339f4516cf0b9feed.md) | 113 | `result-track:bf5d1d8339f4516cf0b9feed1bb45772bce3c486b86d32d6b609abc3d45f6040` |
| 10 | `theorem` | [Iter.toList_toTake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantce0e0dcb142939ae008109a673bed751c02b54f295ff148412bd41f275262fc0.lean/declarations/iter-tolist-totake--999968f0922f2f486c9e126f.md) | 126 | `result-track:999968f0922f2f486c9e126fa8982ce574993a316045358c55edd8d39b64a5c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
