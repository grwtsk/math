# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b220eab8502d09f7538ddffb81ecb6d23e74f44c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b220eab8502d09f7538ddffb81ecb6d23e74f44c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.DoubleCounting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSRGWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith--8ee6a2ff8d39f4f33711d321.md) | 57 | `declaration-track:8ee6a2ff8d39f4f33711d321774ce087eab648031f78ba2bc274f6a18d822545` |
| 2 | `theorem` | [bot_strongly_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/bot-strongly-regular--c59c980115bd4c841d041c7e.md) | 69 | `result-track:c59c980115bd4c841d041c7eccd0fbcb09160dcacd0020a1ff972ee161e493c5` |
| 3 | `theorem` | [IsSRGWith.top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-top--6bce69c34da00641df04b2c6.md) | 81 | `result-track:6bce69c34da00641df04b2c68cd0e829ef396e7891603f483b4bc1e5c3388322` |
| 4 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-card-neighborfinset-union-eq--74898df48dcc127210fcc966.md) | 92 | `result-track:74898df48dcc127210fcc9669ac7f0ba164003baafbc06eada74387bd9c570c5` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--4496e604a705251e1c8fe27f.md) | 110 | `result-track:4496e604a705251e1c8fe27f026dee36514d79aca769e1eecd5a84bad46441f6` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--a795527854118abf5de1dc6d.md) | 118 | `result-track:a795527854118abf5de1dc6de432cc39b36150e0dad291b04bf4aa4806be65e1` |
| 7 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/compl-neighborfinset-sdiff-inter-eq--a69a5646f20c31f0533c3ae2.md) | 125 | `result-track:a69a5646f20c31f0533c3ae2488a1bb6b31ea00bcb0809b998d194ee553a6510` |
| 8 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/sdiff-compl-neighborfinset-inter-eq--ecf5eb24713e09abdf1f102d.md) | 133 | `result-track:ecf5eb24713e09abdf1f102daf533a94b0f32e6d31d26e5c87629c02ce1583eb` |
| 9 | `theorem` | [IsSRGWith.compl_is_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-compl-is-regular--6f1e825e47d7adaf36a2f8a0.md) | 145 | `result-track:6f1e825e47d7adaf36a2f8a02538eb22f3d7060c1f30a92f8fa3ad0781e08985` |
| 10 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--1e6a321890e58b1b1333d627.md) | 152 | `result-track:1e6a321890e58b1b1333d6271e48b440603d032919ac5c84977da4afaca8c621` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--cbfc9001d13bc7630b085248.md) | 168 | `result-track:cbfc9001d13bc7630b0852482bfc1e212e0fbd964c02eff165b7bd8c26404586` |
| 12 | `theorem` | [IsSRGWith.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-compl--42beb6dfd3aa888b053e284f.md) | 181 | `result-track:42beb6dfd3aa888b053e284fc5d7e6ddfa612046baf36cfd512453b9bd36ed53` |
| 13 | `theorem` | [IsSRGWith.param_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-param-eq--164a771c217c197ab1d374b2.md) | 192 | `result-track:164a771c217c197ab1d374b2fb1d401801de33364a4999ec9ea0ecf4566b2b89` |
| 14 | `theorem` | [IsSRGWith.matrix_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean/declarations/issrgwith-matrix-eq--c40f8698893a66e13ff5e624.md) | 225 | `result-track:c40f8698893a66e13ff5e62484e5db62dd3669530b694421dd1f3f2c7cdd56a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
